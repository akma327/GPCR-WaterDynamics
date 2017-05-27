# Author: Anthony Kai Kwang Ma
# Email: akma327@stanford.edu
# pymol_3D_footprint_summary.py

import csv 
import numpy as np
import pymol
from pymol import cmd, stored

USAGE_STR = """
# Purpose 
# Input: Footprint table associating gpcrdb1:gpcrdb2 to frequency values of polar contacts 
# present in each experiment condition (columns). Maps these frequencies with different 
# shade of color or thickness of lines between two residues on a pymol structure. 

# Output: Pymol session of a structure with lines between gpcrdb1:gpcrdb2 associated with 
# strength of a water-mediated interaction. Can be scaled by thickness of line or shade of color. 

# Usage 
# run pymol_3D_footprint_summary.py 

"""

# Utils

PDB_TO_UNIPROT_TABLE_PATH = "/Users/anthony/Desktop/dror/dynamic-networks/DynamicNetworks/data/crystal-analysis/simulation-analysis/gpcrdb-freq-config/GPCR_PDB_List.txt"
GPCRDB_TABLE_PATH="/Users/anthony/Desktop/dror/dynamic-networks/DynamicNetworks/data/crystal-analysis/simulation-analysis/gpcrdb-freq-config/All_species_gpcrdb_numbers_strOnly.txt"

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
	"""
		Output: {"ASN86": "1x50", ...}
	"""
	UNIPROT_CODE = getUniprotCode(PDB_CODE)
	GPCRDB_DICT = genGpcrdbDict(UNIPROT_CODE)
	return GPCRDB_DICT

def genGPCRDBToResidueTable(PDB_CODE):
	"""
		Output: {"1x50":"ASN86", ...}
	"""
	GPCRDB_DICT = genResidueToGpcrdbTable(PDB_CODE)
	gpcrdb_to_residue = {GPCRDB_DICT[resid] : resid for resid in GPCRDB_DICT}
	return gpcrdb_to_residue

# End Utils


def getInteractionFreqList(pdb, interaction_freq_file, exp_rep_id, threshold):
	"""
		Extract the column of interaction frequency table corresponding to 
		experiment replicate id and return list [("1x50_2x50", 86, 114, 0.5), ...]
		Each tuple contains (gpcrdb_pair, resid1, resid2, interaction_frequency)
	"""
	print("Getting Interaction Frequency List...")
	interaction_freq_info_list = []
	gpcrdb_to_resid = genGPCRDBToResidueTable(pdb)

	with open(interaction_freq_file, 'rU') as f:
		reader = csv.reader(f, delimiter="\t")
		d = list(reader)

	darr = np.array(d)
	row_labels = list(darr[:,0][1:])
	column_labels = list(darr[0,:])
	column_index = column_labels.index(exp_rep_id)
	exp_rep_freq_vals = map(float, list(darr[:, column_index])[1:])
	for index, gpcrdb_pair in enumerate(row_labels):
		# if(index > 10): break
		freq = exp_rep_freq_vals[index]
		if(freq > threshold):
			gpcrdb1, gpcrdb2 = gpcrdb_pair.strip().split(":")
			resid1, resid2 = int(gpcrdb_to_resid[gpcrdb1][3:]), int(gpcrdb_to_resid[gpcrdb2][3:])
			interaction_freq_info_list.append((gpcrdb1 + "_" + gpcrdb2, resid1, resid2, freq))
			print(gpcrdb1 + "_" + gpcrdb2, resid1, resid2, freq)

	return interaction_freq_info_list


def freq_to_grayscale(freq):
	"""
		Map interaction frequency (between 0 and 1) to grayscale color 
	"""
	shade = round((1-freq)*100)
	if(shade >99): 
		return "gray99"
	else:
		return "gray" + str(int(shade))


def map_interaction_freq_to_structure(pdb, chain, interaction_freq_file, exp_rep_id, threshold=0.0):

	### Background coloring settings
	cmd.bg_color("white")
	cmd.fetch(pdb)
	cmd.hide()
	cmd.show("cartoon")
	cmd.cartoon("loop")
	cmd.color("white", pdb)
	cmd.set("dash_gap", 0)
	cmd.set("dash_width", 5)

	### Extract interaction frequency information
	interaction_freq_info_list = getInteractionFreqList(pdb, interaction_freq_file, exp_rep_id, threshold)
	
	### Color interactions by frequency 
	print("color interactions by frequency")
	for gpcrdb_pair, resid1, resid2, freq in interaction_freq_info_list:
		cmd.distance("%s" %(gpcrdb_pair), "%s and resi %d and name CA and chain %s" %(pdb, resid1, chain), "%s and resi %d and name CA and chain %s" %(pdb, resid2, chain))
		mapped_col = freq_to_grayscale(freq)
		cmd.set("dash_color", mapped_col, gpcrdb_pair)
		cmd.hide("labels")





# Crystal Structure Same Frequency
# pdb = "5C1M"
# chain = "A"
# exp_rep_id = "MOR:active-noNb:BU72-nB_interface_restrained"
# interaction_freq_file = "/Users/anthony/Desktop/dror/dynamic-networks/DynamicNetworks/results/non-state-decomposition/residue-resolution-combined-rep/032717_crystal_vs_simulation/crystal/MOR_active_crystal_samefreq_filtered.txt"
# map_interaction_freq_to_structure(pdb, chain, interaction_freq_file, exp_rep_id)


# Simulation > 0.0 Freq
# pdb = "5C1M"
# chain = "A"
# exp_rep_id = "MOR:active-noNb:BU72-nB_interface_restrained"
# interaction_freq_file = "/Users/anthony/Desktop/dror/dynamic-networks/DynamicNetworks/results/non-state-decomposition/residue-resolution-combined-rep/032717_crystal_vs_simulation/simulation/MOR_active_simulation_filtered.txt"
# map_interaction_freq_to_structure(pdb, chain, interaction_freq_file, exp_rep_id, 0)


# # Simulation > .25 Freq
# pdb = "5C1M"
# chain = "A"
# exp_rep_id = "MOR:active-noNb:BU72-nB_interface_restrained"
# interaction_freq_file = "/Users/anthony/Desktop/dror/dynamic-networks/DynamicNetworks/results/non-state-decomposition/residue-resolution-combined-rep/032717_crystal_vs_simulation/simulation/MOR_active_simulation_filtered.txt"
# map_interaction_freq_to_structure(pdb, chain, interaction_freq_file, exp_rep_id, .25)

# # Simulation > .50 Freq
# pdb = "5C1M"
# chain = "A"
# exp_rep_id = "MOR:active-noNb:BU72-nB_interface_restrained"
# interaction_freq_file = "/Users/anthony/Desktop/dror/dynamic-networks/DynamicNetworks/results/non-state-decomposition/residue-resolution-combined-rep/032717_crystal_vs_simulation/simulation/MOR_active_simulation_filtered.txt"
# map_interaction_freq_to_structure(pdb, chain, interaction_freq_file, exp_rep_id, .5)


# Simulation > .75 Freq
pdb = "5C1M"
chain = "A"
exp_rep_id = "MOR:active-noNb:BU72-nB_interface_restrained"
interaction_freq_file = "/Users/anthony/Desktop/dror/dynamic-networks/DynamicNetworks/results/non-state-decomposition/residue-resolution-combined-rep/032717_crystal_vs_simulation/simulation/MOR_active_simulation_filtered.txt"
map_interaction_freq_to_structure(pdb, chain, interaction_freq_file, exp_rep_id, .75)





