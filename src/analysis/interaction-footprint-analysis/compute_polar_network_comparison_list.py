# Author: Anthony Kai Kwang Ma
# Email: akma327@stanford.edu
# Date: October 1, 2015
# compute_polar_network_comparison_list.py

import os 
import sys
import json 
from utils import *

USAGE_STR = """

# Purpose 
# For a polar network comparison bundle plot json, reverse engineer a polar network list 
# to include only the interactions that are keys of the json dictionary. This could for 
# example be used to find list of interactions that are exclusive to mor active network. 

# Usage 
# python compute_polar_network_comparison_list.py <NETWORK_COMPARISON_JSON> <PDB_CODE> <OUTPUT_FILE>

# Arguments 
# <NETWORK_COMPARISON_JSON> Absolute path to the json file to process interaction keys 
# <PDB_CODE> PDB of the receptor for the polar network 
# <OUTPUT_FILE> Absolute path to the file where to write out interactions based on short 
# hand amino acid notation. 

# Example 1 - Interactions Exclusive to Active MOR 
NETWORK_COMPARISON_JSON="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/interaction-footprint-analysis/polar-network-comparisons/active-mor-vs-inactive-dor/active-mor-only.json"
PDB_CODE="5C1M"
OUTPUT_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/interaction-footprint-analysis/polar-network-lists/comparison-network-lists/active-mor-only-list.txt"
python compute_polar_network_comparison_list.py $NETWORK_COMPARISON_JSON $PDB_CODE $OUTPUT_FILE

# Example 2 - Interactions Exclusive to Inactive DOR 
NETWORK_COMPARISON_JSON="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/interaction-footprint-analysis/polar-network-comparisons/active-mor-vs-inactive-dor/inactive-dor-only.json"
PDB_CODE="4N6H"
OUTPUT_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/interaction-footprint-analysis/polar-network-lists/comparison-network-lists/inactive-dor-only-list.txt"
python compute_polar_network_comparison_list.py $NETWORK_COMPARISON_JSON $PDB_CODE $OUTPUT_FILE

# Example 3 - Interactions Present in both Active MOR and inactive DOR in relation to active MOR
NETWORK_COMPARISON_JSON="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/interaction-footprint-analysis/polar-network-comparisons/active-mor-vs-inactive-dor/active-mor-both.json"
PDB_CODE="5C1M"
OUTPUT_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/interaction-footprint-analysis/polar-network-lists/comparison-network-lists/active-mor-both-list.txt"
python compute_polar_network_comparison_list.py $NETWORK_COMPARISON_JSON $PDB_CODE $OUTPUT_FILE

# Example 4 - Interactions Present in both Active MOR and inactive DOR in relation to inactive DOR 
NETWORK_COMPARISON_JSON="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/interaction-footprint-analysis/polar-network-comparisons/active-mor-vs-inactive-dor/inactive-dor-both.json"
PDB_CODE="4N6H"
OUTPUT_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/interaction-footprint-analysis/polar-network-lists/comparison-network-lists/inactive-dor-both-list.txt"
python compute_polar_network_comparison_list.py $NETWORK_COMPARISON_JSON $PDB_CODE $OUTPUT_FILE

"""

K_MIN_ARG = 4


# Get command line arguments 
def getCommandLineArguments():
	if(len(sys.argv) < K_MIN_ARG):
		print(USAGE_STR)
	return sys.argv[1], sys.argv[2], sys.argv[3]


# For every interaction pair in json dict for bundle plot extract the interaction
# information in form [(A132, Y133, "wb"), ...]
def getAminoAcidPairList(NETWORK_COMPARISON_JSON, GPCRDB_TO_RES_DICT):
	aminoAcidPairList = []
	json_str = loadJsonString(NETWORK_COMPARISON_JSON)
	network_json_dict = json.loads(json_str)
	interactions = network_json_dict["interactions"]
	for entry in interactions:
		if(entry["width"] != 0):
			gpcrdb1, gpcrdb2 = entry["name1"].split(".")[1].strip(), entry["name2"].split(".")[1].strip()
			aa1, aa2 = GPCRDB_TO_RES_DICT[gpcrdb1], GPCRDB_TO_RES_DICT[gpcrdb2]
			short_aa1, short_aa2 = aa3to1_dict[aa1[0:3]] + aa1[3:], aa3to1_dict[aa2[0:3]] + aa2[3:]
			interaction_type = LINE_COLOR_TO_TYPE_DICT[entry["color"]]
			aminoAcidPairList.append((short_aa1, short_aa2, interaction_type))
	return aminoAcidPairList


# Write out polar network comparison list 
def writeOutputFile(OUTPUT_FILE, PDB_CODE, aminoAcidPairList):
	f = genWriteDescriptor(OUTPUT_FILE)
	f.write("PDB:" + PDB_CODE + "\n")
	for aa1, aa2, interaction_type in aminoAcidPairList:
		f.write(aa1 + " -- " + aa2 + "@" + interaction_type + "\n")

# Driver function for computing comparison polar network list 
def computeComparisonPolarNetworkList(NETWORK_COMPARISON_JSON, PDB_CODE, OUTPUT_FILE):
	RES_TO_GPCRDB_DICT = genResidueToGpcrdbTable(PDB_CODE)
	GPCRDB_TO_RES_DICT = {RES_TO_GPCRDB_DICT[k]:k for k in RES_TO_GPCRDB_DICT}
	aminoAcidPairList = getAminoAcidPairList(NETWORK_COMPARISON_JSON, GPCRDB_TO_RES_DICT)
	writeOutputFile(OUTPUT_FILE, PDB_CODE, aminoAcidPairList)

if __name__ == "__main__":
	NETWORK_COMPARISON_JSON, PDB_CODE, OUTPUT_FILE = getCommandLineArguments()
	computeComparisonPolarNetworkList(NETWORK_COMPARISON_JSON, PDB_CODE, OUTPUT_FILE)



