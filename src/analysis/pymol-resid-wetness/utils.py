# utils.py
# For mapping gpcr to wetness representation
import csv
import numpy as np 
import glob
import re

gpcrdb_generic_numbers_file = "/Users/akma327/Desktop/dror/local-dev/data/pymol-resid-wetness/gpcrdb-freq-config/All_species_gpcrdb_numbers_revised_17May2016.txt"
master_experiment_table = "/Users/akma327/Desktop/dror/local-dev/data/pymol-resid-wetness/gpcrdb-freq-config/master-experiment-condition-table.csv"
wetness_pdb_files = "/Users/akma327/Desktop/dror/local-dev/data/pymol-resid-wetness/wetness-pdb/"


def get_pdb_file(long_exp_cond_description):
	"""
		Given long_exp_cond_description determine the path to pdb file  
	"""
	polar_networks_pdb = glob.glob(wetness_pdb_files + "/*")
	for pdb_file in polar_networks_pdb:
		identifier = pdb_file.split("/")[-1].strip(".pdb")
		if(identifier in long_exp_cond_description):
			return pdb_file
	return None


# Find column index for EXP_REP_COLUMN_ID
def findColumnIndex(column_labels, EXP_REP_COLUMN_ID):
	for index, v in enumerate(column_labels):
		if (EXP_REP_COLUMN_ID in v):
			return index 
	print("EXP_REP_COLUMN_ID: " + EXP_REP_COLUMN_ID + " not found in INTERACTION_FOOTPRINT_TABLE.")
	exit(1)	

def get_pdb_uniprot():
	with open(master_experiment_table, 'rU') as f:
		reader = csv.reader(f, delimiter=",")
		d = list(reader)
	darr = np.array(d)
	column_labels = list(darr[0,:])

	long_exp_cond_description = darr[:, findColumnIndex(column_labels, "long_exp_cond_description")]
	pdb = darr[:, findColumnIndex(column_labels, "pdb")]
	uniprot = darr[:, findColumnIndex(column_labels, "uniprot")]
	vmd_chain_id = darr[:, findColumnIndex(column_labels, "vmd_chain_id")]


	exp_to_pdb_uniprot = {long_exp_cond_description[i] : (pdb[i], uniprot[i], vmd_chain_id[i]) for i in range(len(long_exp_cond_description))}
	return exp_to_pdb_uniprot



def Get_GPCRdb_Numbers():
	""" 
		Function for mapping all GPCRdb numbers based on uniprot id 
	"""

	generic_numbers_dict = {}
	with open(gpcrdb_generic_numbers_file) as GENERIC:
		for line in GENERIC:
			(uniprot, aaNum, aaName, TM, generic_num) = line.rstrip().split("\t")
			generic_num = re.sub("\.\d+", "", generic_num)
			if uniprot in generic_numbers_dict.keys():
				generic_numbers_dict[uniprot][generic_num] = aaNum
			else:
				generic_numbers_dict[uniprot] = {}
				generic_numbers_dict[uniprot][generic_num] = aaNum
	return generic_numbers_dict
