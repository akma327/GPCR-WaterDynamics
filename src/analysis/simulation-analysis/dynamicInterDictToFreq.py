# Author: Anthony Kai Kwang Ma
# Email: akma327@stanford.edu
# dynamicInterDictToFreq.py

import sys
import os 
import ast 
import time 

# Todo:
# Add in association from conventional amino acid names to other acronyms (CYS --> CYP, CYX)
# File copy issue for PAR1
# Frame shift for M3R 
# Chain issues in mdtraj 

USAGE_STR = """
# Purpose:
# This script takes as input the path to a folder of files containing the
# dictionary mapping interaction keys to the list of time points in which
# the interaction was present for the trajectory, and generates output
# displaying information on the GPCR-DB numbers, interaction type, and
# frequency for each interaction key.

# Output Format:
# GPCR-DB1 GPCR-DB2 <interaction type> <Frequency>

# Usage:
# python dynamicInterDictToFreq.py <GPCR_DB_FILE> <RECEPTOR_PDB_LOOKUP_FILE> <EXP_REP_DICT_PATH> <PDB_CODE> <OUTPUT_FILE_PATH> <-chainId> <MDTRAJ chain number> <-interlist> <INTERACTION_LIST>

# Arguments:
# <GPCR_DB_FILE> Absolute path to the file containing lookup table converting between amino acid index to GPCR-DB number
# <RECEPTOR_PDB_LOOKUP_FILE> Lookup table convertin between PDB and UNIPROT Code 
# <EXP_REP_DICT_PATH> Absolute path to the folder containing the dictionary of interaction keys and time indices for trajectory 
# <PDB_CODE> User specifies the PDB code for specific associated trajectory 
# <OUTPUT_FILE_PATH> Absolute path to the output file containing the gpcr-db and frequency information 
# <-chainId> Optional flag to provide chain number of the GPCR portion of pdb according to 
# mdtraj nomenclature. (ie chain A in pdb is chain 0 in mdtraj, so user provides '0')
# <INTERACTION_LIST> List of interactions 

# Example 
GPCR_DB_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/gpcrdb-freq-analysis/crystal-gpcrdb-freq-config/All_species_gpcrdb_numbers_strOnly.txt"
RECEPTOR_PDB_LOOKUP_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/gpcrdb-freq-analysis/crystal-gpcrdb-freq-config/receptor_pdb_lookup.txt"
EXP_REP_DICT_PATH="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutputDictionary/MOR-active-noNb-BU72-nature2015/condition-nb-interface-restrained-BU72/rep_1"
PDB_CODE="5C1M"
OUTPUT_FILE_PATH="/scratch/PI/rondror/akma327/DynamicNetworks/results/simulation-analysis/gpcrdb-freq-output/single-cond-rep-freqsum/050516-full/MOR-active-noNb-BU72-nature2015-rep_1.txt"
python dynamicInterDictToFreq.py $GPCR_DB_FILE $RECEPTOR_PDB_LOOKUP_FILE $EXP_REP_DICT_PATH $PDB_CODE $OUTPUT_FILE_PATH -interlist -sb -pc -ps -ts -vdw -hbbb -hbsb -hbss -wb -wb2 

"""

K_MIN_ARG = 7
FULL_INTERACTION_LIST = ['-sb', '-pc', '-ps', '-ts', '-vdw', '-hbbb', '-hbsb', '-hbss', '-rw', '-wb', '-wb2']
INTERACTION_DICT_LABELS = {"-sb":"salt_bridge_result_dict.txt", "-pc":"pi_cation_result_dict.txt",
"-ps":"pi_stacking_result_dict.txt", "-ts":"t_stacking_result_dict.txt", "-vdw":"vanderwaal_result_dict.txt",
"-hbw":"hydrogen_bond_water_result_dict.txt", "-hbbb":"bb_hydrogen_bond_result_dict.txt", "-hbsb":"sb_hydrogen_bond_result_dict.txt",
"-hbss":"ss_hydrogen_bond_result_dict.txt", "-rw":"residue_water_hydrogen_bond_result_dict.txt", "-wb":"water_bond_result_dict.txt",
"-wb2":"extended_water_bond_result_dict.txt"}

