# Author: Anthony Kai Kwang Ma
# Email: akma327@stanford.edu
# Date: April 17, 2016


import sys 
import os
import glob
import re 

K_MIN_ARG = 5

USAGE_STRING = """ 
# preprocessDesResDirStruct.py 
# This script will generate the shell script to populate the DynamicNetwork folder with a single replicate folder 
# containing fragment folders containing reimaged trajectories. This is done for a specified replicate of a single
# experimental condition 

# Usage:
# python preprocessDesResDirStruct.py <REPLICATE_SOURCE_PATH> <OUTPUT_FRAG_ID> <OUTPUT EXPERIMENT CONDITION PATH> <OUTPUT_SCRIPT_FILE_PATH>

# Arguments: 
# <REPLICATE_SOURCE_PATH> Absolute path to the folder containing all the trajectory fragments 
# <OUTPUT_FRAG_ID> User defines the fragment id to name the folders containing the rewrapped dcd files (ie "Prod" for folders Prod_1)
# <OUTPUT EXPERIMENT CONDITION PATH> Absolute path to where you will store the replicate folder containing fragment folders
# storing each of the reimaged trajectories. 
# <OUTPUT_SCRIPT_FILE_PATH> Absolute path to the shell script file that needs to be run to populate the folders in Output experimental
# condition path with the reimaged trajectories. 

# Example: 
# REP_SOURCE_PATH="/scratch/PI/rondror/DesRes-Simulations/ordered-from-DesRes/nature2012/DESRES-Trajectory_nature2012-A-M2-QNB-all.1/nature2012-A-M2-QNB-all"
# OUTPUT_FRAG_ID="Prod"
# OUTPUT_EXP_COND_PATH="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/M2R-inactive-QNB-nature2012/condition-A/rep_1"
# OUTPUT_SCRIPT_FILE_PATH="/scratch/users/akma327/akma327/noncovalent_Interaction_Scripts/DynamicInteractions-Pipeline/process-traj-jobs/nature2012-A-M2-QNB.sh"
# python preprocessDesResDirStruct.py $REP_SOURCE_PATH $OUTPUT_FRAG_ID $OUTPUT_EXP_COND_PATH $OUTPUT_SCRIPT_FILE_PATH 
"""

DynamicInteractions_TOOLS_PATH="/scratch/PI/rondror/akma327/DynamicNetworks/src/DI-pipeline-tools"

def atoi(text):
    return int(text) if text.isdigit() else text

def natural_keys(text):
    return [ atoi(c) for c in re.split('(\d+)', text) ]


# Convert mae topology to pdb 
# Also make copy and rename mae file from the DESRES source to output experiment condition path 
def convertAndCopyMaeToPdb(f, rep_source_path, output_exp_cond_path, rep_id):
	f.write("# Converting .mae to .pdb file and placing in the output experimental condition path\n\n")
	f.write("cd " + DynamicInteractions_TOOLS_PATH + "\n")
	mae_file_path = glob.glob(rep_source_path + "/*.mae")[0]
	output_pdb_path = "/".join(output_exp_cond_path.split("/")[0:-1])
	if(rep_id == None):
		output_pdb_file_name = "step5_assembly.pdb"
	else:
		output_pdb_file_name = "step5_assembly-" + str(rep_id) + ".pdb"
	f.write("MAE_PATH=\"" + mae_file_path+ "\"\n")
	f.write("OUTPUT_PDB_PATH=\"" + output_pdb_path + "/" + output_pdb_file_name + "\"\n")
	f.write("python maeToPdb.py $MAE_PATH $OUTPUT_PDB_PATH\n\n")

	f.write("# Copy and rename .mae file to the output experimental condition path\n")
	if(rep_id == None):
		f.write("cp " + mae_file_path + " " + output_pdb_path + "/step5_assembly.mae\n\n")
	else:
		f.write("cp " + mae_file_path + " " + output_pdb_path + "/step5_assembly-" + str(rep_id) + ".mae\n\n")
	return output_pdb_path + "/" + output_pdb_file_name

