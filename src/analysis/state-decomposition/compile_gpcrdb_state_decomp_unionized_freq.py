# Author: Anthony Kai Kwang Ma
# Email: akma327@stanford.edu
# compile_gpcrdb_state_decomp_unionized_freq.py

import sys
import os 
import glob 
import re 
import csv 
import numpy as np
import time


USAGE_STR = """
# Purpose:
# This script takes as input the path to a folder containing state decomposed frequency 
# summary files for multiple replicates of several experimental conditions. Keys will 
# be defined as unique combinations of interaction type and gpcr-db number pairs. After 
# unionizing across all the unique keys in the folder, generate an output file where 
# decomposed frequency values for each of the experiment/condition files are written in tab 
# delimited columns. Rows are the interaction keys, columns are the experiment/replicate.
# Each cell is filled with a float reperesenting frequency value 


# Output Format:
# <GPCR-DB1:GPCR-DB2:interaction_type> <Exp/Rep1/State1> ... <Exp/Rep2> ...
# 			sb:1x58:3x50				0.00330			     0.24099
# 			vdw:6x40:7x52				4.16e-05		     0.991
#				... 			 		   ... 		 	      ... 

# Usage: 
# python compile_gpcrdb_state_decomp_unionized_freq.py <DECOMP_DECOMP_FREQ_SUM_EXP_FOLDER_PATH> <STATE> <OUTPUT_FILE_PATH> <Optional NA Flag>

# Arguments: 
# <DECOMP_DECOMP_FREQ_SUM_EXP_FOLDER_PATH> Absolute path to the folder containing all the experiment
# replicate combination of frequency summaries. 
# <STATE> Conformation state choices from ["Inactive", "Intermediate1", "Intermediate2", "Intermediate3", "Active"]
# <OUTPUT_FILE_PATH> Absolute path to the output file containing the table of frequency
# summaries across experiment/replicate conditions and unionized interaction keys 
# <Optional NA Flag> To denote print out NA rather than 0 for interactions that don't exist in a certain simulation. 


# Example:

DECOMP_FREQ_SUM_EXP_FOLDER_PATH="/scratch/PI/rondror/akma327/DynamicNetworks/results/state-decomposition/single-cond-rep-decomp-freqsum/091516_state_decomp_union_wb_freq"
STATE="Inactive"
OUTPUT_FILE_PATH="/scratch/PI/rondror/akma327/DynamicNetworks/results/state-decomposition/aggregate-decomp-freqsum/091516_state_decomp_union_wb_freq/inactive.txt"
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/analysis/state-decomposition
python compile_gpcrdb_state_decomp_unionized_freq.py $DECOMP_FREQ_SUM_EXP_FOLDER_PATH $STATE $OUTPUT_FILE_PATH

"""

K_MIN_ARG = 4
UNIPROT_ORDER = ["aa2ar_human", "adrb2_human", "drd4_human", "acm2_human", "acm3_fix", "oprm_mouse", "oprd_human", "par1_human", "opsd_human", "us28_hcmva"]
# UNIPROT_ORDER = ["adrb2_human", "drd4_human", "acm2_human", "acm3_fix", "oprm_mouse", "oprd_human", "par1_human"]
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


def genHeader(STATE, exp_rep_ids):

	"""
		Generate header for the compiled gpcrdb state decomposition frequency file
	"""
	header = "GPCR-DB1:GPCR-DB2:Interaction Type:Atom-1:Atom-2"
	for rep_id in exp_rep_ids:
		header += "\t" + rep_id + "," + STATE
	header += "\n"
 	return header 


def unionizeKeys(freq_dicts):

	"""
		Generate set of unionized keys 
	"""

	keys = set()
	for freq_dict in freq_dicts:
		keys = keys | set(freq_dict.keys())
	return keys 


