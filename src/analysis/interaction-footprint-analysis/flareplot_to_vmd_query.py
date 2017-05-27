# Author: Anthony Kai Kwang Ma
# Date: 02/21/17
# flareplot_to_vmd_query.py

import sys
import json
from utils import *

USAGE_STR = """

# Purpose
# Given a flareplot json file, want to extract the gpcrdb numbers that are making polar 
# contacts with each other, convert to resid and return a query in VMD to allow for 
# 3D visualiation. 

# USAGE_STR
# python flareplot_to_vmd_query.py <FLAREPLOT_JSON> <PDB>

# Arguments
# <FLAREPLOT_JSON> Absolute path to the flareplot json 
# <PDB> Accession code for receptor of interest 

# Example
FLAREPLOT_JSON="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/interaction-footprint-analysis/residue-resolution-evobundle-input/022017/receptor_specific/b2ar-active-not-mor-active.json"
PDB="3SN6"
python flareplot_to_vmd_query.py $FLAREPLOT_JSON $PDB

"""

K_MIN_ARG = 3

def generate_vmd_query(FLAREPLOT_JSON, PDB):
	"""
		Parse JSON file to get the gpcrdb nodes that form polar contacts. Returns a string
		of resid. 
	"""
	GPCRDB_TO_RESID = genGPCRDBToResidueTable(PDB)

	f = open(FLAREPLOT_JSON, 'r')
	json_str = ""
	for line in f:
		json_str += line 
	flareplot_json = json.loads(json_str)

	### Generate set of gpcrdb
	gpcrdb_nodes = set()
	for edge in flareplot_json["edges"]:
		gpcrdb_nodes.add(str(edge["name1"].split(".")[1]))
		gpcrdb_nodes.add(str(edge["name2"].split(".")[1]))

	### Convert gpcrdb to resid
	resid_nodes = []
	for gpcrdb in gpcrdb_nodes:
		if(gpcrdb in GPCRDB_TO_RESID):
			resid_nodes.append(GPCRDB_TO_RESID[gpcrdb])

	return resid_nodes


def gen_vmd_query(resid_nodes):
	"""
		Generate vmd query from list of amino acids
	"""
	query = "protein and resid"
	for resid in resid_nodes:
		query += " " + resid[3:] 
	print(query)


def driver(FLAREPLOT_JSON, PDB):
	resid_nodes =  generate_vmd_query(FLAREPLOT_JSON, PDB)
	gen_vmd_query(resid_nodes)
	

if __name__ == "__main__":
	if(len(sys.argv) < K_MIN_ARG):
		print(USAGE_STR)
		exit(0)
	(FLAREPLOT_JSON, PDB) = (sys.argv[1], sys.argv[2])
	driver(FLAREPLOT_JSON, PDB)


