# Author: Anthony Kai Kwang Ma
# Email: akma327@stanford.edu
# Date: 04/04/2017
# visualize_competing_networks.py 

import os
from utils import *
import pickle


USAGE_STR = """

# Purpose 
# Identify the frames in simulation and corresponding residues that 
# form water-mediated interactions for a given flareplot network json file. 

# Usage 
# Crystal:
# python visualize_competing_networks.py -crys <PDB> <FLAREPLOT_FILE> <OUTPUT_INTERACTION_LIST>

# Simulation Flareplot:
# python visualize_competing_networks.py -sim -flare <PDB> <FLAREPLOT_FILE> <EXP_REP_DICT_PATH> <OUTPUT_INTERACTION_LIST> <-chainId> <MDTRAJ chain number> -interlist <INTERACTION_LIST>

# Simulation Heatmap:
# python visualize_competing_networks.py -sim -heatmap <PDB> <HEATMAP_FILE> <EXP_REP_DICT_PATH> <OUTPUT_INTERACTION_LIST> <-chainId> <MDTRAJ chain number> -columnId <COLUMN_ID> -interlist <INTERACTION_LIST> 


# Arguments
# <-crys/sim> To denote whether running for crystal structure or simulation 
# <-flare/-heatmap> To denote whether network list is derived from flareplot or heatmap analysis
# <PDB> Accession code for the receptor of interest 
# <FLAREPLOT_FILE> Absolute path to the json file polar network representation
# <HEATMAP_FILE> Absolute path to the txt table for water-mediated interaction frequencies across various simulation conditions
# <EXP_REP_DICT_PATH> Absolute path to the folder containing the dictionary of interaction keys and time indices for trajectory 
# <OUTPUT_INTERACTION_LIST> Absolute path to a list of the gpcrdb1--gpcrdb2 interaction pairs that appear in 
# the frame of simulation
# <-chainId> Optional flag to provide chain number of the GPCR portion of pdb according to 
# mdtraj nomenclature. (ie chain A in pdb is chain 0 in mdtraj, so user provides '0')
# <-columnId> "ALL" If looking for interactions present across all receptors in a table. "B2AR" or "MOR" if analyzing single columns
# <INTERACTION_LIST> List of interactions 


# Example: Crystal 

PDB="4N6H"
FLAREPLOT_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/interaction-footprint-analysis/residue-resolution-evobundle-input/033117_crystal_vs_simulation/DOR_inactive/venn_diagram/crys_only/DOR_inactive_crystal_cutoff_75.json"
OUTPUT_INTERACTION_LIST="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/competing-network-analysis/pymol-visualization/040417/DOR_inactive/01-pdb/interaction_list_crys_cutoff75.txt"
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/analysis/competing-network-analysis
python visualize_competing_networks.py -crys $PDB $FLAREPLOT_FILE $OUTPUT_INTERACTION_LIST

# Example: Simulation Flareplot

PDB="4N6H"
FLAREPLOT_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/interaction-footprint-analysis/residue-resolution-evobundle-input/033117_crystal_vs_simulation/DOR_inactive/venn_diagram/sim_only/DOR_inactive_simulation_cutoff_75.json"
EXP_REP_DICT_PATH="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutputDictionary/DOR-inactive-naltrindole-unpublished/condition-naltrindole-bound/rep_1/050516_NONHB_DEFAULT_HB_3.5_70"
OUTPUT_INTERACTION_LIST="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/competing-network-analysis/pymol-visualization/040417/DOR_inactive/01-pdb/interaction_list_sim_cutoff75.txt"
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/analysis/competing-network-analysis
python visualize_competing_networks.py -sim -flare $PDB $FLAREPLOT_FILE $EXP_REP_DICT_PATH $OUTPUT_INTERACTION_LIST -chainId 3 -interlist -wb -wb2 


# Example: Simulation Heatmap

PDB="5C1M"
HEATMAP_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/results/non-state-decomposition/residue-resolution-combined-rep/040117_union_wb_freq/wb_wb2/active_receptors/active_filtered_freq80.txt"
EXP_REP_DICT_PATH="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutputDictionary/MOR-active-noNb-BU72-nature2015/condition-nb-interface-restrained-BU72/rep_1/050516_NONHB_DEFAULT_HB_3.5_70"
OUTPUT_INTERACTION_LIST="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/competing-network-analysis/pymol-visualization/040417/active-heatmap/01-pdb/interaction_list_sim_cutoff60_ALL.txt"
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/analysis/competing-network-analysis
python visualize_competing_networks.py -sim -heatmap $PDB $HEATMAP_FILE $EXP_REP_DICT_PATH $OUTPUT_INTERACTION_LIST -chainId 3 -columnId ALL -interlist -wb -wb2 



"""

FULL_INTERACTION_LIST = ['-sb', '-pc', '-ps', '-ts', '-vdw', '-hbbb', '-hbsb', '-hbss', '-rw', '-wb', '-wb2', '-hlb', '-hls', '-lw', '-lwb', '-lwb2']

