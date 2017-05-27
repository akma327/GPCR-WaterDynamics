# Author: Anthony Kai Kwang Ma
# Email: akma327@stanford.edu
# residue_footprint_table.py

import os
import sys 
import csv
import numpy as np 
from utils import * 

USAGE_STR = """
# Purpose 
# Given a atom foot print table representing the frequencies for interactions part of polar network Purpose
# this script will compress the table from atom resolution to residue resolution by taking the maximum frequency
# for every column over all pairs of atoms that belong to the same pair of residues. 

# Usage 
# python residue_footprint_table.py <ATOM_FOOTPRINT_TABLE> <OUTPUT_FILE>

# Arguments 
# <ATOM_FOOTPRINT_TABLE> Absolute path to the atom footprint table for Polar Network of interest 
# <OUTPUT_FILE> Absolute path to compressed residue footprint table 

# Example 
ATOM_FOOTPRINT_TABLE="/scratch/PI/rondror/akma327/DynamicNetworks/results/interaction-footprint-analysis/polar-network-freq-tables/atom-resolution/4N6H/dor-inactive-atom-footprint.txt"
OUTPUT_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/results/interaction-footprint-analysis/polar-network-freq-tables/residue-resolution/4N6H/dor-inactive-residue-footprint.txt"
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/analysis/interaction-footprint-analysis
python residue_footprint_table.py $ATOM_FOOTPRINT_TABLE $OUTPUT_FILE

"""

K_MIN_ARG = 3


# For every pair of gpcrdb numbers there are multiple frequencies between atom pairs
# within that gpcrdb pair. Take the maximum frequency. 
def columnFreqAnalysis(col_query, row_labels, exp_rep_freq_vals):
	interactionMaxFreqDict = {}
	for index, interaction_label in enumerate(row_labels):
		interaction_info = interaction_label.split(":")
		gpcrdb1, gpcrdb2, atom1, atom2, interaction_type = interaction_info
		key1, key2 = (gpcrdb1, gpcrdb2, interaction_type), (gpcrdb2, gpcrdb1, interaction_type)
		freq = exp_rep_freq_vals[index]
		if(key1 not in interactionMaxFreqDict and key2 not in interactionMaxFreqDict): interactionMaxFreqDict[key1] = freq 
		else: 
			if(key1 in interactionMaxFreqDict and freq > interactionMaxFreqDict[key1]): interactionMaxFreqDict[key1] = freq 
			elif(key2 in interactionMaxFreqDict and freq > interactionMaxFreqDict[key2]): interactionMaxFreqDict[key2] = freq
	# Write out statistics 
	compressed_interaction_freq = []
	for k in interactionMaxFreqDict:
		freq = interactionMaxFreqDict[k]
		compressed_interaction_freq.append((k, freq))
	return compressed_interaction_freq


# Sort interaction key rows by frequency 
def sortInteractionsByFrequencyAndType(cross_experiment_freq_comparison_dict):
	cross_experiment_freq_comparison_list = []
	for key in cross_experiment_freq_comparison_dict:
		exp_rep_freq_vals = cross_experiment_freq_comparison_dict[key]
		row = (list(key) + exp_rep_freq_vals)
		cross_experiment_freq_comparison_list.append(row)

	### Sort rows by frequency 
	cross_experiment_freq_comparison_list = sorted(cross_experiment_freq_comparison_list, key = lambda x:x[2:])
	cross_experiment_freq_comparison_list = [[":".join(linfo[0:3])] + list(linfo[3:]) for linfo in cross_experiment_freq_comparison_list]
	return cross_experiment_freq_comparison_list


# Compress atom footprint table 
def compressFootprintTable(ATOM_FOOTPRINT_TABLE):
	cross_experiment_freq_comparison_dict = {} # {interaction_key: [exp_freq1, exp_freq2, ... exp_freq30...]}
	with open(ATOM_FOOTPRINT_TABLE, 'rU') as f: 
		reader = csv.reader(f, delimiter="\t")
		d = list(reader)
	darr = np.array(d)
	row_labels = list(darr[:,0][1:])
	column_labels = list(darr[0,:])
	COLUMN_QUERY = column_labels[1:]
	for col_query in COLUMN_QUERY: 
		column_index = findColumnIndex(column_labels, col_query)
		exp_rep_freq_vals = list(darr[:, column_index])[1:]
		compressed_interaction_freq =  columnFreqAnalysis(col_query, row_labels, exp_rep_freq_vals)
		for label, cfreq in compressed_interaction_freq:
			if(label not in cross_experiment_freq_comparison_dict):
				cross_experiment_freq_comparison_dict[label] = [cfreq]
			else: 
				cross_experiment_freq_comparison_dict[label].append(cfreq)
	# Sorted list form 
	cross_experiment_freq_comparison_list = sortInteractionsByFrequencyAndType(cross_experiment_freq_comparison_dict)
	return cross_experiment_freq_comparison_list, COLUMN_QUERY

# Driver method for generating residue footprint table 
def genResidueFootprintTableDriver(ATOM_FOOTPRINT_TABLE, OUTPUT_FILE):
	fw = genWriteDescriptor(OUTPUT_FILE)
	cross_experiment_freq_comparison_list, COLUMN_QUERY = compressFootprintTable(ATOM_FOOTPRINT_TABLE)
	header = "GPCR-DB1:GPCR-DB2:Interaction Type" + "\t" + "\t".join(COLUMN_QUERY) + "\n"
	fw.write(header)
	for a in cross_experiment_freq_comparison_list:
		fw.write("\t".join(a) + "\n")


if __name__ == "__main__":
	if(len(sys.argv) < K_MIN_ARG):
		print(USAGE_STR)
		exit(1)
	(ATOM_FOOTPRINT_TABLE, OUTPUT_FILE) = (sys.argv[1], sys.argv[2])
	genResidueFootprintTableDriver(ATOM_FOOTPRINT_TABLE, OUTPUT_FILE)


