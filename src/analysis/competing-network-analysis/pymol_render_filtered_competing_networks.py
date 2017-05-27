# Author: Anthony Kai Kwang Ma
# Email: akma327@stanford.edu
# Date: 04/04/2017
# pymol_render_filtered_competing_networks.py

import numpy as np
# import pymol
# from pymol import cmd, stored

USAGE_STR = """

# Purpose
# After determining the simulation frame that has the greatest portion 
# of competing network, and calculating the atomic resolution list of
# hydrogen bonds, this script filters the interactions for those that 
# belong int he sub-competing network and renders into pymol. 

"""


# Utils

PDB_TO_UNIPROT_TABLE_PATH = "/Users/anthony/Desktop/dror/dynamic-networks1/DynamicNetworks/data/crystal-analysis/simulation-analysis/gpcrdb-freq-config/GPCR_PDB_List.txt"
GPCRDB_TABLE_PATH="/Users/anthony/Desktop/dror/dynamic-networks1/DynamicNetworks/data/crystal-analysis/simulation-analysis/gpcrdb-freq-config/All_species_gpcrdb_numbers_strOnly.txt"

ALPHABETICAL_AA_LIST = ['ALA', 'ARG', 'ASN', 'ASP', 'CYS', 'GLU', 'GLN', 'GLY', 'HIS', 'ILE', 'LEU', 'LYS', 'MET', 'PHE', 'PRO', 'SER', 'THR', 'TRP', 'TYR', 'VAL']

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


DIST_CUTOFF = 3.5

def get_competing_network_resid(PDB, COMPETING_NETWORK):
	"""
		Output: [(ASP114, TYR232), ...]
	"""
	competing_network_list = []
	GPCRDB_TO_RESID = genGPCRDBToResidueTable(PDB)
	f = open(COMPETING_NETWORK)
	for line in f:
		gpcrdb1, gpcrdb2 = line.strip().split("\t")
		resid1, resid2 = GPCRDB_TO_RESID[gpcrdb1], GPCRDB_TO_RESID[gpcrdb2]
		competing_network_list.append((resid1, resid2))
	return competing_network_list

def get_hbond_pairs(RAW_HBOND_LIST, competing_network_list):
	"""
		Input: Raw list of every atomic-resolution hydrogen bond in system
			   Competing network list as a filtering mask 

		Output: [(ALA149-N, HOH7662-OH2), (HOH7662-OH2, ASP145-O), ...]
	"""

	def in_competing_network(resid1, resid2, competing_network_list):
		"""
			Checks if a given interaction is part of the competing network
		"""
		for reference in competing_network_list:
			if(resid1 == reference[0] and resid2 == reference[1]): return True 
			elif(resid1 == reference[1] and resid2 == reference[0]): return True
		return False

	hbond_pairs = []	

	f = open(RAW_HBOND_LIST, 'r')
	for line in f:
		linfo = line.strip().split("@")
		interaction_type = linfo[1]
		atoms = linfo[0].split(" -- ")

		resid1, resid2 = atoms[0].split("-")[0], atoms[1].split("-")[0]
		if(in_competing_network(resid1, resid2, competing_network_list) == False): continue

		if(interaction_type == "-wb"):
			hbond_pairs.append((atoms[0], atoms[2]))
			hbond_pairs.append((atoms[2], atoms[1]))

		elif(interaction_type == "-wb2"):
			hbond_pairs.append((atoms[0], atoms[2]))
			hbond_pairs.append((atoms[2], atoms[3]))
			hbond_pairs.append((atoms[3], atoms[1]))

		### elif(interaction_type == "-lwb"): print("To be implemented")

		### elif(interaction_type == "-lwb2"): print("To be implemented")

	return hbond_pairs


def get_solvent_name(PDB):
	"""
		Return TIP3 or HOH depending on pdb
	"""
	if(PDB == "4N6H"): return "HOH"
	# if(PDB == "4N6H"): return "TIP3"
	# elif(PDB == "5C1M"): return "HOH"
	elif(PDB == "5C1M"): return "TIP3"
	elif(PDB == "4DKL"): return "IP3"
	# elif(PDB == "5IU4"): return "TIP3"
	elif(PDB == "5IU4"): return "HOH"
	else: return "HOH"


def display_resi_water_query(hbond_pairs):
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



