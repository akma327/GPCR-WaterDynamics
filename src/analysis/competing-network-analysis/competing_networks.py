# Author: Anthony Kai Kwang Ma
# Email: akma327@stanford.edu
# Date: 10/13/16
# competing_networks.py 

import os 
import sys
from competing_network_utils import *


USAGE_STR = """
# Purpose 
# For a polar network P, we want to determine whether or not nearby interactions
# are anticorrelated to those interactions in P. To do this, this script unionizes
# over all possible interactions in the entire trajectory to get the complete set
# of interactions. Next generate a filtered subset F which contains interactions 
# in the complete union set but have at least one amino acid that belongs to P. 
# Iterate through all interactions p' in P, and for each interaction f' in F that has 
# at least one of it's amino acid in p' compute the anticorrelation. Output file 
# contains the list of (p', f', anticorrelation value). 

# Usage 
# python competing_networks.py <EXP_COND_DICT_FOLDER> <EXP_COND_PDB> <POLAR_NETWORK_LIST> <POLAR_NETWORK_PDB> <OUTPUT_FILE> <-interlist> <INTERACTION_LIST>

# Arguments
# <EXP_COND_DICT_FOLDER> Absolute path to the experiment replicate dictionary folder. 
# <EXP_COND_PDB> PDB Code for the experiment condition's crystal receptor. 
# <POLAR_NETWORK_LIST> Absolute path to the list of interactions in the polar network of interest 
# <POLAR_NETWORK_PDB> PDB code for the polar network of interest 
# <OUTPUT_FILE> Absolute path to the output file with information stored as lines formatted as
# 			ASP128-ASP128@wb	ASP128-VAL124@hbbb	0.3593	0.3517	0.8927
# 			VAL266-ASN314@wb	LEU317-ASN314@hbbb	0.3742	0.7944	0.414
# 				  ... 					... 		  ...     ...    ...
# 
# <-interlist> Optional flag to allow user to specify specifically which interaction types to consider. Default is to consider
# all hydrogen bond related interactions. 

# Example 1 - dor-inactive-network with dor-inactive receptor 
EXP_COND_DICT_FOLDER="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutputDictionary/DOR-inactive-naltrindole-unpublished/condition-naltrindole-bound/rep_1/050516_NONHB_DEFAULT_HB_3.5_70"
EXP_COND_PDB="4N6H"
POLAR_NETWORK_LIST="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/interaction-footprint-analysis/polar-network-lists/inactive-dor-network.txt"
POLAR_NETWORK_PDB="4N6H"
OUTPUT_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/results/competing-network-analysis/inactive-dor-network/dor-inactive-competing-networks.txt"
python competing_networks.py $EXP_COND_DICT_FOLDER $EXP_COND_PDB $POLAR_NETWORK_LIST $POLAR_NETWORK_PDB $OUTPUT_FILE

"""

K_MIN_ARG = 6
MIN_FREQ_THRESHOLD = 0.3

DEFAULT_INTERACTION_LIST = ['hbbb', 'hbsb', 'hbss', 'wb', 'wb2']

	
# Write to output file the bitstring comparison 
def writeBitStringComparisons(OUTPUT_FILE, bitStringComparisons, EXP_COND_GPCRDB_DICT):
	fw = genWriteDescriptor(OUTPUT_FILE)
	header = "# Interaction1\tInteraction2\tTanimoto\tFreq1\tFreq2\tIn_Original_Network\n"
	fw.write(header)
	EXP_COND_GPCRDB_TO_RES_DICT = { EXP_COND_GPCRDB_DICT[k]:k for k in EXP_COND_GPCRDB_DICT}
	for bts in bitStringComparisons:
		fw.write(EXP_COND_GPCRDB_TO_RES_DICT[bts[0]]+ "-" + EXP_COND_GPCRDB_TO_RES_DICT[bts[1]] + "@" + bts[2] + "\t" + EXP_COND_GPCRDB_TO_RES_DICT[bts[3]] + "-" + EXP_COND_GPCRDB_TO_RES_DICT[bts[4]] + "@" + bts[5] + "\t" + bts[6] + "\t" + bts[7] + "\t" + bts[8] + "\t" + bts[9] + "\n")


# Neighboring interaction dict contains all the interactions that have at least one
# amino acid as part of the polar interaction residues. This method retrieves the
# bit string for an interaction that is part of the original polar network. 
def getRootBitstring(polar_interaction, neighboring_interaction_dict):
	polar_res1, polar_res2, interaction_type = polar_interaction
	key1, key2 = (polar_res1, polar_res2, interaction_type), (polar_res2, polar_res1, interaction_type)
	if(key1 not in neighboring_interaction_dict and key2 not in neighboring_interaction_dict):
		print(key1[0] + " - " + key1[1] + " Not in interaction dict.")
		return None
	elif(key1 in neighboring_interaction_dict): return neighboring_interaction_dict[key1]
	else: return neighboring_interaction_dict[key2]


