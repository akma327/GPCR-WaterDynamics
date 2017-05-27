# Author: Anthony Kai Kwang Ma
# Email: akma327@stanford.edu
# Date: May 22, 2016

# create-Pipeline.py 

import os
import sys
import glob 
import re
from configurePipeline import * 


HOW_TO_USE_STR=""" 
# Purpose:
# This script will generate a folder containing all the sbatch scripts for computing Dynamic Interactions,
# stitching all the frames, and computing binary dictionary for the set of mOR-Trajectories based on the
# directory structure established for storing the computed dynamic interactions, stitch results, and 

# Usage:
# python create-Pipeline.py <SIMULATION_TOOL> <MAIL USER> <CONFIGURATON_FILE> <JOB_FOLDER_PATH> <JOB_FOLDER_NAME> <EXPERIMENT_IDENTIFIER> <optional -replist> <list of replicates> <-di flag> <-stitch flag> <-bindict flag > <-stride optional flag> <stride > <-solv optional flag> <solvent flag> <optional -chain flag> <Optional chain info> <optional -ligand flag> <Optional ligand info> <Optional: -topid flag> <topology identifier by replicate> <-interlist> <interaction list> 

# Arguments:
#
# <SIMULATION_TOOL> Flag can be -anton for DESRES trajectories and -amber for other trajectories. 
# <MAIL USER> Specify the sherlock user's email (ie akma327@stanford.edu) for the purpose of submitting batch request
# <CONFIGURATON_FILE> User provides a txt file to set the configuration parameters for the pipeline. See configurePipeline.py
# <JOB_FOLDER_PATH> Specify the path to store the batch scripts 
# <JOB_FOLDER_NAME> Specify the folder name for the specific job 
# <EXPERIMENT_IDENTIFIER> User provides numeric identifier corresponding to experiment condition
# <-replist> flag is optional for user to provide space delimited replicate list (ie rep_1,rep_2,rep_3).
# If no -replist flag is provided then all replicates will be accounted for. 
# <-di> flag if user wants to compute Dynamic Interactions for the specified interactions for specified
# experimental condition and replicate. This flag is usually on.
# <-stitch> flag if user wants to stitch specified interactions for given experiment and replicate 
# <-bindict> flag if user wants to generate binarized dictionary for given experiment and replicate 
# <-stride> flag if user wants to specify a stride value other than default of 1
# <-solv> flag if user wants to specify a solvent_id other than default of 'HOH'
# <-chain> flag if user wants to specify specific chain ID when coming water mediated hydrogen bonds 
# <-ligand> flag if user wants to specify ligand mediated interactions
# <-topid> Optional flag to denote which replicate of topology to use 
# <-titrateid> Specify the subfolder name within each fragment folder to store specific titration results. 
# if this flag is not specified then default is to place the results in outer directory. 
# <-interlist> flag to specify the following list of interactions to compute for. -all means all interaction type


# SIM_TOOL="-amber"
# USER_EMAIL="akma327@stanford.edu"
# CONFIG_FILE_PATH="/scratch/PI/rondror/akma327/DynamicNetworks/data/DI-Pipeline-Config/DynamicNetwork-Configuration.txt"
# JOB_FOLDER_PATH="/scratch/PI/rondror/akma327/DynamicNetworks/src/pipeline/calculate/job-scripts/3.2A70Djobs"
# JOB_FOLDER_NAME="cond5_rep1,2,3_hbw_3.2_70"
# python create-Pipeline.py $SIM_TOOL $USER_EMAIL $CONFIG_FILE_PATH $JOB_FOLDER_PATH $JOB_FOLDER_NAME 5 -replist rep_1,rep_2,rep_3 -di -stride 1 -chain A -titrateid HB_3.2A_70D -interlist -hbw

# SIM_TOOL="-amber"
# USER_EMAIL="akma327@stanford.edu"
# CONFIG_FILE_PATH="/scratch/PI/rondror/akma327/DynamicNetworks/data/DI-Pipeline-Config/DynamicNetwork-Configuration.txt"
# JOB_FOLDER_PATH="/scratch/PI/rondror/akma327/DynamicNetworks/src/pipeline/calculate/job-scripts/3.2A70Djobs"
# JOB_FOLDER_NAME="cond5_rep1,2,3_hbprocess_3.2_70"
# python create-Pipeline.py $SIM_TOOL $USER_EMAIL $CONFIG_FILE_PATH $JOB_FOLDER_PATH $JOB_FOLDER_NAME 5 -replist rep_1,rep_2,rep_3 -di -stride 1 -titrateid HB_3.2A_70D -interlist -hbbb -hbsb -hbss -rw -wb -wb2

# SIM_TOOL="-amber"
# USER_EMAIL="akma327@stanford.edu"
# CONFIG_FILE_PATH="/scratch/PI/rondror/akma327/DynamicNetworks/data/DI-Pipeline-Config/DynamicNetwork-Configuration.txt"
# JOB_FOLDER_PATH="/scratch/PI/rondror/akma327/DynamicNetworks/src/pipeline/calculate/job-scripts/3.2A70Djobs"
# JOB_FOLDER_NAME="cond5_rep1,2,3_hbstitch_3.2_70"
# python create-Pipeline.py $SIM_TOOL $USER_EMAIL $CONFIG_FILE_PATH $JOB_FOLDER_PATH $JOB_FOLDER_NAME 5 -replist rep_1,rep_2,rep_3 -stitch -stride 1 -titrateid HB_3.2A_70D -interlist -hbbb -hbsb -hbss -rw -wb -wb2

# SIM_TOOL="-amber"
# USER_EMAIL="akma327@stanford.edu"
# CONFIG_FILE_PATH="/scratch/PI/rondror/akma327/DynamicNetworks/data/DI-Pipeline-Config/DynamicNetwork-Configuration.txt"
# JOB_FOLDER_PATH="/scratch/PI/rondror/akma327/DynamicNetworks/src/pipeline/calculate/job-scripts/3.2A70Djobs"
# JOB_FOLDER_NAME="cond5_rep1,2,3_hbdict_3.2_70"
# python create-Pipeline.py $SIM_TOOL $USER_EMAIL $CONFIG_FILE_PATH $JOB_FOLDER_PATH $JOB_FOLDER_NAME 5 -replist rep_1,rep_2,rep_3 -bindict -stride 1 -titrateid HB_3.2A_70D -interlist -hbbb -hbsb -hbss -rw -wb -wb2
2
"""