ORIG_CRYS_COLOR = "#D3D3D3"
CRYS_SIM_COLOR = "#FFA500"
SIM_COLOR = "#00FFFF"

HIGH_FREQ_THRESHOLD = 0.5



def get_resid_list(gpcrdb_set, GPCRDB_TO_RESID):
	"""
		Convert gpcrdb set to resid list
	"""

	resid_list = []
	for gpcrdb in gpcrdb_set:
		resid = GPCRDB_TO_RESID[gpcrdb]
		if(resid != None and resid != "None"):
			resid_list.append(resid)
	return resid_list

def print_pymol_query(resid_list):
	"""
		Print pyMol query based on resid_list 
	"""

	query = "resi " + resid_list[0][3:]
	for i in range(len(resid_list)):
		if(i > 0):
			query += "+" + resid_list[i][3:]

	### Pymol Executions
	print("bg_color white")
	print("fetch " + PDB)
	print("hide")
	print("show cartoon")
	print("cartoon loop")
	print("color white, " + PDB)
	print("sele aa, " + query)
	print("show sticks, aa")
	print("sele w, resn HOH within 3 of aa")
	print("show spheres, w")
	print("set sphere_scale, 0.25")

def visualize_crystal_network(PDB, FLAREPLOT_FILE, OUTPUT_INTERACTION_LIST):
	"""
		Visualize the water mediated contacts in crystal structure. 
		Output: PyMol Query (resi 114+115+120+...)
	"""

	GPCRDB_TO_RESID = genGPCRDBToResidueTable(PDB)
	flareplot_edges = getFlareplotEdges(FLAREPLOT_FILE)

	### Extract set of gpcrdb numbers involved in the crystal water-mediated network
	f = open(OUTPUT_INTERACTION_LIST, 'w')
	gpcrdb_set = set()
	for e in flareplot_edges:
		color = str(e["color"])
		gpcrdb1 = str(e["name1"]).split(".")[1]
		gpcrdb2 = str(e["name2"]).split(".")[1]
		if(color == CRYS_SIM_COLOR):
			print(gpcrdb1 + "\t" + gpcrdb2 + "\n")
			f.write(gpcrdb1 + "\t" + gpcrdb2 + "\n")
			gpcrdb_set.add(gpcrdb1)
			gpcrdb_set.add(gpcrdb2)

	### Extract set of resid involved in the crystal water-mediated network
	resid_list = get_resid_list(gpcrdb_set, GPCRDB_TO_RESID)



	### Print pyMol query
	print_pymol_query(resid_list)


def visualize_simulation_network(PDB, network_keys, EXP_REP_DICT_PATH, OUTPUT_INTERACTION_LIST, INTERACTION_LIST, CHAIN_ID=None):
	"""
		Visualize the water mediated contacts in simulation. 
		Output: Frame in VMD, PyMol Query for that frame's network (resi 114+115+120+...)
	"""
	RESID_TO_GPCRDB = genResidueToGpcrdbTable(PDB)

	### Generate full matrix with rows being interactions at atomic resolution across different
	### interaction types and columns are time points
	aggRowLabels, aggRawBinaryMatrix = genAggregateInteractionDictionary(EXP_REP_DICT_PATH, RESID_TO_GPCRDB, INTERACTION_LIST, CHAIN_ID)

	### Compress the full matrix by unionizing over interactions that share the same GPCRDB pair but different
	### atoms or interaction types 
	unionRowLabels, unionRawBinaryMatrix = unionizeBinaryMatrix(aggRowLabels, aggRawBinaryMatrix)

	### Generate submatrix with rows representing interactions in the flareplot network
	
	sub_labels, submatrix = [], []
	for key in network_keys:
		index = unionRowLabels.index(key)
		sub_labels.append(key)
		submatrix.append(unionRawBinaryMatrix[index])

	submatrix = np.array(submatrix)
	tp_counts = np.sum(submatrix, axis = 0)
	print("tp_counts", tp_counts)
	max_matches = max(tp_counts)
	match_indices = np.where(tp_counts == max_matches)[0]
	if(match_indices[0] != 0):
		optimal_tp = match_indices[0]
	else:
		optimal_tp = match_indices[1]

	### Get the associated resid list for PyMol Query
	GPCRDB_TO_RESID = genGPCRDBToResidueTable(PDB)
	gpcrdb_set = set()
	for index, interaction_row in enumerate(submatrix):
		if(interaction_row[optimal_tp] == 1):
			gpcrdb1, gpcrdb2 = sub_labels[index]
			gpcrdb_set.add(gpcrdb1)
			gpcrdb_set.add(gpcrdb2)

	### Extract set of resid involved in the crystal water-mediated network
	resid_list = get_resid_list(gpcrdb_set, GPCRDB_TO_RESID)

	### Print pyMol query
	print("\n\nOptimal Frame: " + str(optimal_tp))
	print("Matched " + str(max_matches) + "/" + str(len(sub_labels)) + " interactions from the following competing network in simulation")
	f = open(OUTPUT_INTERACTION_LIST, 'w')
	for gpcrdb1, gpcrdb2 in sub_labels:
		print(gpcrdb1 + "\t" + gpcrdb2 + "\n")
		f.write(gpcrdb1 + "\t" + gpcrdb2 + "\n")


	print("\n\nPymol Query ...")
	print_pymol_query(resid_list)



