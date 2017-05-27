# Author: Anthony Kai Kwang Ma
# Email: akma327@stanford.edu

# stripDistantWaters.py 

# Objective: 
# Takes in a topology and trajectory file and outputs a topology and trajectory that strips away water.

# Usage 
# python stripWaters.py -top <TOPOLOGY_PATH> <optional -traj> <optional TRAJECTORY PATH> <OUTPUT_FILE_PATH>

# Arguments:
# <TOPOLOGY_PATH> Absolute path to the original topology before stripping waters
# <TRAJECTORY_PATH> Only provide absolute path to original trajectory if converting for trajectory 
# <OUTPUT_FILE_PATH> Absolute path to the output file. Have proper file type depending on whether using 
# this script for stripping topology or trajectory. 

# Example Topology Conversion
# TOPOLOGY_PATH="/scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-inactive-carazalol-cell2013b/condition-1/step5_assembly.pdb"
# OUTPUT_FILE_PATH="/scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-inactive-carazalol-cell2013b/condition-1/step5_strip_waters.pdb"
# python stripWaters.py -top $TOPOLOGY_PATH $OUTPUT_FILE_PATH

# Example Trajectory Conversion
# TOPOLOGY_PATH="/scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-inactive-carazalol-cell2013b/condition-1/step5_assembly.pdb"
# TRAJECTORY_PATH="/scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-inactive-carazalol-cell2013b/condition-1/rep_1/Prod_1/cell2013b-sim1-all-001.dcd"
# OUTPUT_FILE_PATH="/scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-inactive-carazalol-cell2013b/condition-1/rep_1/Prod_1/Prod_1_rewrapped_nowater.dcd"
# python stripWaters.py -top $TOPOLOGY_PATH -traj $TRAJECTORY_PATH $OUTPUT_FILE_PATH



from __future__ import division

import vmd, molecule
from vmd import *
import sys
import os
import subprocess
import numpy as np
import matplotlib.pyplot as plt
import matplotlib.mlab as mlab
import ast


USAGE_STRING = """
# Objective: 
# Takes in a topology and trajectory file and outputs a topology and trajectory that strips away water.

# Usage 
# python stripWaters.py -top <TOPOLOGY_PATH> <optional -traj> <optional TRAJECTORY PATH> <OUTPUT_FILE_PATH>

# Arguments:
# <TOPOLOGY_PATH> Absolute path to the original topology before stripping waters
# <TRAJECTORY_PATH> Only provide absolute path to original trajectory if converting for trajectory 
# <OUTPUT_FILE_PATH> Absolute path to the output file. Have proper file type depending on whether using 
# this script for stripping topology or trajectory. 

# Example Topology Conversion
# TOPOLOGY_PATH="/scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-inactive-carazalol-cell2013b/condition-1/step5_assembly.pdb"
# OUTPUT_FILE_PATH="/scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-inactive-carazalol-cell2013b/condition-1/step5_strip_waters.pdb"
# python stripWaters -top $TOPOLOGY_PATH $OUTPUT_FILE_PATH

# Example Trajectory Conversion
# TOPOLOGY_PATH="/scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-inactive-carazalol-cell2013b/condition-1/step5_strip_waters.pdb"
# TRAJECTORY_PATH="/scratch/PI/rondror/DesRes-Simulations/ordered-from-DesRes/cell2013b/DESRES-Trajectory_cell2013b-sim1-all.1/cell2013b-sim1-all/cell2013b-sim1-all-000.dcd"
# OUTPUT_FILE_PATH="/scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-inactive-carazalol-cell2013b/condition-1/rep_1/Prod_0/Prod_0_rewrapped_nowater.dcd"
# python stripWaters -top $TOPOLOGY_PATH -traj $TRAJECTORY_PATH $OUTPUT_FILE_PATH
"""

K_MIN_ARG = 3 

start=0
stop=-1
stride=1
smoothing=0

query="not water"
trajid = None

def init():
    display.set(size=[1024,768])
    display.set(projection='Perspective')
    color.set_colormap('Display',{'Background': 'white'})
    axes.set_location('OFF')
    display.set(depthcue=False)
    display.set(nearclip=0.01)
    for m in molecule.listall():
        molecule.delete(m)
    def ssrecalcu(molid, frame):
        molecule.ssrecalc(molid)

def getFileType(top_file_path):
	fileType = top_file_path.split("/")[-1].split(".")[1].strip()
	if(fileType == 'nc'): fileType = 'netcdf'
	return fileType


def loadTopology(top_file_path):
	global trajid 
	input_top_file_type = getFileType(top_file_path)
	trajid = molecule.load(input_top_file_type, top_file_path)
	return trajid

# Generate the new topology based on provided atom selection
def generateNewTopology(top_file_path, output_top_file_name):
	trajid = loadTopology(top_file_path)
	output_top_file_type = getFileType(output_top_file_name)
	selection = atomsel.atomsel(query, molid=trajid)
	molecule.write(trajid, output_top_file_type, output_top_file_name, selection=selection)

# Generate the new trajectory based on provided atom selection
def generateNewTrajectory(top_file_path, traj_file_path, output_traj_file_name):
	trajid = loadTopology(top_file_path)
	input_traj_file_type = getFileType(traj_file_path)
	molecule.read(trajid, input_traj_file_type, traj_file_path, beg=start, end=stop, skip=stride, waitfor=-1)
	output_traj_file_type = getFileType(output_traj_file_name)
	selection = atomsel.atomsel(query, molid=trajid)
	molecule.write(trajid, output_traj_file_type, output_traj_file_name, beg=1, end=-1, selection=selection)



if __name__ == "__main__":
	if(len(sys.argv) < K_MIN_ARG):
		print(USAGE_STRING)
		exit(0)
	init()
	top_index = sys.argv.index("-top") + 1
	top_path = sys.argv[top_index]
	output_file_path_index = top_index + 1
	print(output_file_path_index)
	if("-traj" in sys.argv):
		traj_path = sys.argv[sys.argv.index("-traj") + 1]
		output_file_path_index += 2
		print(output_file_path_index)
		output_file_path = sys.argv[output_file_path_index]
		usage_flag = "-traj"
	else:
		output_file_path = sys.argv[output_file_path_index]
		usage_flag = "-top"
	if(usage_flag == "-top"):
		generateNewTopology(top_path, output_file_path)
	elif(usage_flag == "-traj"):
		generateNewTrajectory(top_path, traj_path, output_file_path)
	else:
		print(USAGE_STRING)
		exit(0)