MIN_NUM_ARGUMENTS = 9

# Global Variables
rep_folder_id, frag_folder_id = "", ""
dynamic_interaction_path_dict = {}
bin_dict_path_dict = {}
raw_output_id_dict = {}
stitch_output_id_dict = {}
bin_dict_output_dict = {}
DI_FLAG = False 
STITCH_FLAG = False
BIN_DICT_FLAG = False 
interaction_list = []
all_interaction_list = ['-sb', '-pc', '-ps', '-ts', '-vdw', '-hbw', '-hbbb', '-hbsb', '-hbss', '-rw', '-wb', '-wb2']
user_email = ""
stride = 1
solvent_id = None 
chainId = None 
ligand = None
titrateId = None 
dynamic_interaction_geometry_path = "/scratch/PI/rondror/akma327/DynamicNetworks/src/interaction-geometry"

# Constants
MAX_TASK_PER_NODE = 12
NTASK_PER_SOCKET=6

def atoi(text):
    return int(text) if text.isdigit() else text

def natural_keys(text):
    return [ atoi(c) for c in re.split('(\d+)', text)]

def genWriteFileDescriptor(filename, flag):
	if not os.path.exists(os.path.dirname(filename)):
		os.makedirs(os.path.dirname(filename))
	f = open(filename, flag)
	return f

# Normal Sized Fragments 
# def dynamicInteractionAllocTime(interaction):
# 	if(interaction in ['-sb', '-pc', '-ps', '-ts']):
# 		return "2:00:00"
# 	if(interaction in ['-vdw']):
# 		return "72:00:00"
# 	if(interaction in ['-hb', '-hbw']):
# 		return "120:00:00"
# 	if(interaction in ['-hbbb', '-hbsb', '-hbss', '-rw', '-wb']):
# 		return "4:00:00"

