# Author: Anthony Kai Kwang Ma
# Email: akma327@stanford.edu
# calc_gpcrdb_residue_conservation.py

import os
import sys 
import csv 
import numpy as np 
from utils import *

USAGE_STR = """

# *** THIS SCRIPT ONLY NEEDS TO BE RUN ONE TIME ***

# Purpose 
# The gpcrdb number is a way of mapping amino acid to a topological region of a gpcr. 
# Each gpcrdb number can correspond to a different amino acid depending on
# the receptor. For example 1x50 might be ASP in GPCR A or ARG in GPCR B. 
# This script outputs a table for each gpcrdb number with frequency values for each 
# amino acid type in the following output. 

# GPCRDB	ALA	ARG	ASN	ASP	CYS	GLN		None
# 1x50		0.1	0.2	0.35	0.25	0	0		0.1
# 2x50		0.05	0.05	0.4	0.4	0.04	0.06		0

# Usage 
# python calc_gpcrdb_residue_conservation.py <OUTPUT_FILE>

# Argument 
# <OUTPUT_FILE> Absolute path to the output table with gpcrdb associated with amino acid frequencies 

# Example 
# OUTPUT_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/simulation-analysis/gpcrdb-freq-config/gpcrdb_residue_conservation.txt"
# python calc_gpcrdb_residue_conservation.py $OUTPUT_FILE

"""

K_MIN_ARG = 2

ALL_HUMAN_GPCR_TABLE="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/simulation-analysis/gpcrdb-freq-config/Master_table_human_GPCRs_seq_class_tabSep.txt"


# Go through each of the human gpcr and return list of uniprots 
# for class A non olfactory receptors
def getRelevantUniprotCodes():
	classA_nonolfactory_uniprot = []
	with open(ALL_HUMAN_GPCR_TABLE, 'rU') as f: 
		reader = csv.reader(f, delimiter="\t")
		d = list(reader)
	darr = np.array(d)
	column_labels = list(darr[0,:])
	uniprot_index = column_labels.index("uniprot_id")
	iuphar_class_index = column_labels.index("iuphar_class")
	class_leaf1_index = column_labels.index("class-leaf1")
	for row in darr:
		if(row[iuphar_class_index] == "class-A" and "Olfactory" not in row[class_leaf1_index]):
			classA_nonolfactory_uniprot.append(row[uniprot_index])
	return classA_nonolfactory_uniprot


# For each uniprot code iterate through every gpcrdb and residue pair 
# update the gpcrdb_to_aa_dict to include the amino acid as part of the 
# occurence list 
def updateGpcrdbResidueFrequencyDict(uniprot, gpcrdb_to_aa_dict):
	res_to_gpcrdb_dict = genGpcrdbDict(uniprot)
	for residue in res_to_gpcrdb_dict:
		gpcrdb = res_to_gpcrdb_dict[residue]
		resname = residue[0:3]
		if gpcrdb not in gpcrdb_to_aa_dict:
			gpcrdb_to_aa_dict[gpcrdb] = [resname]
		else:
			gpcrdb_to_aa_dict[gpcrdb].append(resname)


# Process each of the class A non olfactory uniprot
def processUniprotCodes(classA_nonolfactory_uniprot):
	gpcrdb_to_aa_dict = {} # {1x50: [ASP, ASP, LEU, ARG, ...]}
	num_uniprots = len(classA_nonolfactory_uniprot)
	for index, uniprot in enumerate(classA_nonolfactory_uniprot):
		print("Processing Uniprot " + str(index) + " out of " + str(uniprot))
		updateGpcrdbResidueFrequencyDict(uniprot, gpcrdb_to_aa_dict)
	return gpcrdb_to_aa_dict


# Convert dictionary from gprdb to occurence list of amino acid
# to list with format [("1x50", [0.1, 0.25, 0.35, 0.3, 0,0 ...]), ("2x50", [0.25, 0.2, 0.25, 0.1, 0.1, 0.1, 0,...])]
def gpcrdbToAAFrequencyList(gpcrdb_to_aa_dict):
	temp_gpcrdb_to_aa_freq_list = []
	for key in gpcrdb_to_aa_dict: 
		if(key == "None"): 
			tm = "None"
			tm_index = ""
		else:
			tm, tm_index = key.split("x")
		aa_occurence_list = gpcrdb_to_aa_dict[key]
		num_occurence = len(aa_occurence_list)
		freq_list = [round(float(aa_occurence_list.count(aa))/num_occurence,5) for aa in ALPHABETICAL_AA_LIST]
		freq_list = map(str, freq_list)
		temp_gpcrdb_to_aa_freq_list.append((tm, tm_index, freq_list))
	temp_gpcrdb_to_aa_freq_list = sorted(temp_gpcrdb_to_aa_freq_list, key=lambda x:(x[0], x[1], x[2]))
	gpcrdb_to_aa_freq_list = []
	for tm, tm_index, freq_list in temp_gpcrdb_to_aa_freq_list:
		if(tm != "None"): gpcrdb_to_aa_freq_list.append((tm + "x"+tm_index, freq_list))
		else: gpcrdb_to_aa_freq_list.append((tm, freq_list))
	return gpcrdb_to_aa_freq_list


# Write the gpcrdb to amino acid frequency table 
def writeGpcrdbResidueFrequencyTable(OUTPUT_FILE, gpcrdb_to_aa_freq_list):
	fw = genWriteDescriptor(OUTPUT_FILE)
	header = "GPCRDB\t" + "\t".join(ALPHABETICAL_AA_LIST) + "\n"
	fw.write(header)
	for gpcrdb, residue_freqs in gpcrdb_to_aa_freq_list:
		linfo = gpcrdb + "\t" + "\t".join(residue_freqs) + "\n"
		fw.write(linfo) 




# Driver method for computing gpcrdb residue frequency table 
def residueConservationDriver(OUTPUT_FILE):
	classA_nonolfactory_uniprot = getRelevantUniprotCodes()
	gpcrdb_to_aa_dict = processUniprotCodes(classA_nonolfactory_uniprot)
	gpcrdb_to_aa_freq_list = gpcrdbToAAFrequencyList(gpcrdb_to_aa_dict)
	writeGpcrdbResidueFrequencyTable(OUTPUT_FILE, gpcrdb_to_aa_freq_list)

if __name__ == "__main__":
	if(len(sys.argv) < K_MIN_ARG):
		print(USAGE_STR)
		exit(1)
	OUTPUT_FILE = sys.argv[1]
	residueConservationDriver(OUTPUT_FILE)







