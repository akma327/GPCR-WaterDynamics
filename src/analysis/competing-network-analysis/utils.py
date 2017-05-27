# Author: Anthony Kai Kwang Ma
# Email: akma327@stanford.edu
# Date: 04/04/2017
# utils.py


import os 
import sys
import csv
import json
import re
import ast
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
'rw':'residue_water_hydrogen_bond_result_dict.txt', 'wb':'water_bond_result_dict.txt', 'wb2':'extended_water_bond_result_dict.txt',
'hlb':'lb_hydrogen_bond_result_dict.txt', 'hls':'ls_hydrogen_bond_result_dict.txt', 'lw':'ligand_water_hydrogen_bond_result_dict.txt', 
'lwb':'ligand_water_bond_result_dict.txt', 'lwb2':'ligand_extended_water_bond_result_dict.txt'}

# Alphabetical list of 20 amino acids
ALPHABETICAL_AA_LIST = ['ALA', 'ARG', 'ASN', 'ASP', 'CYS', 'GLU', 'GLN', 'GLY', 'HIS', 'ILE', 'LEU', 'LYS', 'MET', 'PHE', 'PRO', 'SER', 'THR', 'TRP', 'TYR', 'VAL']

# Conservation Coloring Dictionary 
GRAY_SCALE_DICT={"gray32": "#525252", "gray33": "#545454", "gray30": "#4D4D4D", "gray31": "#4F4F4F", "gray36": "#5C5C5C", "gray37": "#5E5E5E", "gray34": "#575757", "gray35": "#595959", "gray38": "#616161", "gray39": "#636363", "gray8": "#141414", "gray9": "#171717", "gray2": "#050505", "gray3": "#080808", "gray1": "#030303", "gray6": "#0F0F0F", "gray7": "#121212", "gray4": "#0A0A0A", "gray5": "#0D0D0D", "gray21": "#363636", "gray20": "#333333", "gray23": "#3B3B3B", "gray22": "#383838", "gray25": "#404040", "gray24": "#3D3D3D", "gray27": "#454545", "gray26": "#424242", "gray29": "#4A4A4A", "gray28": "#474747", "gray18": "#2E2E2E", "gray19": "#303030", "gray14": "#242424", "gray15": "#262626", "gray16": "#292929", "gray17": "#2B2B2B", "gray10": "#1A1A1A", "gray11": "#1C1C1C", "gray12": "#1F1F1F", "gray13": "#212121", "gray94": "#F0F0F0", "gray95": "#F2F2F2", "gray96": "#F5F5F5", "gray97": "#F7F7F7", "gray90": "#E5E5E5", "gray91": "#E8E8E8", "gray92": "#EBEBEB", "gray93": "#EDEDED", "gray98": "#FAFAFA", "gray99": "#FCFCFC", "gray83": "#D4D4D4", "gray82": "#D1D1D1", "gray81": "#CFCFCF", "gray80": "#CCCCCC", "gray87": "#DEDEDE", "gray86": "#DBDBDB", "gray85": "#D9D9D9", "gray84": "#D6D6D6", "gray89": "#E3E3E3", "gray88": "#E0E0E0", "gray78": "#C7C7C7", "gray79": "#C9C9C9", "gray76": "#C2C2C2", "gray77": "#C4C4C4", "gray74": "#BDBDBD", "gray75": "#BFBFBF", "gray72": "#B8B8B8", "gray73": "#BABABA", "gray70": "#B3B3B3", "gray71": "#B5B5B5", "gray69": "#B0B0B0", "gray68": "#ADADAD", "gray65": "#A6A6A6", "gray64": "#A3A3A3", "gray67": "#ABABAB", "gray66": "#A8A8A8", "gray61": "#9C9C9C", "gray60": "#999999", "gray63": "#A1A1A1", "gray62": "#9E9E9E", "gray58": "#949494", "gray59": "#969696", "gray50": "#7F7F7F", "gray51": "#828282", "gray52": "#858585", "gray53": "#878787", "gray54": "#8A8A8A", "gray55": "#8C8C8C", "gray56": "#8F8F8F", "gray57": "#919191", "gray47": "#787878", "gray46": "#757575", "gray45": "#737373", "gray44": "#707070", "gray43": "#6E6E6E", "gray42": "#6B6B6B", "gray41": "#696969", "gray40": "#666666", "gray49": "#7D7D7D", "gray48": "#7A7A7A", "gray100": "#FFFFFF"}