# Small Sized Fragments

def dynamicInteractionAllocTime(interaction):
	if(interaction in ['-sb', '-pc', '-ps', '-ts']):
		return "1:00:00"
	if(interaction in ['-vdw']):
		return "10:00:00"
	if(interaction in ['-hb', '-hbw', '-lhbw']):
		return "1:00:00"
	if(interaction in ['-hbbb', '-hbsb', '-hbss', '-rw', '-wb', '-wb2', '-hlb', '-hls', '-lw', '-lwb', '-lwb2']):
		return "1:00:00" #"1:00:00"

def dynamicInteractionAllocMem(interaction):
	if(interaction in ['-sb', '-pc', '-ps', '-ts']):
		return 50000
	if(interaction in ['-vdw']):
		return 70000
	if(interaction in ['-hb', '-hbw', '-lhbw']):
		return 50000 # 120000
	if(interaction in ['-hbbb', '-hbsb', '-hbss', '-rw', '-wb', '-wb2', '-hlb', '-hls', '-lw', '-lwb', '-lwb2']):
		return 20000

def writeBatchScriptHeader(f, purpose, job_name, mail_user, output_file, error_file, time, partition, qos, numTasks, nTaskPerSocket, mem=None):
	f.write("#!/bin/bash\n\n")
	f.write("#Sbatch for: " + purpose + "\n")
	f.write("#################\n")
	f.write("#set a job name\n")
	f.write("#SBATCH --job-name=" + job_name + "\n")
	f.write("#SBATCH --mail-user=" + mail_user + " --mail-type=ALL\n")
	f.write("#################\n")
	f.write("# A file for job output, you can check job progress\n")
	f.write("#SBATCH --output=" + output_file + "\n")
	f.write("#################\n")
	f.write("# A file for errors from the job\n")
	f.write("#SBATCH --error=" + error_file + "\n")
	f.write("#################\n")
	f.write("#SBATCH --time=" + time + "\n")
	f.write("#################\n")
	f.write("#SBATCH --partition=" + partition + "\n")
	f.write("#SBATCH --qos=" + qos + "\n")
	f.write("#################\n")
	f.write("#number of nodes you are requesting\n")
	f.write("#SBATCH --tasks=" + str(numTasks) + "\n")
	f.write("#SBATCH --ntasks-per-socket=" + str(nTaskPerSocket) + "\n")
	if(mem != None):
		f.write("#SBATCH --mem=" + str(mem) + "\n")
	f.write("#################\n\n")


