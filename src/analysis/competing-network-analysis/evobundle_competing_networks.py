# Author: Anthony Kai Kwang Ma
# Email: akma327@stanford.edu
# Date: 10/13/16
# evobundle_competing_networks.py 

import os
import sys 
import glob
import ast 
import json
from competing_network_utils import * 

USAGE_STR = """

# Purpose 
# We want to determine whether there are competing interactions in relation to
# polar network P in a particular experiment condition environment. To do this, 
# this script will consider every interaction for a particular experiment replicate
# and generate a evobundle blot json file that draws lines for interactions part of
# polar network P, and interactions that shares an amino acid with an interaction in P 
# The output json file can be loaded as a real time bundleplot to visually identify
# competing networks. 

# Usage 
# python evobundle_competing_networks.py <EXP_COND_DICT_FOLDER> <EXP_COND_PDB> <POLAR_NETWORK_LIST> <OUTPUT_FILE> 

# Arguments 
# <EXP_COND_DICT_FOLDER> Absolute path to the experiment replicate dictioanry folder. 
# <EXP_COND_PDB> PDB Code for the experiment condition's crystal receptor. 
# <POLAR_NETWORK_LIST> Absolut epath to the list of interactions in the polar network of interest. 
# <OUTPUT_FILE> Absolute path to the output json file to load into evobundle plot. 

# Example 
EXP_COND_DICT_FOLDER="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutputDictionary/MOR-active-noNb-BU72-nature2015/condition-nb-interface-restrained-BU72/rep_1/050516_NONHB_DEFAULT_HB_3.5_70"
EXP_COND_PDB="5C1M"
POLAR_NETWORK_LIST="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/interaction-footprint-analysis/polar-network-lists/active-mor-network.txt"
OUTPUT_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/competing-network-analysis/evobundle-json/active-mor-network/MOR-active-noNb-BU72-nature2015-rep_1.json"
python evobundle_competing_networks.py $EXP_COND_DICT_FOLDER $EXP_COND_PDB $POLAR_NETWORK_LIST $OUTPUT_FILE

"""

K_MIN_ARG = 5

HBOND_FILTER = ['hbsb', 'hbss', 'wb', 'wb2']
POLAR_NETWORK_LINE_WIDTH = 7
COMPETE_NETWORK_LINE_WIDTH = 3




# Filters list of interaction dictionary file paths and only keeps the ones 
# that are part of the list of desired interaction type
def interactionFilter(interaction_dict_files, INTERACTION_FILTER):
	filtered_files = set()
	for dict_file in interaction_dict_files:
		for interaction_flag in INTERACTION_FILTER:
			if(flag_to_dict_file[interaction_flag] in dict_file):
				filtered_files.add((dict_file,interaction_flag))
	return list(filtered_files)


# Get interaction dictionary files 
def getInteractionDictFiles(EXP_COND_DICT_FOLDER):
	interaction_dict_files = glob.glob(EXP_COND_DICT_FOLDER + "/*dict.txt")
	return interactionFilter(interaction_dict_files, HBOND_FILTER)

# Check whether a pair of gpcrdb from experiment condition belongs to the 
# original polar network P 
def findPolarNetworkMatch(gpcrdb1, gpcrdb2, interaction_flag, polar_gpcrdb_pair_list):
	key1, key2 = (gpcrdb1, gpcrdb2, interaction_flag), (gpcrdb2, gpcrdb1, interaction_flag)
	if(key1 in polar_gpcrdb_pair_list): return key1
	elif(key2 in polar_gpcrdb_pair_list): return key2
	return None 


# Fill json dictionary with list of interaction keys 
def fillInteractionKeys(interaction_dict_files, EXP_COND_PDB_DICT, polar_gpcrdb_list, polar_gpcrdb_pair_list):
	inNetworkDict = {} # {(gpcrdb1, gpcrdb2) : Longest time point list} for interactions in polar network P
	outNetworkDict = {} # {(gpcrdb1, gpcrdb2) : Longest time point list} for interactions not in polar network P
	for interaction_dict_file, interaction_flag in interaction_dict_files:
		f = open(interaction_dict_file, 'r')
		totalFrames = None 
		for line in f:
			if("TotalFrames" in line): totalFrames = int(line.split("TotalFrames:")[1].strip())
			if("--" in line):
				### Extract gpcrdb information for interaction
				resAtomPair, tpstr = line.split("~")
				gpcrdb1, gpcrdb2 = extractGpcrdbPair(resAtomPair, EXP_COND_PDB_DICT)

				### Both interactions must have a valid gpcrdb
				if(gpcrdb1 == 'None' or gpcrdb2 == 'None'): continue

				### Case 1: Interactions that belong to polar network P 
				polarNetworkInteractionMatch = findPolarNetworkMatch(gpcrdb1, gpcrdb2, interaction_flag, polar_gpcrdb_pair_list)
				if(polarNetworkInteractionMatch):
					if(polarNetworkInteractionMatch not in inNetworkDict): 
						inNetworkDict[polarNetworkInteractionMatch] = ast.literal_eval(tpstr)
					else:
						numTimepoints = len(tpstr.split(","))
						if(numTimepoints > len(inNetworkDict[polarNetworkInteractionMatch])):
							inNetworkDict[polarNetworkInteractionMatch] = ast.literal_eval(tpstr)

				### Case 2: Competing interactions that do not belong to network P
				elif(gpcrdb1 in polar_gpcrdb_list or gpcrdb2 in polar_gpcrdb_list):
					competingInteractionKey = (gpcrdb1, gpcrdb2, interaction_flag) # Disregarding interaction_flag for now. Can be (gpcrdb1, gpcrdb2, interaction_flag)
					if(competingInteractionKey not in outNetworkDict):
						outNetworkDict[competingInteractionKey] = ast.literal_eval(tpstr)
					else: 
						numTimepoints = len(tpstr.split(","))
						if(numTimepoints > len(outNetworkDict[competingInteractionKey])):
							outNetworkDict[competingInteractionKey] = ast.literal_eval(tpstr)
	return totalFrames, inNetworkDict, outNetworkDict