def visual_sim_flareplot_driver(PDB, FLAREPLOT_FILE, EXP_REP_DICT_PATH, OUTPUT_INTERACTION_LIST, INTERACTION_LIST, CHAIN_ID):
	"""
		Driver function for analyzing simulation through flareplot networks.
		Intended use: Competing networks analysis for crystal structure vs simulation
	"""
	flareplot_edges = getFlareplotEdges(FLAREPLOT_FILE)
	network_keys = []
	for e in flareplot_edges:
		gpcrdb1, gpcrdb2 = str(e["name1"]).split(".")[1], str(e["name2"]).split(".")[1]
		network_keys.append((gpcrdb1, gpcrdb2))

	visualize_simulation_network(PDB, network_keys, EXP_REP_DICT_PATH, OUTPUT_INTERACTION_LIST, INTERACTION_LIST, CHAIN_ID)


def visual_sim_heatmap_driver(PDB, HEATMAP_FILE, EXP_REP_DICT_PATH, OUTPUT_INTERACTION_LIST, INTERACTION_LIST, CHAIN_ID, COLUMN_ID="ALL"):
	"""
		Driver function for analyzing simulation through flareplot networks.
		Intended use: Competing networks analysis for crystal structure vs simulation
	"""

	OUT_DIR = "/".join(OUTPUT_INTERACTION_LIST.split("/")[0:-1])
	if not os.path.exists(OUT_DIR):
		os.makedirs(OUT_DIR)

	with open(HEATMAP_FILE, 'rU') as f: 
		reader = csv.reader(f, delimiter="\t")
		d = list(reader)
	darr = np.array(d)
	column_labels = list(darr[0,:])
	column_indices = range(len(column_labels))
	
	mask_indices = [] ### Which receptors conditions to check for high freq interaction
	if(COLUMN_ID == "ALL"):
		mask_indices = column_indices[1:] 
	else:
		for i, cl in enumerate(column_labels):
			if(COLUMN_ID in cl): mask_indices.append(i)


	network_keys = []
	for row in darr[1:]:
		gpcrdb1, gpcrdb2 = row[0].split(":")

		add_key_flag = True
		for mi in mask_indices:
			if(float(row[mi]) < HIGH_FREQ_THRESHOLD):
				add_key_flag = False
				break

		if(add_key_flag == True):
			network_keys.append((gpcrdb1, gpcrdb2))


	visualize_simulation_network(PDB, network_keys, EXP_REP_DICT_PATH, OUTPUT_INTERACTION_LIST, INTERACTION_LIST, CHAIN_ID)


                



if __name__ == "__main__":
	if("-crys" in sys.argv):
		(PDB, FLAREPLOT_FILE, OUTPUT_INTERACTION_LIST) = (sys.argv[2], sys.argv[3], sys.argv[4])
		visualize_crystal_network(PDB, FLAREPLOT_FILE, OUTPUT_INTERACTION_LIST)
	elif("-sim" in sys.argv and "-flare" in sys.argv):
		(PDB, FLAREPLOT_FILE, EXP_REP_DICT_PATH, OUTPUT_INTERACTION_LIST) = (sys.argv[3], sys.argv[4], sys.argv[5], sys.argv[6])

		CHAIN_ID = None 
		if('-chainId' in sys.argv):
			CHAIN_ID = sys.argv[sys.argv.index('-chainId') + 1]

		interation_list_index = sys.argv.index("-interlist") + 1
		INTERACTION_LIST = sys.argv[interation_list_index:]
		if('-all' in INTERACTION_LIST): INTERACTION_LIST = FULL_INTERACTION_LIST
		visual_sim_flareplot_driver(PDB, FLAREPLOT_FILE, EXP_REP_DICT_PATH, OUTPUT_INTERACTION_LIST, INTERACTION_LIST, CHAIN_ID)
	elif("-sim" in sys.argv and "-heatmap" in sys.argv):
		(PDB, HEATMAP_FILE, EXP_REP_DICT_PATH, OUTPUT_INTERACTION_LIST) = (sys.argv[3], sys.argv[4], sys.argv[5], sys.argv[6])

		CHAIN_ID = None 
		if('-chainId' in sys.argv):
			CHAIN_ID = sys.argv[sys.argv.index('-chainId') + 1]

		COLUMN_ID = "ALL"
		if('-columnId' in sys.argv):
			COLUMN_ID = sys.argv[sys.argv.index('-columnId') + 1]

		interation_list_index = sys.argv.index("-interlist") + 1
		INTERACTION_LIST = sys.argv[interation_list_index:]
		if('-all' in INTERACTION_LIST): INTERACTION_LIST = FULL_INTERACTION_LIST
		visual_sim_heatmap_driver(PDB, HEATMAP_FILE, EXP_REP_DICT_PATH, OUTPUT_INTERACTION_LIST, INTERACTION_LIST, CHAIN_ID, COLUMN_ID)



