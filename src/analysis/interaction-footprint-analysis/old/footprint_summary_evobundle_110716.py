# Author: Anthony Kai Kwang Ma
# Email: akma327@stanford.edu
# footprint_summary_evobundle.py

import os
import sys
import csv
import numpy as np 
import json 
import math 
from utils import * 

USAGE_STR = """
# Purpose 
# For a footprint table of either atomic or residue resolution, create a json file 
# that corresponds to the interaction keys, and summary frequencies for a single experiment
# replicate condition. 

# Coloring 
# Orange - Direct 
# Cyan - Water Bridge
# Green - Extended Water Bridge

# Usage 
# python footprint_summary_evobundle.py <FOOTPRINT_TABLE> <EXP_REP_ID> <OUTPUT_FILE> <-intra-pdb> <EXP_REP_PDB> <-receptor> <RECEPTOR> <-no-conserve> <-upper or -lower> <-cutoff> <CUTOFF_FREQ> <-inter>

# Arguments
# <FOOTPRINT_TABLE> Absolute path to the footprint table of either atomic or residue resolution 
# <EXP_REP_ID> Column name to query the table 
# <OUTPUT_FILE> Absolute path to the output json 
# <-intra-pdb> Optional flag to denote that pdb for polar network and experiment replicate condition 
# is the same. Therefore, gpcrdb amino acid frequency will depend on actual identity of amino acid. 
# Don't use this flag if comparison is done between polar newwork and experiment replicate condition 
# of different pdb codes. In that case gpcrdb frequency is just the maximum frequency. 
# <-receptor> Optional flag to denote the receptor. This determines the color to display in flareplot.
# <-no-conserve> optional flag to have amino acid conservation not drawn. 
# <-upper or -lower> optional flag to denote whether or not to stratify the flare plot to only show
# interactions that are part of the upper binding pocket, or the lower base region of GPCR. If no flag
# then default to show all interactions. 
# <-cutoff> Optional flag to show only interactions greater than cutoff frequency
# <-inter> Optional flag to only show interactions that form between different TM helices


# Example 
FOOTPRINT_TABLE="/scratch/PI/rondror/akma327/DynamicNetworks/results/state-decomposition/residue-resolution/102516_state_decomp_union_wb_freq/active_receptors/active_state_decomp_residue_resolution.txt"
EXP_REP_ID="MOR:active:unpublished-rep_1,Active"
OUTPUT_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/interaction-footprint-analysis/residue-resolution-evobundle-input/102516/MOR-active-unpublished-rep_1-lower.json"
EXP_REP_PDB="5C1M"
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/analysis/interaction-footprint-analysis
python footprint_summary_evobundle.py $FOOTPRINT_TABLE $EXP_REP_ID $OUTPUT_FILE -intra-pdb $EXP_REP_PDB -receptor MOR -no-conserve -lower -cutoff 0.5 -inter

"""


MAX_LINE_WIDTH = 12