def gen_selection(atom_label, PDB, CHAIN, top_name):
	"""
		Generate selection for a residue or water index
	"""
	solvent = get_solvent_name(PDB)
	resid = atom_label.split("-")[0]
	atom_name = atom_label.split("-")[1]
	if(resid[0:3] == "HOH"): # Is water

		# # Simulation

		# A2A
		# w1_query = "/" + top_name + "/" + "W2/W/" + solvent + "`" + resid[3:] + "/" + atom_name
		# w0_query = "/" + top_name + "/" + "W0/W/" + solvent + "`" + resid[3:] + "/" + atom_name
		# return [w1_query, w0_query]


		# DOR
		# w1_query = "/" + top_name + "/" + "W1/W/" + solvent + "`" + resid[3:] + "/" + atom_name
		# w0_query = "/" + top_name + "/" + "W0/W/" + solvent + "`" + resid[3:] + "/" + atom_name
		# return [w1_query, w0_query]

		# # Active Heatmap Simulation 5C1M
		w1_query = "/" + top_name + "/" + "W1/W/" + solvent + "`" + resid[3:] + "/" + atom_name
		w0_query = "/" + top_name + "/" + "W0/W/" + solvent + "`" + resid[3:] + "/" + atom_name
		return [w1_query, w0_query]

		# Inactive Heatmap Simulation 4DKL
		# w1_query = "/" + top_name + "/" + "/X/" + solvent + "`" + resid[3:] + "/" + atom_name
		# w0_query = "/" + top_name + "/" + "/X/" + solvent + "`" + resid[3:] + "/" + atom_name
		# return [w1_query, w0_query]


		# MOR Crystal
		# w1_query = "/" + top_name + "/" + "J/A/" + solvent + "`" + resid[3:] + "/" + atom_name
		# return [w1_query]

		# DOR Crystal
		# w1_query = "/" + top_name + "/" + "Y/A/" + solvent + "`" + resid[3:] + "/" + atom_name
		# return [w1_query]

		# A2A Crystal
		# w1_query = "/" + top_name + "/" + "/A/" + solvent + "`" + resid[3:] + "/" + atom_name
		# return [w1_query]

		
	elif(resid[0:3] in ALPHABETICAL_AA_LIST):
		if(CHAIN == ""):
			return [top_name + " and polymer and resi " + resid[3:] + " and name " +  atom_name]
		else:
			return [top_name + " and polymer and resi " + resid[3:] + " and name " +  atom_name + " and chain " + CHAIN]

def render_visualization(PDB, CHAIN, TOP_FILE, hbond_pairs):
	"""
		Render the visualization of each of the interactions between resid1 -- water -- resid2
	"""

	top_name = TOP_FILE.split("/")[-1].split(".")[0]

	cmd.bg_color("white")
	cmd.load(TOP_FILE)
	cmd.hide()
	cmd.show("cartoon")
	cmd.cartoon("loop")
	cmd.do("set cartoon_transparency, 0.7")
	cmd.do("remove hydrogens")
	cmd.color("white", top_name)

	### Draw background residues and waters
	aa_query, w_query = display_resi_water_query(hbond_pairs)
	cmd.do(aa_query)
	cmd.do(w_query)
	cmd.do("show sticks, aa")
	cmd.do("show spheres, w")
	cmd.do("set sphere_scale, 0.25")

	### Draw lines for interactions between residue to waters and waters to waters
	for atom1, atom2 in hbond_pairs:
		
		sele1 = gen_selection(atom1, PDB, CHAIN, top_name)
		sele2 = gen_selection(atom2, PDB, CHAIN, top_name)
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




def pymol_driver(PDB, CHAIN, TOP, RAW_HBOND_LIST, COMPETING_NETWORK):
	competing_network_list = get_competing_network_resid(PDB, COMPETING_NETWORK)
	for c1, c2 in competing_network_list:
		print("comp-network", c1, c2)
	hbond_pairs = get_hbond_pairs(RAW_HBOND_LIST, competing_network_list)
	# for a, b in hbond_pairs:
	# 	print(a, b)
	render_visualization(PDB, CHAIN, TOP, hbond_pairs)





### User Adjusts arguments below

### Active Heatmap - Full Active Network

# PDB= "5C1M"
# CHAIN = "A"
# TOP="/Users/anthony/Desktop/dror/dynamic-networks1/DynamicNetworks/data/crystal-analysis/competing-network-analysis/pymol-visualization/051717/active-heatmap/01-pdb/active_heatmap_ALL_prod0_frame3_cutoff60.pdb"
# RAW_HBOND_LIST= "/Users/anthony/Desktop/dror/dynamic-networks1/DynamicNetworks/data/crystal-analysis/competing-network-analysis/pymol-visualization/051717/active-heatmap/02-raw-hbond/active_heatmap_ALL_prod0_frame3_cutoff60.txt"
# COMPETING_NETWORK="/Users/anthony/Desktop/dror/dynamic-networks1/DynamicNetworks/data/crystal-analysis/competing-network-analysis/pymol-visualization/051717/active-heatmap/01-pdb/interaction_list_sim_cutoff60_ALL.txt"


### Inactive Heatmap - Full Inactive Network 
# PDB="4DKL"
# CHAIN = ""
# TOP="/Users/anthony/Desktop/dror/dynamic-networks1/DynamicNetworks/data/crystal-analysis/competing-network-analysis/pymol-visualization/051717/inactive-heatmap/01-pdb/inactive_heatmap_ALL_prod_1_frame1762_cutoff60.pdb"
# RAW_HBOND_LIST="/Users/anthony/Desktop/dror/dynamic-networks1/DynamicNetworks/data/crystal-analysis/competing-network-analysis/pymol-visualization/051717/inactive-heatmap/02-raw-hbond/inactive_heatmap_ALL_prod_1_frame1762_cutoff60.txt"
# COMPETING_NETWORK="/Users/anthony/Desktop/dror/dynamic-networks1/DynamicNetworks/data/crystal-analysis/competing-network-analysis/pymol-visualization/051717/inactive-heatmap/01-pdb/interaction_list_sim_cutoff60_ALL.txt"


