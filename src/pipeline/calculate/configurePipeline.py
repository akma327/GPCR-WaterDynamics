# Author: Anthony Kai Kwang Ma
# Email: akma327@stanford.edu
# Date: May 22, 2016

# configurePipeline.py 
# This script takes care of the preconfiguration of the mOR-Pipeline by parsing
# the configuration.txt file for the particular set of trajectories to analyze. 

# 1) Establish the replicate folder identifier (ie rep_<index>) from the 
# REP_FOLDER_ID argument.
# 2) Establish the fragment folder identifier (ie Prod_<index>) from the
# FRAG_FOLDER_ID argument.
# 3) Establishes the dictionary between number identifier and the path 
# to store the raw dynamic interaction information from the 
# DYNAMIC_INTERACTION_PATH argument. 
# 4) Establishes a similar dictionary for storing the binary dictionary 
# information from the BIN_DICT_PATH argument. 
# 5) Establish the output file name for raw dynamic interaction output from the 
# RAW_OUTPUT_ID argument
# 6) Establish the output file name for stitching the raw interaction output from the
# STITCH_OUTPUT_ID argument 
# 7) Establish the output file name for binary dictionary output from the 
# BIN_DICT_OUTPUT_ID argument 


import sys
import os 


def parseConfigurationFile(config_file_path):
	rep_folder_id, frag_folder_id = "", ""
	dynamic_interaction_path_dict = {}
	bin_dict_path_dict = {}
	raw_output_id_dict = {}
	stitch_output_id_dict = {}
	bin_dict_output_dict = {}
	f = open(config_file_path, 'r')
	if(f == None):
		print("Configuration file path invalid.")
		exit(0)
	for line in f:
		if("#" in line): continue 
		if("REP_FOLDER_ID" in line):
			rep_folder_id = line.split(":")[1].strip()
		if("FRAG_FOLDER_ID" in line):
			frag_folder_id = line.split(":")[1].strip()
		if("DYNAMIC_INTERACTION_PATH" in line):
			line_info = line.split(":")
			exp_id, exp_path = line_info[1].strip(), line_info[2].strip()
			dynamic_interaction_path_dict[exp_id] = exp_path
		if("BIN_DICT_PATH" in line):
			line_info = line.split(":")
			exp_id, exp_path = line_info[1].strip(), line_info[2].strip()
			bin_dict_path_dict[exp_id] = exp_path
		if("RAW_OUTPUT_ID" in line):
			line_info = line.split(":")
			interaction_type, output_file_name = line_info[1].strip(), line_info[2].strip()
			raw_output_id_dict[interaction_type] = output_file_name
		if("STITCH_OUTPUT_ID" in line):
			line_info = line.split(":")
			interaction_type, output_file_name = line_info[1].strip(), line_info[2].strip()
			stitch_output_id_dict[interaction_type] = output_file_name
		if("BIN_DICT_OUTPUT_ID" in line):
			line_info = line.split(":")
			interaction_type, output_file_name = line_info[1].strip(), line_info[2].strip()
			bin_dict_output_dict[interaction_type] = output_file_name
	return rep_folder_id, frag_folder_id, dynamic_interaction_path_dict, bin_dict_path_dict, raw_output_id_dict, stitch_output_id_dict, bin_dict_output_dict