unrecognized_acronyms = set()
AMINO_ACIDS = ['ALA', 'ARG', 'ASN', 'ASP', 'CYS', 'GLN', 'GLU', 'GLY', 'HIS', 'ILE','LEU', 'LYS', 'MET', 'PHE', 'PRO', 'SER', 'THR', 'TRP', 'TYR', 'VAL']


# Generate directory and file descriptor 
def genFileDescriptor(OUTPUT_FILE_PATH, mode):
	directory = "/".join(OUTPUT_FILE_PATH.split("/")[:-1])
	if not os.path.exists(directory):
		os.makedirs(directory)
	fw = open(OUTPUT_FILE_PATH, mode)
	return fw

# Takes a full interaction key and returns pair of amino acid index information
# (ie PHE289_3 -- TRP293_3 --> PHE289, TRP293)
def getAminoAcidPair(interaction_key):
	atom1, atom2 = interaction_key.split(" -- ")
	aa1, aa2 = atom1.split("-")[0].split("_")[0].strip(), atom2.split("-")[0].split("_")[0].strip()
	return aa1, aa2 

# Takes a full interaction key and return pair of atoms 
# (ie VAL87-N_3 -- PRO88-N_3 --> (N,N))
# (ie VAL67-N -- HOH9994-OH2 --> (N, OH2))
def getAtomPair(interaction_key):
	ap1, ap2 = interaction_key.split(" -- ")
	resAtom1, resAtom2 = ap1.split("-"), ap2.split("-")
	if(len(resAtom1) !=2):
		atom1 = "-"
	else: 
		atom1 = resAtom1[1].split("_")[0].strip() 
	if(len(resAtom2) !=2):
		atom2 = "-"
	else:
		atom2 = resAtom2[1].split("_")[0].strip()
	return atom1, atom2


def fixAminoAcidNames(key):
	key = key.replace("HSD", "HIS")
	key = key.replace("HSE", "HIS")
	key = key.replace("HSP", "HIS")
	key = key.replace("HIE", "HIS")
	key = key.replace("HIP", "HIS")
	key = key.replace("HID", "HIS")
	key = key.replace("GLH", "GLU")
	key = key.replace("ASH", "ASP")
	key = key.replace("CYP", "CYS")
	key = key.replace("CYX", "CYS")
	return key

# Retrieve GPCR-DB value for specified key
def getGPCRDB(key, gpcrDbDict):
	key = fixAminoAcidNames(key)
	if('HOH' in key):
		return "HOH"
	elif(key not in gpcrDbDict):
		print(key + " not in gpcrDbDict")
		if(key[:3] not in AMINO_ACIDS): unrecognized_acronyms.add(key[:3])
		return "None"
		# return "-"
	return gpcrDbDict[key]

# Takes in the path to the receptor_pdb_lookup_file and generates a dictionary mapping 
# PDB Codes to uniprot numbers
def genPdbToUniprotTable(RECEPTOR_PDB_LOOKUP_FILE):
	pdbToUniprotDict = {}
	f = open(RECEPTOR_PDB_LOOKUP_FILE, 'r')
	for line in f:
		if("#" not in line and line != "\n"):
			uniprot, receptor, pdb = line.split("\t")
			pdbToUniprotDict[pdb.strip()] = uniprot.strip()
	return pdbToUniprotDict

# Parses the full GPCR DB Table and generates the dictionary mapping all amino acids
# of a particular uniprot_code to GPCR-DB numbers 
def genGPCRDBTable(GPCR_DB_FILE, uniprot_code):
	gpcrDbDict = {}
	f = open(GPCR_DB_FILE, 'r')
	for line in f:
		if(line != "\n"):
			uniprot, aa_index, amino_acid, region, gpcrDbNum = line.split("\t")
			if(uniprot.upper() == uniprot_code.upper()):
				key = amino_acid.upper() + str(aa_index.strip())
				value = gpcrDbNum.strip()
				gpcrDbDict[key] = value 
	return gpcrDbDict
			

