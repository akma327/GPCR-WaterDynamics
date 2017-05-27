# Author: Anthony Kai Kwang Ma
# Email: akma327@stanford.edu
# utils.py 

import os 
import sys
import csv
import numpy as np

# Paths to important configuration tables
PDB_TO_UNIPROT_TABLE_PATH = "/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/simulation-analysis/gpcrdb-freq-config/GPCR_PDB_List.txt"
GPCRDB_TABLE_PATH="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/simulation-analysis/gpcrdb-freq-config/All_species_gpcrdb_numbers_strOnly.txt"
GPCRDB_RESIDUE_FREQ_TABLE="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/simulation-analysis/gpcrdb-freq-config/gpcrdb_residue_conservation.txt"

# Single letter to three letter representation of amino acids
aa1to3_dict = {'A':'Ala','R':'Arg','N':'Asn','D':'Asp','C':'Cys','E':'Glu','Q':'Gln','G':'Gly','H':'His','I':'Ile','L':'Leu','K':'Lys','M':'Met','F':'Phe','P':'Pro','S':'Ser','T':'Thr','W':'Trp','Y':'Tyr','V':'Val'}
aa3to1_dict = {'CYS': 'C', 'ASP': 'D', 'SER': 'S', 'ASN': 'N', 'GLN': 'Q', 'LYS': 'K', 'THR': 'T', 'PRO': 'P', 'HIS': 'H', 'PHE': 'F', 'ALA': 'A', 'GLY': 'G', 'ILE': 'I', 'LEU': 'L', 'ARG': 'R', 'TRP': 'W', 'VAL': 'V', 'GLU': 'E', 'TYR': 'Y', 'MET': 'M'}
# Flag to interaction dictionary file names 
flag_to_dict_file = {'sb':'salt_bridge_result_dict.txt', 'pc':'pi_cation_result_dict.txt', 'ps':'pi_stacking_result_dict.txt', 'ts':'t_stacking_result_dict.txt',
'vdw':'vanderwaal_result_dict.txt', 'hbbb':'bb_hydrogen_bond_result_dict.txt', 'hbsb':'sb_hydrogen_bond_result_dict.txt', 'hbss':'ss_hydrogen_bond_result_dict.txt',
'rw':'residue_water_hydrogen_bond_result_dict.txt', 'wb':'water_bond_result_dict.txt', 'wb2':'extended_water_bond_result_dict.txt'}

# Alphabetical list of 20 amino acids
ALPHABETICAL_AA_LIST = ['ALA', 'ARG', 'ASN', 'ASP', 'CYS', 'GLU', 'GLN', 'GLY', 'HIS', 'ILE', 'LEU', 'LYS', 'MET', 'PHE', 'PRO', 'SER', 'THR', 'TRP', 'TYR', 'VAL']

