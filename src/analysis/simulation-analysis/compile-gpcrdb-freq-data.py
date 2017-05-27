# Author: Anthony Kai Kwang Ma
# Email: akma327@stanford.edu
# compile-gpcrdb-freq-data.py

import sys
import os 
import glob 
import re 
import csv 
import numpy as np


USAGE_STR = """
# Purpose:
# This script takes as input the path to a folder containing frequency summary files 
# for multiple replicates of several experimental conditions. Keys will be defined as
# unique combinations of interaction type and gpcr-db number pairs. After unionizing
# across all the unique keys in the folder, generate an output file where frequency
# values for each of the experiment/condition files are written in tab delimited 
# columns. Rows are the interaction keys, columns are the experiment/replicate.
# Each cell is filled with a float reperesenting frequency value 


# Output Format:
# <GPCR-DB1:GPCR-DB2:interaction_type> <Exp/Rep1> <Exp/Rep2> ...
# 			sb:1x58:3x50				0.00330		0.24099
# 			vdw:6x40:7x52				4.16e-05	0.991
#				... 			 		   ... 		 ... 

# Usage: 
# python compile-gpcrdb-freq-data.py <FREQ_SUM_EXP_FOLDER_PATH> <OUTPUT_FILE_PATH> 

# Arguments: 
# <FREQ_SUM_EXP_FOLDER_PATH> Absolute path to the folder containing all the experiment
# replicate combination of frequency summaries. 
# <OUTPUT_FILE_PATH> Absolute path to the output file containing the table of frequency
# summaries across experiment/replicate conditions and unionized interaction keys 


# Example:
FREQ_SUM_EXP_FOLDER_PATH="/scratch/PI/rondror/akma327/DynamicNetworks/results/simulation-analysis/gpcrdb-freq-output/single-cond-rep-freqsum/052816-3.5A-110D-full"
OUTPUT_FILE_PATH="/scratch/PI/rondror/akma327/DynamicNetworks/results/simulation-analysis/gpcrdb-freq-output/aggregate-freqsum/052816-3.5A-110D-aggregate.txt"
python compile-gpcrdb-freq-data.py $FREQ_SUM_EXP_FOLDER_PATH $OUTPUT_FILE_PATH

"""

K_MIN_ARG = 3
UNIPROT_ORDER = ["adrb2_human", "drd4_human", "acm2_human", "acm3_fix", "oprm_mouse", "oprd_human", "par1_human"]
# UNIPROT_ORDER = ["adrb2_human", "drd4_human", "acm2_human", "acm3_rat", "oprm_mouse", "oprd_human", "par1_human"]

# Absolute path to the table associating pdb to uniprot id 
RECEPTOR_PDB_LOOKUP_PATH="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/simulation-analysis/gpcrdb-freq-config/receptor_pdb_lookup.txt"
EXP_COND_DESCRIPTION_TABLE = "/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/simulation-analysis/gpcrdb-freq-config/exp_cond_shortToLong_description.csv"

# Dictionary to go from long description of experiment condition to short hand 
def genLongToShortDescriptionDict():
	longToShortDescriptionDict = {}
	with open(EXP_COND_DESCRIPTION_TABLE, 'rU') as f:
		reader = csv.reader(f, delimiter=",")
		d = list(reader)
	darr = np.array(d)
	for short_d, long_d in darr:
		longToShortDescriptionDict[long_d] = short_d
	return longToShortDescriptionDict


# Convert absolute path to long hand experiment condition description to short hand 
def getShortHandFile(exp_file, longToShortDescriptionDict):
	linfo = exp_file.strip().split("/")
	shortFile = "/".join(linfo[:-1]) + "/" + longToShortDescriptionDict[linfo[-1].split(".txt")[0]] + ".txt"
	return shortFile

def atoi(text):
    return int(text) if text.isdigit() else text

def natural_keys(text):
    return [ atoi(c) for c in re.split('(\d+)', text) ]

# Generate directory and file descriptor 
def genFileDescriptor(OUTPUT_FILE_PATH, mode):
	directory = "/".join(OUTPUT_FILE_PATH.split("/")[:-1])
	if not os.path.exists(directory):
		os.makedirs(directory)
	fw = open(OUTPUT_FILE_PATH, mode)
	return fw


def genHeader(exp_rep_ids):
	header = "# GPCR-DB1:GPCR-DB2:Interaction Type:Atom-1:Atom-2"
	for rep_id in exp_rep_ids:
		header += "\t" + rep_id
	header += "\n"
 	return header 

# Input: Path to the specific experiment/replciate's frequency summary file
# Function: Parses through the file and generates a dictionary associating 
# key = (<Interaction type> <GPCR-DB1> <GPCR-DB2>) with 
# value = frequency 
def genSingleFreqDict(EXP_REP_FREQ_SUM_PATH):
	exp_rep_identifier = EXP_REP_FREQ_SUM_PATH.split("/")[-1].strip(".txt")
	freqDict = {}
	f = open(EXP_REP_FREQ_SUM_PATH, 'r')
	for line in f:
		if("#" not in line and line != "\n"):
			line_info = line.split("\t")
			interaction_type, atom1, atom2, GPCR_DB1, GPCR_DB2, freq = line_info
			freq = float(freq.strip())
			key = (interaction_type, atom1, atom2, GPCR_DB1, GPCR_DB2)
			freqDict[key] = freq 
	return exp_rep_identifier, freqDict