### Active Only Pruned Network
PDB= "5C1M"
CHAIN = "A"
TOP="/Users/anthony/Desktop/dror/dynamic-networks1/DynamicNetworks/data/crystal-analysis/competing-network-analysis/pymol-visualization/051717/active_vs_inactive_flareplot/01-pdb/active_heatmap_ALL_prod0_frame3_cutoff60.pdb"
RAW_HBOND_LIST= "/Users/anthony/Desktop/dror/dynamic-networks1/DynamicNetworks/data/crystal-analysis/competing-network-analysis/pymol-visualization/051717/active_vs_inactive_flareplot/02-raw-hbond/active_heatmap_ALL_prod0_frame3_cutoff60.txt"
COMPETING_NETWORK="/Users/anthony/Desktop/dror/dynamic-networks1/DynamicNetworks/data/crystal-analysis/competing-network-analysis/pymol-visualization/051717/active_vs_inactive_flareplot/01-pdb/active_only_pruned.txt"


# ### Inactive Only Network
# PDB="4DKL"
# CHAIN = ""
# TOP="/Users/anthony/Desktop/dror/dynamic-networks1/DynamicNetworks/data/crystal-analysis/competing-network-analysis/pymol-visualization/051717/active_vs_inactive_flareplot/01-pdb/inactive_heatmap_ALL_prod_1_frame1762_cutoff60.pdb"
# RAW_HBOND_LIST= "/Users/anthony/Desktop/dror/dynamic-networks1/DynamicNetworks/data/crystal-analysis/competing-network-analysis/pymol-visualization/051717/active_vs_inactive_flareplot/02-raw-hbond/inactive_heatmap_ALL_prod_1_frame1762_cutoff60.txt"
# COMPETING_NETWORK="/Users/anthony/Desktop/dror/dynamic-networks1/DynamicNetworks/data/crystal-analysis/competing-network-analysis/pymol-visualization/051717/active_vs_inactive_flareplot/01-pdb/inactive_only.txt"


# ### Both Network
# PDB="4DKL"
# CHAIN = ""
# TOP="/Users/anthony/Desktop/dror/dynamic-networks1/DynamicNetworks/data/crystal-analysis/competing-network-analysis/pymol-visualization/051717/active_vs_inactive_flareplot/01-pdb/inactive_heatmap_ALL_prod_1_frame1762_cutoff60.pdb"
# RAW_HBOND_LIST= "/Users/anthony/Desktop/dror/dynamic-networks1/DynamicNetworks/data/crystal-analysis/competing-network-analysis/pymol-visualization/051717/active_vs_inactive_flareplot/02-raw-hbond/inactive_heatmap_ALL_prod_1_frame1762_cutoff60.txt"
# COMPETING_NETWORK="/Users/anthony/Desktop/dror/dynamic-networks1/DynamicNetworks/data/crystal-analysis/competing-network-analysis/pymol-visualization/051717/active_vs_inactive_flareplot/01-pdb/both.txt"



pymol_driver(PDB, CHAIN, TOP, RAW_HBOND_LIST, COMPETING_NETWORK)





### MOR_active Simulation

# # 0.95 cutoff
# PDB = "5C1M"
# CHAIN = "A"
# TOP = "/Users/anthony/Desktop/dror/dynamic-networks1/DynamicNetworks/data/crystal-analysis/competing-network-analysis/pymol-visualization/040417/MOR_active/01-pdb/mor_active_prod0_frame1_cutoff95.pdb"
# RAW_HBOND_LIST = "/Users/anthony/Desktop/dror/dynamic-networks1/DynamicNetworks/data/crystal-analysis/competing-network-analysis/pymol-visualization/040417/MOR_active/02-raw-hbond/mor_active_prod0_frame1_cutoff95.txt"
# COMPETING_NETWORK="/Users/anthony/Desktop/dror/dynamic-networks1/DynamicNetworks/data/crystal-analysis/competing-network-analysis/pymol-visualization/040417/MOR_active/01-pdb/interaction_list_sim_cutoff95.txt"


# # 0.75 cutoff
# PDB = "5C1M"
# CHAIN = "A"
# TOP = "/Users/anthony/Desktop/dror/dynamic-networks1/DynamicNetworks/data/crystal-analysis/competing-network-analysis/pymol-visualization/040417/MOR_active/01-pdb/mor_active_prod0_frame33_cutoff75.pdb"
# RAW_HBOND_LIST = "/Users/anthony/Desktop/dror/dynamic-networks1/DynamicNetworks/data/crystal-analysis/competing-network-analysis/pymol-visualization/040417/MOR_active/02-raw-hbond/mor_active_prod0_frame33_cutoff75.txt"
# COMPETING_NETWORK="/Users/anthony/Desktop/dror/dynamic-networks1/DynamicNetworks/data/crystal-analysis/competing-network-analysis/pymol-visualization/040417/MOR_active/01-pdb/interaction_list_sim_cutoff75.txt"


