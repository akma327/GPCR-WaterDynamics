# Author: Anthony Kai Kwang Ma
# Email: akma327@stanford.edu
# cluster-static-interactions.py 

import os 
import sys 
import glob 
from operator import itemgetter

USAGE_STR = """
# Purpose 
# Takes path to directory containing files that stores the list of static interactions for 
# a given crystal structure (topology). After unionizing over the interactions across the
# specified list of pdbs, this script outputs a bitstring representing whether an interaction
# was present in each of the crystal structures. 

# Usage 
# python cluster-static-interactions.py <INPUT_DIRECTORY> <OUTPUT_FILE>

# Arguments 
# <INPUT_DIRECTORY> Absolute to path containing each of the static interaction lists to generate
# bitstrings upon. 
# <OUTPUT_FILE> Absolute path to output file containing the bitstrings, and GPCR-DB information 

# Example 
INPUT_DIRECTORY="/scratch/PI/rondror/akma327/DynamicNetworks/data/StaticNetworks/static-interaction-output/051016-static-output"
OUTPUT_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/StaticNetworks/static-interaction-clusters/051016-cluster.txt"
python cluster-static-interactions.py $INPUT_DIRECTORY $OUTPUT_FILE

"""
K_MIN_ARG = 3

# Static Global Constants 

GPCR_DB_TABLE_PATH = "/scratch/PI/rondror/akma327/DynamicNetworks/data/StaticNetworks/config/All_species_gpcrdb_numbers_strOnly.txt"
PDB_TO_UNIPROT_TABLE_PATH = "/scratch/PI/rondror/akma327/DynamicNetworks/data/StaticNetworks/config/GPCR_PDB_List.txt"

# Generate header string for identifying columns by pdb code 
def genHeader(pdb_code_list):
	header = "# Crystal Bit Clusters for "
	for pdb_code in pdb_code_list: 
		header += "<" + pdb_code + "> "
	header += "\n"
	return header 

# Generate the bit string, 1 = present 0 = absent in a particular crystal structure 
def genBitString(key, pdb_code_list, all_pdb_interaction_dict):
	bitString = ""
	for pdb_code in pdb_code_list:
		if(key in all_pdb_interaction_dict[pdb_code]): bitString += "1"
		else: bitString += "0"
	return bitString

# Generate PDB to Uniprot code table 
def genPdbToUniprotTable():
	PDB_TO_UNIPROT_TABLE = {}
	f = open(PDB_TO_UNIPROT_TABLE_PATH, 'r')
	for line in f:
		if(line == "\n"):continue 
		line_info = line.split("\t")
		pdb, uniprot = line_info[2].strip(), line_info[0].strip()
		PDB_TO_UNIPROT_TABLE[pdb] = uniprot 
	return PDB_TO_UNIPROT_TABLE


# Generate dictionary from residue to GPCR DB 
def gen_GPCR_DB_Table(uniprot_code):
	GPCR_DB_TABLE = {}
	f = open(GPCR_DB_TABLE_PATH, 'r')
	for line in f: 
		uniprot, resnum, residue, location, gpcrdb = line.split("\t")
		if(uniprot.upper() == uniprot_code.upper()):
			key = residue.strip().upper() + resnum.strip() 
			value = gpcrdb.strip() 
			GPCR_DB_TABLE[key] = value 
	return GPCR_DB_TABLE

# Input: VAL95 Output: 5x50
def getGPCRDB(res, GPCR_DB_TABLE):
	if("HOH" in res): return "HOH"
	elif(res in GPCR_DB_TABLE): return GPCR_DB_TABLE[res]
	else: return "-"

# Parses "VAL95-N -- VAL90-O@-hbbb" into (VAL95, VAL90, hbbb)
def parseInteraction(interaction_key):
	atoms, interactionType = interaction_key.split("@")
	atom1, atom2 = atoms.split(" -- ")
	res1 = atom1.split("-")[0].split("_")[0].strip()
	res2 = atom2.split("-")[0].split("_")[0].strip()
	interactionType = interactionType.strip()
	return res1, res2, interactionType

# Read first line to determine pdb identity, retrieve pdb to uniprot to gpcrdb table,
# then process every interaction to generate tuple (gpcrdb1, gpcrdb2, interaction type)
def processSingleInteractionList(crys_interaction_file, PDB_TO_UNIPROT_TABLE):
	processed_interaction_list = []
	f = open(crys_interaction_file, 'r')
	pdb_code = f.readline().split("PDB:")[1].strip()
	uniprot_code = PDB_TO_UNIPROT_TABLE[pdb_code]
	GPCR_DB_TABLE = gen_GPCR_DB_Table(uniprot_code)
	for interaction_key in f: 
		res1, res2, interactionType = parseInteraction(interaction_key)
		gpcrdb1, gpcrdb2 = getGPCRDB(res1, GPCR_DB_TABLE), getGPCRDB(res2, GPCR_DB_TABLE)
		processed_interaction_list.append((gpcrdb1, gpcrdb2, interactionType))
	return pdb_code, processed_interaction_list


# For every crystal interaction list in INPUT_DIRECTORY generate the 
# a corresponding list of tuples containing GPCR DB Pair and interaction type 
def processCrystalInteractionLists(INPUT_DIRECTORY):
	PDB_TO_UNIPROT_TABLE = genPdbToUniprotTable()
	keyUnion = set()
	pdb_code_list = []
	all_pdb_interaction_dict = {} #pdb_cde : [(gpcrdb1, gpcrdb2, interaction type), ...]
	crystal_interaction_files = glob.glob(INPUT_DIRECTORY + "/*")
	for crys_interaction_file in crystal_interaction_files:
		pdb_code, processed_interaction_list = processSingleInteractionList(crys_interaction_file, PDB_TO_UNIPROT_TABLE)
		keyUnion = keyUnion | set(processed_interaction_list)
		pdb_code_list.append(pdb_code)
		all_pdb_interaction_dict[pdb_code] = processed_interaction_list
	pdb_code_list = sorted(pdb_code_list)
	return keyUnion, pdb_code_list, all_pdb_interaction_dict


# Driver method for taking in INPUT_DIRECTORY, converting and writing gpcrdb and bitstring
# information to OUTPUT_FILE
def clusterStaticInteractions(INPUT_DIRECTORY, OUTPUT_FILE):
	keyUnion, pdb_code_list, all_pdb_interaction_dict = processCrystalInteractionLists(INPUT_DIRECTORY)
	processed_info_str = []
	for key in keyUnion:
		bitString = genBitString(key, pdb_code_list, all_pdb_interaction_dict)
		line_info = (bitString, key[0], key[1], key[2])
		processed_info_str.append(line_info)
	processed_info_str = sorted(processed_info_str, key=lambda x: (x[0], x[3], x[1], x[2]))
	fw = open(OUTPUT_FILE, 'w')
	fw.write(genHeader(pdb_code_list))
	for bitString, gpcrdb1, gpcrdb2, interactionType in processed_info_str:
		fw.write(bitString + "\t" + gpcrdb1 + "\t" + gpcrdb2 + "\t" + interactionType + "\n")
		

if __name__ == "__main__":
	if(len(sys.argv) < K_MIN_ARG):
		print(USAGE_STR)
		exit(1)
	INPUT_DIRECTORY = sys.argv[1]
	OUTPUT_FILE = sys.argv[2]
	clusterStaticInteractions(INPUT_DIRECTORY, OUTPUT_FILE)