# Neighboring_interaction_dict contains all interactions that have an amino acid as part of the
# original polar network. In this method, iterate through every interaction in this dictionary, and
# calculate the tanimoto distance if at least one of the amino acids belongs to the root interaction p'
# p' is an interaction from polar network P
# q' is competing interaction that has at least one amino acid belonging to P
def compareBitStrings(bitStringComparisons, polar_interaction, TotalFrames, polar_gpcrdb_list, neighboring_interaction_dict):
	# Swap two strings for ordering purpose
	def swap(a, b): 
		if(a > b):
			temp = a 
			a = b 
			b = temp 
		return a, b
	# Determine whether the competing interaction already belongs to polar network 
	def belongToPolarNetwork(comp_res1, comp_res2, polar_gpcrdb_list):
		if(comp_res1 in polar_gpcrdb_list and comp_res2 in polar_gpcrdb_list): return "True"
		else: return "False"

	root_bit_string = getRootBitstring(polar_interaction, neighboring_interaction_dict) # p' bitstring
	if(root_bit_string == None): return
	polar_res1, polar_res2, polar_interaction_type = polar_interaction 
	polar_res1, polar_res2 = swap(polar_res1, polar_res2)
	# For every possible interaction q' in the entire neighboring network 
	for neighbor_interaction_key in neighboring_interaction_dict: # for possible competing networks in S
		if(polar_res1 in neighbor_interaction_key or polar_res2 in neighbor_interaction_key): # if at least one amino acid of p' is in q'
			comp_bit_string = neighboring_interaction_dict[neighbor_interaction_key] # compute q' bitstring 
			tanimoto = tanimotoScore(root_bit_string, comp_bit_string, TotalFrames) # compute tanimoto score between p' and q'
			comp_res1, comp_res2, comp_type = neighbor_interaction_key
			bitStringFreq1 = round(float(len(root_bit_string))/TotalFrames,4) # frequency of p'
			bitStringFreq2 = round(float(len(comp_bit_string))/TotalFrames,4) # frequency of q'
			if(set([polar_res1, polar_res2]) == set([comp_res1, comp_res2])): continue # If p' identical to q' skip 
			if(bitStringFreq1 > MIN_FREQ_THRESHOLD and bitStringFreq2 > MIN_FREQ_THRESHOLD):
				comp_res1, comp_res2 = swap(comp_res1, comp_res2)
				typeOfCompetingInteraction = belongToPolarNetwork(comp_res1, comp_res2, polar_gpcrdb_list)
				key1 = (polar_res1, polar_res2, polar_interaction_type, comp_res1, comp_res2, comp_type, str(tanimoto), str(bitStringFreq1), str(bitStringFreq2), typeOfCompetingInteraction)
				key2 = (comp_res1, comp_res2, comp_type, polar_res1, polar_res2, polar_interaction_type, str(tanimoto), str(bitStringFreq2), str(bitStringFreq1), typeOfCompetingInteraction)
				if(key1 not in bitStringComparisons and key2 not in bitStringComparisons):
					bitStringComparisons.append(key1)


# For every interaction in the polar network iterate through every possible competing network
# in the larger subset S and perform a bitstring comparison. 
def processPolarNetwork(polar_gpcrdb_pair_list, polar_gpcrdb_list, neighboring_interaction_dict, TotalFrames):
	bitStringComparisons = []
	for polar_interaction in polar_gpcrdb_pair_list: # for every interaction p' from polar network P 
		compareBitStrings(bitStringComparisons, polar_interaction, TotalFrames, polar_gpcrdb_list, neighboring_interaction_dict)
	bitStringComparisons = sorted(bitStringComparisons, key = lambda x:(x[6], x[7], x[8]))
	return bitStringComparisons



