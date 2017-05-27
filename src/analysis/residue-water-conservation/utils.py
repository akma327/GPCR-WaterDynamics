# Author: Anthony Kai Kwang Ma
# Email: akma327@stanford.edu
# Date: 11/19/16
# utils.py 

import os 
import sys
import csv
import numpy as np


# Paths to important configuration tables
PDB_TO_UNIPROT_TABLE_PATH = "/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/simulation-analysis/gpcrdb-freq-config/GPCR_PDB_List.txt"
GPCRDB_TABLE_PATH="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/simulation-analysis/gpcrdb-freq-config/All_species_gpcrdb_numbers_strOnly.txt"
GPCRDB_RESIDUE_FREQ_TABLE="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/simulation-analysis/gpcrdb-freq-config/gpcrdb_residue_conservation.txt"

# Single letter to three letter representation of amino acids
aa1to3_dict = {'A':'Ala','R':'Arg','N':'Asn','D':'Asp','C':'Cys','E':'Glu','Q':'Gln','G':'Gly','H':'His','I':'Ile','L':'Leu','K':'Lys','M':'Met','F':'Phe','P':'Pro','S':'Ser','T':'Thr','W':'Trp','Y':'Tyr','V':'Val'}
aa3to1_dict = {'CYS': 'C', 'ASP': 'D', 'SER': 'S', 'ASN': 'N', 'GLN': 'Q', 'LYS': 'K', 'THR': 'T', 'PRO': 'P', 'HIS': 'H', 'PHE': 'F', 'ALA': 'A', 'GLY': 'G', 'ILE': 'I', 'LEU': 'L', 'ARG': 'R', 'TRP': 'W', 'VAL': 'V', 'GLU': 'E', 'TYR': 'Y', 'MET': 'M'}

# Alphabetical list of 20 amino acids
ALPHABETICAL_AA_LIST = ['ALA', 'ARG', 'ASN', 'ASP', 'CYS', 'GLU', 'GLN', 'GLY', 'HIS', 'ILE', 'LEU', 'LYS', 'MET', 'PHE', 'PRO', 'SER', 'THR', 'TRP', 'TYR', 'VAL']

POLAR_AA_SET = set(["ARG", "LYS", "ASP", "GLU", "GLN", "ASN", "HIS", "SER", "THR", "TYR", "CYS", "TRP"])

POSITION_CONSERVATION_PATH="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/simulation-analysis/gpcrdb-freq-config/gpcrdb_residue_conservation.txt"


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

def position_to_conserve_freq():
	f = open(POSITION_CONSERVATION_PATH, 'r')
	header = f.readline()
	pos_to_conserve_freq = {}
	for line in f:
		linfo = line.strip().split("\t")
		position = linfo[0]
		max_conserve_freq = max(map(float, linfo[1:]))
		pos_to_conserve_freq[position] = max_conserve_freq

	return pos_to_conserve_freq

def position_to_polarity_freq():
	f = open(POSITION_CONSERVATION_PATH, 'r')
	header = f.readline().strip().split("\t")
	polar_aa_indices = [header.index(aa) for aa in POLAR_AA_SET]
	pos_to_polarity_freq = {}
	for line in f:
		linfo = line.strip().split("\t")
		position = linfo[0]
		polarity_sum = 0
		for pi in polar_aa_indices:
			polarity_sum += float(linfo[pi])
		pos_to_polarity_freq[position] = polarity_sum
	return pos_to_polarity_freq


# Rename amino acids to common name
def fixAminoAcidNames(key):
	key = key.replace("HSD", "HIS")
	key = key.replace("HSE", "HIS")
	key = key.replace("HSP", "HIS")
	key = key.replace("HIE", "HIS")
	key = key.replace("HIP", "HIS")
	key = key.replace("HID", "HIS")
	key = key.replace("GLH", "GLU")
	key = key.replace("ASH", "ASP")
	key = key.replace("CYP", "CYS")
	key = key.replace("CYX", "CYS")
	return key

# Retrive gpcrdb from dictionary for specified residue. Return "-" if not found
def getGPCRDB(res, GPCRDB_DICT):
	res = fixAminoAcidNames(res)
	if(res not in GPCRDB_DICT):
		print(res + " not found.")
		return "None"
	return GPCRDB_DICT[res]

# Create directory if not exist
def createDirectory(OUTPUT_FILE):
	directory = os.path.dirname(OUTPUT_FILE)
	if not os.path.exists(directory):
		os.makedirs(directory)

# Generate write file descriptor 
def genWriteDescriptor(OUTPUT_FILE):
	createDirectory(OUTPUT_FILE)
	return open(OUTPUT_FILE, 'w')


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


if __name__ == "__main__":
	position_to_conserve_freq = position_to_conserve_freq()
	for k in position_to_conserve_freq:
		print(k, position_to_conserve_freq[k])

