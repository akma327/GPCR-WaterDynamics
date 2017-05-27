# Author: Anthony Kai Kwang Ma
# Email: akma327@stanford.edu
# Date: 10/13/16
# competing_network_utils.py 

import os 
import sys
import csv
import numpy as np

PDB_TO_UNIPROT_TABLE_PATH = "/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/simulation-analysis/gpcrdb-freq-config/GPCR_PDB_List.txt"
GPCRDB_TABLE_PATH="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/simulation-analysis/gpcrdb-freq-config/All_species_gpcrdb_numbers_strOnly.txt"

aa1to3_dict = {'A':'Ala','R':'Arg','N':'Asn','D':'Asp','C':'Cys','E':'Glu','Q':'Gln','G':'Gly','H':'His','I':'Ile','L':'Leu','K':'Lys','M':'Met','F':'Phe','P':'Pro','S':'Ser','T':'Thr','W':'Trp','Y':'Tyr','V':'Val'}

flag_to_dict_file = {'sb':'salt_bridge_result_dict.txt', 'pc':'pi_cation_result_dict.txt', 'ps':'pi_stacking_result_dict.txt', 'ts':'t_stacking_result_dict.txt',
'vdw':'vanderwaal_result_dict.txt', 'hbbb':'bb_hydrogen_bond_result_dict.txt', 'hbsb':'sb_hydrogen_bond_result_dict.txt', 'hbss':'ss_hydrogen_bond_result_dict.txt',
'rw':'residue_water_hydrogen_bond_result_dict.txt', 'wb':'water_bond_result_dict.txt', 'wb2':'extended_water_bond_result_dict.txt'}


# Bundle plot drawing color 
ORANGE="FFA500"
CYAN="00FFFF"
GREEN="#008000"
LINE_COLOR_DICT = {"hbss":ORANGE , "hbbb": ORANGE, "hbsb": ORANGE, "wb": CYAN, "wb2": GREEN}
LINE_COLOR_TO_TYPE_DICT = {ORANGE:"hb", CYAN:"wb", GREEN:"wb2"}



# Compute tanimoto distance
def tanimotoScore(bitString1, bitString2, TotalFrames):
	intersect = set(bitString1) & set(bitString2)
	union = set(bitString1) | set(bitString2)
	tanimoto = round(float(len(intersect))/len(union),4)
	return tanimoto


# Rename amino acids to common name
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


# Retrive gpcrdb from dictionary for specified residue. Return "-" if not found
def getGPCRDB(res, GPCRDB_DICT):
	res = fixAminoAcidNames(res)
	if(res not in GPCRDB_DICT):
		return "None"
	return GPCRDB_DICT[res]


# Create directory if not exist
def createDirectory(OUTPUT_FILE):
	directory = os.path.dirname(OUTPUT_FILE)
	if not os.path.exists(directory):
		os.makedirs(directory)

# Generate write file descriptor 
def genWriteDescriptor(OUTPUT_FILE):
	createDirectory(OUTPUT_FILE)
	return open(OUTPUT_FILE, 'w')

# Retrieve Uniprot Code for the PDB_CODE from pdb_to_uniprot_table_path
def getUniprotCode(PDB_CODE):
	f = open(PDB_TO_UNIPROT_TABLE_PATH, 'r')
	for line in f:
		if(line == "\n"): continue 
		l_info = line.split("\t")
		uniprot_code, pdb = l_info[0].strip(), l_info[2].strip()
		if(PDB_CODE.upper() == pdb.upper()): return uniprot_code.upper()
	print("PDB_CODE Not Found in PDB To Uniprot Table")
	exit(1)


# Given uniprot code reads through GPCRDB_TABLE_PATH to generate the amino acid
# to gpcrdb number table. 
def genGpcrdbDict(UNIPROT_CODE):
	GPCRDB_DICT = {}
	f = open(GPCRDB_TABLE_PATH, 'r')
	for line in f: 
		l_info = line.split("\t")
		uniprot, resnum, resname, gpcrdb = l_info[0].strip(), l_info[1].strip(), l_info[2].strip(), l_info[4].strip()
		if(uniprot.upper() == UNIPROT_CODE.upper()):
			key = resname.upper() + resnum 
			GPCRDB_DICT[key] = gpcrdb
	return GPCRDB_DICT


# Generates the residue to gpcrdb table for given pdb
def genResidueToGpcrdbTable(PDB_CODE):
	UNIPROT_CODE = getUniprotCode(PDB_CODE)
	GPCRDB_DICT = genGpcrdbDict(UNIPROT_CODE)
	return GPCRDB_DICT


# Find column index for EXP_REP_COLUMN_ID
def findColumnIndex(column_labels, EXP_REP_COLUMN_ID):
	for index, v in enumerate(column_labels):
		if (EXP_REP_COLUMN_ID in v):
			return index 
	print("EXP_REP_COLUMN_ID: " + EXP_REP_COLUMN_ID + " not found in INTERACTION_FOOTPRINT_TABLE.")
	exit(1)	

