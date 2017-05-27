# Author: Anthony Kai Kwang Ma
# Email: akma327@stanford.edu
# cross_receptor_intersect_evobundle.py

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
# that corresponds to the interaction keys, and intersection for two experiment
# replicate conditions. 

# Usage 
# python cross_receptor_intersect_evobundle.py <FOOTPRINT_TABLE> <EXP_REP_ID1> <EXP_REP_ID2> <OUTPUT_FILE> <-intra-pdb> <EXP_REP_PDB> <-no-conserve>

# Arguments
# <FOOTPRINT_TABLE> Absolute path to the footprint table of either atomic or residue resolution 
# <EXP_REP_ID1> First column name to query the table 
# <EXP_REP_ID2> Second column name to query the table
# <OUTPUT_FILE> Absolute path to the output json 
# <-intra-pdb> Optional flag to denote that pdb for polar network and experiment replicate condition 
# is the same. Therefore, gpcrdb amino acid frequency will depend on actual identity of amino acid. 
# Don't use this flag if comparison is done between polar network and experiment replicate condition 
# of different pdb codes. In that case gpcrdb frequency is just the maximum frequency. 
# <-no-conserve> optional flag to have amino acid conservation not drawn. 

# Example 
FOOTPRINT_TABLE="/scratch/PI/rondror/akma327/DynamicNetworks/results/interaction-footprint-analysis/polar-network-freq-tables/residue-resolution/4N6H/dor-inactive-residue-footprint.txt"
EXP_REP_ID="DOR-inactive-naltrindole-unpublished-condition-naltrindole-bound-rep_1"
OUTPUT_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/interaction-footprint-analysis/residue-resolution-evobundle-input/inactive-dor-network/DOR-inactive-naltrindole-rep_1.json"
EXP_REP_PDB="4N6H"
python cross_receptor_intersect_evobundle.py $FOOTPRINT_TABLE $EXP_REP_ID $OUTPUT_FILE -intra-pdb $EXP_REP_PDB

"""


MAX_LINE_WIDTH = 12
FREQ_THRESHOLD = 0.25


def parseInteractionKey(interaction_key):
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
	return name1, name2, interaction_type

# Add interaction connectivity information to the json dictionary 
def addInteractionToJSONDict(json_dict, name1, name2, interaction_type, freq_val):
	width = round(MAX_LINE_WIDTH* freq_val,4)
	color = LINE_COLOR_DICT[interaction_type]
	single_interaction_info_dict = {"name1":name1, "name2": name2, "color": color, "width": width, "frames": [0]}
	json_dict["edges"].append(single_interaction_info_dict)


# Populate json dictionary with interaction information 
def populateInteractionInfo(json_dict, FOOTPRINT_TABLE, EXP_REP_ID1, EXP_REP_ID2):
	gpcrdb_list = set() # Populate the full set of nodes

	with open(FOOTPRINT_TABLE, 'rU') as f:
		reader = csv.reader(f, delimiter="\t")
		d = list(reader)
	darr = np.array(d)
	row_labels = list(darr[:,0][1:])
	column_labels = list(darr[0,:])
	column_index1 = findColumnIndex(column_labels, EXP_REP_ID1)
	exp_rep_freq_vals1 = map(float, list(darr[:, column_index1])[1:])

	column_index2 = findColumnIndex(column_labels, EXP_REP_ID2)
	exp_rep_freq_vals2 = map(float, list(darr[:, column_index2])[1:])

	print(exp_rep_freq_vals1, len(exp_rep_freq_vals1))
	print(exp_rep_freq_vals2, len(exp_rep_freq_vals2))
	for index, interaction_key in enumerate(row_labels):
		### Populate the gpcrdb node list
		name1, name2, interaction_type = parseInteractionKey(interaction_key)
		gpcrdb_list.add(name1)
		gpcrdb_list.add(name2)

		### Populate gpcrdb edges
		freq_val1 = exp_rep_freq_vals1[index]
		freq_val2 = exp_rep_freq_vals2[index]

		# Can potentially extend this boolean to handle multiple experiment replicate intersections
		if(freq_val1 > FREQ_THRESHOLD and freq_val2 > FREQ_THRESHOLD):
			addInteractionToJSONDict(json_dict, name1, name2, interaction_type, float(freq_val1 + freq_val2)/2)

	return list(gpcrdb_list)

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



# Create the json dictionary object 
def createJSONDict(FOOTPRINT_TABLE, EXP_REP_ID1, EXP_REP_ID2, CONSERVE, EXP_REP_PDB):
	json_dict = {"edges": []}
	gpcrdb_list = populateInteractionInfo(json_dict, FOOTPRINT_TABLE, EXP_REP_ID1, EXP_REP_ID2)
	# gpcrdb_list = extractGpcrdbList(json_dict)
	populateNodeInfo(json_dict, gpcrdb_list, CONSERVE, EXP_REP_PDB)
	return json_dict

# Driver method for generating json for creating the evobundle bundle plot 
def bundlePlotJsonDriver(FOOTPRINT_TABLE, EXP_REP_ID1, EXP_REP_ID2, OUTPUT_FILE, CONSERVE, EXP_REP_PDB=None):
	print("Processing: " + OUTPUT_FILE)
	json_dict = createJSONDict(FOOTPRINT_TABLE, EXP_REP_ID1, EXP_REP_ID2, CONSERVE, EXP_REP_PDB)
	createDirectory(OUTPUT_FILE)
	with open(OUTPUT_FILE, 'w') as f:
		json.dump(json_dict, f)	

if __name__ == "__main__":
	FOOTPRINT_TABLE = sys.argv[1]
	EXP_REP_ID1 = sys.argv[2]
	EXP_REP_ID2 = sys.argv[3]
	OUTPUT_FILE = sys.argv[4]
	EXP_REP_PDB = None 
	if("-intra-pdb" in sys.argv):
		EXP_REP_PDB = sys.argv[sys.argv.index("-intra-pdb") + 1]
	CONSERVE = True
	if("-no-conserve" in sys.argv):
		CONSERVE = False
	bundlePlotJsonDriver(FOOTPRINT_TABLE, EXP_REP_ID1, EXP_REP_ID2, OUTPUT_FILE, CONSERVE, EXP_REP_PDB)