FULL_GCPRDB_LIST = ['1.1x28', '1.1x29', '1.1x30', '1.1x31', '1.1x32', '1.1x33', '1.1x34', '1.1x35', '1.1x36', '1.1x37', '1.1x38', '1.1x39', '1.1x40', '1.1x42', '1.1x43', '1.1x44', '1.1x45', '1.1x46', '1.1x47', '1.1x48', '1.1x49', '1.1x50', '1.1x51', '1.1x52', '1.1x53', '1.1x54', '1.1x55', '1.1x56', '1.1x57', '1.1x58', '1.1x59', '1.1x60', '2.2x38', '2.2x39', '2.2x40', '2.2x41', '2.2x42', '2.2x43', '2.2x44', '2.2x45', '2.2x46', '2.2x47', '2.2x48', '2.2x49', '2.2x50', '2.2x51', '2.2x52', '2.2x53', '2.2x54', '2.2x55', '2.2x56', '2.2x57', '2.2x58', '2.2x59', '2.2x60', '2.2x61', '2.2x62', '2.2x63', '2.2x64', '2.2x65', '2.2x66', '3.3x22', '3.3x23', '3.3x24', '3.3x25', '3.3x26', '3.3x27', '3.3x28', '3.3x29', '3.3x30', '3.3x31', '3.3x32', '3.3x33', '3.3x34', '3.3x35', '3.3x36', '3.3x37', '3.3x38', '3.3x39', '3.3x40', '3.3x41', '3.3x42', '3.3x43', '3.3x44', '3.3x45', '3.3x46', '3.3x47', '3.3x48', '3.3x49', '3.3x50', '3.3x51', '3.3x52', '3.3x53', '3.3x54', '3.3x55', '3.3x56', '4.4x41', '4.4x42', '4.4x43', '4.4x44', '4.4x45', '4.4x46', '4.4x47', '4.4x48', '4.4x49', '4.4x50', '4.4x51', '4.4x52', '4.4x53', '4.4x54', '4.4x55', '4.4x56', '4.4x57', '4.4x58', '4.4x59', '4.4x60', '4.4x61', '4.4x62', '4.4x63', '5.5x32', '5.5x33', '5.5x34', '5.5x35', '5.5x36', '5.5x37', '5.5x38', '5.5x39', '5.5x40', '5.5x41', '5.5x42', '5.5x43', '5.5x44', '5.5x45', '5.5x46', '5.5x47', '5.5x48', '5.5x49', '5.5x50', '5.5x51', '5.5x52', '5.5x53', '5.5x54', '5.5x55', '5.5x56', '5.5x57', '5.5x58', '5.5x59', '5.5x60', '5.5x61', '5.5x62', '5.5x63', '5.5x64', '5.5x461', '6.6x24', '6.6x25', '6.6x26', '6.6x27', '6.6x28', '6.6x29', '6.6x30', '6.6x31', '6.6x32', '6.6x33', '6.6x34', '6.6x35', '6.6x36', '6.6x37', '6.6x38', '6.6x39', '6.6x40', '6.6x41', '6.6x42', '6.6x43', '6.6x44', '6.6x45', '6.6x46', '6.6x47', '6.6x48', '6.6x49', '6.6x50', '6.6x51', '6.6x52', '6.6x53', '6.6x54', '6.6x55', '6.6x56', '6.6x57', '6.6x58', '6.6x59', '6.6x60', '6.6x61', '7.7x28', '7.7x29', '7.7x30', '7.7x31', '7.7x32', '7.7x33', '7.7x34', '7.7x35', '7.7x36', '7.7x37', '7.7x38', '7.7x39', '7.7x40', '7.7x41', '7.7x42', '7.7x43', '7.7x44', '7.7x45', '7.7x46', '7.7x47', '7.7x48', '7.7x49', '7.7x50', '7.7x51', '7.7x52', '7.7x53', '7.7x54', '7.7x55', '7.7x56', '7.7x57', '8.8x48', '8.8x49', '8.8x50', '8.8x51', '8.8x52', '8.8x53', '8.8x54']


def isBindingPocketRegion(gpcrdb):
	"""
		Categorize a gpcrdb to binding pocket region (return True)
		or base of the GPCR (return False)
	"""
	if("LIG" in gpcrdb): return True
	info = gpcrdb.split(".")
	tm = int(info[0])
	gnum = int(info[1].split("x")[1])
	if(tm == 1):
		if(gnum <= 46): return True 
		else: return False
	elif(tm == 2):
		if(gnum > 50): return True 
		else: return False
	elif(tm == 3):
		if(gnum <= 40): return True 
		else: return False
	elif(tm == 4):
		if(gnum >= 50): return True 
		else: return False
	elif(tm == 5):
		if(gnum < 50): return True 
		else: return False
	elif(tm == 6):
		if(gnum > 44): return True 
		else: return False
	elif(tm == 7):
		if(gnum < 46): return True 
		else: return False
	return True 

