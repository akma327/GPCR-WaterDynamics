# Author: Anthony Ma
# Email: anthonyma27@gmail.com, akma327@stanford.edu
# Date: 02/07/16
# remote_ligand_to_receptor_contacts_crystal.py

import sys
import glob
import ast
from utils import *

USAGE_STR = """
# Purpose
# Input: Path to polar contact list for high resolution crystal structures  
# Output: List of remote ligand receptor contacts in the crystal structure 

# Usage 
# python remote_ligand_to_receptor_contacts_crystal.py <PDB> <INPUT_DIR> <OUTPUT_FILE>

# Arguments 
# <PDB> PDB of simulation receptor 
# <INPUT_FILE> Absolute path polar contact list for high res PDB
# <OUTPUT_FILE> Output list of remote ligand receptor polar contacts 

# Example 
PDB="4EIY"
INPUT_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/ligand-wetness/remote_ligand_to_receptor_contacts_crystal/020717/contacts/4EIY.txt"
OUTPUT_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/ligand-wetness/remote_ligand_to_receptor_contacts_crystal/020717/remote-contacts/4EIY.txt"
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/analysis/ligand-wetness
python remote_ligand_to_receptor_contacts_crystal.py $PDB $INPUT_FILE $OUTPUT_FILE

"""

K_MIN_ARG = 4

shell1_contact_types = ["hls", "hlb"]
shell2_contact_types = ["wb"]


def get_ligand_and_resid(atoms):
	if("LIG" in atoms[0]):
		return atoms[0], atoms[1]
	else:
		return atoms[1], atoms[0]

def calc_primary_contacts(INPUT_FILE):
	"""
		Return list of amino acids that form contact with ligand 
	"""

	f = open(INPUT_FILE, 'r')
	primary_contacts = []
	for line in f:
		linfo = line.strip().split("@-")
		contact_type = linfo[1]
		atoms = linfo[0].split(" -- ")
		if(contact_type in shell1_contact_types):
			ligand_atom, resid_atom = get_ligand_and_resid(atoms)
			primary_contacts.append(resid_atom.split("-")[0])
	return list(set(primary_contacts))

def calc_secondary_contacts(INPUT_FILE, primary_contacts):
	"""
		Use the residues from primary contacts to determine the 
		second shell residues that form interactions mediated by 
		water mediated hydrogen bonds. 
	"""

	secondary_contacts = {b: [] for b in primary_contacts}
	print(secondary_contacts)
	f = open(INPUT_FILE, 'r')
	for line in f:
		linfo = line.strip().split("@-")
		contact_type = linfo[1]
		if(contact_type in shell2_contact_types):
			atoms = linfo[0].split(" -- ")
			resid1, resid2 = atoms[0].split("-")[0], atoms[1].split("-")[0]

			### resid1 primary, resid2 second shell
			if(resid1 in secondary_contacts): 
				print("hi",resid1, resid2)
				if(resid2 not in secondary_contacts[resid1]):
					secondary_contacts[resid1].append(resid2)
			### resid2 primary, resid1 second shell
			elif(resid2 in secondary_contacts):
				if(resid1 not in secondary_contacts[resid2]):
					secondary_contacts[resid2].append(resid1)
	return secondary_contacts


def driver(PDB, INPUT_FILE, OUTPUT_FILE):
	"""
		Driver method for computing the remote ligand to receptor contacts 
	"""
	GPCRDB_DICT = genResidueToGpcrdbTable(PDB)

	f = open(OUTPUT_FILE, 'w')

	primary_contacts = calc_primary_contacts(INPUT_FILE)
	secondary_contacts = calc_secondary_contacts(INPUT_FILE, primary_contacts)
	for resid1 in secondary_contacts:
		for resid2 in secondary_contacts[resid1]:
			GPCRDB1, GPCRDB2 = getGPCRDB(resid1, GPCRDB_DICT), getGPCRDB(resid2, GPCRDB_DICT)
			if(GPCRDB1 != "None" and GPCRDB2 != "None"):
				
				f.write("LIGxLIG:" + str(GPCRDB1) + ":" + str(GPCRDB2) + "\n")


if __name__ == "__main__":
	if(len(sys.argv) < K_MIN_ARG):
		print(USAGE_STR)
		exit(0)

	(PDB, INPUT_FILE, OUTPUT_FILE) = (sys.argv[1], sys.argv[2], sys.argv[3])
	driver(PDB, INPUT_FILE, OUTPUT_FILE)







