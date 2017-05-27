# Author: Anthony Kai Kwang Ma
# venn_diagram_compare_polar_networks.py 

import os
import sys 
import json 
from utils import *

USAGE_STR = """

# Purpose 
# Given two polar networks P1 and P2, this script generates json dictionaries for 
# bundle plots that represent interactions that are exclusively part of P1, 
# exclusively part of P2, or belonging to P1 and P2. For the last intersection case,
# will generate two dictionaries for the same interactions but have frequency values
# correspond to P1 and P2. Essentially creating a venn diagram for interactions in
# two polar networks. Interactions that are found in the intersection tells the user 
# which interactions are conserved, and the difference in frequency/line thickness 
# represents to what extent the conservation is. Interactions belonging exclusively 
# to one state or the other represent interactions that are unique or important to 
# a single polar network and not the other hence giving an idea of important tranisitions 
# between states. 

# Usage 
# python venn_diagram_compare_polar_networks.py <POLAR_NETWORK_JSON1> <POLAR_NETWORK_JSON2> <VENN_DIAGRAM_SECTOR> <OUTPUT_FILE>

# Arguments 
# <POLAR_NETWORK_JSON1> Absolute path to the Polar Network 1 json file representation 
# <POLAR_NETWORK_JSON2> Absolute path to the Polar Network 2 json file representation
# <VENN_DIAGRAM_SECTOR> User specifies which sector of venn diagram to calculate 
	-first : polar network 1 
	-second: polar network 2 
	-firstorig: unmodified polar network 1
	-secondorig: unmodified polar network 2
	-intersect1: intersection with polar network 1 frequency 
	-intersect2: intersection with polar network 2 frequency
# <OUTPUT_FILE> Absolute path to output file for single venn diagram sector 

# Example 
POLAR_NETWORK_JSON1="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/interaction-footprint-analysis/residue-resolution-evobundle-input/active-mor-network/MOR-active-noNB-BU72-nature2015-rep_1.json"
POLAR_NETWORK_JSON2="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/interaction-footprint-analysis/residue-resolution-evobundle-input/inactive-dor-network/DOR-inactive-naltrindole-rep_1.json"
VENN_DIAGRAM_SECTOR="-first"
OUTPUT_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/interaction-footprint-analysis/polar-network-comparisons/active-mor-vs-inactive-dor/active-mor-only.json"
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/analysis/interaction-footprint-analysis
python venn_diagram_compare_polar_networks.py $POLAR_NETWORK_JSON1 $POLAR_NETWORK_JSON2 $VENN_DIAGRAM_SECTOR $OUTPUT_FILE

"""

K_MIN_ARG = 5


# Retrieve command line arguments 
def getCommandLineArguments():
	if(len(sys.argv) < K_MIN_ARG):
		print(USAGE_STR)
		exit(1)
	POLAR_NETWORK_JSON1 = sys.argv[1]
	POLAR_NETWORK_JSON2 = sys.argv[2]
	VENN_DIAGRAM_SECTOR = sys.argv[3]
	OUTPUT_FILE = sys.argv[4]
	return POLAR_NETWORK_JSON1, POLAR_NETWORK_JSON2, VENN_DIAGRAM_SECTOR, OUTPUT_FILE


# Generate ordered pair key
def orderedPairKey(a, b, c):
	if(a > b): return (a,b,c)
	else: return (b,a,c)

# Retrieves the list of keys (name1, name2) in a single polar network 
def retrieveInteractionKeys(polar_network):
	interaction_keys = []
	for entry in polar_network["edges"]:
		# Need to include interaction type 
		# gpcrdb1, gpcrdb2, interaction_type = entry["name1"], entry["name2"], LINE_COLOR_TO_TYPE_DICT[entry["color"]]
		gpcrdb1, gpcrdb2, interaction_type = entry["name1"], entry["name2"], "wb_combined"
		key = orderedPairKey(gpcrdb1, gpcrdb2, interaction_type)
		interaction_keys.append(key)
	return interaction_keys


