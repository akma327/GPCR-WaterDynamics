# Author: Anthony Kai Kwang Ma
# Date: 03/29/2017
# venn_diagram_flareplot.py

import os
import sys 
import json
from utils import *

USAGE_STR = """

# Purpose 
# Given two polar networks P1 and P2, this script generates a flareplot json file 
# that shows interactions present exclusively in P1, those that are exclusively in P2
# and those that are in both with three different colors. 

# Usage 
# python venn_diagram_flareplot.py <POLAR_NETWORK_JSON1> <POLAR_NETWORK_JSON2> <OUTPUT_FILE> <-sim> <-crys>

# Arguments 
# <POLAR_NETWORK_JSON1> Absolute path to the Polar Network 1 json file
# <POLAR_NETWORK_JSON2> Absolute path to the Polar Network 2 json file 
# <OUTPUT_FILE> Absolute path to output file for venn diagram representation 
# <-sim> Optional flag for showing cyan simulation interactions only 
# <-crys> Optional flag for showing magenta and orange crystal interactions only 

# Example 
POLAR_NETWORK_JSON1="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/interaction-footprint-analysis/residue-resolution-evobundle-input/032717_crystal_vs_simulation/MOR_active_crystal.json"
POLAR_NETWORK_JSON2="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/interaction-footprint-analysis/residue-resolution-evobundle-input/032717_crystal_vs_simulation/MOR_active_simulation_cutoff_75.json"
OUTPUT_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/interaction-footprint-analysis/residue-resolution-evobundle-input/032717_crystal_vs_simulation/venn_diagram/MOR_active_crystal_vs_simulation_cutoff_75.json"
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/analysis/interaction-footprint-analysis
python venn_diagram_flareplot.py $POLAR_NETWORK_JSON1 $POLAR_NETWORK_JSON2 $OUTPUT_FILE

"""

K_MIN_ARG = 4

# P1_COLOR = "#FF00FF" # Magenta
P1_COLOR = "#D3D3D3"
P2_COLOR = "#00FFFF" # Cyan
BOTH_COLOR = "#FFA500" #Orange
WIDTH = 4.0

FULL_GCPRDB_LIST = ['1.1x28', '1.1x29', '1.1x30', '1.1x31', '1.1x32', '1.1x33', '1.1x34', '1.1x35', '1.1x36', '1.1x37', '1.1x38', '1.1x39', '1.1x40', '1.1x42', '1.1x43', '1.1x44', '1.1x45', '1.1x46', '1.1x47', '1.1x48', '1.1x49', '1.1x50', '1.1x51', '1.1x52', '1.1x53', '1.1x54', '1.1x55', '1.1x56', '1.1x57', '1.1x58', '1.1x59', '1.1x60', '2.2x38', '2.2x39', '2.2x40', '2.2x41', '2.2x42', '2.2x43', '2.2x44', '2.2x45', '2.2x46', '2.2x47', '2.2x48', '2.2x49', '2.2x50', '2.2x51', '2.2x52', '2.2x53', '2.2x54', '2.2x55', '2.2x56', '2.2x57', '2.2x58', '2.2x59', '2.2x60', '2.2x61', '2.2x62', '2.2x63', '2.2x64', '2.2x65', '2.2x66', '3.3x22', '3.3x23', '3.3x24', '3.3x25', '3.3x26', '3.3x27', '3.3x28', '3.3x29', '3.3x30', '3.3x31', '3.3x32', '3.3x33', '3.3x34', '3.3x35', '3.3x36', '3.3x37', '3.3x38', '3.3x39', '3.3x40', '3.3x41', '3.3x42', '3.3x43', '3.3x44', '3.3x45', '3.3x46', '3.3x47', '3.3x48', '3.3x49', '3.3x50', '3.3x51', '3.3x52', '3.3x53', '3.3x54', '3.3x55', '3.3x56', '4.4x41', '4.4x42', '4.4x43', '4.4x44', '4.4x45', '4.4x46', '4.4x47', '4.4x48', '4.4x49', '4.4x50', '4.4x51', '4.4x52', '4.4x53', '4.4x54', '4.4x55', '4.4x56', '4.4x57', '4.4x58', '4.4x59', '4.4x60', '4.4x61', '4.4x62', '4.4x63', '5.5x32', '5.5x33', '5.5x34', '5.5x35', '5.5x36', '5.5x37', '5.5x38', '5.5x39', '5.5x40', '5.5x41', '5.5x42', '5.5x43', '5.5x44', '5.5x45', '5.5x46', '5.5x47', '5.5x48', '5.5x49', '5.5x50', '5.5x51', '5.5x52', '5.5x53', '5.5x54', '5.5x55', '5.5x56', '5.5x57', '5.5x58', '5.5x59', '5.5x60', '5.5x61', '5.5x62', '5.5x63', '5.5x64', '5.5x461', '6.6x24', '6.6x25', '6.6x26', '6.6x27', '6.6x28', '6.6x29', '6.6x30', '6.6x31', '6.6x32', '6.6x33', '6.6x34', '6.6x35', '6.6x36', '6.6x37', '6.6x38', '6.6x39', '6.6x40', '6.6x41', '6.6x42', '6.6x43', '6.6x44', '6.6x45', '6.6x46', '6.6x47', '6.6x48', '6.6x49', '6.6x50', '6.6x51', '6.6x52', '6.6x53', '6.6x54', '6.6x55', '6.6x56', '6.6x57', '6.6x58', '6.6x59', '6.6x60', '6.6x61', '7.7x28', '7.7x29', '7.7x30', '7.7x31', '7.7x32', '7.7x33', '7.7x34', '7.7x35', '7.7x36', '7.7x37', '7.7x38', '7.7x39', '7.7x40', '7.7x41', '7.7x42', '7.7x43', '7.7x44', '7.7x45', '7.7x46', '7.7x47', '7.7x48', '7.7x49', '7.7x50', '7.7x51', '7.7x52', '7.7x53', '7.7x54', '7.7x55', '7.7x56', '7.7x57', '8.8x48', '8.8x49', '8.8x50', '8.8x51', '8.8x52', '8.8x53', '8.8x54']

