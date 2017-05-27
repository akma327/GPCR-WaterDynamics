# batch_evobundle_competing_networks.py 

import os
import sys
import csv 
import numpy as np 

USAGE_STR = """

# Purpose 
# Generates the .sh batch script for evobundle jsons. Allows for querying option 
# based on receptor, state, ligand, and publication. 

# Usage 
# python batch_evobundle_competing_networks.py <POLAR_NETWORK_LIST> <OUTPUT_DIR> <OUTPUT_FILE> <-receptor> <-state> <-ligand> <publication>

# Arguments
# <POLAR_NETWORK_LIST> Absolute path to the polar network list 
# <OUTPUT_DIR> Path to directory to store the batch of evobundle json files 
# <OUTPUT_FILE> Absolute path to the batch script 
# <-receptor> Optional flag to query for specific receptor class 
# <-state> Optional flag to query for active or inactive state 
# <-ligand> Optional flag to query for specific ligand 
# <-publication> Optional to query for specific publication

# Example 
POLAR_NETWORK_LIST="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/interaction-footprint-analysis/polar-network-lists/active-mor-network.txt"
OUTPUT_DIR="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/competing-network-analysis/evobundle-json/active-mor-network"
OUTPUT_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/src/analysis/competing-network-analysis/batch/evobundle/active_network_batch_evobundle.sh"
python batch_evobundle_competing_networks.py $POLAR_NETWORK_LIST $OUTPUT_DIR $OUTPUT_FILE -state active 

"""

K_MIN_ARG = 3
EXP_COND_INTERACTION_DICT_TABLE = "/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/competing-network-analysis/tables/exp_cond_interaction_dict_table.csv"
EVOBUNDLE_COMPETING_NETWORK_SCRIPT="/scratch/PI/rondror/akma327/DynamicNetworks/src/analysis/competing-network-analysis"

# Create directory if not exist
def createDirectory(OUTPUT_FILE):
	directory = os.path.dirname(OUTPUT_FILE)
	if not os.path.exists(directory):
		os.makedirs(directory)

# Generate write file descriptor 
def genWriteDescriptor(OUTPUT_FILE):
	createDirectory(OUTPUT_FILE)
	return open(OUTPUT_FILE, 'w')

# Get the query filters
def getQueries():
	queries = {}
	if("-receptor" in sys.argv):
		queries["receptor"] = sys.argv[sys.argv.index("-receptor") + 1]
	if("-state" in sys.argv):
		queries["state"] = sys.argv[sys.argv.index("-state") +1]
	if("-ligand" in sys.argv):
		queries["ligand"] = sys.argv[sys.argv.index("-ligand") + 1]
	if("-publication" in sys.argv): 
		queries["publication"] = sys.argv[sys.argv.index("-publication") +1]
	return queries



# Driver method to generate the batch script 
def batchDriver(POLAR_NETWORK_LIST, OUTPUT_DIR, OUTPUT_FILE, queries):

	with open(EXP_COND_INTERACTION_DICT_TABLE, 'rU') as f:
		reader = csv.reader(f, delimiter=",")
		d = list(reader)
	darr = np.array(d)
	experiment_condition_list = []
	column_labels = list(darr[0])
	pdb_index, long_exp_cond_desr_index, inter_dict_dir_index = column_labels.index("pdb"), column_labels.index("long_exp_cond_description"), column_labels.index("3.5A_inter_dict_dir")

	#### Query for interaction dictionary paths 
	for row in darr[1:]:
		add_row = True 
		for query in queries.keys():
			q_filter = queries[query]
			q_index = column_labels.index(query)
			if(row[q_index] != q_filter): add_row = False 
		if(add_row): experiment_condition_list.append((row[pdb_index],row[long_exp_cond_desr_index], row[inter_dict_dir_index]))

	#### Write batch script file 
	fw = genWriteDescriptor(OUTPUT_FILE)
	for exp_pdb, long_exp_cond_description, inter_dict_dir_path in experiment_condition_list:
		fw.write("EXP_COND_DICT_FOLDER=\"" + inter_dict_dir_path + "\"\n")
		fw.write("EXP_COND_PDB=\"" + exp_pdb + "\"\n")
		fw.write("POLAR_NETWORK_LIST=\"" + POLAR_NETWORK_LIST + "\"\n")
		fw.write("OUTPUT_FILE=\"" + OUTPUT_DIR + "/" + long_exp_cond_description + ".json\"\n")
		fw.write("cd " + EVOBUNDLE_COMPETING_NETWORK_SCRIPT + "\n")
		fw.write("python evobundle_competing_networks.py $EXP_COND_DICT_FOLDER $EXP_COND_PDB $POLAR_NETWORK_LIST $OUTPUT_FILE\n\n")


if __name__ == "__main__":
	if(len(sys.argv) < K_MIN_ARG):
		print(USAGE_STR)
		exit(1)
	(POLAR_NETWORK_LIST, OUTPUT_DIR, OUTPUT_FILE) = (sys.argv[1], sys.argv[2], sys.argv[3])
	queries = getQueries()
	batchDriver(POLAR_NETWORK_LIST, OUTPUT_DIR, OUTPUT_FILE, queries)