# Handles the batch script for dynamic interaction calculation 
def genDynamicInteractionBatchScripts(exp_num, job_root_path, rep_path_list, interaction_list, simulation_tool, chainId, ligand, top_rep_id, titrateId):
	for rep_path in rep_path_list:
		rep_id = rep_path.split("/")[-1].strip() 
		f_rep_driver = genWriteFileDescriptor(job_root_path + "/" + rep_id + "/" + rep_id + "_driver.sh", 'w')
		frag_path_list = glob.glob(rep_path + "/" + frag_folder_id + "*")
		frag_path_list.sort(key=natural_keys)
		# do grouping here 
		frag_group_counter = 1
		while(frag_path_list):
			to_run_frag_paths = frag_path_list[:MAX_TASK_PER_NODE]
			frag_path_list = frag_path_list[MAX_TASK_PER_NODE:]
			frag_group_id = frag_folder_id + "_group_" + str(frag_group_counter)
			batch_file_path = job_root_path + "/" + rep_id + "/" + frag_group_id + "/RUN_DI"
			for interaction in interaction_list:
				job_name = "BATCH_compute_dynamic_interactions_" + str(exp_num) + "_" + str(rep_id) + "_" + str(frag_group_id) + interaction
				batch_file_name = job_name + ".sbatch"
				batch_full_path = batch_file_path + "/" + batch_file_name
				f_batch = genWriteFileDescriptor(batch_full_path, 'w')
				f_rep_driver.write("sbatch " + batch_full_path + "\n")
				purpose = "Computing Dynamic Interactions for EXP_NUM:" + str(exp_num) + " REP_ID:" + str(rep_id) + " FRAG_GROUP_ID:" + str(frag_group_id) + " Interaction:" + str(interaction)
				mail_user = user_email
				output_file = batch_file_path + "/" + job_name + "_PROGRESS.out"
				error_file =  batch_file_path + "/" + job_name + "_ERROR.out"
				time = dynamicInteractionAllocTime(interaction)
				partition = "rondror"
				qos = "rondror"
				# partition = "bigmem"
				# qos = "bigmem"
				numTasks = str(MAX_TASK_PER_NODE)
				nTaskPerSocket = str(NTASK_PER_SOCKET)
				mem = dynamicInteractionAllocMem(interaction)
				writeBatchScriptHeader(f_batch, purpose, job_name, mail_user, output_file, error_file, time, partition, qos, numTasks, nTaskPerSocket, mem)
				for frag_path in to_run_frag_paths:
					frag_id = frag_path.split("/")[-1].strip()
					if(simulation_tool == "-amber"):
						if(top_rep_id == None):
							f_batch.write("TOP_PATH=\"" + dynamic_interaction_path_dict[exp_num] + "/step5_assembly.pdb\"\n")
						else:
							f_batch.write("TOP_PATH=\"" + dynamic_interaction_path_dict[exp_num] + "/step5_assembly-"+ str(rep_id) + ".pdb\"\n") # substitute with generic pdb 
						f_batch.write("TRAJ_PATH=\"" + dynamic_interaction_path_dict[exp_num] + "/" + rep_id + "/" + frag_id + "/" + frag_id + "_reimaged.nc\"\n")
					elif(simulation_tool == "-anton"):
						if(interaction in ['-sb', '-pc', '-ps', '-ts', '-vdw']):
							if(top_rep_id == None):
								f_batch.write("TOP_PATH=\"" + dynamic_interaction_path_dict[exp_num] + "/step5_assembly_strip_waters.pdb\"\n")
							else:
								f_batch.write("TOP_PATH=\"" + dynamic_interaction_path_dict[exp_num] + "/step5_assembly_strip_waters-" + str(rep_id) + ".pdb\"\n")
							f_batch.write("TRAJ_PATH=\"" + dynamic_interaction_path_dict[exp_num] + "/" + rep_id + "/" + frag_id + "/" + frag_id + "_rewrapped_strip_waters.dcd\"\n")
						else:
							if(top_rep_id == None):
								f_batch.write("TOP_PATH=\"" + dynamic_interaction_path_dict[exp_num] + "/step5_assembly.mae\"\n")
							else:
								f_batch.write("TOP_PATH=\"" + dynamic_interaction_path_dict[exp_num] + "/step5_assembly-" + str(rep_id) + ".mae\"\n")
							f_batch.write("TRAJ_PATH=\"" + dynamic_interaction_path_dict[exp_num] + "/" + rep_id + "/" + frag_id + "/" + frag_id + "_rewrapped.dcd\"\n")
					output_dir_path_str = "OUTPUT_DIRECTORY_PATH=\"" + dynamic_interaction_path_dict[exp_num] + "/" + rep_id + "/" + frag_id
					if(titrateId!= None): output_dir_path_str += "/" + titrateId
					output_dir_path_str += "\"\n"
					f_batch.write(output_dir_path_str)
					f_batch.write("OUTPUT_FILE_IDENTIFIER=\"" + raw_output_id_dict[interaction] + "\"\n")
					if(interaction in ['-hbbb', '-hbsb', '-hbss', '-rw', '-wb', '-wb2']):
						water_hbond_file_path_str = "WATER_HBOND_FILE_PATH=\"" + dynamic_interaction_path_dict[exp_num] + "/" + rep_id + "/" + frag_id
						if(titrateId != None): water_hbond_file_path_str += "/" + titrateId
						water_hbond_file_path_str += "/" + raw_output_id_dict['-hbw'] + "\"\n"
						f_batch.write(water_hbond_file_path_str)
						f_batch.write("cd " + dynamic_interaction_geometry_path + "\n")
						execute_command_str = "python DynamicInteractionCalculator.py $TRAJ_PATH $TOP_PATH $OUTPUT_DIRECTORY_PATH $OUTPUT_FILE_IDENTIFIER " + interaction + " -process $WATER_HBOND_FILE_PATH" + " -stride " + str(stride)
						if(solvent_id != None): execute_command_str += " -solv " + solvent_id
						if(chainId != None): execute_command_str += " -chain " + str(chainId)
						execute_command_str += " &\n\n"
						f_batch.write(execute_command_str)
					elif(interaction in ['-hlb', '-hls', '-lw', '-lwb', '-lwb2']):
						ligand_water_hbond_file_path_str = "LIGAND_WATER_HBOND_FILE_PATH=\"" + dynamic_interaction_path_dict[exp_num] + "/" + rep_id + "/" + frag_id
						if(titrateId != None): ligand_water_hbond_file_path_str += "/" + titrateId
						ligand_water_hbond_file_path_str += "/" + raw_output_id_dict['-lhbw'] + "\"\n"
						f_batch.write(ligand_water_hbond_file_path_str)
						f_batch.write("cd " + dynamic_interaction_geometry_path + "\n")
						execute_command_str = "python DynamicInteractionCalculator.py $TRAJ_PATH $TOP_PATH $OUTPUT_DIRECTORY_PATH $OUTPUT_FILE_IDENTIFIER " + interaction + " -process $LIGAND_WATER_HBOND_FILE_PATH" + " -stride " + str(stride)
						if(solvent_id != None): execute_command_str += " -solv " + solvent_id
						if(chainId != None): execute_command_str += " -chain " + str(chainId) 
						if(ligand != None): execute_command_str += " -ligand " + str(ligand)
						execute_command_str += " &\n\n"
						f_batch.write(execute_command_str)
					else: # sb, pc, ps, ts, vmd, hbw, lhbw
						f_batch.write("cd " + dynamic_interaction_geometry_path + "\n")
						execute_command_str = "python DynamicInteractionCalculator.py $TRAJ_PATH $TOP_PATH $OUTPUT_DIRECTORY_PATH $OUTPUT_FILE_IDENTIFIER " + interaction + " -stride " + str(stride)
						if(solvent_id != None): execute_command_str += " -solv " + solvent_id
						if(chainId != None): execute_command_str += " -chain " + str(chainId)
						if(ligand != None and interaction == "-lhbw"): execute_command_str += " -ligand " + str(ligand)
						execute_command_str += " &\n\n"
						f_batch.write(execute_command_str)
				f_batch.write("wait\n")
			frag_group_counter += 1

