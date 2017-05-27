# Author: Anthony Kai Kwang Ma
# Email: akma327@stanford.edu
# compute_polar_network_list.py

from polar_network_utils import *

USAGE_STR = """
# Purpose
# For a given topology (ie crystal structure) calculate all the contacts 
# specified by interaction list. Prune output list to include contacts
# that belong to the Transmembrane Bundle (ie have GPCRDB number)

# Usage
# python compute_polar_network_list.py <PDB> <TOP> <OUT> <-inactive or -active flag> <-solv> <solvent> <-chain> <chainID> <-ligand> <Ligand> <-interlist> <INTERACTION_LIST>

# Arguments
# <PDB> PDB code of the GPCR in the topology
# <TOP> Absolute path to the topology file
# <OUT> Output file path
# <-inactive or -active> flag to denote which Huang paper network to combine with. 
# <-solv> Optional flag to denote the solvent to use 
# <-chain> Optional flag to denote specific chain value 
# <-ligand> Provide ligand if any of the interactions in the INTERACTION_LIST involve a ligand.
# <INTERACTION_LIST> Specify list of interaction types to consider

# Example
PDB="5C1M"
TOP="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/MOR-active-noNb-BU72-nature2015/condition-nb-interface-restrained-BU72/step5_assembly.pdb"
OUT="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/polar-networks/mor-active-rep_1.txt"
python compute_polar_network_list.py $PDB $TOP $OUT -interlist -wb

"""
HUANG_INACTIVE_PDB = "4N6H"
HUANG_ACTIVE_PDB = "5C1M"
HUANG_INACTIVE_NETWORK="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/interaction-footprint-analysis/polar-network-lists/inactive-dor-network.txt"
HUANG_ACTIVE_NETWORK="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/interaction-footprint-analysis/polar-network-lists/active-mor-network.txt"


K_MIN_ARG = 5

def is_in_TM(gpcrdb):
	"""
		Parse gpcrdb number and returns True if in TM helix
	"""
	tm_list = ["1", "2", "3", "4", "5", "6", "7"]
	if(gpcrdb == None): return False
	tm = gpcrdb.split("x")[0]
	if(tm in tm_list):
		return True
	return False

def is_ligand(gpcrdb):
	if("LIG" in gpcrdb): return True
	return False

def getHuangInteractions(huang_path, huang_pdb, HUANG_GPCRDB_DICT, GPCRDB_DICT):
	"""
		Given the path to the huang paper polar network list, convert single 
		letter amino acid to gpcrdb, then use GPCRDB_DICT to convert to the 
		appropriate amino acid in the simulation of interest. 
	"""

	def gpcrdb_to_res(gpcrdb, GPCRDB_TO_RES_DICT):
		if(gpcrdb in GPCRDB_TO_RES_DICT): 
			return GPCRDB_TO_RES_DICT[gpcrdb]
		return "-"

	GPCRDB_TO_RES_DICT = {GPCRDB_DICT[k]: k for k in GPCRDB_DICT}

	huang_polar_network_interactions = set()

	f = open(huang_path, 'r')
	for line in f:
		if(" -- " in line):
			linfo = line.strip().split("@")
			interaction_type = linfo[1]
			shortaa1, shortaa2 = linfo[0].split(" -- ")
			aa1 = aa1to3_dict[shortaa1[:1]].upper() + shortaa1[1:]
			aa2 = aa1to3_dict[shortaa2[:1]].upper() + shortaa2[1:]
			# print("huang", aa1, aa2)
			huang_gpcrdb1 = getGPCRDB(aa1, HUANG_GPCRDB_DICT)
			huang_gpcrdb2 = getGPCRDB(aa2, HUANG_GPCRDB_DICT)

			native_aa1, native_aa2 = gpcrdb_to_res(huang_gpcrdb1, GPCRDB_TO_RES_DICT), gpcrdb_to_res(huang_gpcrdb2, GPCRDB_TO_RES_DICT)
			short_native_aa1 = aa3to1_dict[native_aa1[:3]] + native_aa1[3:]
			short_native_aa2 = aa3to1_dict[native_aa2[:3]] + native_aa2[3:]
			huang_polar_network_interactions.add((short_native_aa1, short_native_aa2, huang_gpcrdb1, huang_gpcrdb2, interaction_type))
	return huang_polar_network_interactions




