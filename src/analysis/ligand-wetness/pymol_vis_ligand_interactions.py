# Author: Anthony Ma
# Email: anthonyma27@gmail.com, akma327@stanford.edu
# Date: 04/30/17
# pymol_vis_ligand_interactions.py

import numpy as np
import pymol
from pymol import cmd, stored

USAGE_STR = """
# Purpose
# Draw the ligand mediated interactions in pymol 

# Usage 
# run pymol_vis_ligand_interactions.py

"""

PDB_01 = "/Users/anthony/Desktop/dror/temp7/DynamicNetworks/data/crystal-analysis/ligand-wetness/pymol-vis-interactions/043017/01-pdb"
RAW_HBOND_02 = "/Users/anthony/Desktop/dror/temp7/DynamicNetworks/data/crystal-analysis/ligand-wetness/pymol-vis-interactions/043017/02-raw-hbond"
PYMOL_PSE_03 = "/Users/anthony/Desktop/dror/temp7/DynamicNetworks/data/crystal-analysis/ligand-wetness/pymol-vis-interactions/043017/03-pymol-pse"


ALPHABETICAL_AA_LIST = ['ALA', 'ARG', 'ASN', 'ASP', 'CYS', 'GLU', 'GLN', 'GLY', 'HIS', 'ILE', 'LEU', 'LYS', 'MET', 'PHE', 'PRO', 'SER', 'THR', 'TRP', 'TYR', 'VAL']

DIST_CUTOFF = 3.5

def get_solvent_name(PDB):
	return "HOH"


def get_hbond_pairs(RAW_HBOND_LIST, LIGAND):
	"""
		Input: Raw list of every atomic-resolution hydrogen bond in system
			   Competing network list as a filtering mask 

		Output: [(ALA149-N, HOH7662-OH2), (HOH7662-OH2, ASP145-O), ...]
	"""

	hbond_pairs = []

	f = open(RAW_HBOND_LIST, 'r')
	for line in f:
		linfo = line.strip().split("@")
		interaction_type = linfo[1]
		atoms = [a.replace("LIG", LIGAND) for a in linfo[0].split(" -- ")]

		ligand, resi = atoms[0].split("-")[0], atoms[1].split("-")[0]

		if(interaction_type == "-lwb"):
			hbond_pairs.append((atoms[0], atoms[2]))
			hbond_pairs.append((atoms[2], atoms[1]))

		elif(interaction_type == "-lwb2"):
			hbond_pairs.append((atoms[0], atoms[2]))
			hbond_pairs.append((atoms[2], atoms[3]))
			hbond_pairs.append((atoms[3], atoms[1]))

	return hbond_pairs



def display_resi_water_query(PDB, hbond_pairs):
	"""
		Generate the query to display the residues and water molecules
		without any interaction lines
	"""
	solvent = get_solvent_name(PDB)

	### Create a selection for showing all residues and all waters
	resi_list = []
	water_list = []
	atom_name = ""

	for atom1, atom2 in hbond_pairs:
		resid1, resid2 = atom1.split("-")[0], atom2.split("-")[0]
		aname1, aname2 = atom1.split("-")[1], atom2.split("-")[1]
		if(resid1[0:3] == "HOH"):
			water_list.append(resid1[3:])
			atom_name = aname1
		elif(resid1[0:3] in ALPHABETICAL_AA_LIST):
			resi_list.append(resid1[3:])

		if(resid2[0:3] == "HOH"):
			water_list.append(resid2[3:])
			atom_name = aname2
		elif(resid2[0:3] in ALPHABETICAL_AA_LIST):
			resi_list.append(resid2[3:])

	aa_query = "sele aa, polymer and resi " + resi_list[0]
	for i, r in enumerate(resi_list):
		if(i > 0):
			aa_query += "+" + resi_list[i]
	w_query = "sele w, resn " + solvent + " and resi " + water_list[0]
	for i, w in enumerate(water_list):
		if(i > 0):
			w_query += "+" + water_list[i]
	w_query += " and name " + atom_name

	return aa_query, w_query


