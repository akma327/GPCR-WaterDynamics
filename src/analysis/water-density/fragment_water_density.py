# Author: Anthony Kai Kwang Ma
# Email: akma327@stanford.edu
# fragment_water_density.py 

import os 
import sys
import glob 
import re 
import numpy as np 
from water_density_utils import *

USAGE_STR = """

# Purpose
Use water_density.py module to compute .dx file for every trajectory in the 
specified trajectory directory.

# Usage 
# python fragment_water_density.py <SIMULATION_TOOL> <TOP> <TRAJ_DIR> <OUTPUT_DIR> <JOB_FOLDER>

# Arguments
# <SIMULATION_TOOL> -anton for DESRES trajectories and -amber for other 
# <TOP> Absolute path to the topology file 
# <TRAJ_DIR> Absolute path to directory containing all trajectories
# <OUTPUT_DIR> Absolute path to output directory containing all fragment .dx files 
# <JOB_FOLDER> Absolute path to the folder containing all the sbatch jobs to run 



# Example 
SIMULATION_TOOL="-amber"
TOP="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/MOR-active-noNb-BU72-nature2015/condition-nb-interface-restrained-BU72/step5_assembly.pdb"
TRAJ_DIR="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/MOR-active-noNb-BU72-nature2015/condition-nb-interface-restrained-BU72/rep_1"
OUTPUT_DIR="/scratch/PI/rondror/akma327/DynamicNetworks/data/water-density/MOR-active-noNb-BU72-nature2015/condition-nb-interface-restrained-BU72"
JOB_FOLDER="/scratch/PI/rondror/akma327/DynamicNetworks/src/analysis/water-density/jobs/MOR-active-rep_1"
python fragment_water_density.py $SIMULATION_TOOL $TOP $TRAJ_DIR $OUTPUT_DIR $JOB_FOLDER

"""

K_MIN_ARG = 6
MAX_TASK_PER_NODE = 4
NTASK_PER_SOCKET = 6

TRAJ_FILE_SUFFIX = {"-anton": "rewrapped.dcd", "-amber": "reimaged.dcd"}
water_density_script = "/scratch/PI/rondror/akma327/DynamicNetworks/src/analysis/water-density/water_density.py"


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


def fragmentWaterDensityDriver(SIMULATION_TOOL, TOP, TRAJ_DIR, OUTPUT_DIR, JOB_FOLDER):
	f_driver = genWriteDescriptor(JOB_FOLDER + "/driver.sh")
	fragments = glob.glob(TRAJ_DIR + "/Prod*/*" + TRAJ_FILE_SUFFIX[SIMULATION_TOOL])
	fragments.sort(key=natural_keys)
	frag_group_counter = 1 
	while(fragments):
		to_run_frag_paths = fragments[:MAX_TASK_PER_NODE]
		fragments = fragments[MAX_TASK_PER_NODE:]

		# Write out sbatch header information
		f = genWriteDescriptor(JOB_FOLDER + "/run/Prod_group_" + str(frag_group_counter) + ".sbatch")
		purpose = "Calculating Water Density"
		job_name = "-".join(JOB_FOLDER.split("/")[-3:]) + ":Water_Density_Prod_group_" + str(frag_group_counter) 
		mail_user = "akma327@stanford.edu"
		output_file = JOB_FOLDER + "/run/Prod_group_" + str(frag_group_counter) + "_PROGRESS.out"
		error_file = JOB_FOLDER + "/run/Prod_group_" + str(frag_group_counter) + "_ERROR.out"
		time = "5:00:00"
		partition = "rondror"
		qos = "rondror"
		numTasks = str(MAX_TASK_PER_NODE)
		nTaskPerSocket = str(NTASK_PER_SOCKET)
		mem = 60000
		writeBatchScriptHeader(f, purpose, job_name, mail_user, output_file, error_file, time, partition, qos, numTasks, nTaskPerSocket, mem)

		# Parallelize water density calculations 
		for traj_frag in to_run_frag_paths:
			prod_num = traj_frag.split("/")[-2]
			f.write("TOP=\"" + TOP + "\"\n")
			f.write("TRAJ=\"" + traj_frag + "\"\n")
			f.write("OUT=" + OUTPUT_DIR + "/" + prod_num + ".dx\n")
			f.write("python " + water_density_script + " $TOP $TRAJ $OUT -nFrames\n\n")
		
		f.write("wait\n")
		# Add command to driver 
		f_driver.write("sbatch " + JOB_FOLDER + "/run/Prod_group_" + str(frag_group_counter) + ".sbatch\n")
		frag_group_counter += 1



if __name__ == "__main__":
	if(len(sys.argv) < K_MIN_ARG):
		print(USAGE_STR)
		exit(1)
	(SIMULATION_TOOL, TOP, TRAJ_DIR, OUTPUT_DIR, JOB_FOLDER) = (sys.argv[1], sys.argv[2], sys.argv[3], sys.argv[4], sys.argv[5])
	fragmentWaterDensityDriver(SIMULATION_TOOL, TOP, TRAJ_DIR, OUTPUT_DIR, JOB_FOLDER)