# Create evonbundle json dictionary based on polar network interactions and 
# competing interactions 
def genCompetingNetworkJson(totalFrames, inNetworkDict, outNetworkDict):

	### direct hb: orange, wb: cyan, wb2: green
	json_dict = {"interactions": []}

	### Polar Network Interactions 
	for polar_inter in inNetworkDict:
		all_frames = range(totalFrames)
		prefix1, prefix2, interaction_flag = polar_inter[0].strip().split("x")[0], polar_inter[1].strip().split("x")[0], polar_inter[2]
		key1, key2 = prefix1 + "." + polar_inter[0], prefix2 + "." + polar_inter[1]

		### Draw thick lines for native polar network interactions
		json_dict["interactions"].append({"name1":key1, "name2": key2, "width":POLAR_NETWORK_LINE_WIDTH, "color":LINE_COLOR_DICT[interaction_flag], "frames":inNetworkDict[polar_inter]})

	### Competing Network Interactions 
	for competing_inter in outNetworkDict:
		prefix1, prefix2 = competing_inter[0].strip().split("x")[0], competing_inter[1].strip().split("x")[0]
		key1, key2 = prefix1 + "." + competing_inter[0], prefix2 + "." + competing_inter[1]

		### Thin lines for competing interactions 
		json_dict["interactions"].append({"name1":key1, "name2": key2, "width":COMPETE_NETWORK_LINE_WIDTH, "color":LINE_COLOR_DICT[interaction_flag], "frames":outNetworkDict[competing_inter]})

	return json_dict




# Generate the json dictionary for all the interactions 
def genCompetingNetworkEvobundleJson(EXP_COND_DICT_FOLDER, EXP_COND_PDB_DICT, polar_gpcrdb_list, polar_gpcrdb_pair_list):
	interaction_dict_files = getInteractionDictFiles(EXP_COND_DICT_FOLDER)
	totalFrames, inNetworkDict, outNetworkDict = fillInteractionKeys(interaction_dict_files, EXP_COND_PDB_DICT, polar_gpcrdb_list, polar_gpcrdb_pair_list)
	return genCompetingNetworkJson(totalFrames, inNetworkDict, outNetworkDict)


# Driver method for generating json for competing network evobundle plot 
def evobundleCompetingNetworkDriver(EXP_COND_DICT_FOLDER, EXP_COND_PDB, POLAR_NETWORK_LIST, OUTPUT_FILE):
	print("Compute competing network evobundle json:" + EXP_COND_DICT_FOLDER)
	### Get pdb code of polar network
	POLAR_NETWORK_PDB = getPolarNetworkPDB(POLAR_NETWORK_LIST)

	### Generate the Residue to GPCRDB Table for experiment condition and polar network
	EXP_COND_PDB_DICT = genResidueToGpcrdbTable(EXP_COND_PDB)
	POLAR_NETWORK_GPCRDB_DICT = genResidueToGpcrdbTable(POLAR_NETWORK_PDB)

	### Polar Network GPCRDB Pair list 
	polar_gpcrdb_pair_list = polarGpcrdbPairList(POLAR_NETWORK_LIST, POLAR_NETWORK_GPCRDB_DICT)

	### Polar Network Single GPCRDB list 
	polar_gpcrdb_list = polarGpcrdbList(polar_gpcrdb_pair_list)

	### Compute competing network evobundle json 
	competing_network_json_dict = genCompetingNetworkEvobundleJson(EXP_COND_DICT_FOLDER, EXP_COND_PDB_DICT, polar_gpcrdb_list, polar_gpcrdb_pair_list)

	### Write evobundle json 
	createDirectory(OUTPUT_FILE)
	with open(OUTPUT_FILE, 'w') as f:
		json.dump(competing_network_json_dict, f)
	


if __name__ == "__main__":
	if(len(sys.argv) < K_MIN_ARG):
		print(USAGE_STR)
		exit(1)
	(EXP_COND_DICT_FOLDER, EXP_COND_PDB, POLAR_NETWORK_LIST, OUTPUT_FILE) = (sys.argv[1], sys.argv[2], sys.argv[3], sys.argv[4])
	evobundleCompetingNetworkDriver(EXP_COND_DICT_FOLDER, EXP_COND_PDB, POLAR_NETWORK_LIST, OUTPUT_FILE)





