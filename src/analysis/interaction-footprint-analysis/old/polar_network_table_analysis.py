# polar_network_table_analysis.py

import os
import sys 
import csv 
import numpy as np 
from utils import * 

USAGE_STR = """
# Purpose 
# For a table containing all the frequency values for interactions of a single polar network over 
# many experimental condition, this script allows user to query and analyze certain columns for 
# specific properties such as percentage of interactions in the polar network that are persistent 
# in a given experimental condition. 

# Usage 
# python polar_network_table_analysis.py <POLAR_NETWORK_TABLE> <USAGE_FLAG>

# Arguments
# <POLAR_NETWORK_TABLE> Absolute path to the polar network table to analyze 
# <USAGE_FLAG> User specifies flags for different forms of analysis 
# <-freq> Will print out the pairs of gpcrdb numbers and the maximum frequency 
# observed for a given column. Will report average frequency. 

# Example 1
# POLAR_NETWORK_TABLE="/scratch/PI/rondror/akma327/DynamicNetworks/results/interaction-footprint-analysis/polar-network-freq-tables/4N6H/dor-inactive-footprint.txt"
# python polar_network_table_analysis.py $POLAR_NETWORK_TABLE -freq 

# Example 2
# POLAR_NETWORK_TABLE="/scratch/PI/rondror/akma327/DynamicNetworks/results/interaction-footprint-analysis/polar-network-freq-tables/5C1M/mor-active-footprint.txt"
# python polar_network_table_analysis.py $POLAR_NETWORK_TABLE -freq 

"""

K_MIN_ARG = 3
SIG_FREQ_THRESHOLD = .5


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
	sig_interaction_count = 0
	for k in interactionMaxFreqDict:
		freq = interactionMaxFreqDict[k]
		compressed_interaction_freq.append((k, freq))
		if(freq > SIG_FREQ_THRESHOLD): sig_interaction_count += 1
	nInteractions = len(interactionMaxFreqDict) # Num Groups of interactions 
	sig_freq = float(sig_interaction_count)/nInteractions
	print("Percentage of significant interactions in experiment condition:" + col_query + " : " + str(sig_freq) )
	print("Number of interaction groups: " + str(nInteractions) + "\n\n")
	return compressed_interaction_freq

# Determine what percentage of interactions of polar network P are persistent in 
# the expeirmental condition specified by column query 
def columnFreqStatistics(POLAR_NETWORK_TABLE, COLUMN_QUERY):
	# Read through the entire polar network table and query for columns of interest
	with open(POLAR_NETWORK_TABLE, 'rU') as f:
		reader = csv.reader(f, delimiter="\t")
		d = list(reader)
	darr = np.array(d)
	row_labels = list(darr[:,0][1:])
	column_labels = list(darr[0,:])
	cross_experiment_freq_comparison_dict = {}

	# Processing every column to compress the rows by gpcrdb pairs rather than explict atoms 
	for col_query in COLUMN_QUERY:
		column_index = findColumnIndex(column_labels, col_query)
		exp_rep_freq_vals = map(float, list(darr[:, column_index])[1:])
		compressed_interaction_freq =  columnFreqAnalysis(col_query, row_labels, exp_rep_freq_vals)
		for label, cfreq in compressed_interaction_freq:
			if(label not in cross_experiment_freq_comparison_dict):
				cross_experiment_freq_comparison_dict[label] = [cfreq]
			else: 
				cross_experiment_freq_comparison_dict[label].append(cfreq)

	# Sort interactions by frequencies and display multiple experimental condition frequency columns at once
	cross_experiment_freq_summary_list = [(k[0], k[1], k[2], cross_experiment_freq_comparison_dict[k][0], cross_experiment_freq_comparison_dict[k][1], cross_experiment_freq_comparison_dict[k][2]) for k in cross_experiment_freq_comparison_dict]
	cross_experiment_freq_summary_list = reversed(sorted(cross_experiment_freq_summary_list, key = lambda k: (k[3], k[4], k[5], k[0])))

	# Outputs the following results
		# User Input: DOR-inactive-naltrindole-unpublished-condition-naltrindole-bound-rep_1
		# User Input: MOR-active-noNb-BU72-nature2015-rep_1
		# User Input: MOR-active-noNb-BU72-nature2015-rep_2
		# 
		# ('2x50', '7x46', 'hbss', 0.999, 0.06, 0.156)
		# ('2x50', '7x53', 'wb', 0.996, 0.0, 0.0)
		# ('2x50', '7x49', 'hbss', 0.989, 0.926, 0.694)
		# ('1x50', '2x50', 'wb', 0.976, 0.929, 0.932)
		# ('1x50', '7x53', 'wb', 0.973, 0.0, 0.0)
	for index, a in enumerate(cross_experiment_freq_summary_list):
		print(index, a[0], a[1], a[2], a[3], a[4], a[5])




if __name__ == "__main__":
	if(len(sys.argv) < K_MIN_ARG):
		print(USAGE_STR)
		exit(1)
	POLAR_NETWORK_TABLE = sys.argv[1]
	USAGE_FLAG = sys.argv[2]
	COLUMN_QUERY = []
	while(True):
		USER_INPUT = raw_input("User Input: ")
		if(USER_INPUT == ""): break 
		COLUMN_QUERY.append(USER_INPUT)
	if(USAGE_FLAG == "-freq"):
		columnFreqStatistics(POLAR_NETWORK_TABLE, COLUMN_QUERY)