# Conservation Coloring Dictionary 
GRAY_SCALE_DICT={"gray32": "#525252", "gray33": "#545454", "gray30": "#4D4D4D", "gray31": "#4F4F4F", "gray36": "#5C5C5C", "gray37": "#5E5E5E", "gray34": "#575757", "gray35": "#595959", "gray38": "#616161", "gray39": "#636363", "gray8": "#141414", "gray9": "#171717", "gray2": "#050505", "gray3": "#080808", "gray1": "#030303", "gray6": "#0F0F0F", "gray7": "#121212", "gray4": "#0A0A0A", "gray5": "#0D0D0D", "gray21": "#363636", "gray20": "#333333", "gray23": "#3B3B3B", "gray22": "#383838", "gray25": "#404040", "gray24": "#3D3D3D", "gray27": "#454545", "gray26": "#424242", "gray29": "#4A4A4A", "gray28": "#474747", "gray18": "#2E2E2E", "gray19": "#303030", "gray14": "#242424", "gray15": "#262626", "gray16": "#292929", "gray17": "#2B2B2B", "gray10": "#1A1A1A", "gray11": "#1C1C1C", "gray12": "#1F1F1F", "gray13": "#212121", "gray94": "#F0F0F0", "gray95": "#F2F2F2", "gray97": "#F7F7F7", "gray90": "#E5E5E5", "gray91": "#E8E8E8", "gray92": "#EBEBEB", "gray93": "#EDEDED", "gray98": "#FAFAFA", "gray99": "#FCFCFC", "gray83": "#D4D4D4", "gray82": "#D1D1D1", "gray81": "#CFCFCF", "gray80": "#CCCCCC", "gray87": "#DEDEDE", "gray86": "#DBDBDB", "gray85": "#D9D9D9", "gray84": "#D6D6D6", "gray89": "#E3E3E3", "gray88": "#E0E0E0", "gray78": "#C7C7C7", "gray79": "#C9C9C9", "gray76": "#C2C2C2", "gray77": "#C4C4C4", "gray74": "#BDBDBD", "gray75": "#BFBFBF", "gray72": "#B8B8B8", "gray73": "#BABABA", "gray70": "#B3B3B3", "gray71": "#B5B5B5", "gray69": "#B0B0B0", "gray68": "#ADADAD", "gray65": "#A6A6A6", "gray64": "#A3A3A3", "gray67": "#ABABAB", "gray66": "#A8A8A8", "gray61": "#9C9C9C", "gray60": "#999999", "gray63": "#A1A1A1", "gray62": "#9E9E9E", "gray58": "#949494", "gray59": "#969696", "gray50": "#7F7F7F", "gray51": "#828282", "gray52": "#858585", "gray53": "#878787", "gray54": "#8A8A8A", "gray55": "#8C8C8C", "gray56": "#8F8F8F", "gray57": "#919191", "gray47": "#787878", "gray46": "#757575", "gray45": "#737373", "gray44": "#707070", "gray43": "#6E6E6E", "gray42": "#6B6B6B", "gray41": "#696969", "gray40": "#666666", "gray49": "#7D7D7D", "gray48": "#7A7A7A", "gray100": "#FFFFFF"}


# Bundle plot drawing color 
ORANGE="FFA500"
CYAN="00FFFF"
GREEN="#008000"
LINE_COLOR_DICT = {"hbss":ORANGE , "hbbb": ORANGE, "hbsb": ORANGE, "wb": CYAN, "wb2": GREEN}
LINE_COLOR_TO_TYPE_DICT = {ORANGE:"hb", CYAN:"wb", GREEN:"wb2"}


# Reads json file into json string 
def loadJsonString(POLAR_NETWORK_JSON1):
	f = open(POLAR_NETWORK_JSON1, 'r')
	json_str1 = ""
	for line in f:
		json_str1 += line
	return json_str1


# Find column index for EXP_REP_COLUMN_ID
def findColumnIndex(column_labels, EXP_REP_COLUMN_ID):
	for index, v in enumerate(column_labels):
		if (EXP_REP_COLUMN_ID in v):
			return index 
	print("EXP_REP_COLUMN_ID: " + EXP_REP_COLUMN_ID + " not found in INTERACTION_FOOTPRINT_TABLE.")
	exit(1)	


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
		print(res + " not found.")
		return "-"
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
# Output {"ASP112": "1x50", "ARG116":"2x45"}
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
	with open(INTERACTION_FOOTPRINT_TABLE, 'rU') as f: 
		reader = csv.reader(f, delimiter="\t")
		d = list(reader)
	darr = np.array(d)
	column_labels = list(darr[0,:])
	column_index = findColumnIndex(column_labels, EXP_REP_COLUMN_ID)
	interaction_row_labels = list(darr[:,0])[1:]
	exp_rep_freq_vals = map(float, list(darr[:, column_index])[1:])
	row_label_freq = [(row_label, exp_rep_freq_vals[index]) for index, row_label in enumerate(interaction_row_labels)]
	return row_label_freq



# Parses "LYS384-NZ_1 -- GLU382-OE2_1" into ("LYS384", "GLU382")
def extractResPair(resAtomPair):
	resatom1, resatom2 = resAtomPair.split(" -- ")
	res1, res2 = resatom1.split("-")[0].strip(), resatom2.split("-")[0].strip()
	return res1, res2

# Parses "LYS384-NZ_1 -- GLU382-OE2_1" into (GPCRDB1, GPCRDB2)
def extractGpcrdbPair(resAtomPair, EXP_COND_PDB_DICT):
	res1, res2 = extractResPair(resAtomPair)
	return getGPCRDB(res1, EXP_COND_PDB_DICT), getGPCRDB(res2, EXP_COND_PDB_DICT)
