# Author: Anthony Kai Kwang Ma
# Email: akma327@stanford.edu
# dynamic_inter_dict_to_state_decomp_unionized_freq.py

import sys
import os 
import ast 
import time 
import numpy as np
import ast 

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
# frequencies for each interaction key stratified by state decomposition 
# of every frame (active, I1, I2, I3, inactive). Furthermore, these frequencies
# are unionized over all atom pairs belonging to the same GPCRDB pairing. 
# wb and wb2 are also unionized. If implemented lwb and lwb2 then just add them
# to the INTERACTION_LIST, nothing else needs to be done. 

# Output Format:
# GPCR-DB1 GPCR-DB2 <interaction type> <Inactive freq> <Intermediate 1 freq> <Intermediate 2 freq> <Intermediate 3 freq> <Active freq>

# Usage:
# python dynamic_inter_dict_to_state_decomp_unionized_freq.py <PDB_CODE> <EXP_REP_DICT_PATH> <STATE_DECOMP_FILE> <OUTPUT_FILE_PATH> <-chainId> <MDTRAJ chain number> <-interlist> <INTERACTION_LIST>

# Arguments:
# <PDB_CODE> User specifies the PDB code for specific associated trajectory 
# <EXP_REP_DICT_PATH> Absolute path to the folder containing the dictionary of interaction keys and time indices for trajectory 
# <STATE_DECOMP_FILE> Absolute path to the file containing state decomposition for every frame for simulation
# <OUTPUT_FILE_PATH> Absolute path to the output file containing the gpcr-db and frequency information 
# <-chainId> Optional flag to provide chain number of the GPCR portion of pdb according to 
# mdtraj nomenclature. (ie chain A in pdb is chain 0 in mdtraj, so user provides '0')
# <INTERACTION_LIST> List of interactions 

# Example 

PDB_CODE="2RH1"
EXP_REP_DICT_PATH="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutputDictionary/B2AR-inactive-carazalol-cell2013b/condition-1/rep_1/050516_NONHB_DEFAULT_HB_3.5_70"
STATE_DECOMP_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutputDictionary/B2AR-inactive-carazalol-cell2013b/condition-1/rep_1/050516_NONHB_DEFAULT_HB_3.5_70/state_classification.txt"
OUTPUT_FILE_PATH="/scratch/PI/rondror/akma327/DynamicNetworks/results/state-decomposition/single-cond-rep-decomp-freqsum/080816_state_decomp_freq/B2AR:inactive:carazalol:15us:D79+,D130-.txt"
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/analysis/state-decomposition
python dynamic_inter_dict_to_state_decomp_unionized_freq.py $PDB_CODE $EXP_REP_DICT_PATH $STATE_DECOMP_FILE $OUTPUT_FILE_PATH -chainId 0 -interlist -wb -wb2