# Takes as input the path to the interaction dictionary for specific replicate of 
# a single experimental condition. Generate the list of GPCR-DB numbers and frequencies
# by utilizing the gpcrDbDict and then writes results to the output file path. 
def parseInteractionDictionary(fw, interaction_type, EXP_REP_INTERACTION_DICT_PATH, gpcrDbDict, CHAIN_ID=None):
	print("parseInteractionDictionary()", CHAIN_ID, interaction_type)
	if(not os.path.exists(EXP_REP_INTERACTION_DICT_PATH)):
		print("Invalid Experiment Replicate Path")
		exit(1)
	fr = open(EXP_REP_INTERACTION_DICT_PATH, 'r')
	totalFrames = 0
	counter = 0
	for line in fr:
		if("TotalFrames:" in line):
			totalFrames = int(line.split("TotalFrames:")[1])
		if("~" in line):
			line_info = line.split("~")
			atom_pair = line_info[0].strip()
			if(CHAIN_ID != None and "_" in atom_pair): # for sb, pc, ps, ts, vdw case and where CHAIN_ID is specified 
				chain_identifier = "_" + CHAIN_ID
				if(chain_identifier not in atom_pair): 
					# print(atom_pair, chain_identifier)
					continue 
			if(" -- " in atom_pair):
				aa1, aa2 = getAminoAcidPair(atom_pair)
				atom1, atom2 = getAtomPair(atom_pair)
				# print(atom_pair, aa1, aa2, atom1, atom2)
				gpcrDb1, gpcrDb2 = getGPCRDB(aa1, gpcrDbDict), getGPCRDB(aa2, gpcrDbDict)
				# if(not(gpcrDb1 == "-" and gpcrDb2 == "-")):
				if(not(gpcrDb1 == "None" or gpcrDb2 == "None")):
					num_time_points = line_info[1].strip().count(",") + 1 # number commas indicate number of time points
					freq = round(float(num_time_points)/totalFrames,3)
					interaction_type = interaction_type.strip("-")
					fw.write(interaction_type + "\t" + atom1 + "\t" + atom2 + "\t" + gpcrDb1 + "\t" + gpcrDb2 + "\t" + str(freq) + "\n")
					# if(counter % 10 == 0):
						# print(counter, interaction_type, gpcrDb1, gpcrDb2, line_info[0], freq)
					counter += 1


# Driver method that goes through each interaction type and append the GCPR-DB and Frequency values 
def interDictToFreqDriver(EXP_REP_DICT_PATH, OUTPUT_FILE_PATH, INTERACTION_LIST, gpcrDbDict, CHAIN_ID=None):
	tic = time.clock()
	fw = genFileDescriptor(OUTPUT_FILE_PATH, 'w')
	fw.write("# Interaction Type\tAtom1\tAtom2\tGPCRDB1\tGPCRDB2\tFrequency\n")
	for interaction_type in INTERACTION_LIST:
		EXP_REP_INTERACTION_DICT_PATH = EXP_REP_DICT_PATH + "/" + INTERACTION_DICT_LABELS[interaction_type]
		parseInteractionDictionary(fw, interaction_type, EXP_REP_INTERACTION_DICT_PATH, gpcrDbDict, CHAIN_ID)
	toc = time.clock()



if __name__ == "__main__":
	if(len(sys.argv) < K_MIN_ARG):
		print(USAGE_STR)
		exit(1)
	GPCR_DB_FILE = sys.argv[1]
	RECEPTOR_PDB_LOOKUP_FILE = sys.argv[2]
	EXP_REP_DICT_PATH = sys.argv[3]
	PDB_CODE = sys.argv[4]
	OUTPUT_FILE_PATH = sys.argv[5]
	CHAIN_ID = None 
	if('-chainId' in sys.argv):
		CHAIN_ID = sys.argv[sys.argv.index('-chainId') + 1]
	interation_list_index = sys.argv.index("-interlist") + 1
	INTERACTION_LIST = sys.argv[interation_list_index:]
	if('-all' in INTERACTION_LIST): INTERACTION_LIST = FULL_INTERACTION_LIST
	print("Experiment Condition: " + EXP_REP_DICT_PATH)
	pdbToUniprotDict = genPdbToUniprotTable(RECEPTOR_PDB_LOOKUP_FILE)
	uniprot_code = pdbToUniprotDict[PDB_CODE]
	gpcrDbDict = genGPCRDBTable(GPCR_DB_FILE, uniprot_code)
	interDictToFreqDriver(EXP_REP_DICT_PATH, OUTPUT_FILE_PATH, INTERACTION_LIST, gpcrDbDict, CHAIN_ID)
	print("FIX ACRONYMS: ", unrecognized_acronyms)