def isInterHelixInteraction(name1, name2):
	tm1 = name1.split(".")[0]
	tm2 = name2.split(".")[0]
	if(tm1 != tm2): return True
	return False

# Add interaction connectivity information to the json dictionary 
def addInteractionToJSONDict(json_dict, interaction_key, freq_val, CUTOFF_FREQ, INTER_ONLY, REGION, RECEPTOR):
	key_info = interaction_key.split(":")
	if(len(key_info) == 3):
		gpcrdb1, gpcrdb2, interaction_type = key_info
		prefix1, prefix2 = gpcrdb1[0:1], gpcrdb2[0:1]
		name1 = prefix1 + "." + gpcrdb1
		name2 = prefix2 + "." + gpcrdb2
	elif(len(key_info) == 2): # wb and wb2 combined
		gpcrdb1, gpcrdb2 = key_info
		interaction_type = "wb_combined"
		prefix1, prefix2 = gpcrdb1[0:1], gpcrdb2[0:1]
		name1 = prefix1 + "." + gpcrdb1
		name2 = prefix2 + "." + gpcrdb2
	elif(len(key_info) == 5):
		gpcrdb1, gpcrdb2, atom1, atom2, interaction_type = key_info
		prefix1, prefix2 = gpcrdb1[0:1], gpcrdb2[0:1]
		name1 = prefix1 + "." + gpcrdb1 + ":" + atom1
		name2 = prefix2 + "." + gpcrdb2 + ":" + atom2 
	if(freq_val < CUTOFF_FREQ): return #artificial cutoff 101916
	width = round(MAX_LINE_WIDTH* freq_val,4)

	### Color of flare plot lines
	if(RECEPTOR != None):
		color = RECEPTOR_TO_COLOR[RECEPTOR]
	else:
		color = LINE_COLOR_DICT[interaction_type]	
	
	### Consider Inter-Helix Interaction Stratification 
	if(INTER_ONLY == True and not isInterHelixInteraction(name1, name2)): return


	### Stratify the interactions to upper binding pocket or lower GPCR activation regions
	single_interaction_info_dict = {}
	if(REGION == "all"):
		single_interaction_info_dict = {"name1":name1, "name2": name2, "color": color, "width": width, "frames": [0]}
	elif(REGION == "upper"):
		if(isBindingPocketRegion(name1) and isBindingPocketRegion(name2)):
			single_interaction_info_dict = {"name1":name1, "name2": name2, "color": color, "width": width, "frames": [0]}
	elif(REGION == "lower"):
		if(not(isBindingPocketRegion(name1) and isBindingPocketRegion(name2))):
			single_interaction_info_dict = {"name1":name1, "name2": name2, "color": color, "width": width, "frames": [0]}

	if(single_interaction_info_dict != {}):
		json_dict["edges"].append(single_interaction_info_dict)


# Populate json dictionary with interaction information 
def populateInteractionInfo(json_dict, FOOTPRINT_TABLE, EXP_REP_ID, CUTOFF_FREQ, INTER_ONLY, REGION, RECEPTOR):
	with open(FOOTPRINT_TABLE, 'rU') as f:
		reader = csv.reader(f, delimiter="\t")
		d = list(reader)
	darr = np.array(d)
	row_labels = list(darr[:,0][1:])
	column_labels = list(darr[0,:])
	column_index = findColumnIndex(column_labels, EXP_REP_ID)
	exp_rep_freq_vals = map(float,list(darr[:, column_index])[1:])
	for index, interaction_key in enumerate(row_labels):
		freq_val = exp_rep_freq_vals[index]
		addInteractionToJSONDict(json_dict, interaction_key, freq_val, CUTOFF_FREQ, INTER_ONLY, REGION, RECEPTOR)