def genSingleFreqDict(EXP_REP_FREQ_SUM_PATH, STATE):

	"""
		Input: Path to the specific experiment/replciate's frequency summary file
		Function: Parses through the file and generates a dictionary associating 
		key = (<Interaction type> <GPCR-DB1> <GPCR-DB2>) with value = frequency 
	"""


	exp_rep_identifier = EXP_REP_FREQ_SUM_PATH.split("/")[-1].strip(".txt")
	freqDict = {}
	f = open(EXP_REP_FREQ_SUM_PATH, 'r')
	for line in f:
		if("#" not in line and line != "\n"):
			line_info = line.split("\t")
			GPCR_DB1, GPCR_DB2, inactive_freq, i1_freq, i2_freq, i3_freq, active_freq = line_info
			key = (GPCR_DB1, GPCR_DB2)
			if(STATE == "Inactive"): output_freq = inactive_freq
			elif(STATE == "Intermediate1"): output_freq = i1_freq
			elif(STATE == "Intermediate2"): output_freq = i2_freq
			elif(STATE == "Intermediate3"): output_freq = i3_freq
			elif(STATE == "Active"): output_freq = active_freq
			freqDict[key] = (output_freq.strip())
	return exp_rep_identifier, freqDict



def genReceptorToUniprotTable():

	"""
		Takes path to the lookup table between uniprot, receptor, and pdb 
		and generates lookup table between receptor and uniprot 
	"""


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


def genExperimentFiles(DECOMP_FREQ_SUM_EXP_FOLDER_PATH):

	"""
		Takes the path to the folder containing individual frequency summaries 
		returns the list of all the absolute paths of the individual files
		sorted first based on uniprot, then alphabetical, and replicate 
	"""

	longToShortDescriptionDict = genLongToShortDescriptionDict()
	receptorToUniprotDict = genReceptorToUniprotTable()
	exp_files = glob.glob(DECOMP_FREQ_SUM_EXP_FOLDER_PATH + "/*")
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



def genAllFreqDict(DECOMP_FREQ_SUM_EXP_FOLDER_PATH, STATE):

	"""
		Input: Path to the single condition replicate frequency summary experiment folder 
		Function: Processes each of the single condition experiment replicate frequency summary 
		Output: List of experiment replicate identifiers, and frequency dictionaries 
	"""

	exp_rep_ids = []
	freq_dicts = []
	exp_files = genExperimentFiles(DECOMP_FREQ_SUM_EXP_FOLDER_PATH)
	for EXP_REP_FREQ_SUM_PATH in exp_files:
		exp_rep_identifier, freqDict = genSingleFreqDict(EXP_REP_FREQ_SUM_PATH, STATE)
		exp_rep_ids.append(exp_rep_identifier)
		freq_dicts.append(freqDict)
	return exp_rep_ids, freq_dicts


def orderGpcrdb(gpcrdb1, gpcrdb2):
	"""
		If gpcrdb2 is actually numerically less than gpcrdb1 then swap 
	"""
	# Handle Ligand Cases
	if("LIG" in gpcrdb1 and "LIG" not in gpcrdb2): return (gpcrdb1, gpcrdb2)
	elif("LIG" not in gpcrdb1 and "LIG" in gpcrdb2): return (gpcrdb2, gpcrdb1)
	elif("LIG" in gpcrdb1 and "LIG" in gpcrdb2): return (gpcrdb1, gpcrdb2)

	# Normal cases
	p1 = map(int, gpcrdb1.split("x"))
	p2 = map(int, gpcrdb2.split("x"))
	if(len(p1) != 2 or len(p2) != 2): return (gpcrdb1, gpcrdb2)
	tm1, resid1 = p1
	tm2, resid2 = p2
	if(tm1 < tm2): return (gpcrdb1, gpcrdb2)
	elif(tm2 < tm1): return (gpcrdb2, gpcrdb1)
	else:
		if(resid1 < resid2): return (gpcrdb1, gpcrdb2)
		else: return (gpcrdb2, gpcrdb1)
	return (gpcrdb1, gpcrdb2)


# def genFreqSumTableRows(union_keys, exp_rep_ids, freq_dicts):

# 	"""	
# 		Runs through every key of the unionized key list, and writes out the frequency 
# 		values for each of the experiemnt replicate conditions to the output file 
# 	"""