def compute_polar_network_list_driver(PDB, TOP, OUT, huang_path, huang_pdb, solvent_id, chainId, ligand, interaction_selections):
	"""
		Compute the polar network list
	"""
	### GPCRDB Dict
	GPCRDB_DICT = genResidueToGpcrdbTable(PDB)

	### Use static interaction calculator to create temporary file
	TEMP_OUTPUT = os.path.dirname(OUT) + "/temp.txt"
	static_calc_cmd = "python StaticInteractionCalculator.py " + TOP + " " + TEMP_OUTPUT
	if(solvent_id != None):
		static_calc_cmd += " -solv " + str(solvent_id)
	if(chainId != None):
		static_calc_cmd += " -chain " + str(chainId)
	if(ligand != None):
		static_calc_cmd += " -ligand " + str(ligand)
	static_calc_cmd += " -interlist "
	for interaction in interaction_selections:
		static_calc_cmd += interaction + " "

	print("exec_command", static_calc_cmd)
	os.chdir(STATIC_INT_CALC_PATH)
	os.system(static_calc_cmd)

	### Process the temporary output into polar network list
	f = open(TEMP_OUTPUT)
	polar_network_interactions = set()
	tot_counter = 0
	suc_counter = 0
	for line in f:
		tot_counter +=1
		linfo = line.strip().split("@-")
		interaction_type = linfo[1]
		atompair = linfo[0].split(" -- ")
		residue1 = atompair[0].split("-")[0]
		residue2 = atompair[1].split("-")[0]

		fixed_res1 = fixAminoAcidNames(residue1[0:3])
		fixed_res2 = fixAminoAcidNames(residue2[0:3])

		res1 = fixed_res1 + residue1[3:]
		res2 = fixed_res2 + residue2[3:]

		gpcrdb1 = getGPCRDB(res1, GPCRDB_DICT)
		gpcrdb2 = getGPCRDB(res2, GPCRDB_DICT)

		print("asdf", gpcrdb1, gpcrdb2)

		### Check if both residues are in transmembrane helix
		if((is_in_TM(gpcrdb1) and is_in_TM(gpcrdb2)) or (is_ligand(gpcrdb1) and is_in_TM(gpcrdb2)) or (is_in_TM(gpcrdb1) and is_ligand(gpcrdb2))):
			
			k1 = "LIG" if "LIG" in fixed_res1 else aa3to1_dict[fixed_res1] + residue1[3:]
			k2 = "LIG" if "LIG" in fixed_res2 else aa3to1_dict[fixed_res2] + residue2[3:]
			key1 = (k1, k2, gpcrdb1, gpcrdb2, interaction_type)
			key2 = (k2, k1, gpcrdb2, gpcrdb1, interaction_type)
			if(key1 not in polar_network_interactions and key2 not in polar_network_interactions):
				suc_counter += 1
				polar_network_interactions.add(key1)

		print("tot_counter", tot_counter, "suc_counter", suc_counter)
	polar_network_interactions = (polar_network_interactions)


	### Get Huang Polar Network List
	# HUANG_GPCRDB_DICT = genResidueToGpcrdbTable(huang_pdb)
	# huang_polar_network_interactions = getHuangInteractions(huang_path, huang_pdb, HUANG_GPCRDB_DICT, GPCRDB_DICT)

	### Combine crystal simulation + Huang Paper polar network
	# polar_network_interactions = polar_network_interactions | huang_polar_network_interactions
	polar_network_interactions = sorted(list(polar_network_interactions))

	### Write out polar network list
	fo = open(OUT, 'w')
	fo.write("PDB:" + PDB + "\n")
	for p in polar_network_interactions:
		fo.write(p[0] + " -- " + p[1] + " -- " + p[2] + " -- " + p[3] + "@" + p[4] + "\n")

	### Remove temp file
	os.system("rm " + TEMP_OUTPUT)





if __name__ == "__main__":
	if(len(sys.argv) < K_MIN_ARG):
		print(USAGE_STR)
		exit(0)

	(PDB, TOP, OUT) = (sys.argv[1], sys.argv[2], sys.argv[3])
	huang_path = None
	huang_pdb = None
	if("-inactive" in sys.argv): 
		huang_path = HUANG_INACTIVE_NETWORK
		huang_pdb = HUANG_INACTIVE_PDB
	elif("-active" in sys.argv): 
		huang_path = HUANG_ACTIVE_NETWORK
		huang_pdb = HUANG_ACTIVE_PDB
	if(huang_path == None):
		print(USAGE_STR)
		exit(0)
	solvent_id = None
	if('-solv' in sys.argv):
		solvent_index = sys.argv.index('-solv') + 1
		solvent_id = sys.argv[solvent_index]
	chainId = None 
	if("-chain" in sys.argv):
		chainId = str(sys.argv[sys.argv.index("-chain") + 1])
	ligand = None
	if("-ligand" in sys.argv):
		ligand = str(sys.argv[sys.argv.index("-ligand") + 1])
	interaction_selections = sys.argv[sys.argv.index("-interlist") + 1:]
	if("-all" in interaction_selections):
		interaction_selections = ALL_INTERACTION_TYPES
	compute_polar_network_list_driver(PDB, TOP, OUT, huang_path, huang_pdb, solvent_id, chainId, ligand, interaction_selections)



