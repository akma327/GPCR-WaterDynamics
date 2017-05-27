# subsample_all_trajectories.py 

# Usage: For every experiment, condition, and replicate, create the combined and 
# subsampled trajectory. For now this only works for Anton files 

import os 
import sys 
import glob
import csv 
import numpy as np

USAGE_STR = """
# Purpose 
# Stitch and subsample every 100 frames for a given experiment replicate condition 
# Arguments for input and output are taken from master combine_subsample_traj_table.csv 

# Usage 
# python subsample_all_trajectories.py

# Example 
python subsample_all_trajectories.py

""" 

# Table contains input paths for topology and trajectory and output file path to write to 
SUBSAMPLE_TABLE="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/competing-network-analysis/tables/combine_subsample_traj_table.csv"

def createDirectory(OUTPUT_FILE):
	directory = os.path.dirname(OUTPUT_FILE)
	if not os.path.exists(directory):
		os.makedirs(directory)


def subsampleAntonSimulations():
	with open(SUBSAMPLE_TABLE, 'rU') as f: 
		reader = csv.reader(f, delimiter=",")
		d = list(reader)
	darr = np.array(d)
	column_labels = list(darr[0,:])
	exp_cond_rows = darr[1:]
	for row_index, ec in enumerate(exp_cond_rows):
		top_file, traj_dir, filetype, output_dir = ec[5], ec[6], ec[7], ec[8]
		print(top_file, traj_dir, filetype, output_dir)
		output_file = output_dir + "/stitched.dcd"
		if(filetype == "nc"):
			syscommand = "python ../subsample_combine_traj.py " + top_file + " " + traj_dir + " " + filetype + " " + output_file
			os.system(syscommand)
		elif(filetype == "dcd"):
			top_file = glob.glob(traj_dir + "/*.mae")[0]
			createDirectory(output_file)
			syscommand = "python ../subsample_combine_traj.py " + top_file + " " + traj_dir + " " + filetype + " " + output_file
			os.system(syscommand)


if __name__ == "__main__":
	subsampleAntonSimulations()





