# Author: Anthony Kai Kwang Ma
# Email: akma327@stanford.edu
# Date: 11/19/16
# residue_water_conservation.py 

import sys
import ast
from utils import *
import matplotlib.pyplot as plt

USAGE_STR = """

# Purpose
# For every gpcrdb of a receptor, compute the frequency of frames in which
# a residue water interaction forms at this position. 

# Usage 
# python residue_water_conservation.py <PDB> <BIN_DICT_PATH> <OUTPUT> <-plot>

# Arguments
# <PDB> PDB code 
# <BIN_DICT_PATH> Absolute path to the binary dictionary for residue_water interactions 
# <OUTPUT> Absolute path to output file 
# <-plot> Optional flag if you want to plot scatter plot for single replicate of simulation

# Output
# 2x50: 0.95
# 3x53: 0.05
# 	...
# 7x53: 0.99

# Example
PDB="4DKL"
BIN_DICT_PATH="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutputDictionary/MOR-inactive-bFNA-nature2015/condition-bFNA-bound/rep_1/050516_NONHB_DEFAULT_HB_3.5_70/residue_water_hydrogen_bond_result_dict.txt"
OUTPUT="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/residue-water-conservation/111916/mor_inactive_rep1.txt"
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/analysis/residue-water-conservation
python residue_water_conservation.py $PDB $BIN_DICT_PATH $OUTPUT

"""

K_MIN_ARG = 4




def get_positional_frequencies(BIN_DICT_PATH, GPCRDB_DICT):
	nFrames = 0
	count = 0
	pos_to_tp = {}

	unmatched_pos = set()
	### Extract position to time points dict
	f = open(BIN_DICT_PATH, 'r')
	for line in f:
	    count +=1 
	    if("TotalFrames" in line):
	        nFrames = int(line.split(":")[1].strip())
	    elif("--" in line):
	        linfo = line.strip().split("~")
	        tp = ast.literal_eval(linfo[1])
	        aa_info = linfo[0].split("--")[0].split("-")[0].strip()
	        water = linfo[0].split("--")[1].split("-")[0].strip()
	        if("HOH" in aa_info):
	            temp = water 
	            water = aa_info
	            aa_info = temp
	        gpcr_db = getGPCRDB(aa_info, GPCRDB_DICT)
	       	print(gpcr_db, aa_info)
	       	if(gpcr_db == "None"): unmatched_pos.add(aa_info)
	        if (gpcr_db not in pos_to_tp):
	            pos_to_tp[gpcr_db] = set()
	        pos_to_tp[gpcr_db] |= set(tp)

	### Generate position to frequency dict
	pos_to_freq = {}
	for pos in sorted(pos_to_tp.keys()):
	    freq = float(len(pos_to_tp[pos]))/nFrames
	    pos_to_freq[pos] = freq

	for u in unmatched_pos:
		print("Unmatched " + str(u))
	return pos_to_freq




def residue_to_water_conserve_plot(pos_to_aa_freq, pos_to_rw_freq, OUTPUT, PLOT):
	"""
		x-axis: percent conservation of the amino acid position 
		y-axis: percent of frames where residue-water interaction are present
	"""
	print("residue_to_water_conserve_plot()")
	pos_arr, aa_conserve, rw_conserve = [], [], []
	for pos in pos_to_rw_freq:
		if("None" in pos): continue
		pos_arr.append(pos)
		aa_conserve.append(pos_to_aa_freq[pos])
		rw_conserve.append(pos_to_rw_freq[pos])

	### Write output to file 
	f = open(OUTPUT, 'w')
	for i in range(len(pos_arr)):
		pos, rw_freq = pos_arr[i], rw_conserve[i]
		f.write(str(pos) + "\t" + str(rw_freq) + "\n")

	## Scatter plot
	if(PLOT == True):
		plt.plot(aa_conserve, rw_conserve, 'ro')
		plt.xlabel("Residue Conservation")
		plt.ylabel("Residue water frequency")
		plt.title("Sequence conservation vs water-mediated interaction conservation")
		plt.show()

def residue_water_conservation(PDB, BIN_DICT_PATH, OUTPUT, PLOT):
	pos_to_aa_freq = position_to_conserve_freq()
	print("aa", pos_to_aa_freq)
	GPCRDB_DICT = genResidueToGpcrdbTable(PDB)
	pos_to_rw_freq = get_positional_frequencies(BIN_DICT_PATH, GPCRDB_DICT)
	print("rw", pos_to_rw_freq)
	residue_to_water_conserve_plot(pos_to_aa_freq, pos_to_rw_freq, OUTPUT, PLOT)




if __name__ == "__main__":
	if(len(sys.argv) < K_MIN_ARG):
		print(USAGE_STR)
		exit(0)

	PLOT = False
	if("-plot" in sys.argv): PLOT = True
	(PDB, BIN_DICT_PATH, OUTPUT) = (sys.argv[1], sys.argv[2], sys.argv[3])
	residue_water_conservation(PDB, BIN_DICT_PATH, OUTPUT, PLOT)