# Takes path to the lookup table between uniprot, receptor, and pdb 
# and generates lookup table between receptor and uniprot 
def genReceptorToUniprotTable():
	receptorToUniprotDict = {} 
	f = open(RECEPTOR_PDB_LOOKUP_PATH, 'r')
	for line in f:
		if("#" not in line and line != "\n"):
			uniprot, receptor, pdb = line.split("\t")
			key, value = receptor.strip().upper(), uniprot.strip().upper()
			if(key in receptorToUniprotDict): 
				pass 
			else: 
				receptorToUniprotDict[key] = value 
	return receptorToUniprotDict 


# Takes the path to the folder containing individual frequency summaries 
# returns the list of all the absolute paths of the individual files
# sorted first based on uniprot, then alphabetical, and replicate 
def genExperimentFiles(FREQ_SUM_EXP_FOLDER_PATH):
	longToShortDescriptionDict = genLongToShortDescriptionDict()
	receptorToUniprotDict = genReceptorToUniprotTable()
	exp_files = glob.glob(FREQ_SUM_EXP_FOLDER_PATH + "/*")
	path_by_uniprot_dict = {receptorToUniprotDict[key]:[] for key in receptorToUniprotDict}
	for exp_file in exp_files:
		short_exp_file = getShortHandFile(exp_file, longToShortDescriptionDict)

		receptor = short_exp_file.split("/")[-1].split("-")[0].strip().upper() #find receptor for this path

		uniprot_code = receptorToUniprotDict[receptor].upper() # find uniprot code
		path_by_uniprot_dict[uniprot_code].append(exp_file) #append to uniprot code's list of paths 
	for uniprot_code in path_by_uniprot_dict:
		path_by_uniprot_dict[uniprot_code].sort(key=natural_keys)
	sorted_exp_files = [] 
	for ucode in UNIPROT_ORDER:
		uniprot_chunk_paths = path_by_uniprot_dict[ucode.upper()]
		sorted_exp_files += uniprot_chunk_paths
	return sorted_exp_files


# Input: Path to the single condition replicate frequency summary experiment folder 
# Function: Processes each of the single condition experiment replicate frequency summary 
# Output: List of experiment replicate identifiers, and frequency dictionaries 
def genAllFreqDict(FREQ_SUM_EXP_FOLDER_PATH):
	exp_rep_ids = []
	freq_dicts = []
	exp_files = genExperimentFiles(FREQ_SUM_EXP_FOLDER_PATH)
	for EXP_REP_FREQ_SUM_PATH in exp_files:
		exp_rep_identifier, freqDict = genSingleFreqDict(EXP_REP_FREQ_SUM_PATH)
		exp_rep_ids.append(exp_rep_identifier)
		freq_dicts.append(freqDict)
	return exp_rep_ids, freq_dicts

# Generate set of unionized keys 
def unionizeKeys(freq_dicts):
	keys = set()
	for freq_dict in freq_dicts:
		keys = keys | set(freq_dict.keys())
	return keys 


# If gpcrdb2 is actually numerically less than gpcrdb1 then swap 
def swap(GPCR_DB1, GPCR_DB2, atom1, atom2):
	def TMLocation(GPCRDB):
		tm, location = GPCRDB.strip().split("x")
		return int(tm), int(location)
	tm1, loc1 = TMLocation(GPCR_DB1)
	tm2, loc2 = TMLocation(GPCR_DB2)
	if(tm2 < tm1): return (GPCR_DB2, GPCR_DB1, atom2, atom1)
	elif(tm2 == tm1 and loc2 < loc1): return (GPCR_DB2, GPCR_DB1, atom2, atom1)
	return (GPCR_DB1, GPCR_DB2, atom1, atom2)

# Runs through every key of the unionized key list, and writes out the frequency values
# for each of the experiemnt replicate conditions to the output file 
def writeOutputFreqSumTable(OUTPUT_FILE_PATH, union_keys, exp_rep_ids, freq_dicts):
	f = genFileDescriptor(OUTPUT_FILE_PATH, 'w')
	f.write("\n")
	for key in union_keys:
		interaction_type, atom1, atom2, GPCR_DB1, GPCR_DB2 = key 
		GPCR_DB1, GPCR_DB2, atom1, atom2 = swap(GPCR_DB1, GPCR_DB2, atom1, atom2)
		row_info =  GPCR_DB1 + ":" + GPCR_DB2 + ":" + atom1 + ":" + atom2 + ":" +interaction_type 
		for freq_dict in freq_dicts:
			freq = 0 
			if(key in freq_dict):
				freq = freq_dict[key]
			row_info += "\t" + str(freq)
		row_info += "\n"
		f.write(row_info)


def compileFreqSumTableDriver(FREQ_SUM_EXP_FOLDER_PATH, OUTPUT_FILE_PATH):
	exp_rep_ids, freq_dicts = genAllFreqDict(FREQ_SUM_EXP_FOLDER_PATH)
	union_keys = unionizeKeys(freq_dicts)
	writeOutputFreqSumTable(OUTPUT_FILE_PATH, union_keys, exp_rep_ids, freq_dicts)
	tempFile = "/".join(OUTPUT_FILE_PATH.split("/")[:-1]) + "/temp.txt"
	os.system("sort " + OUTPUT_FILE_PATH + " > " + tempFile)
	os.system("mv " + tempFile + " " + OUTPUT_FILE_PATH)
	header = genHeader(exp_rep_ids)
	os.system("sed -i '1s/^/" + header.strip() + "/' " + OUTPUT_FILE_PATH)


if __name__ == "__main__":
	if(len(sys.argv) < K_MIN_ARG):
		print(USAGE_STR)
		exit(1)
	(FREQ_SUM_EXP_FOLDER_PATH, OUTPUT_FILE_PATH) = (sys.argv[1], sys.argv[2])
	compileFreqSumTableDriver(FREQ_SUM_EXP_FOLDER_PATH, OUTPUT_FILE_PATH)
	