# Handles the batch script for stitching fragments of raw interaction output
def genStitchBatchScripts(exp_num, job_root_path, rep_path_list, interaction_list, titrateId):
	for rep_path in rep_path_list:
		for interaction in interaction_list:
			rep_id = rep_path.split("/")[-1].strip() 
			f_rep_driver = genWriteFileDescriptor(job_root_path + "/" + rep_id + "/" + rep_id + "_driver.sh", 'a')
			batch_file_path = job_root_path + "/" + rep_id + "/RUN_STITCH"
			job_name = "BATCH_compute_stitch_" + str(exp_num) + "_" + str(rep_id) + interaction
			batch_file_name = job_name + ".sbatch"
			batch_full_path = batch_file_path + "/" + batch_file_name
			f_stitch = genWriteFileDescriptor(batch_full_path, 'w')
			f_rep_driver.write("sbatch " + batch_full_path + "\n")
			purpose = "Computing Stitch for EXP_NUM:" + str(exp_num) + " REP_ID:" + str(rep_id) + " Interaction:" + str(interaction)
			mail_user = user_email
			output_file = batch_file_path + "/" + job_name + "_PROGRESS.out"
			error_file = batch_file_path + "/" + job_name + "_ERROR.out"
			time = "2:00:00"
			partition = "rondror"
			qos = "rondror"
			numTasks = str(1)
			nTaskPerSocket = str(1)
			writeBatchScriptHeader(f_stitch, purpose, job_name, mail_user, output_file, error_file, time, partition, qos, numTasks, nTaskPerSocket)
			f_stitch.write("EXP_REP_PATH=\"" + dynamic_interaction_path_dict[exp_num] + "/" + rep_id + "\"\n")
			f_stitch.write("FOLDER_ID=\"" + frag_folder_id + "\"\n")
			if(titrateId == None): f_stitch.write("TITRATION_ID=\"None \"\n")
			else: f_stitch.write("TITRATION_ID=\"" + titrateId + "\"\n")
			f_stitch.write("FILE_NAME_ID=\"" + raw_output_id_dict[interaction] + "\"\n")
			output_path_str = "OUTPUT_PATH=\"" + dynamic_interaction_path_dict[exp_num] + "/" + rep_id 
			if(titrateId != None): output_path_str += "/" + titrateId
			output_path_str += "\"\n"
			f_stitch.write(output_path_str)
			f_stitch.write("OUTPUT_FILE_NAME=\"" + stitch_output_id_dict[interaction] + "\"\n")
			f_stitch.write("cd " + dynamic_interaction_geometry_path + "\n")
			f_stitch.write("python stitchFrames.py $EXP_REP_PATH $FOLDER_ID $TITRATION_ID $FILE_NAME_ID $OUTPUT_PATH $OUTPUT_FILE_NAME\n")
			f_stitch.write("wait\n")