# # 0.50 cutoff
# PDB = "5C1M"
# CHAIN = "A"
# TOP = "/Users/anthony/Desktop/dror/dynamic-networks1/DynamicNetworks/data/crystal-analysis/competing-network-analysis/pymol-visualization/040417/MOR_active/01-pdb/mor_active_prod15_frame37_cutoff50.pdb"
# RAW_HBOND_LIST = "/Users/anthony/Desktop/dror/dynamic-networks1/DynamicNetworks/data/crystal-analysis/competing-network-analysis/pymol-visualization/040417/MOR_active/02-raw-hbond/mor_active_prod15_frame37_cutoff50.txt"
# COMPETING_NETWORK="/Users/anthony/Desktop/dror/dynamic-networks1/DynamicNetworks/data/crystal-analysis/competing-network-analysis/pymol-visualization/040417/MOR_active/01-pdb/interaction_list_sim_cutoff50.txt"


# # 0.25 cutoff
# PDB = "5C1M"
# CHAIN = "A"
# TOP = "/Users/anthony/Desktop/dror/dynamic-networks1/DynamicNetworks/data/crystal-analysis/competing-network-analysis/pymol-visualization/040417/MOR_active/01-pdb/mor_active_prod27_frame198_cutoff25.pdb"
# RAW_HBOND_LIST = "/Users/anthony/Desktop/dror/dynamic-networks1/DynamicNetworks/data/crystal-analysis/competing-network-analysis/pymol-visualization/040417/MOR_active/02-raw-hbond/mor_active_prod27_frame198_cutoff25.txt"
# COMPETING_NETWORK="/Users/anthony/Desktop/dror/dynamic-networks1/DynamicNetworks/data/crystal-analysis/competing-network-analysis/pymol-visualization/040417/MOR_active/01-pdb/interaction_list_sim_cutoff25.txt"


# # 0.15 cutoff
# PDB = "5C1M"
# CHAIN = "A"
# TOP = "/Users/anthony/Desktop/dror/dynamic-networks1/DynamicNetworks/data/crystal-analysis/competing-network-analysis/pymol-visualization/040417/MOR_active/01-pdb/mor_active_prod2_frame102_cutoff15.pdb"
# RAW_HBOND_LIST = "/Users/anthony/Desktop/dror/dynamic-networks1/DynamicNetworks/data/crystal-analysis/competing-network-analysis/pymol-visualization/040417/MOR_active/02-raw-hbond/mor_active_prod2_frame102_cutoff15.txt"
# COMPETING_NETWORK="/Users/anthony/Desktop/dror/dynamic-networks1/DynamicNetworks/data/crystal-analysis/competing-network-analysis/pymol-visualization/040417/MOR_active/01-pdb/interaction_list_sim_cutoff15.txt"


### MOR_active Crystal

# # 0.95
# PDB = "5C1M"
# CHAIN = "A"
# TOP = "/Users/anthony/Desktop/dror/dynamic-networks1/DynamicNetworks/data/crystal-analysis/competing-network-analysis/pymol-visualization/040417/MOR_active/01-pdb/5c1m_mor_active.pdb"
# RAW_HBOND_LIST = "/Users/anthony/Desktop/dror/dynamic-networks1/DynamicNetworks/data/crystal-analysis/competing-network-analysis/pymol-visualization/040417/MOR_active/02-raw-hbond/mor_active_crys.txt"
# COMPETING_NETWORK="/Users/anthony/Desktop/dror/dynamic-networks1/DynamicNetworks/data/crystal-analysis/competing-network-analysis/pymol-visualization/040417/MOR_active/01-pdb/interaction_list_crys_cutoff95.txt"


# # 0.75
# PDB = "5C1M"
# CHAIN = "A"
# TOP = "/Users/anthony/Desktop/dror/dynamic-networks1/DynamicNetworks/data/crystal-analysis/competing-network-analysis/pymol-visualization/040417/MOR_active/01-pdb/5c1m_mor_active.pdb"
# RAW_HBOND_LIST = "/Users/anthony/Desktop/dror/dynamic-networks1/DynamicNetworks/data/crystal-analysis/competing-network-analysis/pymol-visualization/040417/MOR_active/02-raw-hbond/mor_active_crys.txt"
# COMPETING_NETWORK="/Users/anthony/Desktop/dror/dynamic-networks1/DynamicNetworks/data/crystal-analysis/competing-network-analysis/pymol-visualization/040417/MOR_active/01-pdb/interaction_list_crys_cutoff75.txt"


# # 0.50
# PDB = "5C1M"
# CHAIN = "A"
# TOP = "/Users/anthony/Desktop/dror/dynamic-networks1/DynamicNetworks/data/crystal-analysis/competing-network-analysis/pymol-visualization/040417/MOR_active/01-pdb/5c1m_mor_active.pdb"
# RAW_HBOND_LIST = "/Users/anthony/Desktop/dror/dynamic-networks1/DynamicNetworks/data/crystal-analysis/competing-network-analysis/pymol-visualization/040417/MOR_active/02-raw-hbond/mor_active_crys.txt"
# COMPETING_NETWORK="/Users/anthony/Desktop/dror/dynamic-networks1/DynamicNetworks/data/crystal-analysis/competing-network-analysis/pymol-visualization/040417/MOR_active/01-pdb/interaction_list_crys_cutoff50.txt"