# Strip waters from the converted pdb 
def stripTopologyWaters(f, output_pdb_path, rep_id):
	f.write("# Stripping waters from original pdb\n\n")
	f.write("TOPOLOGY_PATH=\""+ output_pdb_path + "\"\n")
	if(rep_id == None):
		output_file_path = "/".join(output_pdb_path.split("/")[:-1]) + "/step5_assembly_strip_waters.pdb"
	else:
		output_file_path = "/".join(output_pdb_path.split("/")[:-1]) + "/step5_assembly_strip_waters-" + str(rep_id) + ".pdb"
	f.write("OUTPUT_FILE_PATH=\"" + output_file_path + "\"\n")
	f.write("cd " + DynamicInteractions_TOOLS_PATH + "\n")
	f.write("python stripWaters.py -top $TOPOLOGY_PATH $OUTPUT_FILE_PATH\n\n\n")


# Generate the fragment folders containing the rewrapped dcd files
def generateTrajScript(f, rep_source_path, output_frag_id, output_exp_cond_path, output_script_file_path, output_pdb_path, strip_flag):
	dcd_paths = glob.glob(rep_source_path + "/*.dcd")
	dcd_paths.sort(key=natural_keys)
	for index, dcd_frag in enumerate(dcd_paths): 
		f.write("# Rewrapping original .dcd files and placing copy in output experiment fragment folder path\n")
		dcd_frag_num = output_frag_id + "_" + str(int(dcd_frag.split("/")[-1].split(".")[0].split("-")[-1]))
		output_file_path = output_exp_cond_path + "/" + dcd_frag_num
		f.write("cd " + output_exp_cond_path + "\n")
		f.write("mkdir " + dcd_frag_num + "\n")
		f.write("cd " + DynamicInteractions_TOOLS_PATH + "\n")
		f.write("TOP_FILE=\"" + output_pdb_path + "\"\n")
		f.write("TRAJ_FILE=\"" + dcd_frag + "\"\n")
		f.write("OUTPUT_FILE=\"" + output_file_path + "/" + dcd_frag_num + "_rewrapped.dcd" +  "\"\n")
		if(index == 0):
			f.write("python wrapAlign.py $TOP_FILE $TRAJ_FILE $OUTPUT_FILE -crys\n\n")
		else:
			f.write("python wrapAlign.py $TOP_FILE $TRAJ_FILE $OUTPUT_FILE\n\n")

		if(strip_flag == True):
			f.write("# Stripping water from rewrapped .dcd file and placing output file in same experiment fragment folder path\n")
			rewrapped_dcd_frag = output_file_path + "/" + dcd_frag_num + "_rewrapped.dcd"
			strip_output_file_path = rewrapped_dcd_frag.split(".dcd")[0] + "_strip_waters.dcd"
			f.write("TRAJ_FILE=\"" + rewrapped_dcd_frag + "\"\n")
			f.write("OUTPUT_FILE_PATH=\"" + strip_output_file_path + "\"\n")
			f.write("python stripWaters.py -top $TOP_FILE -traj $TRAJ_FILE $OUTPUT_FILE_PATH\n\n\n")



if __name__ == "__main__":
	if(len(sys.argv) < K_MIN_ARG):
		print(USAGE_STRING)
		exit(0)
	rep_source_path = sys.argv[1]
	output_frag_id = sys.argv[2]
	output_exp_cond_path = sys.argv[3]
	output_script_file_path = sys.argv[4]
	if("-strip" in sys.argv):
		strip_flag = True 
	else: 
		strip_flag = False 
	rep_id = None 
	if("-replist" in sys.argv):
		rep_id = sys.argv[sys.argv.index("-replist")+1]
	f = open(output_script_file_path, 'w')
	output_pdb_path = convertAndCopyMaeToPdb(f, rep_source_path, output_exp_cond_path, rep_id)
	if(strip_flag == True):
		stripTopologyWaters(f, output_pdb_path, rep_id)
	generateTrajScript(f, rep_source_path, output_frag_id, output_exp_cond_path, output_script_file_path, output_pdb_path, strip_flag)