# Extract list of all relevant gpcrdb edges 
def extractGpcrdbList(json_dict):
	gpcrdb_list = set() 
	for interaction in json_dict["edges"]:
		gpcrdb_list.add(interaction["name1"])
		gpcrdb_list.add(interaction["name2"])
	return list(gpcrdb_list)

# Parse the gpcrdb_residue_freq_table
def gpcrdbResidueFreqTable():
	gpcrdb_residue_freq_dict = {}
	with open(GPCRDB_RESIDUE_FREQ_TABLE, 'rU') as f: 
		reader = csv.reader(f, delimiter="\t")
		d = list(reader)
	darr = np.array(d)[1:]
	for row in darr: 
		gpcrdb = row[0]
		aa_freq = row[1:]
		gpcrdb_residue_freq_dict[gpcrdb] = map(float, aa_freq)
	return gpcrdb_residue_freq_dict


# frequency to grayscale coloring
def freqToHexColor(frequency):
	print("what", frequency)
	hue = "gray" + str(int(100 - math.floor(100*frequency)))
	return GRAY_SCALE_DICT[hue]


# Populate json dictionary with nodes information which show a gray scale color
# for a gpcrdb number depending on how conserved it is 
def populateNodeInfo(json_dict, gpcrdb_list, CONSERVE, EXP_REP_PDB):
	gpcrdb_residue_freq_dict = gpcrdbResidueFreqTable()
	node_list = []
	if(EXP_REP_PDB != None and CONSERVE == True): # Intra polar network + experiment replicate condition comparison
		residue_to_gpcrdb_dict = genResidueToGpcrdbTable(EXP_REP_PDB) # Gpcrdb table for experiment replicate pdb 
		gpcrdb_to_residue_dict = {residue_to_gpcrdb_dict[k]:k for k in residue_to_gpcrdb_dict}
		for tm_gpcrdb in gpcrdb_list:
			gpcrdb = tm_gpcrdb.split(".")[1].split(":")[0].strip()
			if(gpcrdb not in gpcrdb_to_residue_dict): continue # added recently
			query_resname = gpcrdb_to_residue_dict[gpcrdb][0:3]
			aa_index = ALPHABETICAL_AA_LIST.index(query_resname)
			aa_freq = gpcrdb_residue_freq_dict[gpcrdb][aa_index]
			node_color = freqToHexColor(aa_freq)
			node_list.append({"name":tm_gpcrdb, "color":node_color})
	elif(CONSERVE == False):
		for tm_gpcrdb in gpcrdb_list:
			gpcrdb = tm_gpcrdb.split(".")[1].split(":")[0].strip()
			node_color = "#C7C7C7" # Hard code gray
			node_list.append({"name":tm_gpcrdb, "color":node_color})
	else: 
		for tm_gpcrdb in gpcrdb_list:
			gpcrdb = tm_gpcrdb.split(".")[1].split(":")[0].strip()
			aa_freq = max(gpcrdb_residue_freq_dict[gpcrdb])
			node_color = freqToHexColor(aa_freq)
			node_list.append({"name":tm_gpcrdb, "color":node_color})
	json_dict["nodes"] = node_list

