######################################################################
# Aim: to map the wetness of a residue by mapping how frequently it hydrogen bonds to a water
######################################################################

import sys
import pymol
from math import cos
from pymol import cmd, stored
import re

##### Map wetness to GPCRdb numbers
def Get_GPCRdb_wetness():
	gpcrdb_wetness_file = "/Users/akma327/Desktop/dror/local-dev/data/pymol-resid-wetness/resid-water-conservation-tables/inactive_receptors_water_conservation.txt"
	gpcrdb_wetness_dict = {}
	with open(gpcrdb_wetness_file) as WETNESS:
		for line in WETNESS:
			wetness_mapping_list = line.rstrip().split("\t")

			# testing for the example of MOR inactive state simulation
			(generic_num, wetness_score) = (wetness_mapping_list[0], wetness_mapping_list[9])
			gpcrdb_wetness_dict[generic_num] = wetness_score
	return gpcrdb_wetness_dict

""" function for mapping all GPCRdb numbers based on uniprot id """
def Get_GPCRdb_Numbers():
	generic_numbers_dict = {}
	gpcrdb_generic_numbers_file = "/Users/akma327/Desktop/dror/local-dev/data/pymol-resid-wetness/gpcrdb-freq-config/All_species_gpcrdb_numbers_revised_17May2016.txt"
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


generic_numbers_dict = Get_GPCRdb_Numbers()

gpcrdb_wetness_dict = Get_GPCRdb_wetness()

# testing for the example of MOR inactive state simulation
# pymol.finish_launching()

### Load protein
def prep_data():
	data = []
	data.append(("/Users/akma327/Desktop/dror/local-dev/data/pymol-resid-wetness/pdb-files/5C1M_edited_Hadded.pdb", "5C1M", "OPRM_MOUSE"))
	data.append(("/Users/akma327/Desktop/dror/local-dev/data/pymol-resid-wetness/pdb-files/4N6H_edited_Hadded.pdb", "4N6H", "OPRD_HUMAN"))
	return data 

data = prep_data()

# structure_file = "/Users/akma327/Desktop/dror/local-dev/data/pymol-resid-wetness/pdb-files/5C1M_edited_Hadded.pdb"
# print cmd.load(structure_file, "5C1M")
# uniprot = "OPRM_MOUSE"

for structure_file, pdb, uniprot in data: 
### For all places where you do selection, change to resi + aaNum + and pdb_id
	print cmd.load(structure_file, pdb)
	for generic_num in gpcrdb_wetness_dict.keys():
		if generic_num in generic_numbers_dict[uniprot].keys():
			aaNum = generic_numbers_dict[uniprot][generic_num]
			wetness_score = gpcrdb_wetness_dict[generic_num]

			cmd.alter("resi " + aaNum + " and " + pdb, "b=" + wetness_score)
			cmd.spectrum("b", "magenta_white_cyan", selection="resi " + aaNum + " and " + pdb, minimum=-1, maximum=1)
			cmd.show("cartoon", "resi " + aaNum + " and " + pdb)