def water_selection_query(PDB, top_name, resid, atom_name):
	solvent = get_solvent_name(PDB)
	if(PDB == "4N6H"):
		w1_query = "/" + top_name + "/" + "/A/" + solvent + "`" + resid[3:] + "/" + atom_name
		return [w1_query]
	elif(PDB == "5IU4"):
		w1_query = "/" + top_name + "/" + "/A/" + solvent + "`" + resid[3:] + "/" + atom_name
		return [w1_query]


def ligand_selection_query(PDB, top_name, LIGAND, atom_name):
	if(PDB == "4N6H"):
		lig_query = "/" + top_name + "/" + "/A/" + LIGAND + "`" + "1219" + "/" + atom_name
		return [lig_query]

	elif(PDB == "5IU4"):
		lig_query = "/" + top_name + "/" + "/A/" + LIGAND + "`" + "2401" + "/" + atom_name
		return [lig_query]
		


def gen_selection(atom_label, PDB, LIGAND, top_name):
	"""
		Generate selection for a residue or water index
	"""

	
	resid, atom_name = atom_label.split("-")
	if(resid[0:3] == "HOH"): # waters
		return water_selection_query(PDB, top_name, resid, atom_name)
		
	elif(resid[0:3] in ALPHABETICAL_AA_LIST): # amino acids
		return [top_name + " and polymer and resi " + resid[3:] + " and name " +  atom_name]
	
	else: # ligand
		return ligand_selection_query(PDB, top_name, LIGAND, atom_name)
		


def render_visualization(PDB, LIGAND, TOP_FILE, hbond_pairs):
	"""
		Render the visualization of each of the interactions between resid1 -- water -- resid2
	"""
	top_name = PDB 

	cmd.bg_color("white")
	cmd.load(TOP_FILE)
	cmd.hide()
	cmd.show("cartoon")
	cmd.cartoon("loop")
	cmd.do("set cartoon_transparency, 0.7")
	cmd.do("remove hydrogens")
	cmd.color("white", top_name)

	### Draw background residues and waters
	aa_query, w_query = display_resi_water_query(PDB, hbond_pairs)
	lig_query = "sele lig, resn " + LIGAND
	cmd.do(aa_query)
	cmd.do(w_query)
	cmd.do(lig_query)
	cmd.do("show sticks, aa")
	cmd.do("show sticks, lig")
	cmd.do("show spheres, w")
	cmd.do("set sphere_scale, 0.25")

	### Draw lines for interactions between ligand/residues to waters and waters to waters

	for atom1, atom2 in hbond_pairs:

		sele1 = gen_selection(atom1, PDB, LIGAND, top_name)
		sele2 = gen_selection(atom2, PDB, LIGAND, top_name)
		for i, s1 in enumerate(sele1):
			for j, s2 in enumerate(sele2):
				label = atom1 + "_" + atom2 + "_" + str(i) + "_" + str(j)
				print(label, s1, s2)
				dist = cmd.distance(label, s1, s2)
				if(dist > DIST_CUTOFF):
					cmd.delete(label)
				else:
					cmd.set("dash_color", "black", label)
					cmd.hide("labels")





def pymol_driver(PDB, LIGAND):
	"""
		Generate pymol rendering of ligand water mediated network 
	"""
	TOP_FILE = PDB_01 + "/" + PDB + ".pdb"
	RAW_HBOND_LIST = RAW_HBOND_02 + "/" + PDB + ".txt"
	hbond_pairs = get_hbond_pairs(RAW_HBOND_LIST, LIGAND)

	render_visualization(PDB, LIGAND, TOP_FILE, hbond_pairs)



# # DOR_Inactive 4N6H
# PDB = "4N6H"
# LIGAND = "EJ4"

# A2A_Inactive 5IU4
PDB = "5IU4"
LIGAND = "ZMA"
pymol_driver(PDB, LIGAND)
