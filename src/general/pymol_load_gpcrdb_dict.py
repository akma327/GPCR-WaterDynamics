# Author: Anthony Kai Kwang Ma
# Date: 03/09/17
# pymol_load_gpcrdb_dict.py


USAGE_STR = """

# Purpose
# Loads command that allows you to retrieve a mapping between gpcrdb number to resid 
# for any PDB into pymol.

# Example
python pymol_load_gpcrdb_dict.py 

"""

import pymol
from pymol import cmd, stored


PDB_TO_UNIPROT_TABLE_PATH = "/Users/anthony/Desktop/dror/temp3/DynamicNetworks/data/crystal-analysis/simulation-analysis/gpcrdb-freq-config/GPCR_PDB_List.txt"
GPCRDB_TABLE_PATH="/Users/anthony/Desktop/dror/temp3/DynamicNetworks/data/crystal-analysis/simulation-analysis/gpcrdb-freq-config/All_species_gpcrdb_numbers_strOnly.txt"
CLASS_A_GPCR_TABLE="/Users/anthony/Desktop/dror/temp3/DynamicNetworks/data/crystal-analysis/ligand-wetness/watermarks/tables/classA_GPCRs_known_ligands.tsv"



# Retrieve Uniprot Code for the PDB_CODE from pdb_to_uniprot_table_path
def getUniprotCode(PDB_CODE):
	f = open(PDB_TO_UNIPROT_TABLE_PATH, 'r')
	for line in f:
		if(line == "\n"): continue 
		l_info = line.split("\t")
		uniprot_code, pdb = l_info[0].strip(), l_info[2].strip()
		if(PDB_CODE.upper() == pdb.upper()): return uniprot_code.upper()
	print("PDB_CODE Not Found in PDB To Uniprot Table")
	exit(1)


# Given uniprot code reads through GPCRDB_TABLE_PATH to generate the amino acid
# to gpcrdb number table. 
# Output {"ASP112": "1x50", "ARG116":"2x45"}
def genGpcrdbDict(UNIPROT_CODE):
	GPCRDB_DICT = {}
	f = open(GPCRDB_TABLE_PATH, 'r')
	for line in f: 
		l_info = line.split("\t")
		uniprot, resnum, resname, gpcrdb = l_info[0].strip(), l_info[1].strip(), l_info[2].strip(), l_info[4].strip()
		if(uniprot.upper() == UNIPROT_CODE.upper()):
			key = resname.upper() + resnum 
			GPCRDB_DICT[key] = gpcrdb
	return GPCRDB_DICT


# Generates the residue to gpcrdb table for given pdb
def genResidueToGpcrdbTable(PDB_CODE):
	UNIPROT_CODE = getUniprotCode(PDB_CODE)
	GPCRDB_DICT = genGpcrdbDict(UNIPROT_CODE)
	return GPCRDB_DICT

def genGPCRDBToResidueTable(PDB_CODE):
    GPCRDB_DICT = genResidueToGpcrdbTable(PDB_CODE)
    gpcrdb_to_residue = {GPCRDB_DICT[resid] : resid[3:] for resid in GPCRDB_DICT}
    return gpcrdb_to_residue

def classA_GPCRDB_map():
	f = open(CLASS_A_GPCR_TABLE, 'r')
	header = f.readline()

	pdb_to_gpcrdb_to_resid_dict = {}
	for line in f:
		uniprot, gpcr_class, pdb, ligand = line.strip().split("\t")
		print(pdb)
		pdb_to_gpcrdb_to_resid_dict[pdb] = genGPCRDBToResidueTable(pdb)
	return pdb_to_gpcrdb_to_resid_dict



d = classA_GPCRDB_map()