# 	row_strings = []
# 	for key in union_keys:
# 		GPCR_DB1, GPCR_DB2 = key 
# 		GPCR_DB1, GPCR_DB2 = orderGpcrdb(GPCR_DB1, GPCR_DB2)
# 		row_info =  GPCR_DB1 + ":" + GPCR_DB2
# 		for freq_dict in freq_dicts:
# 			# inactive_freq, i1_freq, i2_freq, i3_freq, active_freq = [0]*5
# 			output_freq = 0
# 			if(key in freq_dict):
# 				output_freq = freq_dict[key]
# 				# inactive_freq, i1_freq, i2_freq, i3_freq, active_freq = freq_dict[key]
# 			row_info += "\t" + str(output_freq)
# 			# row_info += "\t" + str(inactive_freq) + "\t" + str(i1_freq) + "\t" + str(i2_freq) + "\t" + str(i3_freq) + "\t" + str(active_freq)
# 		row_info += "\n"
# 		row_strings.append(row_info)
# 	return row_strings

def genFreqSumTableRows(union_keys, exp_rep_ids, freq_dicts, NA_FLAG=False):

	"""	
		Runs through every key of the unionized key list, and writes out the frequency 
		values for each of the experiemnt replicate conditions to the output file 
	"""

	row_string_tup = []
	for key in union_keys:
		GPCR_DB1, GPCR_DB2 = key 
		GPCR_DB1, GPCR_DB2 = orderGpcrdb(GPCR_DB1, GPCR_DB2)
		row_info = [GPCR_DB1 + ":" + GPCR_DB2]
		for freq_dict in freq_dicts:
			if(NA_FLAG == False):
				output_freq = 0
			else:
				output_freq = "NA"
			if(key in freq_dict):
				output_freq = freq_dict[key]
			row_info.append(output_freq)
		row_string_tup.append(tuple(row_info))
	row_string_tup = sorted(row_string_tup, key= lambda x: x[0])

	row_strings = []
	for r in row_string_tup:
		r_str = map(str, list(r))
		row_strings.append("\t".join(r_str) + "\n")

	return row_strings


def writeOutput(row_strings, exp_rep_ids, STATE, OUTPUT_FILE_PATH):

	"""
		Writes the header. For every row, write out state 
		frequency for an interaction key. 
	"""
	header = genHeader(STATE, exp_rep_ids)
	f = genFileDescriptor(OUTPUT_FILE_PATH, 'w')
	f.write(header)
	for row in row_strings:
		f.write(row)

def compileFreqSumTableDriver(DECOMP_FREQ_SUM_EXP_FOLDER_PATH, STATE, OUTPUT_FILE_PATH, NA_FLAG=False):

	"""
		Driver method for compiling state decomposed frequencies for every
		experiment replicate condition into one master table.
	"""

	print("compileFreqSumTableDriver()")
	tic = time.clock()
	exp_rep_ids, freq_dicts = genAllFreqDict(DECOMP_FREQ_SUM_EXP_FOLDER_PATH, STATE)
	union_keys = unionizeKeys(freq_dicts)
	row_strings = genFreqSumTableRows(union_keys, exp_rep_ids, freq_dicts, NA_FLAG)
	writeOutput(row_strings, exp_rep_ids, STATE, OUTPUT_FILE_PATH)
	toc = time.clock()
	print("Done : Run Time : " + str(toc - tic))

if __name__ == "__main__":
	if(len(sys.argv) < K_MIN_ARG):
		print(USAGE_STR)
		exit(1)
	(DECOMP_FREQ_SUM_EXP_FOLDER_PATH, STATE, OUTPUT_FILE_PATH) = (sys.argv[1], sys.argv[2], sys.argv[3])
	NA_FLAG = False
	if("NA" in sys.argv):
		NA_FLAG = True
	compileFreqSumTableDriver(DECOMP_FREQ_SUM_EXP_FOLDER_PATH, STATE, OUTPUT_FILE_PATH, NA_FLAG)
	