# Handles the batch script for generating binary dictionary for stitching files 
def genBinDictBatchScripts(exp_num, job_root_path, rep_path_list, interaction_list, titrateId):
	for rep_path in rep_path_list:
		for interaction in interaction_list:
			rep_id = rep_path.split("/")[-1].strip() 
			f_rep_driver = genWriteFileDescriptor(job_root_path + "/" + rep_id + "/" + rep_id + "_driver.sh", 'a')
			batch_file_path = job_root_path + "/" + rep_id + "/RUN_BINDICT"
			job_name = "BATCH_compute_binarydict_" + str(exp_num) + "_" + str(rep_id) + interaction
			batch_file_name = job_name + ".sbatch"
			batch_full_path = batch_file_path + "/" + batch_file_name
			f_bindict = genWriteFileDescriptor(batch_full_path, 'w')
			f_rep_driver.write("sbatch " + batch_full_path + "\n")
			purpose = "Computing Binary Dictionary for EXP_NUM:" + str(exp_num) + " REP_ID:" + str(rep_id) + " Interaction:" + str(interaction)
			mail_user = user_email
			output_file = batch_file_path + "/" + job_name + "_PROGRESS.out"
			error_file = batch_file_path + "/" + job_name + "_ERROR.out"
			time = "4:00:00"
			partition = "rondror"
			qos = "rondror"
			numTasks = str(1)
			nTaskPerSocket = str(1)
			mem = 70000
			writeBatchScriptHeader(f_bindict, purpose, job_name, mail_user, output_file, error_file, time, partition, qos, numTasks, nTaskPerSocket, mem)
			stitched_interaction_path_str = "StitchedInteractionPath=\"" + dynamic_interaction_path_dict[exp_num] + "/" + rep_id
			if(titrateId != None): stitched_interaction_path_str += "/" + titrateId
			stitched_interaction_path_str += "\"\n"
			f_bindict.write(stitched_interaction_path_str)
			f_bindict.write("INPUT_FILE_PATH=\"" + stitch_output_id_dict[interaction] + "\"\n")
			output_path_str = "OUTPUT_PATH=\"" + bin_dict_path_dict[exp_num] + "/" + rep_id
			if(titrateId != None): output_path_str += "/" + titrateId
			output_path_str += "\"\n"
			f_bindict.write(output_path_str)
			f_bindict.write("OUTPUT_FILE_NAME=\"" + bin_dict_output_dict[interaction] + "\"\n")
			f_bindict.write("cd " + dynamic_interaction_geometry_path + "\n")
			f_bindict.write("./processTimeFrameData $StitchedInteractionPath $INPUT_FILE_PATH $OUTPUT_PATH $OUTPUT_FILE_NAME " + interaction + "\n")
			f_bindict.write("wait\n")


