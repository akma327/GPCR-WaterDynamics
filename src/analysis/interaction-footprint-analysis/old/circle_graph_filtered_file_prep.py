# circle_graph_filtered_file_prep.py 

import os
import sys
from utils import * 

USAGE_STR = """
# Purpose
# Takes an dynamic interaction dictionary and converts to a comma delimited file format
# that can be read by the d3 circle graph animator. 

# Usage 
# python circle_graph_filtered_file_prep.py <INTERACTION_DICT_FOLDER> <PDB_CDOE> <OUTPUT_FILE> <FILTER_LIST>

# Arguments
# <INTERACTION_DICT> Absolute path to the dictionary containing key = interaction and
# value = time points that the interaction is present in trajectory 
# <PDB_CDOE> PDB of the receptor associated with this interaction dictionary 
# <FILTER_LIST> Absolute path to the file to filter the interactions 
# <OUTPUT_FILE> File of output path to store the newly formatted file 

# Example
# INTERACTION_DICT="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutputDictionary/DOR-inactive-naltrindole-unpublished/condition-naltrindole-bound/rep_1/050516_NONHB_DEFAULT_HB_3.5_70"
# PDB_CODE="4N6H"
# FILTER_LIST="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/interaction-footprint-analysis/polar-network-lists/inactive-dor-network.txt"
# OUTPUT_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/interaction-footprint-analysis/circle-graph-input/dor-inactive-filtered.txt"
# python circle_graph_filtered_file_prep.py $INTERACTION_DICT $PDB_CODE $FILTER_LIST $OUTPUT_FILE

"""

K_MIN_ARG = 5




def genTypeResiduePairDict(FILTER_LIST):
	type_residue_pair_dict = {} # Key = Interaction Type, value = List of residue pairs
	f = open(FILTER_LIST, 'r')
	for line in f:
		if(" -- " in line):
			linfo = line.split("@")
			respair, interaction_type = linfo[0].strip(), linfo[1].strip()
			aapair = respair.split(" -- ")
			short_aa1, short_aa2 = aapair[0].strip(), aapair[1].strip()
			aa1 = aa1to3_dict[short_aa1[0:1]].upper() + short_aa1[1:]
			aa2 = aa1to3_dict[short_aa2[0:1]].upper() + short_aa2[1:]
			key1, key2 = (aa1, aa2), (aa2, aa1)
			if(interaction_type not in type_residue_pair_dict):
				type_residue_pair_dict[interaction_type] = [key1]
			else:
				if(key1 not in type_residue_pair_dict[interaction_type] and key2 not in type_residue_pair_dict[interaction_type]):
					type_residue_pair_dict[interaction_type].append(key1)
	return type_residue_pair_dict


def reformatSingleFile(fw, interaction_dict_path, aa_filter_list):
	print(interaction_dict_path)
	f = open(interaction_dict_path, 'r')
	for line in f: 
		if(" -- " in line):
			l_info = line.split("~")
			atoms = l_info[0].strip().split(" -- ")
			resatom1 = atoms[0].split("-")
			res1, atom1 = resatom1[0].strip(), resatom1[1].strip()
			resatom2 = atoms[1].split("-")
			res2, atom2 = resatom2[0].strip(), resatom2[1].strip()
			if((res1,res2) not in aa_filter_list and (res2,res1) not in aa_filter_list): 
				# print(res1,res2, "not in filter list")
				continue
			print(res1, res2, "In filter list")
			gpcrdb1, gpcrdb2 = getGPCRDB(res1, GPCRDB_DICT), getGPCRDB(res2, GPCRDB_DICT)
			if(gpcrdb1 == "-" or gpcrdb2 == "-"): continue 
			prefix1 = gpcrdb1[0:1]
			prefix2 = gpcrdb2[0:1]
			key = prefix1 + "." + gpcrdb1 + ":" + atom1 + "-" + prefix2 + "." + gpcrdb2 + ":" + atom2
			timepoints = l_info[1].strip()
			timepoints = timepoints.strip("[,]")
			fw.write(key + "," + timepoints + "\n")


def reformatAggregateFile(INTERACTION_DICT_FOLDER, type_residue_pair_dict, OUTPUT_FILE, GPCRDB_DICT):
	fw = open(OUTPUT_FILE, 'w')
	for interaction_type in sorted(type_residue_pair_dict.keys()):
		interaction_dict_path = INTERACTION_DICT_FOLDER + "/" + flag_to_dict_file[interaction_type]
		aa_filter_list = type_residue_pair_dict[interaction_type]
		reformatSingleFile(fw, interaction_dict_path, aa_filter_list)


if __name__ == "__main__":
	if(len(sys.argv) < K_MIN_ARG):
		print(USAGE_STR)
		exit(1)
	INTERACTION_DICT_FOLDER = sys.argv[1]
	PDB_CODE = sys.argv[2]
	FILTER_LIST = sys.argv[3]
	OUTPUT_FILE = sys.argv[4]
	GPCRDB_DICT = genResidueToGpcrdbTable(PDB_CODE) #res to gpcrdb
	type_residue_pair_dict = genTypeResiduePairDict(FILTER_LIST)
	reformatAggregateFile(INTERACTION_DICT_FOLDER, type_residue_pair_dict, OUTPUT_FILE, GPCRDB_DICT)
	print(type_residue_pair_dict)



