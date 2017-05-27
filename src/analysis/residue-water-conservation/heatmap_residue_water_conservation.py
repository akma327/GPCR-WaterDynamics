# Author: Anthony Kai Kwang Ma
# Email: akma327@stanford.edu
# Date: 11/20/16
# heatmap_residue_water_conservation.py

import sys
import glob
import numpy as np
import seaborn as sns
import matplotlib.pyplot as plt
import collections
from utils import *

USAGE_STR = """

# Purpose 
# Create heatmap with rows being position sorted by amino acid frequency. Columns 
# are experimental condition and replicate. Each voxel is colored according to its 
# frequency of water-mediated interaction. 

# Usage 
# python heatmap_residue_water_conservation.py <INPUT_DIR> <OUTPUT_FILE> 

# Example 
INPUT_DIR="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/residue-water-conservation/121316/active_unrestrained_receptors"
OUTPUT_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/residue-water-conservation/121316/tables/active_unrestrained_receptors_water_conservation_50polarity_sorted_no_bulk_waters.txt"
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/analysis/residue-water-conservation
python heatmap_residue_water_conservation.py $INPUT_DIR $OUTPUT_FILE

INPUT_DIR="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/residue-water-conservation/121316/active_restrained_receptors"
OUTPUT_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/residue-water-conservation/121316/tables/active_restrained_receptors_water_conservation_50polarity_sorted_no_bulk_waters.txt"
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/analysis/residue-water-conservation
python heatmap_residue_water_conservation.py $INPUT_DIR $OUTPUT_FILE

INPUT_DIR="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/residue-water-conservation/121316/inactive_receptors"
OUTPUT_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/residue-water-conservation/121316/tables/inactive_receptors_water_conservation_50polarity_sorted_no_bulk_waters.txt"
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/analysis/residue-water-conservation
python heatmap_residue_water_conservation.py $INPUT_DIR $OUTPUT_FILE

"""

K_MIN_ARG = 3

POLARITY_FREQ_CUTOFF = 0.5 # Only display positions that are polar


# def get_sorted_positions(positions):
# 	aa_freq = position_to_conserve_freq()
#     aa_polarity = position_to_polarity_freq()
#     pos_to_aa_freq = collections.Counter()
# 	for pos in positions:
# 		pos_conserve = aa_freq[pos]
#         polarity_freq = aa_polarity[pos]
#         if(polarity_freq > POLARITY_FREQ_CUTOFF):
#     		pos_to_aa_freq[pos] = pos_conserve

# 	sorted_pos = [pos for pos, freq in pos_to_aa_freq.most_common()]
# 	print(pos_to_aa_freq.most_common())
# 	return sorted_pos

def get_sorted_positions(positions):
    aa_freq = position_to_conserve_freq()
    aa_polarity = position_to_polarity_freq()
    pos_to_aa_freq = collections.Counter()
    for pos in positions:
        pos_conserve = aa_freq[pos]
        polarity_freq = aa_polarity[pos]
        if(polarity_freq > POLARITY_FREQ_CUTOFF):
            pos_to_aa_freq[pos] = pos_conserve
    sorted_pos = [pos for pos, freq in pos_to_aa_freq.most_common()]
    return sorted_pos

def sort_by_experiment_conditions(files):
    receptor_order = ["B2AR", "D4R", "M2R", "DOR", "MOR", "US28", "RHO"]
    sorted_files = []
    for r in receptor_order:
        for f in files:
            if r in f: sorted_files.append(f)
    return sorted_files


def gen_freq_array(file_dir):
    """
        Process every residue water interaction frequency file and generate
        a 2 dimensional array. Rows = interactions, columns = experiment conditions
    """


    files = sort_by_experiment_conditions(glob.glob(file_dir + "/*"))
    for f in files:
        print(f)
    exp_conditions = [] # column headers
    pos_freq_dict = {}
    for fp in files:
        exp_cond = fp.split("/")[-1].strip(".txt")
        exp_conditions.append(exp_cond)
        f = open(fp, 'r')
        for line in f:
            linfo = line.strip().split("\t")
            pos, freq = linfo[0], float(linfo[1])            
            if(pos not in pos_freq_dict):
                pos_freq_dict[pos] = {}
            pos_freq_dict[pos][exp_cond] = freq

    sorted_positions = get_sorted_positions(pos_freq_dict.keys())

    pos_rows = []
    pos_freq_matrix = []
    ### Can sort by position conservation values instead 
    for pos in sorted_positions:
        pos_arr = []
        pos_rows.append(pos)
        
        for ec in exp_conditions:
            position_freq = 0
            if(ec in pos_freq_dict[pos]):
                position_freq = pos_freq_dict[pos][ec]
            pos_arr.append(position_freq)
        pos_freq_matrix.append(pos_arr)
    return np.array(pos_freq_matrix), pos_rows, exp_conditions


def write_output(OUTPUT_FILE, pos_freq_matrix, pos_rows, exp_conditions):
	f = open(OUTPUT_FILE, 'w')
	header = "GPCRDB"
	for ec in exp_conditions:
		header += "\t" + ec 
	f.write(header + "\n")
	for i, q in enumerate(pos_freq_matrix):
		rinfo = pos_rows[i] + "\t" + "\t".join(map(str, q))
		f.write(rinfo + "\n")



def heatmap(INPUT_DIR, OUTPUT_FILE):
    pos_freq_matrix, pos_rows, exp_conditions = gen_freq_array(INPUT_DIR)

    ### Sort rows by average residue-water frequency 
    row_averages = []
    for row in pos_freq_matrix:
        row_averages.append(np.mean(row))
    indices = [i[0] for i in sorted(enumerate(row_averages), key=lambda x:x[1])]
    indices = [i for i in reversed(indices)]

    sorted_pos_freq_matrix = []
    sorted_pos_rows = []
    sorted_row_averages = []
    for i in indices:
        gpcrdb = pos_rows[i]
        if(not_bulk_water_region(gpcrdb)):
            sorted_pos_freq_matrix.append(pos_freq_matrix[i])
            sorted_pos_rows.append(gpcrdb)
            sorted_row_averages.append(row_averages[i])


    ### Get positional conservation
    aa_freq = position_to_conserve_freq()
    pos_conservation = [aa_freq[pos] for pos in sorted_pos_rows]

    # write_output(OUTPUT_FILE, pos_freq_matrix, pos_rows, exp_conditions)
    # ax = sns.heatmap(pos_freq_matrix, cmap="Reds")
    write_output(OUTPUT_FILE, sorted_pos_freq_matrix, sorted_pos_rows, exp_conditions)
    ax = sns.heatmap(sorted_pos_freq_matrix, cmap="Reds")
    ax.set_xticklabels(exp_conditions, rotation = 90)
    pr = ["" for a in pos_rows]
    ax.set_yticklabels(pr)
    plt.ylabel("Residue Positions")
    plt.title("Inactive State Class A GPCR Residue-Water \n Interaction Frequency vs Sequence Conservation")
    plt.show()

    print("Position Conservation")
    print(pos_conservation)
    print("Sorted Average Freq")
    print(sorted_row_averages)

if __name__ == "__main__":

	if(len(sys.argv) < K_MIN_ARG):
		print(USAGE_STR)
		exit(0)

	(INPUT_DIR, OUTPUT_FILE) = (sys.argv[1], sys.argv[2])
	pos_conservation, sorted_row_averages =  heatmap(INPUT_DIR, OUTPUT_FILE)


    