# Input: Interaction Footprint Table and specified column index
# Function: Extract list of pairs of atoms and associated interaction type and frequency value 
# Output: List of tuples containing (interaction_row_label, frequency_value)
def processInteractionFootprintTable(INTERACTION_FOOTPRINT_TABLE, EXP_REP_COLUMN_ID):
	with open(INTERACTION_FOOTPRINT_TABLE) as f: 
		reader = csv.reader(f, delimiter="\t")
		d = list(reader)
	darr = np.array(d)
	column_labels = list(darr[0,:])
	column_index = findColumnIndex(column_labels, EXP_REP_COLUMN_ID)
	interaction_row_labels = list(darr[:,0])[1:]
	exp_rep_freq_vals = map(float, list(darr[:, column_index])[1:])
	row_label_freq = [(row_label, exp_rep_freq_vals[index]) for index, row_label in enumerate(interaction_row_labels)]
	return row_label_freq


# For every interaction in the polar network filter list append to a list the tuple
# with information regarding (amino acid 1, amino acid 2, interaction type)
def genTypeResiduePairList(FILTER_LIST):
	type_residue_pair_list = []
	f = open(FILTER_LIST, 'r')
	for line in f:
		if(" -- " in line):
			linfo = line.split("@")
			respair, interaction_type = linfo[0].strip(), linfo[1].strip()
			aapair = respair.split(" -- ")
			short_aa1, short_aa2 = aapair[0].strip(), aapair[1].strip()
			aa1 = aa1to3_dict[short_aa1[0:1]].upper() + short_aa1[1:]
			aa2 = aa1to3_dict[short_aa2[0:1]].upper() + short_aa2[1:]
			key1, key2 = (aa1, aa2, interaction_type), (aa2, aa1, interaction_type)
			if(key1 not in type_residue_pair_list and key2 not in type_residue_pair_list):
				type_residue_pair_list.append(key1)
	return list(set(type_residue_pair_list))


# Extract list of amino acid pairs and interaction type from original polar network P
# Output: [(5x40, 6x30, "wb"), ...]
def polarGpcrdbPairList(POLAR_NETWORK_LIST, POLAR_NETWORK_GPCRDB_DICT):
	polar_gpcrdb_pair_list = []
	f = open(POLAR_NETWORK_LIST, 'r')
	for line in f:
		if(" -- " in line):
			linfo = line.split("@")
			respair, interaction_type = linfo[0].strip(), linfo[1].strip()
			aapair = respair.split(" -- ")
			short_aa1, short_aa2 = aapair[0].strip(), aapair[1].strip()
			aa1 = aa1to3_dict[short_aa1[0:1]].upper() + short_aa1[1:]
			aa2 = aa1to3_dict[short_aa2[0:1]].upper() + short_aa2[1:]
			gpcrdb1, gpcrdb2 = getGPCRDB(aa1, POLAR_NETWORK_GPCRDB_DICT), getGPCRDB(aa2, POLAR_NETWORK_GPCRDB_DICT)
			key1, key2 = (gpcrdb1, gpcrdb2, interaction_type), (gpcrdb2, gpcrdb1, interaction_type)
			if(key1 not in polar_gpcrdb_pair_list and key2 not in polar_gpcrdb_pair_list):
				polar_gpcrdb_pair_list.append(key1)
	return list(set(polar_gpcrdb_pair_list))



# Extract list of amino acids that are part of original polar network P
def polarGpcrdbList(polar_gpcrdb_pair_list):
	polar_gpcrdb_list = []
	for gpcrdbpair in polar_gpcrdb_pair_list:
		polar_gpcrdb_list.append(gpcrdbpair[0])
		polar_gpcrdb_list.append(gpcrdbpair[1])
	return list(set(polar_gpcrdb_list))



# Get PDB code for polar network list 
def getPolarNetworkPDB(POLAR_NETWORK_LIST):
	f = open(POLAR_NETWORK_LIST, 'r')
	for line in f:
		if("PDB" in line):
			return line.split(":")[1].strip()



# Parses "LYS384-NZ_1 -- GLU382-OE2_1" into ("LYS384", "GLU382")
def extractResPair(resAtomPair):
	resatom1, resatom2 = resAtomPair.split(" -- ")
	res1, res2 = resatom1.split("-")[0].strip(), resatom2.split("-")[0].strip()
	return res1, res2

# Parses "LYS384-NZ_1 -- GLU382-OE2_1" into (GPCRDB1, GPCRDB2)
def extractGpcrdbPair(resAtomPair, EXP_COND_PDB_DICT):
	res1, res2 = extractResPair(resAtomPair)
	return getGPCRDB(res1, EXP_COND_PDB_DICT), getGPCRDB(res2, EXP_COND_PDB_DICT)


