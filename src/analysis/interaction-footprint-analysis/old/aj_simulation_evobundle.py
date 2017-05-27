# simulation_evobundle.py 

import os
import sys
import json 
import ast 
from utils import * 

USAGE_STR = """
# Purpose
# Takes an dynamic interaction dictionary and converts to a comma delimited file format
# that can be read by the d3 circle graph animator. 

# Usage 
# python simulation_evobundle.py <INTERACTION_DICT> <PDB_CDOE> <OUTPUT_FILE> <NODE_FLAG>

# Arguments
# <INTERACTION_DICT> Absolute path to the dictionary containing key = interaction and value = time points that the interaction is present in trajectory 
# <PDB_CDOE> PDB of the receptor associated with this interaction dictionary 
# <OUTPUT_FILE> File of output path to store the newly formatted file 
# <NODE_FLAG> 
# gpcrdb - Loads gpcrdb information for nodes 
# residue - Loads residue information for nodes 

# Example
INTERACTION_DICT="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutputDictionary/MOR-active-noNb-BU72-nature2015/condition-nb-interface-restrained-BU72/rep_1/050516_NONHB_DEFAULT_HB_3.5_70/water_bond_result_dict.txt"
PDB_CODE="5C1M"
OUTPUT_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/interaction-footprint-analysis/circle-graph-input/mor-active-rep1-wb.txt"
python simulation_evobundle.py $INTERACTION_DICT $PDB_CODE $OUTPUT_FILE

"""

K_MIN_ARG = 5

def getGPCRDB(res, GPCRDB_DICT):
	res = fixAminoAcidNames(res)
	if(res not in GPCRDB_DICT):
		print(res + " not found.")
		return "None"
	return GPCRDB_DICT[res]


def simulationJsonDict(INTERACTION_DICT, GPCRDB_DICT, NODE_FLAG):
	f = open(INTERACTION_DICT, 'r')
	simulation_evobundle_json = {"interactions": []}
	for line in f: 
		if(" -- " in line):
			l_info = line.split("~")
			atoms = l_info[0].strip().split(" -- ")
			resatom1 = atoms[0].split("-")
			res1, atom1 = resatom1[0].strip(), resatom1[1].strip()
			resatom2 = atoms[1].split("-")
			res2, atom2 = resatom2[0].strip(), resatom2[1].strip()
			gpcrdb1, gpcrdb2 = getGPCRDB(res1, GPCRDB_DICT), getGPCRDB(res2, GPCRDB_DICT)
			if(gpcrdb1 == "None" or gpcrdb2 == "None"): continue 
			prefix1 = gpcrdb1[0:1]
			prefix2 = gpcrdb2[0:1]

			### Node Flag 
			if(NODE_FLAG == "gpcrdb"):
				name1 = prefix1 + "." + gpcrdb1
				name2 = prefix2 + "." + gpcrdb2
			elif(NODE_FLAG == "residue"):
				res1, res2 = fixAminoAcidNames(res1), fixAminoAcidNames(res2)
				name1 = prefix1 + "." + aa3to1_dict[res1[0:3]] + res1[3:]
				name2 = prefix2 + "." + aa3to1_dict[res2[0:3]] + res2[3:]
			timepoints = l_info[1].strip()
			simulation_evobundle_json["interactions"].append({"name1": name1, "name2": name2, "frames": ast.literal_eval(timepoints)})

	return simulation_evobundle_json


def simulationEvobundleDriver(INTERACTION_DICT, PDB_CODE, OUTPUT_FILE, NODE_FLAG):
	GPCRDB_DICT = genResidueToGpcrdbTable(PDB_CODE) #res to gpcrdb
	simulation_evobundle_json = simulationJsonDict(INTERACTION_DICT, GPCRDB_DICT, NODE_FLAG)
	with open(OUTPUT_FILE, 'w') as f:
		json.dump(simulation_evobundle_json, f)

if __name__ == "__main__":
	if(len(sys.argv) < K_MIN_ARG):
		print(USAGE_STR)
		exit(1)
	(INTERACTION_DICT, PDB_CODE, OUTPUT_FILE, NODE_FLAG) = (sys.argv[1], sys.argv[2], sys.argv[3], sys.argv[4])
	simulationEvobundleDriver(INTERACTION_DICT, PDB_CODE, OUTPUT_FILE, NODE_FLAG)

