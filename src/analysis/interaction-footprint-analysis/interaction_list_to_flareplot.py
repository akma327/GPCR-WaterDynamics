# Author: Anthony Kai Kwang Ma
# Email: akma327@stanford.edu
# Date: 04/09/2017
# interaction_list_to_flareplot.py

import sys 
import json
from utils import *



USAGE_STR = """

# Purpose 
# Convert a list of gpcrdb pair interactions to edges in a flareplot with grayscale color scheme. 

# Usage 
# python interaction_list_to_flareplot.py <INTERACTION_LIST> <OUTPUT_FILE>

# Arguments 
# <INTERACTION_LIST> Absolute path to interaction list with gpcrdb pairs 
# <OUTPUT_FILE> Absolute path to the flareplot json file 

# Example 

INTERACTION_LIST="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/competing-network-analysis/pymol-visualization/040417/active-heatmap/01-pdb/interaction_list_sim_cutoff60_ALL.txt"
OUTPUT_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/competing-network-analysis/pymol-visualization/040417/active-heatmap/04-flareplot/active_network.json"
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/analysis/interaction-footprint-analysis
python interaction_list_to_flareplot.py $INTERACTION_LIST $OUTPUT_FILE

"""

K_MIN_ARG = 3

FULL_GCPRDB_LIST = ['1.1x28', '1.1x29', '1.1x30', '1.1x31', '1.1x32', '1.1x33', '1.1x34', '1.1x35', '1.1x36', '1.1x37', '1.1x38', '1.1x39', '1.1x40', '1.1x42', '1.1x43', '1.1x44', '1.1x45', '1.1x46', '1.1x47', '1.1x48', '1.1x49', '1.1x50', '1.1x51', '1.1x52', '1.1x53', '1.1x54', '1.1x55', '1.1x56', '1.1x57', '1.1x58', '1.1x59', '1.1x60', '2.2x38', '2.2x39', '2.2x40', '2.2x41', '2.2x42', '2.2x43', '2.2x44', '2.2x45', '2.2x46', '2.2x47', '2.2x48', '2.2x49', '2.2x50', '2.2x51', '2.2x52', '2.2x53', '2.2x54', '2.2x55', '2.2x56', '2.2x57', '2.2x58', '2.2x59', '2.2x60', '2.2x61', '2.2x62', '2.2x63', '2.2x64', '2.2x65', '2.2x66', '3.3x22', '3.3x23', '3.3x24', '3.3x25', '3.3x26', '3.3x27', '3.3x28', '3.3x29', '3.3x30', '3.3x31', '3.3x32', '3.3x33', '3.3x34', '3.3x35', '3.3x36', '3.3x37', '3.3x38', '3.3x39', '3.3x40', '3.3x41', '3.3x42', '3.3x43', '3.3x44', '3.3x45', '3.3x46', '3.3x47', '3.3x48', '3.3x49', '3.3x50', '3.3x51', '3.3x52', '3.3x53', '3.3x54', '3.3x55', '3.3x56', '4.4x41', '4.4x42', '4.4x43', '4.4x44', '4.4x45', '4.4x46', '4.4x47', '4.4x48', '4.4x49', '4.4x50', '4.4x51', '4.4x52', '4.4x53', '4.4x54', '4.4x55', '4.4x56', '4.4x57', '4.4x58', '4.4x59', '4.4x60', '4.4x61', '4.4x62', '4.4x63', '5.5x32', '5.5x33', '5.5x34', '5.5x35', '5.5x36', '5.5x37', '5.5x38', '5.5x39', '5.5x40', '5.5x41', '5.5x42', '5.5x43', '5.5x44', '5.5x45', '5.5x46', '5.5x47', '5.5x48', '5.5x49', '5.5x50', '5.5x51', '5.5x52', '5.5x53', '5.5x54', '5.5x55', '5.5x56', '5.5x57', '5.5x58', '5.5x59', '5.5x60', '5.5x61', '5.5x62', '5.5x63', '5.5x64', '5.5x461', '6.6x24', '6.6x25', '6.6x26', '6.6x27', '6.6x28', '6.6x29', '6.6x30', '6.6x31', '6.6x32', '6.6x33', '6.6x34', '6.6x35', '6.6x36', '6.6x37', '6.6x38', '6.6x39', '6.6x40', '6.6x41', '6.6x42', '6.6x43', '6.6x44', '6.6x45', '6.6x46', '6.6x47', '6.6x48', '6.6x49', '6.6x50', '6.6x51', '6.6x52', '6.6x53', '6.6x54', '6.6x55', '6.6x56', '6.6x57', '6.6x58', '6.6x59', '6.6x60', '6.6x61', '7.7x28', '7.7x29', '7.7x30', '7.7x31', '7.7x32', '7.7x33', '7.7x34', '7.7x35', '7.7x36', '7.7x37', '7.7x38', '7.7x39', '7.7x40', '7.7x41', '7.7x42', '7.7x43', '7.7x44', '7.7x45', '7.7x46', '7.7x47', '7.7x48', '7.7x49', '7.7x50', '7.7x51', '7.7x52', '7.7x53', '7.7x54', '7.7x55', '7.7x56', '7.7x57', '8.8x48', '8.8x49', '8.8x50', '8.8x51', '8.8x52', '8.8x53', '8.8x54']
GRAY_COLOR="#C7C7C7"
LINE_WIDTH = 6.0


def gen_flareplot(INTERACTION_LIST, OUTPUT_FILE):
	"""
		Generate flareplot from interaction list 
	"""

	nodes = []
	for n in FULL_GCPRDB_LIST:
		nodes.append({"color": GRAY_COLOR, "name": n})

	edges = []
	f = open(INTERACTION_LIST, 'r')
	for line in f:
		gpcrdb1, gpcrdb2 = line.strip().split("\t")
		tm1, tm2 = gpcrdb1.split("x")[0], gpcrdb2.split("x")[0]
		n1, n2 = tm1 + "." + gpcrdb1, tm2 + "." + gpcrdb2
		edges.append({"name1": n1, "name2": n2, "color" : GRAY_COLOR, "width": LINE_WIDTH, "frames": [0]})

	json_dict = {"nodes": nodes, "edges": edges}
	with open(OUTPUT_FILE, 'w') as f:
		json.dump(json_dict, f)

if __name__ == "__main__":
	if(len(sys.argv) < K_MIN_ARG):
		print(USAGE_STR)
		exit(0)

	(INTERACTION_LIST, OUTPUT_FILE) = (sys.argv[1], sys.argv[2])
	gen_flareplot(INTERACTION_LIST, OUTPUT_FILE)