# # 0.25
# PDB = "5C1M"
# CHAIN = "A"
# TOP = "/Users/anthony/Desktop/dror/dynamic-networks1/DynamicNetworks/data/crystal-analysis/competing-network-analysis/pymol-visualization/040417/MOR_active/01-pdb/5c1m_mor_active.pdb"
# RAW_HBOND_LIST = "/Users/anthony/Desktop/dror/dynamic-networks1/DynamicNetworks/data/crystal-analysis/competing-network-analysis/pymol-visualization/040417/MOR_active/02-raw-hbond/mor_active_crys.txt"
# COMPETING_NETWORK="/Users/anthony/Desktop/dror/dynamic-networks1/DynamicNetworks/data/crystal-analysis/competing-network-analysis/pymol-visualization/040417/MOR_active/01-pdb/interaction_list_crys_cutoff25.txt"


# # 0.15
# PDB = "5C1M"
# CHAIN = "A"
# TOP = "/Users/anthony/Desktop/dror/dynamic-networks1/DynamicNetworks/data/crystal-analysis/competing-network-analysis/pymol-visualization/040417/MOR_active/01-pdb/5c1m_mor_active.pdb"
# RAW_HBOND_LIST = "/Users/anthony/Desktop/dror/dynamic-networks1/DynamicNetworks/data/crystal-analysis/competing-network-analysis/pymol-visualization/040417/MOR_active/02-raw-hbond/mor_active_crys.txt"
# COMPETING_NETWORK="/Users/anthony/Desktop/dror/dynamic-networks1/DynamicNetworks/data/crystal-analysis/competing-network-analysis/pymol-visualization/040417/MOR_active/01-pdb/interaction_list_crys_cutoff15.txt"



# pymol_driver(PDB, CHAIN, TOP, RAW_HBOND_LIST, COMPETING_NETWORK)




### DOR_inactive Simulation

# # 0.95 cutoff
# PDB = "4N6H"
# CHAIN = "A"
# TOP = "/Users/anthony/Desktop/dror/dynamic-networks1/DynamicNetworks/data/crystal-analysis/competing-network-analysis/pymol-visualization/040417/DOR_inactive/01-pdb/dor_inactive_prod0_frame1_cutoff95.pdb"
# RAW_HBOND_LIST = "/Users/anthony/Desktop/dror/dynamic-networks1/DynamicNetworks/data/crystal-analysis/competing-network-analysis/pymol-visualization/040417/DOR_inactive/02-raw-hbond/dor_inactive_prod0_frame1_cutoff95.txt"
# COMPETING_NETWORK="/Users/anthony/Desktop/dror/dynamic-networks1/DynamicNetworks/data/crystal-analysis/competing-network-analysis/pymol-visualization/040417/DOR_inactive/01-pdb/interaction_list_sim_cutoff95.txt"


# # 0.75 cutoff
# PDB = "4N6H"
# CHAIN = "A"
# TOP = "/Users/anthony/Desktop/dror/dynamic-networks1/DynamicNetworks/data/crystal-analysis/competing-network-analysis/pymol-visualization/040417/DOR_inactive/01-pdb/dor_inactive_prod9_frame127_cutoff75.pdb"
# RAW_HBOND_LIST = "/Users/anthony/Desktop/dror/dynamic-networks1/DynamicNetworks/data/crystal-analysis/competing-network-analysis/pymol-visualization/040417/DOR_inactive/02-raw-hbond/dor_inactive_prod9_frame127_cutoff75.txt"
# COMPETING_NETWORK="/Users/anthony/Desktop/dror/dynamic-networks1/DynamicNetworks/data/crystal-analysis/competing-network-analysis/pymol-visualization/040417/DOR_inactive/01-pdb/interaction_list_sim_cutoff75.txt"

# # 0.50 cutoff
# PDB = "4N6H"
# CHAIN = "A"
# TOP = "/Users/anthony/Desktop/dror/dynamic-networks1/DynamicNetworks/data/crystal-analysis/competing-network-analysis/pymol-visualization/040417/DOR_inactive/01-pdb/dor_inactive_prod11_frame139_cutoff50.pdb"
# RAW_HBOND_LIST = "/Users/anthony/Desktop/dror/dynamic-networks1/DynamicNetworks/data/crystal-analysis/competing-network-analysis/pymol-visualization/040417/DOR_inactive/02-raw-hbond/dor_inactive_prod11_frame139_cutoff50.txt"
# COMPETING_NETWORK="/Users/anthony/Desktop/dror/dynamic-networks1/DynamicNetworks/data/crystal-analysis/competing-network-analysis/pymol-visualization/040417/DOR_inactive/01-pdb/interaction_list_sim_cutoff50.txt"


