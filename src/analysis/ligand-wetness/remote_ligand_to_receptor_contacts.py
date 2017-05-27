# Author: Anthony Ma
# Date: 02/07/16
# remote_ligand_to_receptor_contacts.py

import sys
import glob
import ast
from utils import *

USAGE_STR = """
# Purpose
# Input: Path to polar contact binary dictionary for a particular simulation. 
# Output: Binary dictionary representing the time points in which Ligand forms 
# direct hydrogen bond with binding pocket residue b in the same frame that 
# b forms water mediated hydrogen bond with another residue b'. Report 
# key as format (LIG, b, b') = [2,5,10,11,...]

# Usage 
# python remote_ligand_to_receptor_contacts.py <PDB> <INPUT_DIR> <OUTPUT_FILE>

# Arguments 
# <PDB> PDB of simulation receptor 
# <INPUT_DIR> Absolute path to the directory containing polar contact binary 
# dictionaries for a given simulation 
# <OUTPUT_FILE> Output maps Ligand-Resid1-Resid2 to frequency of interaction. 

# Example 
PDB=""4DKL
INPUT_DIR="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutputDictionary/MOR-inactive-bFNA-nature2015/condition-bFNA-bound/rep_1/050516_NONHB_DEFAULT_HB_3.5_70"
OUTPUT_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/ligand-wetness/remote_ligand_to_receptor_contacts/020717/inactive_receptors/MOR:inactive:bFNA-antagonist-bound_to_K233:1.21us.csv"
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/analysis/ligand-wetness
python remote_ligand_to_receptor_contacts.py $PDB $INPUT_DIR $OUTPUT_FILE

"""

K_MIN_ARG = 4

interaction_flags = {"hls": "ls_hydrogen_bond_result_dict.txt", "hlb": "lb_hydrogen_bond_result_dict.txt", "wb": "water_bond_result_dict.txt", "wb2": "extended_water_bond_result_dict.txt"}
shell1_contact_types = ["hls", "hlb"]
shell2_contact_types = ["wb"]


def get_ligand_and_resid(atoms):
	if("LIG" in atoms[0]):
		return atoms[0], atoms[1]
	else:
		return atoms[1], atoms[0]

def calc_primary_contacts(INPUT_DIR):
	"""
		Return dictionary mapping primary residue b that forms 
		hydrogen bond with ligand. Intersect over atoms of the same 
		residue. Output: {"GLY125": [1,2,501, ...], "ASP201" :[4,5,100, ...]}
	"""

	nFrames = 0
	primary_contacts = {}
	for sctype1 in shell1_contact_types:
		sc_file = INPUT_DIR + "/" + interaction_flags[sctype1]
		f = open(sc_file)
		for line in f:
			if("TotalFrames" in line):
				nFrames = int(line.strip().split(":")[1].strip())
			elif("~" in line):
				linfo = line.strip().split("~")
				tp = ast.literal_eval(linfo[1])
				atoms = linfo[0].split(" -- ")
				ligand_atom, resid_atom = get_ligand_and_resid(atoms)
				resid = resid_atom.split("-")[0]

				### Insert and unionize resid tp 
				if(resid not in primary_contacts):
					primary_contacts[resid] = set(tp)
				else:
					primary_contacts[resid] |= set(tp)

	for resid in primary_contacts:
		primary_contacts[resid] = sorted(list(primary_contacts[resid]))

	return primary_contacts, nFrames


def calc_secondary_contacts(INPUT_DIR, primary_contacts):
	"""
		Use the residues from primary contacts to determine the 
		second shell residues that form interactions mediated by 
		water mediated hydrogen bonds 
	"""

	secondary_contacts = {b: {} for b in primary_contacts}

	for sctype2 in shell2_contact_types:
		sc_file = INPUT_DIR + "/" + interaction_flags[sctype2]
		f = open(sc_file)
		for line in f:
			if("~" in line):
				linfo = line.strip().split("~")
				atoms = linfo[0].split(" -- ")
				resid1, resid2 = atoms[0].split("-")[0], atoms[1].split("-")[0]
				if(resid1 in secondary_contacts):
					tp = ast.literal_eval(linfo[1])
					if(resid2 not in secondary_contacts[resid1]):
						secondary_contacts[resid1][resid2] = set(tp)
					else:
						secondary_contacts[resid1][resid2] |= set(tp)
				elif(resid2 in secondary_contacts):
					tp = ast.literal_eval(linfo[1])
					if(resid1 not in secondary_contacts[resid2]):
						secondary_contacts[resid2][resid1] = set(tp)
					else:
						secondary_contacts[resid2][resid1] = set(tp)

	return secondary_contacts


def driver(PDB, INPUT_DIR, OUTPUT_FILE):
	"""
		Driver method for computing the remote ligand to receptor contacts 
	"""
	GPCRDB_DICT = genResidueToGpcrdbTable(PDB)

	f = open(OUTPUT_FILE, 'w')

	primary_contacts, nFrames = calc_primary_contacts(INPUT_DIR)
	secondary_contacts = calc_secondary_contacts(INPUT_DIR, primary_contacts)
	for resid1 in secondary_contacts:
		for resid2 in secondary_contacts[resid1]:
			GPCRDB1, GPCRDB2 = getGPCRDB(resid1, GPCRDB_DICT), getGPCRDB(resid2, GPCRDB_DICT)
			frequency = float(len(secondary_contacts[resid1][resid2]))/nFrames
			if(GPCRDB1 != "None" and GPCRDB2 != "None"):
				f.write("LIGxLIG:" + str(GPCRDB1) + ":" + str(GPCRDB2) + "\t" + str(frequency) + "\n")


if __name__ == "__main__":
	if(len(sys.argv) < K_MIN_ARG):
		print(USAGE_STR)
		exit(0)

	(PDB, INPUT_DIR, OUTPUT_FILE) = (sys.argv[1], sys.argv[2], sys.argv[3])
	driver(PDB, INPUT_DIR, OUTPUT_FILE)