# Process interaction dictionary for a single interaction type to build set S
# BUGS HERE WHERE NONE OF THE INTERACTIONS FROM DICTIONARY FILE IS GETTING RECOGNIZED PART OF EXP_COND_GPCRDB_DICT
def processSingleInteractionDict(exp_rep_file_path, interaction_type, polar_gpcrdb_list, EXP_COND_GPCRDB_DICT):
	single_neighbor_interaction_dict = {}
	f = open(exp_rep_file_path, 'r')
	TotalFrames = None
	for line in f: 
		if("TotalFrames:" in line):
			TotalFrames = int(line.split("TotalFrames:")[1].strip())
		if(" -- " in line):
			linfo = line.split("~")
			time_point_str = linfo[1].strip().strip("[,]")
			time_points = time_point_str.split(",")
			resatompair = linfo[0].split(" -- ")
			resatom1, resatom2 = resatompair[0].strip(), resatompair[1].strip()
			aa1, aa2 = resatom1.split("-")[0].strip(), resatom2.split("-")[0].strip() # ARG112
			gpcrdb1, gpcrdb2 = getGPCRDB(aa1, EXP_COND_GPCRDB_DICT), getGPCRDB(aa2, EXP_COND_GPCRDB_DICT)
			if(gpcrdb1 in polar_gpcrdb_list or gpcrdb2 in polar_gpcrdb_list):
				key = (gpcrdb1, gpcrdb2, interaction_type)
				single_neighbor_interaction_dict[key] = time_points
	if(TotalFrames == None):
		print("TotalFrames Information Not Found. File Format Error.")
		exit(1)
	return single_neighbor_interaction_dict, TotalFrames

# For every interaction type and it's associated list of interactions from the polar network 
# scan through interactions in the interaction dictionary to generate the larger subset of interactions S
# neighboring_interaction_dict = {('6x40', '6x39', 'hbbb'): [1, 5, 10, ...]}
def genNeighboringInteractionList(EXP_COND_DICT_FOLDER, INTERACTION_LIST, EXP_COND_GPCRDB_DICT, polar_gpcrdb_list):
	neighboring_interaction_dict = {}
	for interaction_type in INTERACTION_LIST: # For every interaction type 
		exp_rep_file_path = EXP_COND_DICT_FOLDER + "/" + flag_to_dict_file[interaction_type]
		single_neighbor_interaction_dict, TotalFrames = processSingleInteractionDict(exp_rep_file_path, interaction_type, polar_gpcrdb_list, EXP_COND_GPCRDB_DICT)
		neighboring_interaction_dict.update(single_neighbor_interaction_dict)
	return neighboring_interaction_dict, TotalFrames


# Main driver function to compute competing network anticorrelation values 
def competingNetworks(EXP_COND_DICT_FOLDER, EXP_COND_PDB, POLAR_NETWORK_LIST, POLAR_NETWORK_PDB, OUTPUT_FILE, INTERACTION_LIST):
	print("Calculating competingNetworks for " + EXP_COND_DICT_FOLDER)
	EXP_COND_GPCRDB_DICT = genResidueToGpcrdbTable(EXP_COND_PDB) # residue to gpcrdb table for experiment condition receptor
	POLAR_NETWORK_GPCRDB_DICT = genResidueToGpcrdbTable(POLAR_NETWORK_PDB) # residue to gpcrdb table for polar network receptor
	polar_gpcrdb_pair_list = polarGpcrdbPairList(POLAR_NETWORK_LIST, POLAR_NETWORK_GPCRDB_DICT)
	polar_gpcrdb_list = polarGpcrdbList(polar_gpcrdb_pair_list)
	neighboring_interaction_dict, TotalFrames = genNeighboringInteractionList(EXP_COND_DICT_FOLDER, INTERACTION_LIST, EXP_COND_GPCRDB_DICT, polar_gpcrdb_list)
	bitStringComparisons = processPolarNetwork(polar_gpcrdb_pair_list, polar_gpcrdb_list, neighboring_interaction_dict, TotalFrames)
	writeBitStringComparisons(OUTPUT_FILE, bitStringComparisons, EXP_COND_GPCRDB_DICT)

if __name__ == "__main__":
	if(len(sys.argv) < K_MIN_ARG):
		print(USAGE_STR)
		exit(1)
	EXP_COND_DICT_FOLDER = sys.argv[1]
	EXP_COND_PDB = sys.argv[2]
	POLAR_NETWORK_LIST = sys.argv[3]
	POLAR_NETWORK_PDB = sys.argv[4]
	OUTPUT_FILE = sys.argv[5]
	INTERACTION_LIST = DEFAULT_INTERACTION_LIST
	if("-interlist" in sys.argv):
		interlist_index = sys.argv.index("-interlist") + 1
		INTERACTION_LIST = sys.argv[interlist_index:]
	competingNetworks(EXP_COND_DICT_FOLDER, EXP_COND_PDB, POLAR_NETWORK_LIST, POLAR_NETWORK_PDB, OUTPUT_FILE, INTERACTION_LIST)









