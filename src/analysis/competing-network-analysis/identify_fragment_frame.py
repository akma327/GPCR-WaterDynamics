# Author: Anthony Kai Kwang Ma
# Email: akma327@stanford.edu
# Date: 04/04/2017
# identify_fragment_frame.py

import os
import sys
import glob 
import subprocess
from utils import *


USAGE_STR = """

# Purpose 
# Given a frame index, determine the corresponding Prod fragment 
# and frame within that fragment 

# Usage 
# python identify_fragment_frame.py <EXP_COND_DIR> <FRAME_NUM>

# Arguments 
# <EXP_COND_DIR> Absolute path to the experiment condition directory storing the production 
# fragment trajectory files as well as the calculated unstitched polar contact list. 

# Example

EXP_COND_DIR="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/DOR-inactive-naltrindole-unpublished/condition-naltrindole-bound/rep_1"
FRAME_NUM="2286"
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/analysis/competing-network-analysis
python identify_fragment_frame.py $EXP_COND_DIR $FRAME_NUM

"""

K_MIN_ARG = 3

def identify_frag_frame(EXP_COND_DIR, FRAME_NUM):
	"""
		Step through the folders storing each piece of the trajectory and find the one 
		that contains the frame index specified. 
	"""

	curr_running_count = 0
	paths = glob.glob(EXP_COND_DIR + "/Prod*/HB_3.5A_70D/water_bond_result.txt")
	paths.sort(key=natural_keys)
	for frag_index, p in enumerate(paths):
		nFrames = int(subprocess.check_output("grep nFrames " + p, shell=True).strip().split(":")[1])

		next_running_count = curr_running_count + nFrames
		if(next_running_count > FRAME_NUM):
			within_frag_index = FRAME_NUM - curr_running_count 
			return (frag_index, within_frag_index)

		curr_running_count = next_running_count



if __name__ == "__main__":
	if(len(sys.argv) < K_MIN_ARG):
		print(USAGE_STR)
		exit(1)

	(EXP_COND_DIR, FRAME_NUM) = (sys.argv[1], int(sys.argv[2]))
	(frag_index, within_frag_index) = identify_frag_frame(EXP_COND_DIR, FRAME_NUM)

	print("Prod_" + str(frag_index) + " Frame " + str(within_frag_index))
