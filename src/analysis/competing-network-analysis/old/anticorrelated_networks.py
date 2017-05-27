# anticorrelated_networks.py 

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
# python anticorrelated_networks.py <EXP_REP_DICT_FOLDER> <POLAR_NETWORK_LIST> <PDB_CODE> <OUTPUT_FILE> <-interlist> <INTERACTION_LIST>

# Arguments
# <EXP_REP_DICT_FOLDER> Absolute path to the experiment replicate dictionary folder. 
# <POLAR_NETWORK_LIST> Absolute path to the list of interactions in the polar network of interest 
# <PDB_CODE> PDB code for the polar network of interest 
# <OUTPUT_FILE> Absolute path to the output file with information stored as lines formatted as
# 			ASP128-ASP128@wb	ASP128-VAL124@hbbb	0.3593	0.3517	0.8927
# 			VAL266-ASN314@wb	LEU317-ASN314@hbbb	0.3742	0.7944	0.414
# 				  ... 					... 		  ...     ...    ...
# 
# <-interlist> Optional flag to allow user to specify specifically which interaction types to consider. Default is to consider
# all hydrogen bond related interactions. 

# Example 1 - dor-inactive-network
# EXP_REP_DICT_FOLDER="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutputDictionary/DOR-inactive-naltrindole-unpublished/condition-naltrindole-bound/rep_1/050516_NONHB_DEFAULT_HB_3.5_70"
# POLAR_NETWORK_LIST="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/interaction-footprint-analysis/polar-network-lists/inactive-dor-network.txt"
# OUTPUT_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/results/competing-network-analysis/inactive-dor-network/dor-inactive-competing-networks.txt"
# PDB_CODE="4N6H"
# python anticorrelated_networks.py $EXP_REP_DICT_FOLDER $POLAR_NETWORK_LIST $OUTPUT_FILE $PDB_CODE

# Example 2 - mor-active-network
# EXP_REP_DICT_FOLDER="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutputDictionary/MOR-active-noNb-BU72-nature2015/condition-nb-interface-restrained-BU72/rep_1/050516_NONHB_DEFAULT_HB_3.5_70"
# POLAR_NETWORK_LIST="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/interaction-footprint-analysis/polar-network-lists/active-mor-network.txt"
# OUTPUT_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/results/competing-network-analysis/active-mor-network/mor-active-competing-networks.txt"
# PDB_CODE="5C1M"
# python anticorrelated_networks.py $EXP_REP_DICT_FOLDER $POLAR_NETWORK_LIST $OUTPUT_FILE $PDB_CODE

