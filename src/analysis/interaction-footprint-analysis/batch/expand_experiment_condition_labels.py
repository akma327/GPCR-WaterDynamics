# expand_experiment_condition_labels.py

import os
import sys 
import csv 
import numpy as np 

USAGE_STR = """
# Purpose
# For an existing batch .sh script that computes the interaction frequency column
# for certain experiments, replace with expanded experiment condition descriptions. 

# Usage:
# python expand_experiment_condition_labels.py <BATCH_SCRIPT_FILE> <OUTPUT_FOLDER_NAME> <OUTPUT_FILE>

# Arguments:
# <BATCH_SCRIPT_FILE> Absolute path to the original shell script that has short hand 
# experiment condition labels. 
# <OUTPUT_FOLDER_NAME> Name of the new output folder 
# <OUTPUT_FILE> Absolute path to the new batch shell script file. 

# Example:
BATCH_SCRIPT_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/src/analysis/interaction-footprint-analysis/batch/residue_table/052016/active-mor-polar-network-residue-table.sh"
OUTPUT_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/src/analysis/interaction-footprint-analysis/batch/residue_table/active-mor-polar-network-residue-table.sh"
python expand_experiment_condition_labels.py $BATCH_SCRIPT_FILE $OUTPUT_FILE

"""

EXP_COND_DESCRIPTION_TABLE = "/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/simulation-analysis/gpcrdb-freq-config/exp_cond_shortToLong_description.csv"

K_MIN_ARG = 3


# Create directory if not exist
def createDirectory(OUTPUT_FILE):
	directory = os.path.dirname(OUTPUT_FILE)
	if not os.path.exists(directory):
		os.makedirs(directory)

# Generate write file descriptor 
def genWriteDescriptor(OUTPUT_FILE):
	createDirectory(OUTPUT_FILE)
	return open(OUTPUT_FILE, 'w')


# Make dictionary from short hand to detailed experiment condition description 
def genShortToLongDescriptionDict():
	shortToLongDescriptionDict = {}
	with open(EXP_COND_DESCRIPTION_TABLE, 'rU') as f:
		reader = csv.reader(f, delimiter=",")
		d = list(reader)
	darr = np.array(d)
	for short_d, long_d in darr:
		print("build", short_d, long_d)
		shortToLongDescriptionDict[short_d] = long_d
	return shortToLongDescriptionDict

# Expands the short hand experiment condition labels to detailed version
# (ie "MOR-inactive-bFNA-nature2015-rep_3.txt" --> "MOR:inactive:bFNA-antagonist-bound_to_K233:0.63us.txt")
def expandExpCondLabel(BATCH_SCRIPT_FILE, OUTPUT_FILE):
	shortToLongDescriptionDict = genShortToLongDescriptionDict()
	fr = open(BATCH_SCRIPT_FILE, 'r')
	fw = genWriteDescriptor(OUTPUT_FILE)
	for line in fr:
		if("EXP_REP_ID=" in line):
			orig_exp_rep_id = line.strip().split("=")[1].strip("\"")
			nline = "EXP_REP_ID=\"" + shortToLongDescriptionDict[orig_exp_rep_id] + "\"\n"
			print(nline)
			fw.write(nline)

		elif("OUTPUT_FILE=" in line):
			linfo = line.strip().split("/")
			shortFileName = linfo[-1].split(".json")[0]
			nline = "/".join(linfo[:-1]) + "/" + shortToLongDescriptionDict[shortFileName] + ".json\"\n"
			fw.write(nline)
		elif("python" in line):
			linfo = line.strip().split(" ")
			fw.write("python footprint_summary_evobundle.py " + " ".join(linfo[2:]) + "\n")
		else:
			print(line)
			fw.write(line)


if __name__ == "__main__":
	if(len(sys.argv) < K_MIN_ARG):
		print(USAGE_STR)
		exit(1)
	(BATCH_SCRIPT_FILE, OUTPUT_FILE) = (sys.argv[1], sys.argv[2])
	expandExpCondLabel(BATCH_SCRIPT_FILE, OUTPUT_FILE)


