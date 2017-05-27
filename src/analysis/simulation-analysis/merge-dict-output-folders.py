# Author: Anthony Kai Kwang Ma
# Email: akma327@stanford.edu
# merge-dict-output-folders.py 

import os 
import subprocess
import sys 
import glob 

USAGE_STR = """
# Purpose 
# Outputs for interaction dictionaries are stored in folders grouped by titration values 
# specific to each interaction type. This script generates a new folder that groups
# multiple folders of titrated files together. 

# Usage 
# python merge-dict-output-folders.py <ROOT_OUTPUT_DICT_PATH> <MERGED_FOLDER_NAME> <... list of folders to merge>

# Arguments
# <ROOT_OUTPUT_DICT_PATH> Path to the root directory containing dynamic interaction dictionaries 
# <MERGED_FOLDER_NAME> Name of the folder containing contents from the merged titration folders
# < ... list of folders> Arbitrary length list of folders names (including "." for current directory) to merge 
# grouped by experimental condition 

# Example 
ROOT_OUTPUT_DICT_PATH="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutputDictionary"
MERGED_FOLDER_NAME="050516_NONHB_DEFAULT_HB_3.5_70"
python merge-dict-output-folders.py $ROOT_OUTPUT_DICT_PATH $MERGED_FOLDER_NAME HB_3.5A_70D . 

"""

K_MIN_ARG = 3


# Uses system calls to generate a new folder merging seperate interaction dictionary outputs 
def mergeSingleFolder(REP_PATH, MERGED_FOLDER_NAME, TITRATE_FOLDER_LIST):
	os.system("rm " + REP_PATH +  "bb_hydrogen_bond_result_dict.txt")
	os.system("rm " + REP_PATH + "sb_hydrogen_bond_result_dict.txt")
	os.system("rm " + REP_PATH + "ss_hydrogen_bond_result_dict.txt")
	os.system("rm " + REP_PATH + "water_bond_result_dict.txt")
	os.system("rm " + REP_PATH + "residue_water_hydrogen_bond_result_dict.txt")

	### Ligand based interactions
	os.system("rm " + REP_PATH +  "lb_hydrogen_bond_result_dict.txt")
	os.system("rm " + REP_PATH +  "ls_hydrogen_bond_result_dict.txt")
	os.system("rm " + REP_PATH +  "ligand_water_bond_result_dict.txt")
	os.system("rm " + REP_PATH +  "ligand_extended_water_bond_result_dict.txt")


	mk_folder_cmd= "mkdir " + REP_PATH + MERGED_FOLDER_NAME
	os.system(mk_folder_cmd)
	merge_cmd = "cp "
	for t_path in TITRATE_FOLDER_LIST:
		merge_cmd += REP_PATH + t_path + "/* "
	final_merge_folder = REP_PATH + MERGED_FOLDER_NAME
	merge_cmd += final_merge_folder + "/"
	print(merge_cmd)
	os.system(merge_cmd)
	return final_merge_folder


# Filter out certain replicate paths 
def filterRepPaths(rep_paths):
	filtered_paths = []
	for p in rep_paths:
		filtered_paths.append(p)
	return filtered_paths


# Driver method to create merged folders for all the experimental condition and replicates 
def createMergedFolders(ROOT_OUTPUT_DICT_PATH, MERGED_FOLDER_NAME, TITRATE_FOLDER_LIST):
	merged_folder_paths = []
	rep_paths = glob.glob(ROOT_OUTPUT_DICT_PATH + "/*/*/*/")
	rep_paths = filterRepPaths(rep_paths)
	for i, REP_PATH in enumerate(rep_paths):
		print(REP_PATH)
		merge_folder_path = mergeSingleFolder(REP_PATH, MERGED_FOLDER_NAME, TITRATE_FOLDER_LIST)
		merged_folder_paths.append(REP_PATH)
	return merged_folder_paths

if __name__ == "__main__":
	if(len(sys.argv) < K_MIN_ARG):
		print(USAGE_STR)
		exit(1)
	ROOT_OUTPUT_DICT_PATH = sys.argv[1]
	MERGED_FOLDER_NAME = sys.argv[2]
	TITRATE_FOLDER_LIST = sys.argv[3:]
	if(len(TITRATE_FOLDER_LIST) == 0):
		print("No folders to merge.")
		exit(0)
	merged_folder_paths =  createMergedFolders(ROOT_OUTPUT_DICT_PATH, MERGED_FOLDER_NAME, TITRATE_FOLDER_LIST)
	print("Following are merged folder paths: ")
	for p in merged_folder_paths:
		print(p)

