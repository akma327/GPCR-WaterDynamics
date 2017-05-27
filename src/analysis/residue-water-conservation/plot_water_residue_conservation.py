# Author: Anthony Kai Kwang Ma
# Email: akma327@stanford.edu
# Date: 11/20/16
# plot_water_residue_conservation.py 

import os
import sys
import glob
import numpy as np
from utils import *
import matplotlib.pyplot as plt
import seaborn as sns

USAGE_STR = """
# Purpose
# Takes in a folder of residue_water_conservation frequencies for multiple replicates and
# experimental condition. Plot residue position conservation vs water-mediated interaction 
# frequency. 

# Usage 
# python plot_water_residue_conservation.py <INPUT_DIR> <-errbar>

# Arguments 
# <INPUT_DIR> Absolute path to the directory containing individual files per replicate/experimental 
# condition associating gpcrdb to water-mediated interaction frequency.
# <-errbar> Optional argument if want to plot error bar range

# Example
INPUT_DIR="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/residue-water-conservation/121316/active_restrained_receptors"
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/analysis/residue-water-conservation
python plot_water_residue_conservation.py $INPUT_DIR

INPUT_DIR="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/residue-water-conservation/121316/active_unrestrained_receptors"
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/analysis/residue-water-conservation
python plot_water_residue_conservation.py $INPUT_DIR

INPUT_DIR="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/residue-water-conservation/121316/inactive_receptors"
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/analysis/residue-water-conservation
python plot_water_residue_conservation.py $INPUT_DIR


"""

K_MIN_ARG = 2

POLARITY_FREQ_CUTOFF = 0.5 # Only display positions that are polar

def getPosToFreqs(INPUT_DIR):
	"""
		Generate dictionary with key = "5x53", value = [0.90, 0.91, 0.95] where each entry 
		is from different replicate/experimental condition 
	"""
	pos_to_rw_freq = {}
	paths = glob.glob(INPUT_DIR + "/*")
	for path in paths: 
		f = open(path, 'r')
		for line in f:
			if("x" not in line): continue
			linfo = line.strip().split("\t")
			pos, freq = linfo[0], float(linfo[1])
			if(pos not in pos_to_rw_freq):
				pos_to_rw_freq[pos] = []
			pos_to_rw_freq[pos].append(freq)
	return pos_to_rw_freq



# def plot_water_residue_conservation(INPUT_DIR, ERROR_BAR):
# 	pos_to_aa_freq = position_to_conserve_freq()
# 	pos_to_polarity = position_to_polarity_freq()
# 	pos_to_rw_freq = getPosToFreqs(INPUT_DIR)
# 	pos_list, aa_conserve, aa_polarity, rw_avg_conserve, lower_range, upper_range = [], [], [], [], [], []
# 	for pos in pos_to_rw_freq:
# 		pos_polarity = pos_to_polarity[pos]
# 		if(pos_polarity > POLARITY_FREQ_CUTOFF):
# 			pos_list.append(pos)
# 			aa_conserve.append(pos_to_aa_freq[pos])
# 			aa_polarity.append(pos_polarity)
# 			rw_freqs = pos_to_rw_freq[pos]
# 			avg_freq = np.mean(rw_freqs)
# 			rw_avg_conserve.append(avg_freq)
# 			lower_range.append(avg_freq - min(rw_freqs))
# 			upper_range.append(max(rw_freqs) - avg_freq)

# 	tot_range = [lower_range, upper_range]
# 	if(ERROR_BAR == False):
# 		# plt.plot(aa_conserve, rw_avg_conserve, 'bo')
# 		fig, ax = plt.subplots()
# 		ax.scatter(aa_conserve, rw_avg_conserve, c=aa_polarity, s=100)

# 	else:
# 		plt.errorbar(aa_conserve, rw_avg_conserve, tot_range, linestyle='None', marker='^')
# 	plt.xlabel("Positional Sequence Conservation", fontsize = 16)
# 	plt.ylabel("Residue water interaction frequency", fontsize = 16)
# 	plt.title("Inactive State Receptors - Sequence Conservation vs Residue Water Conservation", fontsize = 20)
# 	plt.show()

# 	return rw_avg_conserve

def plot_water_residue_conservation(INPUT_DIR, ERROR_BAR):
	pos_to_aa_freq = position_to_conserve_freq()
	pos_to_polarity = position_to_polarity_freq()
	pos_to_rw_freq = getPosToFreqs(INPUT_DIR)
	pos_list, aa_conserve, aa_polarity, rw_avg_conserve, lower_range, upper_range = [], [], [], [], [], []
	for pos in pos_to_rw_freq:
		pos_polarity = pos_to_polarity[pos]
		if(pos_polarity > POLARITY_FREQ_CUTOFF and not_bulk_water_region(pos)):
			pos_list.append(pos)
			aa_conserve.append(pos_to_aa_freq[pos])
			aa_polarity.append(pos_polarity)
			rw_freqs = pos_to_rw_freq[pos]
			avg_freq = np.mean(rw_freqs)
			rw_avg_conserve.append(avg_freq)
			lower_range.append(avg_freq - min(rw_freqs))
			upper_range.append(max(rw_freqs) - avg_freq)

	tot_range = [lower_range, upper_range]
	if(ERROR_BAR == False):
		# plt.plot(aa_conserve, rw_avg_conserve, 'bo')
		fig, ax = plt.subplots()
		ax.scatter(aa_conserve, rw_avg_conserve, c=aa_polarity, s=100)

	else:
		plt.errorbar(aa_conserve, rw_avg_conserve, tot_range, linestyle='None', marker='^')
	plt.xlabel("Positional Sequence Conservation", fontsize = 16)
	plt.ylabel("Residue water interaction frequency", fontsize = 16)
	plt.title("Inactive Receptors - Sequence Conservation vs Residue Water Conservation", fontsize = 20)
	plt.show()

	return pos_list, rw_avg_conserve, aa_conserve, aa_polarity


def plot_rw_avg_hist(rw_avg_conserve):
	plt.hist(rw_avg_conserve)
	plt.show()



if __name__ == "__main__":
	if(len(sys.argv) < K_MIN_ARG):
		print(USAGE_STR)
		exit(0)
	(INPUT_DIR) = (sys.argv[1])
	ERROR_BAR = False
	if("-errbar" in sys.argv): ERROR_BAR = True
	pos_list, rw_avg_conserve, aa_conserve, aa_polarity = plot_water_residue_conservation(INPUT_DIR, ERROR_BAR)

