# Author: Anthony Kai Kwang Ma
# Email: akma327@stanford.edu
# pi_chart_state_decomposition.py

import os
import sys
import csv
import numpy as np
import matplotlib.pyplot as plt

USAGE_STR = """

# Purpose 
# Draws pi chart visualization of all the state decompositions desired set
# of experimental conditions. 

# Usage 
# python pi_chart_state_decomposition.py <EXP_COND_LABEL> <STATE_DECOMP_FILE> <OUTPUT_FILE>

# Arguments
# <EXP_COND_LABEL> Description of the experimental condition 
# <STATE_DECOMP_FILE> Absolute path to the state classification file
# <OUTPUT_FILE> Absolute path to output png file

# Example
EXP_COND_LABEL="B2AR:inactive:carazalol:cond1:15us:D79+,D130-"
STATE_DECOMP_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutputDictionary/B2AR-inactive-carazalol-cell2013b/condition-1/rep_1/050516_NONHB_DEFAULT_HB_3.5_70/state_classification.txt"
OUTPUT_FILE="B2AR:inactive:carazalol:cond1:15us:D79+,D130-.png"
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/analysis/state-decomposition
python pi_chart_state_decomposition.py $EXP_COND_LABEL $STATE_DECOMP_FILE $OUTPUT_FILE

"""

K_MIN_ARG = 3

MASTER_EXP_COND_TABLE = "/scratch/PI/rondror/akma327/DynamicNetworks/data/general/master-experiment-condition-table.csv"


def calc_decomp_freqs(STATE_DECOMP_FILE):

	"""
		Parse state decomposition file and calculate frequencies
		for active, intermediate 1,2,3 and inactive state. 
	"""

	print(STATE_DECOMP_FILE)
	f = open(STATE_DECOMP_FILE, 'r')
	state_freq = np.array([0]*5)
	for line in f:
		state = int(line.strip().split("\t")[1])
		# print(state)
		state_freq[state-1] += 1
	total_frames = sum(state_freq)
	print("Num Frame per state", state_freq)
	state_freq = state_freq/float(total_frames)
	print(state_freq)
	return state_freq


def pi_chart_driver(EXP_COND_LABEL, STATE_DECOMP_FILE, OUTPUT_FILE):

	"""
		Driver function for computing state frequency distribution
		and plotting pie chart. 
	"""

	colors = ['yellowgreen', 'gold', 'lightskyblue', 'lightcoral', 'purple']
	labels = ['Inactive', 'I1', 'I2', 'I3', 'Active']
	state_freq = calc_decomp_freqs(STATE_DECOMP_FILE)
	# plt.pie(state_freq, colors = colors, autopct='%1.1f%%')
	# plt.legend(labels, loc="upper right")
	# plt.title(EXP_COND_LABEL)
	# plt.axis('equal')
	# plt.tight_layout()
	# plt.savefig(OUTPUT_FILE)
	# plt.show()


if __name__ == "__main__":
	if(len(sys.argv) < K_MIN_ARG):
		print(USAGE_STR)
		exit(1)
	(EXP_COND_LABEL, STATE_DECOMP_FILE) = (sys.argv[1], sys.argv[2])
	OUTPUT_FILE = None 
	if(len(sys.argv) == K_MIN_ARG + 1):
		OUTPUT_FILE = sys.argv[-1]
	pi_chart_driver(EXP_COND_LABEL, STATE_DECOMP_FILE, OUTPUT_FILE)