INTERACTION_DICT_LABELS = {"-sb":"salt_bridge_result_dict.txt", "-pc":"pi_cation_result_dict.txt",
"-ps":"pi_stacking_result_dict.txt", "-ts":"t_stacking_result_dict.txt", "-vdw":"vanderwaal_result_dict.txt",
"-hbw":"hydrogen_bond_water_result_dict.txt", "-hbbb":"bb_hydrogen_bond_result_dict.txt", "-hbsb":"sb_hydrogen_bond_result_dict.txt",
"-hbss":"ss_hydrogen_bond_result_dict.txt", "-rw":"residue_water_hydrogen_bond_result_dict.txt", "-wb":"water_bond_result_dict.txt",
"-wb2":"extended_water_bond_result_dict.txt", "-hlb": "lb_hydrogen_bond_result_dict.txt", "-hls": "ls_hydrogen_bond_result_dict.txt",
"-lw": "ligand_water_hydrogen_bond_result_dict.txt", "-lwb": "ligand_water_bond_result_dict.txt", "-lwb2": "ligand_extended_water_bond_result_dict.txt"}

AMINO_ACIDS = ['ALA', 'ARG', 'ASN', 'ASP', 'CYS', 'GLN', 'GLU', 'GLY', 'HIS', 'ILE','LEU', 'LYS', 'MET', 'PHE', 'PRO', 'SER', 'THR', 'TRP', 'TYR', 'VAL']


# Bundle plot drawing color 
ORANGE="FFA500"
CYAN="00FFFF"
GREEN="#008000"


# COLOR CODING For different receptors
MOR = "00FFFF"
D4R = "FFFF00"
M2R = "FF00FF"
B2AR = "FFA500"
DOR = "#00FF00"

RECEPTOR_TO_COLOR = {"MOR": "00FFFF", "D4R": "FFFF00", "M2R" : "FF00FF", "B2AR" : "FFA500", "DOR" : "00FF00", "RHO": "800000", "US28": "#FF0000"}

LINE_COLOR_DICT = {"hbss":ORANGE , "hbbb": ORANGE, "hbsb": ORANGE, "wb": CYAN, "wb2": GREEN, "wb_combined" : B2AR}
LINE_COLOR_TO_TYPE_DICT = {ORANGE:"hb", CYAN:"wb", GREEN:"wb2"}


def atoi(text):
    return int(text) if text.isdigit() else text

def natural_keys(text):
    return [ atoi(c) for c in re.split('(\d+)', text) ]


def getFlareplotNodes(FLAREPLOT_FILE):
	fplot = json.loads(loadJsonString(FLAREPLOT_FILE))
	return fplot["nodes"]

def getFlareplotEdges(FLAREPLOT_FILE):
	fplot = json.loads(loadJsonString(FLAREPLOT_FILE))
	return fplot["edges"]


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
	# print("EXP_REP_COLUMN_ID: " + EXP_REP_COLUMN_ID + " not found in INTERACTION_FOOTPRINT_TABLE.")
	exit(1)	


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

# Retrieve GPCR-DB value for specified key
def getGPCRDB(key, gpcrDbDict):
	key = fixAminoAcidNames(key)
	if("LIG" in key):
		return "LIGxLIG"
	if('HOH' in key):
		return "HOH"
	elif(key not in gpcrDbDict):
		# print(key + " not in gpcrDbDict")
		if(key[:3] not in AMINO_ACIDS): unrecognized_acronyms.add(key[:3])
		return "None"
		# return "-"
	return gpcrDbDict[key]

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
	"""
		Output: {"ASP115": "2x50", ...}
	"""
	UNIPROT_CODE = getUniprotCode(PDB_CODE)
	GPCRDB_DICT = genGpcrdbDict(UNIPROT_CODE)
	return GPCRDB_DICT

def genGPCRDBToResidueTable(PDB_CODE):
	"""
		Output: {"2x50": "ASP115", ...}
	"""
	GPCRDB_DICT = genResidueToGpcrdbTable(PDB_CODE)
	gpcrdb_to_residue = {GPCRDB_DICT[resid] : resid for resid in GPCRDB_DICT}
	return gpcrdb_to_residue

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