# # 0.25 cutoff
# PDB = "4N6H"
# CHAIN = "A"
# TOP = "/Users/anthony/Desktop/dror/dynamic-networks1/DynamicNetworks/data/crystal-analysis/competing-network-analysis/pymol-visualization/040417/DOR_inactive/01-pdb/dor_inactive_prod23_frame44_cutoff25.pdb"
# RAW_HBOND_LIST = "/Users/anthony/Desktop/dror/dynamic-networks1/DynamicNetworks/data/crystal-analysis/competing-network-analysis/pymol-visualization/040417/DOR_inactive/02-raw-hbond/dor_inactive_prod23_frame44_cutoff25.txt"
# COMPETING_NETWORK="/Users/anthony/Desktop/dror/dynamic-networks1/DynamicNetworks/data/crystal-analysis/competing-network-analysis/pymol-visualization/040417/DOR_inactive/01-pdb/interaction_list_sim_cutoff25.txt"


# # 0.15 cutoff
# PDB = "4N6H"
# CHAIN = "A"
# TOP = "/Users/anthony/Desktop/dror/dynamic-networks1/DynamicNetworks/data/crystal-analysis/competing-network-analysis/pymol-visualization/040417/DOR_inactive/01-pdb/dor_inactive_prod18_frame204_cutoff15.pdb"
# RAW_HBOND_LIST = "/Users/anthony/Desktop/dror/dynamic-networks1/DynamicNetworks/data/crystal-analysis/competing-network-analysis/pymol-visualization/040417/DOR_inactive/02-raw-hbond/dor_inactive_prod18_frame204_cutoff15.txt"
# COMPETING_NETWORK="/Users/anthony/Desktop/dror/dynamic-networks1/DynamicNetworks/data/crystal-analysis/competing-network-analysis/pymol-visualization/040417/DOR_inactive/01-pdb/interaction_list_sim_cutoff15.txt"



### DOR_inactive Crystal

# # 0.95
# PDB = "4N6H"
# CHAIN = "A"
# TOP = "/Users/anthony/Desktop/dror/dynamic-networks1/DynamicNetworks/data/crystal-analysis/competing-network-analysis/pymol-visualization/040417/DOR_inactive/01-pdb/4n6h_dor_inactive.pdb"
# RAW_HBOND_LIST = "/Users/anthony/Desktop/dror/dynamic-networks1/DynamicNetworks/data/crystal-analysis/competing-network-analysis/pymol-visualization/040417/DOR_inactive/02-raw-hbond/dor_inactive_crys.txt"
# COMPETING_NETWORK="/Users/anthony/Desktop/dror/dynamic-networks1/DynamicNetworks/data/crystal-analysis/competing-network-analysis/pymol-visualization/040417/DOR_inactive/01-pdb/interaction_list_crys_cutoff95.txt"

# # 0.75
# PDB = "4N6H"
# CHAIN = "A"
# TOP = "/Users/anthony/Desktop/dror/dynamic-networks1/DynamicNetworks/data/crystal-analysis/competing-network-analysis/pymol-visualization/040417/DOR_inactive/01-pdb/4n6h_dor_inactive.pdb"
# RAW_HBOND_LIST = "/Users/anthony/Desktop/dror/dynamic-networks1/DynamicNetworks/data/crystal-analysis/competing-network-analysis/pymol-visualization/040417/DOR_inactive/02-raw-hbond/dor_inactive_crys.txt"
# COMPETING_NETWORK="/Users/anthony/Desktop/dror/dynamic-networks1/DynamicNetworks/data/crystal-analysis/competing-network-analysis/pymol-visualization/040417/DOR_inactive/01-pdb/interaction_list_crys_cutoff75.txt"


# # 0.50
# PDB = "4N6H"
# CHAIN = "A"
# TOP = "/Users/anthony/Desktop/dror/dynamic-networks1/DynamicNetworks/data/crystal-analysis/competing-network-analysis/pymol-visualization/040417/DOR_inactive/01-pdb/4n6h_dor_inactive.pdb"
# RAW_HBOND_LIST = "/Users/anthony/Desktop/dror/dynamic-networks1/DynamicNetworks/data/crystal-analysis/competing-network-analysis/pymol-visualization/040417/DOR_inactive/02-raw-hbond/dor_inactive_crys.txt"
# COMPETING_NETWORK="/Users/anthony/Desktop/dror/dynamic-networks1/DynamicNetworks/data/crystal-analysis/competing-network-analysis/pymol-visualization/040417/DOR_inactive/01-pdb/interaction_list_crys_cutoff50.txt"


# # 0.25
# PDB = "4N6H"
# CHAIN = "A"
# TOP = "/Users/anthony/Desktop/dror/dynamic-networks1/DynamicNetworks/data/crystal-analysis/competing-network-analysis/pymol-visualization/040417/DOR_inactive/01-pdb/4n6h_dor_inactive.pdb"
# RAW_HBOND_LIST = "/Users/anthony/Desktop/dror/dynamic-networks1/DynamicNetworks/data/crystal-analysis/competing-network-analysis/pymol-visualization/040417/DOR_inactive/02-raw-hbond/dor_inactive_crys.txt"
# COMPETING_NETWORK="/Users/anthony/Desktop/dror/dynamic-networks1/DynamicNetworks/data/crystal-analysis/competing-network-analysis/pymol-visualization/040417/DOR_inactive/01-pdb/interaction_list_crys_cutoff25.txt"


