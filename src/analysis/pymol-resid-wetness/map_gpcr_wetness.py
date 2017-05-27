# map_gpcr_wetness.py

import sys
import pymol
from math import cos
import csv
import numpy as np 
from pymol import cmd, stored
import re
import glob

### Utils ###

gpcrdb_generic_numbers_file = "/Users/anthony/Desktop/dror/local-dev/pymol-resid-wetness/data/gpcrdb-freq-config/All_species_gpcrdb_numbers_strOnly.txt"
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

	exp_to_pdb_uniprot = {long_exp_cond_description[i] : (pdb[i], uniprot[i].upper()) for i in range(len(long_exp_cond_description))}
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

### End Utils ###
def get_color_spectrum(uniprot):
	uniprot_to_spectrum = {}
	uniprot_to_spectrum["OPRM_MOUSE"] = "magenta_white_cyan"
	uniprot_to_spectrum["DRD4_HUMAN"] = "magenta_white_yellow"
	uniprot_to_spectrum["ACM2_HUMAN"] = "magenta_white_magenta"
	uniprot_to_spectrum["ADRB2_HUMAN"] = "magenta_white_orange"
	uniprot_to_spectrum["OPRD_HUMAN"] = "magenta_white_green"
	uniprot_to_spectrum["OPSD_HUMAN"] = "magenta_white_chocolate"
	uniprot_to_spectrum["US28_HCMVA"] = "magenta_white_red"
	return uniprot_to_spectrum[uniprot]


def not_bulk_water_region(gpcrdb):
	"""
		Determine if given position is near bulk water. 
	"""
	tm, num = map(int, gpcrdb.strip().split("x"))
	if(tm == 1 and (num >= 33 and num <= 57)): return True
	elif(tm == 2 and (num >= 40 and num <= 63)): return True
	elif(tm == 3 and (num >= 25 and num <= 54)): return True
	elif(tm == 4 and (num >= 41 and num <= 62)): return True 
	elif(tm == 5 and (num >= 39 and num <= 63)): return True
	elif(tm == 6 and (num >= 35 and num <= 58)): return True 
	elif(tm == 7 and (num >= 34 and num <= 55)): return True
	else: return False



def pymol_visualize_wetness(pdb, uniprot, structure_file, generic_numbers_dict, gpcrdb_wetness_dict):

	non_bulk_resi = set()


	print cmd.load(structure_file, pdb)
	cmd.hide("all")
	cmd.remove("resname POP*")
	cmd.remove("solvent beyond 3.5 of polymer")
	cmd.set("cartoon_transparency", 0.75, pdb)
	for generic_num in gpcrdb_wetness_dict.keys():
		if generic_num in generic_numbers_dict[uniprot].keys():
			aaNum = generic_numbers_dict[uniprot][generic_num]
			wetness_score = gpcrdb_wetness_dict[generic_num]

			if(not_bulk_water_region(generic_num)):
				non_bulk_resi.add(aaNum)
			cmd.alter("resi " + aaNum + " and " + pdb, "b=" + wetness_score)
			cmd.spectrum("b", get_color_spectrum(uniprot), selection="resi " + aaNum + " and " + pdb, minimum=-1, maximum=1)
			cmd.show("cartoon", "resi " + aaNum + " and " + pdb)

	print("try", non_bulk_resi)
	### Make opaque only the residues that are not part of bulk water
	non_bulk_id = pdb + "_nb"
	non_bulk_resi = list(non_bulk_resi)
	wet_selection = "resi " + str(non_bulk_resi[0])
	for i, resi in enumerate(non_bulk_resi):
		if(i>0): 
			wet_selection += "+" + str(resi)
	
	wet_selection += " and " + pdb
	print(non_bulk_id)
	print(wet_selection)
	cmd.create(non_bulk_id, wet_selection)
	cmd.set("cartoon_transparency", 0.01, non_bulk_id)



def map_wetness(WETNESS_TABLE):
	"""
		Parses a wetness table, retrieves pdb, uniprot, and pdb_file, and makes call to pymol visualizer
	"""

	### Uniprot to GPCRDB
	generic_numbers_dict = Get_GPCRdb_Numbers()

	### Maps experiment condition name to pdb_code and uniprot 
	exp_to_pdb_uniprot = get_pdb_uniprot()

	### Process the wetness table 
	with open(WETNESS_TABLE, 'rU') as f:
		reader = csv.reader(f, delimiter="\t")
		d = list(reader)
	darr = np.array(d)
	column_labels = list(darr[0,:])

	### GPCRDB keys
	gpcrdb = list(darr[:, 0])[1:]


	pdb_occurence = {} # keep track how many times a particular pdb was loaded
	### Loop through every column's experiment condition residue-water frequency 
	for column_index, exp_cond in enumerate(column_labels):
		if(column_index == 0): continue
		# if(column_index > 4): break
		if(column_index >=21 and column_index <28):
			wetness_score = list(darr[:, column_index])[1:]

			### Extract gpcrdb to wetness scores dictionary
			gpcrdb_wetness_dict = {gpcrdb[i] : wetness_score[i] for i in range(len(gpcrdb))}
			pdb, uniprot = exp_to_pdb_uniprot[exp_cond]

			if(pdb not in pdb_occurence):
				pdb_occurence[pdb] = 0
				pdb = pdb + "_" + str(0)
			else:
				pdb_occurence[pdb] += 1
				pdb = pdb + "_" + str(pdb_occurence[pdb])

			pdb_file = get_pdb_file(exp_cond)
			pymol_visualize_wetness(pdb, uniprot, pdb_file, generic_numbers_dict, gpcrdb_wetness_dict)


# INACTIVE_WETNESS="/Users/akma327/Desktop/dror/local-dev/data/pymol-resid-wetness/resid-water-conservation-tables/inactive_receptors_water_conservation.txt"
# map_wetness(INACTIVE_WETNESS)


# ACTIVE_WETNESS="/Users/akma327/Desktop/dror/local-dev/data/pymol-resid-wetness/resid-water-conservation-tables/active_receptors_water_conservation.txt"
# map_wetness(ACTIVE_WETNESS)

### Align all structures

all_structures = cmd.get_object_list("all")
ref = all_structures[0]
for i, st in enumerate(all_structures):
	if(i == 0): continue
	cmd.align(st, ref)




