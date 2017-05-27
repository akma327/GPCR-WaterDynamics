# Author: Anthony Kai Kwang Ma
# Email: akma327@stanford.edu
# Date: 02/20/17
# get_num_simulation_frames.py

import sys 
import csv 
import numpy as np

USAGE_STR = """

# Purpose 
# Input: Master experiment condition table
# Output: Table associating experiment condition name to number of frames in raw simulation 
# and after state decomposition 

# Usage 
# python get_num_simulation_frames.py <INPUT_FILE> <OUTPUT_FILE>

# Example
INPUT_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/general/master-experiment-condition-table.csv"
OUTPUT_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/state-decomposition/num_simulation_frames_by_exp_condition.csv"
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/analysis/state-decomposition
python get_num_simulation_frames.py $INPUT_FILE $OUTPUT_FILE

"""

K_MIN_ARG = 3


def calc_decomp_freqs(STATE_DECOMP_FILE, STATE_LABEL):

	"""
		Parse state decomposition file and calculate frequencies
		for active, intermediate 1,2,3 and inactive state. 
	"""

	# print(STATE_DECOMP_FILE)
	f = open(STATE_DECOMP_FILE, 'r')
	state_freq = np.array([0]*5)
	for line in f:
		state = int(line.strip().split("\t")[1])
		state_freq[state-1] += 1
	total_frames = sum(state_freq)
	num_specified_state_frames = None
	if(STATE_LABEL == "Inactive"):
		num_specified_state_frames = state_freq[0]
	elif(STATE_LABEL == "Active"):
		num_specified_state_frames = state_freq[4]
	# print("Num Frame per state", state_freq)
	state_freq = state_freq/float(total_frames)

	return total_frames, num_specified_state_frames


def read_table(INPUT_FILE):
	"""	
		Read master-experiment-condition-table
	"""
	with open(INPUT_FILE, 'rU') as f: 
		reader = csv.reader(f, delimiter=",")
		d = list(reader)

	darr = np.array(d)
	column_labels = list(darr[0,:])
	short_description_index = column_labels.index('short_exp_cond_description')
	long_description_index = column_labels.index('long_exp_cond_description')
	inter_dict_dir_index = column_labels.index('3.5A_inter_dict_dir')


	### Extract information row by row
	all_rows = []
	for row in darr[1:]:
		short_exp_description = row[short_description_index]
		exp_cond_label = row[long_description_index]
		full_exp_description = exp_cond_label
		if("inactive" in full_exp_description):
			full_exp_description += ",Inactive"
			STATE_LABEL = "Inactive"
		else:
			full_exp_description += ",Active"
			STATE_LABEL = "Active"
		state_decomp_path = row[inter_dict_dir_index] + "/state_classification.txt"

		try:
			total_frames, num_specified_state_frames = calc_decomp_freqs(state_decomp_path, STATE_LABEL)
			row_info = map(str,[short_exp_description, full_exp_description, total_frames, num_specified_state_frames])
			all_rows.append(row_info)
			print(row_info)
		except IOError: 
			print("Can't find state_classification.txt file")

	return all_rows



def write_table(OUTPUT_FILE, all_rows):
	"""
		Write out number of frames for each simulation 
	"""
	f = open(OUTPUT_FILE, 'w')
	header_arr = ["short_exp_cond_description", "long_exp_cond_description", "num_frames_full_sim", "num_frames_state_decomposed"]
	f.write("\t".join(header_arr) + "\n")
	for row in all_rows:
		f.write("\t".join(row) + "\n")



def driver(INPUT_FILE, OUTPUT_FILE):
	"""
		Compute number of frames in each experiment condition 
	"""
	all_rows = read_table(INPUT_FILE)
	write_table(OUTPUT_FILE, all_rows)

if __name__ == "__main__":
	if(len(sys.argv) < K_MIN_ARG):
		print(USAGE_STR)
		exit(0)

	(INPUT_FILE, OUTPUT_FILE) = (sys.argv[1], sys.argv[2])
	driver(INPUT_FILE, OUTPUT_FILE)