# After getting the full list of interaction keys from polar network 1 and 2, use the
# venn diagram sector flag to extract the appropriate subset of interaction keys 
def getSectorKeys(pol_net_inter_keys1, pol_net_inter_keys2, VENN_DIAGRAM_SECTOR):
	intersect = list(set(pol_net_inter_keys1) & set(pol_net_inter_keys2))
	union = list(set(pol_net_inter_keys1) | set(pol_net_inter_keys2))
	if(VENN_DIAGRAM_SECTOR == "-first"):
		return set(pol_net_inter_keys1).difference(intersect), union
	elif(VENN_DIAGRAM_SECTOR == "-second"):
		return set(pol_net_inter_keys2).difference(intersect), union
	elif(VENN_DIAGRAM_SECTOR == "-firstorig"):
		return set(pol_net_inter_keys1), union
	elif(VENN_DIAGRAM_SECTOR == "-secondorig"):
		return set(pol_net_inter_keys2), union
	elif(VENN_DIAGRAM_SECTOR in ["-intersect1", "-intersect2"]):
		return intersect, union


# Take entries of polar network if interaction is part of the sector interaction keys 
def extractSectorInteractionKeys(polar_network, sector_net_inter_keys, sector_interaction_keys):
	for entry in polar_network["edges"]:
		# entry_key = orderedPairKey(entry["name1"], entry["name2"], LINE_COLOR_TO_TYPE_DICT[entry["color"]])
		entry_key = orderedPairKey(entry["name1"], entry["name2"], "wb_combined")
		if(entry_key in sector_net_inter_keys):
			sector_interaction_keys.append(entry)


# With the subset list of edges, generate the json dictionary for the desired sector 
def genSectorJsonDict(pol_net1, pol_net2, VENN_DIAGRAM_SECTOR, sector_net_inter_keys, union_keys):
	combined_nodes = pol_net1["nodes"] + pol_net2["nodes"]
	sector_interaction_keys = []
	if(VENN_DIAGRAM_SECTOR in ["-first", "-firstorig", "-intersect1"]):
		extractSectorInteractionKeys(pol_net1, sector_net_inter_keys, sector_interaction_keys)
	elif(VENN_DIAGRAM_SECTOR in ["-second", "-secondorig", "-intersect2"]):
		extractSectorInteractionKeys(pol_net2, sector_net_inter_keys, sector_interaction_keys)

	# for sector_interaction_key in sector_interaction_keys:
	# 	sector_interaction_key["width"] = 6
	# 	sector_interaction_key["color"] = "#A9A9A9"

	sector_json_dict = {"nodes": combined_nodes, "edges": sector_interaction_keys}
	return sector_json_dict



# For the venn_diagram_sector option takes part of polar network 1 and 2 json dictionaries 
# and computes the sector dictionary. 
def genVennDiagramSectorDict(POLAR_NETWORK_JSON1, POLAR_NETWORK_JSON2, VENN_DIAGRAM_SECTOR):
	json_str1, json_str2 = loadJsonString(POLAR_NETWORK_JSON1), loadJsonString(POLAR_NETWORK_JSON2)
	pol_net1, pol_net2 = json.loads(json_str1), json.loads(json_str2)
	pol_net_inter_keys1, pol_net_inter_keys2 = retrieveInteractionKeys(pol_net1), retrieveInteractionKeys(pol_net2)
	sector_net_inter_keys, union_keys = getSectorKeys(pol_net_inter_keys1, pol_net_inter_keys2, VENN_DIAGRAM_SECTOR)
	sector_json_dict = genSectorJsonDict(pol_net1, pol_net2, VENN_DIAGRAM_SECTOR, sector_net_inter_keys, union_keys)
	return sector_json_dict



# Driver method to generate the sector of edges and their frequencies then calls the 
# write function to dump all json content into output file 
def vennDiagramDriver(POLAR_NETWORK_JSON1, POLAR_NETWORK_JSON2, VENN_DIAGRAM_SECTOR, OUTPUT_FILE):
	sector_json_dict = genVennDiagramSectorDict(POLAR_NETWORK_JSON1, POLAR_NETWORK_JSON2, VENN_DIAGRAM_SECTOR)
	createDirectory(OUTPUT_FILE)

	for edge in sector_json_dict["edges"]:
		name1, name2 = str(edge["name1"]).split(".")[1], str(edge["name2"]).split(".")[1]
		print(name1 + "\t" + name2)

	with open(OUTPUT_FILE, 'w') as f:
		json.dump(sector_json_dict, f)

if __name__ == "__main__":
	POLAR_NETWORK_JSON1, POLAR_NETWORK_JSON2, VENN_DIAGRAM_SECTOR, OUTPUT_FILE = getCommandLineArguments()
	vennDiagramDriver(POLAR_NETWORK_JSON1, POLAR_NETWORK_JSON2, VENN_DIAGRAM_SECTOR, OUTPUT_FILE)