def main_TM(tm):
	if(tm < 1 or tm > 7): return False
	return True

# Retrieves the list of keys (name1, name2) in a single polar network 
def retrieveInteractionKeys(polar_network):
	interaction_keys = []
	for entry in polar_network["edges"]:
		gpcrdb1, gpcrdb2 = str(entry["name1"]), str(entry["name2"])

		if(str(gpcrdb1) not in FULL_GCPRDB_LIST or str(gpcrdb2) not in FULL_GCPRDB_LIST): continue
		# print(gpcrdb1, gpcrdb2)
		tm1, tm2 = int(gpcrdb1.split(".")[1].split("x")[0]), int(gpcrdb2.split(".")[1].split("x")[0])
		if(not main_TM(tm1) or not main_TM(tm2)): continue
		key = (gpcrdb1, gpcrdb2)
		interaction_keys.append(key)
	return interaction_keys


def venn_slice(pol_net_inter_keys1, pol_net_inter_keys2):
	both_keys = list(set(pol_net_inter_keys1) & set(pol_net_inter_keys2))
	p1_keys = list(set(pol_net_inter_keys1).difference(both_keys))
	p2_keys = list(set(pol_net_inter_keys2).difference(both_keys))

	return p1_keys, both_keys, p2_keys

def venn_diagram_driver(POLAR_NETWORK_JSON1, POLAR_NETWORK_JSON2, OUTPUT_FILE, sim_flag=True, crys_flag=True):
	"""
		Superimposing crystal and simulation flare plots and showing interactions 
		in three colors, one for interactions formed only in crystal, one for 
		interactions formed only in simulation > X percent the time, and one for 
		interactions formed in both cases.
	"""
	json_str1, json_str2 = loadJsonString(POLAR_NETWORK_JSON1), loadJsonString(POLAR_NETWORK_JSON2)
	pol_net1, pol_net2 = json.loads(json_str1), json.loads(json_str2)
	# nodes = pol_net1["nodes"]
	nodes = []
	for n in FULL_GCPRDB_LIST:
		nodes.append({"color": "#C7C7C7", "name": n})
	pol_net_inter_keys1, pol_net_inter_keys2 = retrieveInteractionKeys(pol_net1), retrieveInteractionKeys(pol_net2)
	p1_keys, both_keys, p2_keys = venn_slice(pol_net_inter_keys1, pol_net_inter_keys2)

	### Generate edges 
	edges = []
	if(crys_flag == True):
		for p1k in p1_keys: # Magenta
			edges.append({"name1": p1k[0], "name2": p1k[1], "color": P1_COLOR, "width": WIDTH, "frames": [0]})

		for b in both_keys: # Orange
			edges.append({"name1": b[0], "name2": b[1], "color": BOTH_COLOR, "width": WIDTH, "frames": [0]})
		

	if(sim_flag == True):
		for p2k in p2_keys: # Cyan
			edges.append({"name1": p2k[0], "name2": p2k[1], "color": P2_COLOR, "width": WIDTH, "frames": [0]})
		

	json_dict = {"nodes": nodes, "edges": edges}
	OUT_DIR = "/".join(OUTPUT_FILE.split("/")[0:-1])
	print(OUT_DIR)
	if not os.path.exists(OUT_DIR):
		os.makedirs(OUT_DIR)

	with open(OUTPUT_FILE, 'w') as f:
		json.dump(json_dict, f)


if __name__ == "__main__":
	(POLAR_NETWORK_JSON1, POLAR_NETWORK_JSON2, OUTPUT_FILE) = (sys.argv[1], sys.argv[2], sys.argv[3])
	crys_flag = True
	sim_flag = True
	if("-sim" in sys.argv):
		crys_flag = False
	if("-crys" in sys.argv):
		sim_flag = False
	venn_diagram_driver(POLAR_NETWORK_JSON1, POLAR_NETWORK_JSON2, OUTPUT_FILE, sim_flag, crys_flag)




