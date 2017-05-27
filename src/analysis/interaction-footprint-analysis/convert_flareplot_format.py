# Author: Anthony Kai Kwang Ma
# Email: anthonyma27@gmail.com, akma327@stanford.edu
# Date: 05/20/17
# convert_flareplot_format.py


import os
import sys 
import json 
import glob 

from utils import *

USAGE_STR = """

# Purpose
# Convert old flareplot format to new one compatible with https://gpcrviz.github.io/flareplot/

# Usage 
# python convert_flareplot_format.py <INPUT_DIR> <OUTPUT_DIR>

# Arguments
# <INPUT_DIR> Absolute path to the input directory of old flareplot json files 
# <OUTPUT_DIR> Absolute path to the directory that contains the converted flareplot json files

# Example 
INPUT_DIR="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/interaction-footprint-analysis/simulation-evobundle/010617-flareplot-dataset/water-network"
OUTPUT_DIR="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/interaction-footprint-analysis/simulation-evobundle/flareplot-dataset/water-network"
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/analysis/interaction-footprint-analysis
python convert_flareplot_format.py $INPUT_DIR $OUTPUT_DIR


"""

K_MIN_ARG = 3

def convert(input_file, output_file):
	"""
		Convert from old to new flareplot json format
	"""
	json_str = ""
	for line in open(input_file, 'r'):
		json_str += line 

	old_json_dict = json.loads(json_str)
	old_edges = old_json_dict["edges"]

	new_edges = []
	for e in old_edges:
		n1, n2, frames = e["name1"], e['name2'], e['frames']
		name1, name2 = n1.split(".")[1], n2.split(".")[1]
		if(name1 == "-"): 
			name1 = "------"
		if(name2 == "-"): 
			name2 = "------"
		new_edges.append({"name1": name1, "name2": name2, "frames": frames})

	json_dict = partial_input
	json_dict["edges"] = new_edges
	with open(output_file, 'w') as outfile:
		json.dump(json_dict, outfile) 


def driver(INPUT_DIR, OUTPUT_DIR):
	if not os.path.exists(OUTPUT_DIR):
		os.makedirs(OUTPUT_DIR)

	input_files = glob.glob(INPUT_DIR + "/*")
	output_files = [OUTPUT_DIR + "/" + in_file.split("/")[-1] for in_file in input_files]

	for i, input_file in enumerate(input_files):
		print(i, input_file)
		output_file = output_files[i]
		convert(input_file, output_file)



if __name__ == "__main__":
	if(len(sys.argv) < K_MIN_ARG):
		print(USAGE_STR)
		exit(1)
	(INPUT_DIR, OUTPUT_DIR) = (sys.argv[1], sys.argv[2])
	driver(INPUT_DIR, OUTPUT_DIR)