"""

K_MIN_ARG = 5
MIN_FREQ_THRESHOLD = 0.3

DEFAULT_INTERACTION_LIST = ['hbbb', 'hbsb', 'hbss', 'wb', 'wb2']


# Process interaction dictionary of a single interaction type 
def processSingleInteractionDict(exp_rep_file_path, interaction_type, polar_network_aa_list):
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
			aa1, aa2 = resatom1.split("-")[0].strip(), resatom2.split("-")[0].strip()
			if(aa1 in polar_network_aa_list or aa2 in polar_network_aa_list):
				key = (aa1, aa2, interaction_type)
				single_neighbor_interaction_dict[key] = time_points
	if(TotalFrames == None):
		print("TotalFrames Information Not Found. File Format Error.")
		exit(1)
	return single_neighbor_interaction_dict, TotalFrames



# For every interaction type and it's associated list of interactions from the polar network 
# scan through interactions in the interaction dictionary to generate the larger subset. Write to OUTPUT_FILE
def genNeighboringInteractionList(EXP_REP_DICT_FOLDER, INTERACTION_LIST, polar_network_aa_list):
	neighboring_interaction_dict = {}
	for interaction_type in INTERACTION_LIST:
		exp_rep_file_path = EXP_REP_DICT_FOLDER + "/" + flag_to_dict_file[interaction_type]
		single_neighbor_interaction_dict, TotalFrames = processSingleInteractionDict(exp_rep_file_path, interaction_type, polar_network_aa_list)
		neighboring_interaction_dict.update(single_neighbor_interaction_dict)
	return neighboring_interaction_dict, TotalFrames


# Generate the list of relevant residues in the original polar network P
def genPolarNetworkAAList(type_residue_pair_list):
	polar_network_aa_list = []
	for respair in type_residue_pair_list:
		polar_network_aa_list.append(respair[0])
		polar_network_aa_list.append(respair[1])
	return list(set(polar_network_aa_list))


# Retrieve bitstring for an interaction that is part of the polar network. 
def getRootBitstring(polar_interaction, neighboring_interaction_dict):
	polar_res1, polar_res2, interaction_type = polar_interaction
	key1, key2 = (polar_res1, polar_res2, interaction_type), (polar_res2, polar_res1, interaction_type)
	if(key1 not in neighboring_interaction_dict and key2 not in neighboring_interaction_dict):
		print(key1[0] + " - " + key1[1] + " Not in interaction dict.")
		return None
	elif(key1 in neighboring_interaction_dict): return neighboring_interaction_dict[key1]
	else: return neighboring_interaction_dict[key2]


# Compute tanimoto distance
def tanimotoScore(bitString1, bitString2, TotalFrames):
	intersect = set(bitString1) & set(bitString2)
	union = set(bitString1) | set(bitString2)
	tanimoto = round(float(len(intersect))/len(union),4)
	# print(len(bitString1), len(bitString2), tanimoto)
	return tanimoto

# Compare neighboring interaction bitstring to single interaction from polar network
def compareBitStrings(root_bit_string, polar_interaction, TotalFrames, neighboring_interaction_dict):
	bitStringComparison = []
	polar_res1, polar_res2, polar_interaction_type = polar_interaction
	for neighbor_interaction_key in neighboring_interaction_dict:
		if(polar_res1 in neighbor_interaction_key or polar_res2 in neighbor_interaction_key):
			comp_bit_string = neighboring_interaction_dict[neighbor_interaction_key]
			tanimoto = tanimotoScore(root_bit_string, comp_bit_string, TotalFrames)
			comp_res1, comp_res2, comp_type = neighbor_interaction_key
			bitStringFreq1 = round(float(len(root_bit_string))/TotalFrames,4)
			bitStringFreq2 = round(float(len(comp_bit_string))/TotalFrames,4)
			if(set([polar_res1, polar_res2]) == set([comp_res1, comp_res2])):continue
			if(bitStringFreq1 > MIN_FREQ_THRESHOLD and bitStringFreq2 > MIN_FREQ_THRESHOLD):
				bitStringComparison.append((polar_res1, polar_res2, polar_interaction_type, comp_res1, comp_res2, comp_type, str(tanimoto), str(bitStringFreq1), str(bitStringFreq2)))
	return bitStringComparison

# Write to output file the bitstring comparison 
def writeBitStringComparisons(OUTPUT_FILE, bitStringComparisons):
	fw = genWriteDescriptor(OUTPUT_FILE)
	fw.write("# Interaction1\tInteraction2\tTanimoto\tFreq1\tFreq2\n")
	for btc in bitStringComparisons:
		fw.write(btc[0] + "-" + btc[1] + "@" + btc[2] + "\t" + btc[3] + "-" + btc[4] + "@" + btc[5] + "\t" + btc[6] + "\t" + btc[7] + "\t" + btc[8] + "\n")


# Generate list of neighboring interactions for every interaction in the polar network
def processPolarNetwork(type_residue_pair_list, neighboring_interaction_dict, TotalFrames):
	bitStringComparisons = []
	for polar_interaction in type_residue_pair_list:
		root_bit_string = getRootBitstring(polar_interaction, neighboring_interaction_dict)
		if(root_bit_string == None): continue
		bitStringComparisons += compareBitStrings(root_bit_string, polar_interaction, TotalFrames, neighboring_interaction_dict)
	bitStringComparisons = sorted(bitStringComparisons, key = lambda x:(x[6], x[7], x[8]))
	return bitStringComparisons

# Main driver function to compute competing network anticorrelation values 
def competingNetworks(EXP_REP_DICT_FOLDER, POLAR_NETWORK_LIST, OUTPUT_FILE, PDB_CODE, INTERACTION_LIST):
	GPCRDB_DICT = genResidueToGpcrdbTable(PDB_CODE) # residue to gpcrdb for polar network interactions 
	type_residue_pair_list = genTypeResiduePairList(POLAR_NETWORK_LIST) # get list of pairwise intearctions (aa1, aa2, interaction_type) in polar network
	polar_network_aa_list = genPolarNetworkAAList(type_residue_pair_list) # get the list of amino acids in polar network 
	neighboring_interaction_dict, TotalFrames = genNeighboringInteractionList(EXP_REP_DICT_FOLDER, INTERACTION_LIST, polar_network_aa_list)
	bitStringComparisons = processPolarNetwork(type_residue_pair_list, neighboring_interaction_dict, TotalFrames)
	writeBitStringComparisons(OUTPUT_FILE, bitStringComparisons)

if __name__ == "__main__":
	if(len(sys.argv) < K_MIN_ARG):
		print(USAGE_STR)
		exit(1)
	EXP_REP_DICT_FOLDER = sys.argv[1]
	POLAR_NETWORK_LIST = sys.argv[2]
	OUTPUT_FILE = sys.argv[3]
	PDB_CODE = sys.argv[4] # PDB of the Polar Network List 
	INTERACTION_LIST = DEFAULT_INTERACTION_LIST
	if("-interlist" in sys.argv):
		interlist_index = sys.argv.index("-interlist") + 1
		INTERACTION_LIST = sys.argv[interlist_index:]
	competingNetworks(EXP_REP_DICT_FOLDER, POLAR_NETWORK_LIST, OUTPUT_FILE, PDB_CODE, INTERACTION_LIST)