def generateBatchScripts(exp_num, job_root_path, rep_path_list, interaction_list, simulation_tool, chainId, ligand, rep_id, titrateId):
	if(DI_FLAG == True):
		genDynamicInteractionBatchScripts(exp_num, job_root_path, rep_path_list, interaction_list, simulation_tool, chainId, ligand, rep_id, titrateId)
	if(STITCH_FLAG == True):
		genStitchBatchScripts(exp_num, job_root_path, rep_path_list, interaction_list, titrateId)
	if(BIN_DICT_FLAG == True):
		genBinDictBatchScripts(exp_num, job_root_path, rep_path_list, interaction_list, titrateId)


def generateMasterShellScript(exp_num, job_root_path, rep_path_list, interaction_list):
	f_master_driver = genWriteFileDescriptor(job_root_path + "/pipeline_driver.sh", 'w')
	for rep_path in rep_path_list:
		rep_id = rep_path.split("/")[-1].strip() 
		f_master_driver.write("bash " + job_root_path + "/" + rep_id + "/" + rep_id + "_driver.sh\n")



if __name__ == "__main__":
	if(len(sys.argv) < MIN_NUM_ARGUMENTS):
		print(HOW_TO_USE_STR)
		exit(1)
	simulation_tool = sys.argv[1]
	user_email = sys.argv[2]
	config_file_name = sys.argv[3]
	job_folder_path = sys.argv[4]
	job_folder_name = sys.argv[5]
	job_root_path = job_folder_path + "/" + job_folder_name
	rep_folder_id, frag_folder_id, dynamic_interaction_path_dict, bin_dict_path_dict, raw_output_id_dict, stitch_output_id_dict, bin_dict_output_dict = parseConfigurationFile(config_file_name)
	exp_num = sys.argv[6]
	exp_raw_output_path = dynamic_interaction_path_dict[exp_num]
	if('-replist' in sys.argv):
		replist_index = sys.argv.index('-replist') + 1 
		rep_path_list = [exp_raw_output_path + "/" + rep.strip() for rep in sys.argv[replist_index].split(",")]
	else:
		rep_path_list = glob.glob(exp_raw_output_path + "/" + rep_folder_id + "*")
		rep_path_list.sort(key=natural_keys)
	if('-di' in sys.argv):
		DI_FLAG = True 
	if('-stitch' in sys.argv):
		STITCH_FLAG = True 
	if('-bindict' in sys.argv):
		BIN_DICT_FLAG = True 
	if('-stride' in sys.argv):
		stride = int(sys.argv[sys.argv.index('-stride') + 1])
	if('-solv' in sys.argv):
		solvent_id = sys.argv[sys.argv.index('-solv') +1]
	if('-chain' in sys.argv):
		chainId = sys.argv[sys.argv.index('-chain') + 1]
	if('-ligand' in sys.argv):
		ligand = sys.argv[sys.argv.index('-ligand') + 1]
	top_rep_id = None 
	if('-topid' in sys.argv):
		top_rep_id = sys.argv[sys.argv.index('-topid') + 1]
	if('-titrateid' in sys.argv):
		titrateId = sys.argv[sys.argv.index('-titrateid') + 1]
	inter_list_index = sys.argv.index('-interlist') + 1
	interaction_list = sys.argv[inter_list_index:]
	if('-all' in interaction_list):
		interaction_list = all_interaction_list
	if("-hbw" in interaction_list or "-lhbw" in interaction_list):
		MAX_TASK_PER_NODE = 6
	generateBatchScripts(exp_num, job_root_path, rep_path_list, interaction_list, simulation_tool, chainId, ligand, top_rep_id, titrateId)
	generateMasterShellScript(exp_num, job_root_path, rep_path_list, interaction_list)