# # 0.15
# PDB = "4N6H"
# CHAIN = "A"
# TOP = "/Users/anthony/Desktop/dror/dynamic-networks1/DynamicNetworks/data/crystal-analysis/competing-network-analysis/pymol-visualization/040417/DOR_inactive/01-pdb/4n6h_dor_inactive.pdb"
# RAW_HBOND_LIST = "/Users/anthony/Desktop/dror/dynamic-networks1/DynamicNetworks/data/crystal-analysis/competing-network-analysis/pymol-visualization/040417/DOR_inactive/02-raw-hbond/dor_inactive_crys.txt"
# COMPETING_NETWORK="/Users/anthony/Desktop/dror/dynamic-networks1/DynamicNetworks/data/crystal-analysis/competing-network-analysis/pymol-visualization/040417/DOR_inactive/01-pdb/interaction_list_crys_cutoff15.txt"


# 0.0
# PDB = "4N6H"
# CHAIN = "A"
# TOP = "/Users/anthony/Desktop/dror/dynamic-networks1/DynamicNetworks/data/crystal-analysis/competing-network-analysis/pymol-visualization/040417/DOR_inactive/01-pdb/4n6h_dor_inactive.pdb"
# RAW_HBOND_LIST = "/Users/anthony/Desktop/dror/dynamic-networks1/DynamicNetworks/data/crystal-analysis/competing-network-analysis/pymol-visualization/040417/DOR_inactive/02-raw-hbond/dor_inactive_crys.txt"
# COMPETING_NETWORK="/Users/anthony/Desktop/dror/dynamic-networks1/DynamicNetworks/data/crystal-analysis/competing-network-analysis/pymol-visualization/040417/DOR_inactive/01-pdb/interaction_list_crys_cutoff0.txt"


### A2A_inactive Simulation

# # 0.75 cutoff
# PDB = "5IU4"
# CHAIN = "A"
# TOP = "/Users/anthony/Desktop/dror/dynamic-networks1/DynamicNetworks/data/crystal-analysis/competing-network-analysis/pymol-visualization/040417/A2A_inactive/01-pdb/a2a_inactive_prod0_frame8_cutoff75.pdb"
# RAW_HBOND_LIST = "/Users/anthony/Desktop/dror/dynamic-networks1/DynamicNetworks/data/crystal-analysis/competing-network-analysis/pymol-visualization/040417/A2A_inactive/02-raw-hbond/a2a_inactive_prod0_frame8_cutoff75.txt"
# COMPETING_NETWORK="/Users/anthony/Desktop/dror/dynamic-networks1/DynamicNetworks/data/crystal-analysis/competing-network-analysis/pymol-visualization/040417/A2A_inactive/01-pdb/interaction_list_sim_cutoff75.txt"

# # 0.50 cutoff
# PDB = "5IU4"
# CHAIN = "A"
# TOP = "/Users/anthony/Desktop/dror/dynamic-networks1/DynamicNetworks/data/crystal-analysis/competing-network-analysis/pymol-visualization/040417/A2A_inactive/01-pdb/a2a_inactive_prod3_frame35_cutoff50.pdb"
# RAW_HBOND_LIST = "/Users/anthony/Desktop/dror/dynamic-networks1/DynamicNetworks/data/crystal-analysis/competing-network-analysis/pymol-visualization/040417/A2A_inactive/02-raw-hbond/a2a_inactive_prod3_frame35_cutoff50.txt"
# COMPETING_NETWORK="/Users/anthony/Desktop/dror/dynamic-networks1/DynamicNetworks/data/crystal-analysis/competing-network-analysis/pymol-visualization/040417/A2A_inactive/01-pdb/interaction_list_sim_cutoff50.txt"


# # 0.25 cutoff
# PDB = "5IU4"
# CHAIN = "A"
# TOP = "/Users/anthony/Desktop/dror/dynamic-networks1/DynamicNetworks/data/crystal-analysis/competing-network-analysis/pymol-visualization/040417/A2A_inactive/01-pdb/a2a_inactive_prod3_frame189_cutoff25.pdb"
# RAW_HBOND_LIST = "/Users/anthony/Desktop/dror/dynamic-networks1/DynamicNetworks/data/crystal-analysis/competing-network-analysis/pymol-visualization/040417/A2A_inactive/02-raw-hbond/a2a_inactive_prod3_frame189_cutoff25.txt"
# COMPETING_NETWORK="/Users/anthony/Desktop/dror/dynamic-networks1/DynamicNetworks/data/crystal-analysis/competing-network-analysis/pymol-visualization/040417/A2A_inactive/01-pdb/interaction_list_sim_cutoff25.txt"


