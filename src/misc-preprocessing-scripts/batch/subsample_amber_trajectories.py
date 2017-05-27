# subsample_amber_trajectories.py 

# Usage: For every amber experiment, condition, and replicate, create the combined and 
# subsampled trajectory. 

import os 
import sys 
import glob
import csv 
import re
import numpy as np

USAGE_STR = """
# Purpose 
# Batch script to call wrapAlignAmber.py on every fragment of an amber experiment.

# Usage 
# python subsample_amber_trajectories.py <TOP> <TRAJ_DIR> <OUT_DIR> <OUT_SCRIPT>

# Arguments
# <TOP> Absolute path to the topology file 
# <TRAJ_DIR> Root path to the folders containing the trajectory fragments
# <OUT_DIR> Absolute path to the output directory to contain the copied topology, and 
# aligned trajectory fragments. 
# <OUT_SCRIPT> Absolute path to the batch shell script

# Example 

TOP="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/MOR-active-noNb-BU72-nature2015/condition-nb-interface-restrained-BU72/step5_assembly.pdb"
TRAJ_DIR="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/MOR-active-noNb-BU72-nature2015/condition-nb-interface-restrained-BU72/rep_1"
OUT_DIR="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/AlignedAmberTraj/MOR-active-noNb-BU72-nature2015/rep_1"
OUT_SCRIPT="/scratch/PI/rondror/akma327/DynamicNetworks/src/misc-preprocessing-scripts/batch/subsample_amber/sh/mor-active-rep1.sh"
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/misc-preprocessing-scripts/batch
python subsample_amber_trajectories.py $TOP $TRAJ_DIR $OUT_DIR $OUT_SCRIPT

""" 

# Table contains input paths for topology and trajectory and output file path to write to 

def atoi(text):
    return int(text) if text.isdigit() else text

def natural_keys(text):
    return [ atoi(c) for c in re.split('(\d+)', text) ]

def subsampleAmberSimulationDriver(TOP, TRAJ_DIR, OUT_DIR, OUT_SCRIPT):
	f = open(OUT_SCRIPT, 'w')
	traj_files = glob.glob(TRAJ_DIR + "/Prod_*")
	traj_files.sort(key=natural_keys)
	for index, traj in enumerate(traj_files):
		f.write("TOP=\"" + TOP + "\"\n")
		f.write("TRAJ=\"" + traj + "/Prod_" + str(index) + "_reimaged.nc\"\n")
		f.write("mkdir " + OUT_DIR + "/Prod_" + str(index) + "\n")
		f.write("OUTPUT_FILE=\"" + OUT_DIR + "/Prod_" + str(index) + "/Prod_" + str(index) + "_reimaged.dcd\"\n")
		f.write("cd /scratch/PI/rondror/akma327/DynamicNetworks/src/misc-preprocessing-scripts\n")
		if(index == 0):
			f.write("python wrapAlignAmber.py $TOP $TRAJ $OUTPUT_FILE -crys\n\n")
		else:
			f.write("python wrapAlignAmber.py $TOP $TRAJ $OUTPUT_FILE\n\n")


if __name__ == "__main__":
	(TOP, TRAJ_DIR, OUT_DIR, OUT_SCRIPT) = (sys.argv[1], sys.argv[2], sys.argv[3], sys.argv[4])
	subsampleAmberSimulationDriver(TOP, TRAJ_DIR, OUT_DIR, OUT_SCRIPT)