### Copied from dynamic_inter_dict_to_state_decomp_unionized_freq.py 
"""
	Input: Absolute path to experiment replicate interaction dictionary file
	
	Parses the dictionary file into a matrix of the following format

			t1 t2 t3 ...  	t10 t11 t12
	a1-b1 	0  1  1  		 1   1   0
	a2-b2 	1  1  0  		 0   1   0
	a3-b3 	0  0  0  		 0   1   0
	 ...   			 ...

"""


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

	# def polar_network_gpcrdb(POLAR_NETWORK_PATH):
	# 	if(POLAR_NETWORK_PATH == None): return []
	# 	pn_gpcrdb_pairs = []
	# 	pn_pdb = None
	# 	f = open(POLAR_NETWORK_PATH, 'r')
	# 	for line in f:
	# 		if("#" in line): continue 
	# 		if("PDB" in line): 
	# 			pn_pdb = line.strip().split("PDB:")[1]
	# 		if(" -- " in line):
	# 			linfo = line.strip().split("@")
	# 			interaction_type = linfo[1]
	# 			gpcrdb1, gpcrdb2  = linfo[0].split(" -- ")
	# 			pn_gpcrdb_pairs.append((gpcrdb1, gpcrdb2, interaction_type))
	# 	return pn_gpcrdb_pairs

	# def inPolarNetwork(gpcrDb1, gpcrDb2, pn_gpcrdb_pairs, INTERACTION_LIST):
	# 	"""
	# 		Check if one of the rows belong to polar network
	# 	"""
	# 	valid_list = [i.strip("-") for i in INTERACTION_LIST]

	# 	### If no polar network list masking is given
	# 	if(len(pn_gpcrdb_pairs) == 0): return True

	# 	for pn_pair in pn_gpcrdb_pairs:
	# 		pn_db1, pn_db2, pn_itype = pn_pair
	# 		if(pn_itype in valid_list):
	# 			if((gpcrDb1 == pn_db1 and gpcrDb2 == pn_db2) or (gpcrDb1 == pn_db2 and gpcrDb2 == pn_db1)):
	# 				return True 
	# 	return False


	# pn_gpcrdb_pairs = polar_network_gpcrdb(POLAR_NETWORK_PATH)

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
	# print("testing", numKeys, numRows)
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

				# if(inPolarNetwork(gpcrDb1, gpcrDb2, pn_gpcrdb_pairs, INTERACTION_LIST) == False): continue 

				### Do the preprocessing here

				if(not(gpcrDb1 == "None" or gpcrDb2 == "None")):
					interaction_type = interaction_type.strip("-")
					rowLabel = (interaction_type, atom1, atom2, gpcrDb1, gpcrDb2)
					# print(counter, rowLabel)
					rowLabels[counter - 1] = rowLabel
					activeTimePoints = ast.literal_eval(line_info[1].strip())
					rawBinaryMatrix[counter - 1][[activeTimePoints]] = 1
			### Increment counter
	# rawBinaryMatrix = np.array(rawBinaryMatrix)
	rawBinaryMatrix = list(rawBinaryMatrix)
	return rowLabels, rawBinaryMatrix


def parseInteractionDictionary(interaction_type, EXP_REP_INTERACTION_DICT_PATH, gpcrDbDict, CHAIN_ID=None):

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



def genAggregateInteractionDictionary(EXP_REP_DICT_PATH, gpcrDbDict, INTERACTION_LIST, CHAIN_ID=None):

	"""
		Combine each of the individual rowLabel and interactionBinaryMatrix 
	"""
	rowLabels,rawBinaryMatrix = [], []

	for interaction_type in INTERACTION_LIST:
		EXP_REP_INTERACTION_DICT_PATH = EXP_REP_DICT_PATH + "/" + INTERACTION_DICT_LABELS[interaction_type]
		rLabel, rawBinMat = parseInteractionDictionary(interaction_type, EXP_REP_INTERACTION_DICT_PATH, gpcrDbDict, CHAIN_ID)
		rowLabels += rLabel
		rawBinaryMatrix += rawBinMat

	return rowLabels, np.array(rawBinaryMatrix)


def orderGpcrdb(gpcrdb1, gpcrdb2):
	### Handle Ligand Cases
	if("LIG" in gpcrdb1 and "LIG" not in gpcrdb2): return (gpcrdb1, gpcrdb2)
	elif("LIG" not in gpcrdb1 and "LIG" in gpcrdb2): return (gpcrdb2, gpcrdb1)
	elif("LIG" in gpcrdb1 and "LIG" in gpcrdb2): return (gpcrdb1, gpcrdb2)

	### Normal cases
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