# # 0.15 cutoff
# PDB = "5IU4"
# CHAIN = "A"
# TOP = "/Users/anthony/Desktop/dror/dynamic-networks1/DynamicNetworks/data/crystal-analysis/competing-network-analysis/pymol-visualization/040417/A2A_inactive/01-pdb/a2a_inactive_prod3_frame192_cutoff15.pdb"
# RAW_HBOND_LIST = "/Users/anthony/Desktop/dror/dynamic-networks1/DynamicNetworks/data/crystal-analysis/competing-network-analysis/pymol-visualization/040417/A2A_inactive/02-raw-hbond/a2a_inactive_prod3_frame192_cutoff15.txt"
# COMPETING_NETWORK="/Users/anthony/Desktop/dror/dynamic-networks1/DynamicNetworks/data/crystal-analysis/competing-network-analysis/pymol-visualization/040417/A2A_inactive/01-pdb/interaction_list_sim_cutoff15.txt"


### A2A_inactive Crystal

# # 0.95
# PDB = "5IU4"
# CHAIN = "A"
# TOP = "/Users/anthony/Desktop/dror/dynamic-networks1/DynamicNetworks/data/crystal-analysis/competing-network-analysis/pymol-visualization/040417/A2A_inactive/01-pdb/5iu4_a2a_inactive.pdb"
# RAW_HBOND_LIST = "/Users/anthony/Desktop/dror/dynamic-networks1/DynamicNetworks/data/crystal-analysis/competing-network-analysis/pymol-visualization/040417/A2A_inactive/02-raw-hbond/a2a_inactive_crys.txt"
# COMPETING_NETWORK="/Users/anthony/Desktop/dror/dynamic-networks1/DynamicNetworks/data/crystal-analysis/competing-network-analysis/pymol-visualization/040417/A2A_inactive/01-pdb/interaction_list_crys_cutoff95.txt"


# # 0.75
# PDB = "5IU4"
# CHAIN = "A"
# TOP = "/Users/anthony/Desktop/dror/dynamic-networks1/DynamicNetworks/data/crystal-analysis/competing-network-analysis/pymol-visualization/040417/A2A_inactive/01-pdb/5iu4_a2a_inactive.pdb"
# RAW_HBOND_LIST = "/Users/anthony/Desktop/dror/dynamic-networks1/DynamicNetworks/data/crystal-analysis/competing-network-analysis/pymol-visualization/040417/A2A_inactive/02-raw-hbond/a2a_inactive_crys.txt"
# COMPETING_NETWORK="/Users/anthony/Desktop/dror/dynamic-networks1/DynamicNetworks/data/crystal-analysis/competing-network-analysis/pymol-visualization/040417/A2A_inactive/01-pdb/interaction_list_crys_cutoff75.txt"


# # 0.50
# PDB = "5IU4"
# CHAIN = "A"
# TOP = "/Users/anthony/Desktop/dror/dynamic-networks1/DynamicNetworks/data/crystal-analysis/competing-network-analysis/pymol-visualization/040417/A2A_inactive/01-pdb/5iu4_a2a_inactive.pdb"
# RAW_HBOND_LIST = "/Users/anthony/Desktop/dror/dynamic-networks1/DynamicNetworks/data/crystal-analysis/competing-network-analysis/pymol-visualization/040417/A2A_inactive/02-raw-hbond/a2a_inactive_crys.txt"
# COMPETING_NETWORK="/Users/anthony/Desktop/dror/dynamic-networks1/DynamicNetworks/data/crystal-analysis/competing-network-analysis/pymol-visualization/040417/A2A_inactive/01-pdb/interaction_list_crys_cutoff50.txt"



# # 0.25
# PDB = "5IU4"
# CHAIN = "A"
# TOP = "/Users/anthony/Desktop/dror/dynamic-networks1/DynamicNetworks/data/crystal-analysis/competing-network-analysis/pymol-visualization/040417/A2A_inactive/01-pdb/5iu4_a2a_inactive.pdb"
# RAW_HBOND_LIST = "/Users/anthony/Desktop/dror/dynamic-networks1/DynamicNetworks/data/crystal-analysis/competing-network-analysis/pymol-visualization/040417/A2A_inactive/02-raw-hbond/a2a_inactive_crys.txt"
# COMPETING_NETWORK="/Users/anthony/Desktop/dror/dynamic-networks1/DynamicNetworks/data/crystal-analysis/competing-network-analysis/pymol-visualization/040417/A2A_inactive/01-pdb/interaction_list_crys_cutoff25.txt"


# 0.15
# PDB = "5IU4"
# CHAIN = "A"
# TOP = "/Users/anthony/Desktop/dror/dynamic-networks1/DynamicNetworks/data/crystal-analysis/competing-network-analysis/pymol-visualization/040417/A2A_inactive/01-pdb/5iu4_a2a_inactive.pdb"
# RAW_HBOND_LIST = "/Users/anthony/Desktop/dror/dynamic-networks1/DynamicNetworks/data/crystal-analysis/competing-network-analysis/pymol-visualization/040417/A2A_inactive/02-raw-hbond/a2a_inactive_crys.txt"
# COMPETING_NETWORK="/Users/anthony/Desktop/dror/dynamic-networks1/DynamicNetworks/data/crystal-analysis/competing-network-analysis/pymol-visualization/040417/A2A_inactive/01-pdb/interaction_list_crys_cutoff15.txt"




# pymol_driver(PDB, CHAIN, TOP, RAW_HBOND_LIST, COMPETING_NETWORK)