"""

GPCR_DB_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/simulation-analysis/gpcrdb-freq-config/All_species_gpcrdb_numbers_strOnly.txt"
RECEPTOR_PDB_LOOKUP_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/simulation-analysis/gpcrdb-freq-config/receptor_pdb_lookup.txt"

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
		# print(key + " not in gpcrDbDict")
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


# Parse state decomposition into dictionary of format
# key = {state_num: [frame_indices]}
def parseStateDecomp(STATE_DECOMP_FILE):
	state_decompositions = {state:[] for state in range(1,6)}
	f = open(STATE_DECOMP_FILE, 'r')
	for line in f:
		frame, state = line.strip().split("\t")
		state_decompositions[int(state)].append(int(frame))
	return state_decompositions
			

def getExpCondProperties(EXP_REP_INTERACTION_DICT_PATH):

	"""
		Makes a pass through experiment replicate interaction dictionary file 
		to capture the number of frames and keys in the simulation
	"""

	f = open(EXP_REP_INTERACTION_DICT_PATH)
	numKeys = 0
	numFrames = 0
	for line in f:
		if("TotalFrames:" in line):
			numFrames = int(line.split("TotalFrames:")[1])
		if("~" in line):
			numKeys += 1
	return numFrames, numKeys


def genRawInteractionBinaryMatrix(numRows, numKeys, interaction_type, EXP_REP_INTERACTION_DICT_PATH, gpcrDbDict, CHAIN_ID = None):

	"""
		Input: Absolute path to experiment replicate interaction dictionary file
		
		Parses the dictionary file into a matrix of the following format

				t1 t2 t3 ...  	t10 t11 t12
		a1-b1 	0  1  1  		 1   1   0
		a2-b2 	1  1  0  		 0   1   0
		a3-b3 	0  0  0  		 0   1   0
		 ...   			 ...

	"""

	print("genRawInteractionBinaryMatrix()")
	### Check for valid experiment replicate dictionary path 
	if(not os.path.exists(EXP_REP_INTERACTION_DICT_PATH)):
		print("Invalid Experiment Replicate Path")
		exit(1)

	rowLabels = [None]*numKeys # (interaction_type, gpcrdb1, gpcrdb2)
	rawBinaryMatrix = np.zeros((numKeys, numRows))
	fr = open(EXP_REP_INTERACTION_DICT_PATH, 'r')
	totalFrames = 0
	counter = 0
	for line in fr:
		### Determine number of frames
		if("TotalFrames:" in line):
			totalFrames = int(line.split("TotalFrames:")[1])

		### Parse every interaction key
		if("~" in line):
			# if(counter > 50): break
			counter += 1
			line_info = line.split("~")
			atom_pair = line_info[0].strip()

			### Account for chain identifiers
			if(CHAIN_ID != None and "_" in atom_pair): # for sb, pc, ps, ts, vdw case and where CHAIN_ID is specified 
				chain_identifier = "_" + CHAIN_ID
				if(chain_identifier not in atom_pair): 
					continue 

			### Parse bit string 
			if(" -- " in atom_pair):
				aa1, aa2 = getAminoAcidPair(atom_pair)
				atom1, atom2 = getAtomPair(atom_pair)
				gpcrDb1, gpcrDb2 = getGPCRDB(aa1, gpcrDbDict), getGPCRDB(aa2, gpcrDbDict)
				if(not(gpcrDb1 == "None" or gpcrDb2 == "None")):
					interaction_type = interaction_type.strip("-")
					rowLabel = (interaction_type, atom1, atom2, gpcrDb1, gpcrDb2)
					print(counter, rowLabel)
					rowLabels[counter - 1] = rowLabel
					activeTimePoints = ast.literal_eval(line_info[1].strip())
					rawBinaryMatrix[counter - 1][[activeTimePoints]] = 1
			### Increment counter
	# rawBinaryMatrix = np.array(rawBinaryMatrix)
	rawBinaryMatrix = list(rawBinaryMatrix)
	return rowLabels, rawBinaryMatrix


def orderGpcrdb(gpcrdb1, gpcrdb2):
	tm1, resid1 = map(int, gpcrdb1.split("x"))
	tm2, resid2 = map(int, gpcrdb2.split("x"))
	if(tm1 < tm2): return (gpcrdb1, gpcrdb2)
	elif(tm2 < tm1): return (gpcrdb2, gpcrdb1)
	else:
		if(resid1 < resid2): return (gpcrdb1, gpcrdb2)
		else: return (gpcrdb2, gpcrdb1)


def calcLabelIndexGroups(rowLabels, rawBinaryMatrix):
	"""
		Group indices for rows that share the same gpcrdb pair
	"""

	label_index_groups = {}
	for index, label in enumerate(rowLabels):
		if(label == None): continue
		interaction_type, atom1, atom2, gpcrdb1, gpcrdb2 = label
		gpcrdb_pair_key = orderGpcrdb(gpcrdb1, gpcrdb2)
		if(gpcrdb_pair_key not in label_index_groups):
			label_index_groups[gpcrdb_pair_key] = [index]
		else:
			label_index_groups[gpcrdb_pair_key].append(index)
	return label_index_groups

def or_op(bitVectors):
	def single_frame_or(bitVectors, frame_index):
		for vec in bitVectors:
			if(vec[frame_index] == 1): return 1
		return 0

	or_vector = []
	numFrames = len(bitVectors[0])
	for frame_index in range(numFrames):
		or_vector.append(single_frame_or(bitVectors, frame_index))

	return or_vector


def unionizeBinaryMatrix(rowLabels, rawBinaryMatrix):
	print("unionizeBinaryMatrix()")
	label_index_groups = calcLabelIndexGroups(rowLabels, rawBinaryMatrix)
	
	### Generate unionized raw Binary Matrix
	unionRowLabels = []
	unionRawBinaryMatrix = []

	for key in label_index_groups:
		unionRowLabels.append(key)

		contact_group = []
		for index in label_index_groups[key]:
			contact_group.append(rawBinaryMatrix[index])

		### Perform or operation on contact_group
		or_vector = or_op(contact_group)

		### unionRawBinaryMatrix.append(or_contact_group)
		unionRawBinaryMatrix.append(or_vector)

	unionRawBinaryMatrix = np.array(unionRawBinaryMatrix)

	return unionRowLabels, unionRawBinaryMatrix

def stratifyBinaryMatrix(rawBinaryMatrix, state_decompositions):

	"""
		Use state decomposition to stratify the frames into five sub matrices that
		cluster all frames of the same conformational state. 
	"""

	print("stratifyBinaryMatrix()")
	inactive_matrix = rawBinaryMatrix[:,state_decompositions[1]]
	i1_matrix = rawBinaryMatrix[:, state_decompositions[2]]
	i2_matrix = rawBinaryMatrix[:, state_decompositions[3]]
	i3_matrix = rawBinaryMatrix[:, state_decompositions[4]]
	active_matrix = rawBinaryMatrix[:, state_decompositions[5]]
	return inactive_matrix, i1_matrix, i2_matrix, i3_matrix, active_matrix


def calcStateFrequency(row_index, state_matrix, num_state_frames):

	"""
		For a row_index corresponding to a particular interaction key, 
		calculate the frequency of this interaction in the conformational
		state X represented by state matrix by computing the following.
		state_freq = number of frames with a 1/ number of frames with state X
	"""
	print("calcStateFrequency()")
	if (num_state_frames == 0): return 0
	return float(sum(state_matrix[row_index]))/num_state_frames


def parseStateFrequencies(fw, rowLabels, rawBinaryMatrix, state_decompositions):

	"""
		Use state decomposition file to stratify the frames into five sub matrices that
		cluster all frames of the same conformational state. 

		For every interaction key (row) in the sub matrix, divide the number of "1's" by
		the number of frames for a conformational state to determine the frequency of 
		an interaction within a conformational state. 

		Report frequency values for inactive, I1, I2, I3, and active state for each interaction key
	"""

	print("RawBinaryMatrix: ", rawBinaryMatrix, len(rawBinaryMatrix), len(rawBinaryMatrix[0]))
	inactive_matrix, i1_matrix, i2_matrix, i3_matrix, active_matrix = stratifyBinaryMatrix(rawBinaryMatrix, state_decompositions)

	### Compute conformation state frequencies for every interaction key
	for index, row in enumerate(rowLabels):
		if(row == None): continue
		print("out: ", row)
		# interaction_type, atom1, atom2, gpcrDb1, gpcrDb2 = row
		gpcrDb1, gpcrDb2 = row
		inactive_freq = round(calcStateFrequency(index, inactive_matrix, len(inactive_matrix[0])),3)
		i1_freq = round(calcStateFrequency(index, i1_matrix, len(i1_matrix[0])),3)
		i2_freq = round(calcStateFrequency(index, i2_matrix, len(i2_matrix[0])),3)
		i3_freq = round(calcStateFrequency(index, i3_matrix, len(i3_matrix[0])),3)
		active_freq = round(calcStateFrequency(index, active_matrix, len(active_matrix[0])),3)
		fw.write(gpcrDb1 + "\t" + gpcrDb2 + "\t" + str(inactive_freq) + "\t" + str(i1_freq) + "\t" + str(i2_freq) + "\t" + str(i3_freq) + "\t" + str(active_freq) + "\n")
		# fw.write(interaction_type + "\t" + atom1 + "\t" + atom2 + "\t" + gpcrDb1 + "\t" + gpcrDb2 + "\t" + str(inactive_freq) + "\t" + str(i1_freq) + "\t" + str(i2_freq) + "\t" + str(i3_freq) + "\t" + str(active_freq) + "\n")


def parseInteractionDictionary(state_decompositions, interaction_type, EXP_REP_INTERACTION_DICT_PATH, gpcrDbDict, CHAIN_ID=None):

	"""
		Takes as input the path to the interaction dictionary for specific replicate of 
		a single experimental condition. Generate the list of GPCR-DB numbers and frequencies
		by utilizing the gpcrDbDict and then writes results to the output file path. 
		
		Convert the interaction dictionary to a matrix with rows being interaction labels,
		columns being time points, and cell entries being 1 and 0 being present and absent
		interaction at the time point. 
	"""

	print("parseInteractionDictionary()")
	numRows, numKeys = getExpCondProperties(EXP_REP_INTERACTION_DICT_PATH)
	rowLabels, rawBinaryMatrix = genRawInteractionBinaryMatrix(numRows, numKeys, interaction_type, EXP_REP_INTERACTION_DICT_PATH, gpcrDbDict, CHAIN_ID)
	return rowLabels, rawBinaryMatrix

	

def genAggregateInteractionDictionary(EXP_REP_DICT_PATH, state_decompositions, gpcrDbDict, CHAIN_ID=None):

	"""
		Combine each of the individual rowLabel and interactionBinaryMatrix 
	"""
	rowLabels,rawBinaryMatrix = [], []

	for interaction_type in INTERACTION_LIST:
		EXP_REP_INTERACTION_DICT_PATH = EXP_REP_DICT_PATH + "/" + INTERACTION_DICT_LABELS[interaction_type]
		rLabel, rawBinMat = parseInteractionDictionary(state_decompositions, interaction_type, EXP_REP_INTERACTION_DICT_PATH, gpcrDbDict, CHAIN_ID)
		rowLabels += rLabel
		rawBinaryMatrix += rawBinMat

	return rowLabels, np.array(rawBinaryMatrix)




def interDictToFreqDriver(EXP_REP_DICT_PATH, STATE_DECOMP_FILE, OUTPUT_FILE_PATH, INTERACTION_LIST, gpcrDbDict, CHAIN_ID=None):
	"""
		Driver method that goes through each interaction type and 
		append the GCPR-DB and Frequency values 
	"""

	tic = time.clock()
	state_decompositions = parseStateDecomp(STATE_DECOMP_FILE)

	aggRowLabels, aggRawBinaryMatrix = genAggregateInteractionDictionary(EXP_REP_DICT_PATH, state_decompositions, gpcrDbDict, CHAIN_ID)
	print("agg", aggRowLabels)
	print("agg", aggRawBinaryMatrix, len(aggRawBinaryMatrix), len(aggRawBinaryMatrix[0]))

	unionRowLabels, unionRawBinaryMatrix = unionizeBinaryMatrix(aggRowLabels, aggRawBinaryMatrix)
	print("union", unionRowLabels)
	print("union", unionRawBinaryMatrix, len(unionRawBinaryMatrix), len(unionRawBinaryMatrix[0]))

	fw = genFileDescriptor(OUTPUT_FILE_PATH, 'w')
	fw.write("# GPCRDB1\tGPCRDB2\tInactive Freq\tIntermediate1 Freq\tIntermediate2 Freq\tIntermediate3 Freq\tActive Freq\n")
	parseStateFrequencies(fw, unionRowLabels, unionRawBinaryMatrix, state_decompositions)
	# fw.write("# Interaction Type\tAtom1\tAtom2\tGPCRDB1\tGPCRDB2\tInactive Freq\tIntermediate1 Freq\tIntermedaite2 Freq\tIntermediate3 Freq\tActive Freq\n")
	
	
	toc = time.clock()
	return toc - tic



if __name__ == "__main__":
	if(len(sys.argv) < K_MIN_ARG):
		print(USAGE_STR)
		exit(1)

	### Retrieve Parameters
	PDB_CODE = sys.argv[1]
	EXP_REP_DICT_PATH = sys.argv[2]
	STATE_DECOMP_FILE = sys.argv[3]
	OUTPUT_FILE_PATH = sys.argv[4]
	CHAIN_ID = None 
	if('-chainId' in sys.argv):
		CHAIN_ID = sys.argv[sys.argv.index('-chainId') + 1]
	interation_list_index = sys.argv.index("-interlist") + 1
	INTERACTION_LIST = sys.argv[interation_list_index:]
	if('-all' in INTERACTION_LIST): INTERACTION_LIST = FULL_INTERACTION_LIST

	print("Experiment Condition: " + EXP_REP_DICT_PATH)

	### Generate GPCRDB Table
	pdbToUniprotDict = genPdbToUniprotTable(RECEPTOR_PDB_LOOKUP_FILE)
	uniprot_code = pdbToUniprotDict[PDB_CODE]
	gpcrDbDict = genGPCRDBTable(GPCR_DB_FILE, uniprot_code)

	### Driver Method
	runTime = interDictToFreqDriver(EXP_REP_DICT_PATH, STATE_DECOMP_FILE, OUTPUT_FILE_PATH, INTERACTION_LIST, gpcrDbDict, CHAIN_ID)
	print("Done ... Run Time : " + str(runTime))