def populateAllGPCRDBNodeInfo(json_dict, CONSERVE, EXP_REP_PDB):
	"""
		Create a node for every possible GPCRDB 
	"""
	gpcrdb_residue_freq_dict = gpcrdbResidueFreqTable()
	node_list = []
	if(EXP_REP_PDB != None and CONSERVE == True):
		residue_to_gpcrdb_dict = genResidueToGpcrdbTable(EXP_REP_PDB)
		gpcrdb_to_residue_dict = {residue_to_gpcrdb_dict[k]: k for k in residue_to_gpcrdb_dict}
		for tm_gpcrdb in FULL_GCPRDB_LIST:
			gpcrdb = tm_gpcrdb.split(".")[1].split(":")[0].strip()
			if(gpcrdb not in gpcrdb_to_residue_dict): continue 
			query_resname = gpcrdb_to_residue_dict[gpcrdb][0:3]
			aa_index = ALPHABETICAL_AA_LIST.index(query_resname)
			aa_freq = gpcrdb_residue_freq_dict[gpcrdb][aa_index]
			node_color = freqToHexColor(aa_freq)
			node_list.append({"name":tm_gpcrdb, "color":node_color})
	elif(CONSERVE == False):
		for tm_gpcrdb in FULL_GCPRDB_LIST:
			gpcrdb = tm_gpcrdb.split(".")[1].split(":")[0].strip()
			node_color = "#C7C7C7" # Hard code gray
			node_list.append({"name":tm_gpcrdb, "color":node_color})
	else:
		for tm_gpcrdb in gpcrdb_list:
			gpcrdb = tm_gpcrdb.split(".")[1].split(":")[0].strip()
			aa_freq = max(gpcrdb_residue_freq_dict[gpcrdb])
			node_color = freqToHexColor(aa_freq)
			node_list.append({"name":tm_gpcrdb, "color":node_color})
	json_dict["nodes"] = node_list


# Create the json dictionary object 
def createJSONDict(FOOTPRINT_TABLE, EXP_REP_ID, CONSERVE, REGION, CUTOFF_FREQ, INTER_ONLY, EXP_REP_PDB, RECEPTOR):
	json_dict = {"edges": []}
	populateInteractionInfo(json_dict, FOOTPRINT_TABLE, EXP_REP_ID, CUTOFF_FREQ, INTER_ONLY, REGION, RECEPTOR)
	populateAllGPCRDBNodeInfo(json_dict, CONSERVE, EXP_REP_PDB)
	# gpcrdb_list = extractGpcrdbList(json_dict)
	# populateNodeInfo(json_dict, gpcrdb_list, CONSERVE, EXP_REP_PDB)
	return json_dict

# Driver method for generating json for creating the evobundle bundle plot 
def bundlePlotJsonDriver(FOOTPRINT_TABLE, EXP_REP_ID, OUTPUT_FILE, CONSERVE, REGION, CUTOFF_FREQ, INTER_ONLY, EXP_REP_PDB=None, RECEPTOR = None):
	print("Processing: " + OUTPUT_FILE)
	json_dict = createJSONDict(FOOTPRINT_TABLE, EXP_REP_ID, CONSERVE, REGION, CUTOFF_FREQ, INTER_ONLY, EXP_REP_PDB, RECEPTOR)
	createDirectory(OUTPUT_FILE)
	with open(OUTPUT_FILE, 'w') as f:
		json.dump(json_dict, f)	

if __name__ == "__main__":
	FOOTPRINT_TABLE = sys.argv[1]
	EXP_REP_ID = sys.argv[2]
	OUTPUT_FILE = sys.argv[3]
	EXP_REP_PDB = None 
	if("-intra-pdb" in sys.argv):
		EXP_REP_PDB = sys.argv[sys.argv.index("-intra-pdb") + 1]
	RECEPTOR = None
	if("-receptor" in sys.argv):
		RECEPTOR = sys.argv[sys.argv.index("-receptor") + 1]
	CONSERVE = True
	if("-no-conserve" in sys.argv):
		CONSERVE = False
	REGION = "all"
	if("-upper" in sys.argv):
		REGION = "upper"
	elif("-lower" in sys.argv):
		REGION = "lower"
	CUTOFF_FREQ = 0
	if("-cutoff" in sys.argv):
		CUTOFF_FREQ = float(sys.argv[sys.argv.index("-cutoff") + 1])
	INTER_ONLY = False
	if("-inter" in sys.argv):
		INTER_ONLY = True
	bundlePlotJsonDriver(FOOTPRINT_TABLE, EXP_REP_ID, OUTPUT_FILE, CONSERVE, REGION, CUTOFF_FREQ, INTER_ONLY, EXP_REP_PDB, RECEPTOR)









