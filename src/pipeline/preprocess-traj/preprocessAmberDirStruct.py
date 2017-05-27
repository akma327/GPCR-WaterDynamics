# Author: Anthony Kai Kwang Ma
# Email: akma327@stanford.edu
# Date: April 17, 2016


import sys 
import os
import glob
import re 

K_MIN_ARG = 6

USAGE_STRING = """ 
# preprocessAmberDirStruct.py
# This script will generate a the shell script to populate the DynamicNetwork folder with a single replicate folder
# containing fragment folders containing reimaged trajectories. This is done for a specified replicate of a single
# experimental condition 

# Usage: 
# python preprocessAmberDirStruct.py <REPLICATE_SOURCE_PATH> <EQUILIBRIUM_ID> <FRAGMENT_ID> <OUTPUT EXPERIMENT CONDITION PATH>  <OUTPUT_SCRIPT_FILE_PATH>

# Arguments:
# <REPLICATE_SOURCE_PATH> Absolute path to the folder containing all the trajectory fragments 
# <EQUILIBRIUM_ID> String denoting the fragment trajectory file prefix for equilbrium trajectories (ie "Eq" if files are Eq_1.nc, ... Eq_6.nc)
# <FRAGMENT_ID> String denoting the fragment trajectory file prefix (ie "Prod" if files are Prod_1.nc, Prod_2.nc)
# <OUTPUT EXPERIMENT CONDITION PATH> Absolute path to where you will store the replicate folder containing fragment folders
# storing each of the reimaged trajectories. 
# <OUTPUT_SCRIPT_FILE_PATH> Absolute path to the shell script file that needs to be run to populate the folders in Output experimental
# condition path with the reimaged trajectories. 

# Example:

REP_SOURCE_PATH="/scratch/PI/rondror/MD_simulations/amber/MOR_active_waters/mor_active_refine196_agonist_NanobodyInterfaceRestrained/rep1"
EQ_ID="Eq"
FRAG_ID="Prod"
OUTPUT_EXP_COND_PATH="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/MOR-active-noNb-BU72-nature2015/condition-nb-interface-restrained-BU72/rep_1"
OUTPUT_SCRIPT_FILE_PATH="/scratch/PI/rondror/akma327/DynamicNetworks/src/DynamicInteractions-Pipeline/process-traj-jobs/MOR-active-rep_1.sh"
python preprocessAmberDirStruct.py $REP_SOURCE_PATH $EQ_ID $FRAG_ID $OUTPUT_EXP_COND_PATH $OUTPUT_SCRIPT_FILE_PATH 

"""

def atoi(text):
    return int(text) if text.isdigit() else text

def natural_keys(text):
    return [ atoi(c) for c in re.split('(\d+)', text) ]


def writeEquilibriumStep(f, output_exp_cond_path, rep_source_path, last_eq_frag_num):
	f.write("cd " + output_exp_cond_path+ "\n")
	f.write("mkdir Prod_0" + "\n")
	f.write("cd Prod_0" + "\n")
	f.write("rm reimage.in\n")
	f.write("echo \"parm " + rep_source_path + "/system.prmtop\n")
	f.write("trajin " + rep_source_path + "/system.inpcrd\n")
	f.write("trajin " + rep_source_path + "/" + last_eq_frag_num + ".nc\n")
	f.write("center origin '!(:POPC | :TIP3 | :SOD | :CLA)'\n")
	f.write("image origin center\n")
	f.write("trajout Prod_0_reimaged.nc\n")
	f.write("go\" >> reimage.in\n")
	f.write("ml load amber\n")
	f.write("cpptraj -i reimage.in\n\n")

def generateScript(rep_source_path, eq_id, frag_id, output_exp_cond_path, output_script_file_path):
	f = open(output_script_file_path, 'w')
	eq_paths = glob.glob(rep_source_path + "/" + eq_id + "*.nc")
	eq_paths.sort(key=natural_keys)
	last_eq_frag_num = eq_paths[-1].split("/")[-1].split(".")[0].strip()
	frag_paths = glob.glob(rep_source_path + "/" + frag_id + "*.nc")
	frag_paths.sort(key=natural_keys)
	frame_count = 0
	writeEquilibriumStep(f, output_exp_cond_path, rep_source_path, last_eq_frag_num)
	

	for frag in frag_paths:
		frag_num = frag.split("/")[-1].split(".")[0].strip()
		f.write("cd " + output_exp_cond_path+ "\n")
		f.write("mkdir " + frag_num + "\n")
		f.write("cd " + frag_num + "\n")
		f.write("rm reimage.in\n")
		f.write("echo \"parm " + rep_source_path + "/system.prmtop\n")
		f.write("trajin " + rep_source_path + "/" + frag_num + ".nc\n")
		f.write("center origin '!(:POPC | :TIP3 | :SOD | :CLA)'\n")
		f.write("image origin center\n")
		f.write("trajout " + frag_num + "_reimaged.nc\n")
		f.write("go\" >> reimage.in\n")
		f.write("ml load amber\n")
		f.write("cpptraj -i reimage.in\n\n")
		frame_count += 1


if __name__ == "__main__":
	if(len(sys.argv) < K_MIN_ARG):
		print(USAGE_STRING)
		exit(0)
	rep_source_path = sys.argv[1]
	eq_id = sys.argv[2]
	frag_id = sys.argv[3]
	output_exp_cond_path = sys.argv[4]
	output_script_file_path = sys.argv[5]
	generateScript(rep_source_path, eq_id,  frag_id, output_exp_cond_path, output_script_file_path)




