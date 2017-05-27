# Author: Anthony Kai Kwang Ma
# Email: akma327@stanford.edu
# unionized_residue_footprint_table.py 

import os
import sys
from utils import * 

USAGE_STR = """
# Purpose
# Given a list of interactions present in crystal structure A, outputs the overall
# frequency that each interaction is present in the trajectories with crystal structures B,C,D, ...

# Usage 
# python atom_footprint_table.py <AGGREGATE_FREQ_TABLE> <NETWORK_FILTER_LIST> <PDB_CODE> <OUTPUT_FILE>

# Arguments
# <AGGREGATE_FREQ_TABLE> Absolute path to the table containing gpcrdb pairs and frequency values of
# the interaction for all experimental and replicate conditions 
# <NETWORK_FILTER_LIST> Absolute path to the list of interactions present in the crystal structure of interest 
# <PDB_CODE> PDB Code of the crystal structure used for NETWORK_FILTER_LIST
# <OUTPUT_FILE> Absolute path to the output table that is a subset of the original AGGREGATE_FREQ_TABLE

# Example
AGGREGATE_FREQ_TABLE="/scratch/PI/rondror/akma327/DynamicNetworks/results/state-decomposition/aggregate-decomp-freqsum/091516_state_decomp_union_wb_freq/inactive_receptors/inactive_state_decomp.txt"
NETWORK_FILTER_LIST="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/interaction-footprint-analysis/polar-network-lists/inactive-dor-network.txt"
PDB_CODE="4N6H"
OUTPUT_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/results/state-decomposition/residue-resolution/091516_state_decomp_union_wb_freq/dor_inactive_polar_network/inactive_receptors/inactive_state_decomp_residue_resolution.txt"
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/analysis/state-decomposition
python unionized_residue_footprint_table.py $AGGREGATE_FREQ_TABLE $NETWORK_FILTER_LIST $PDB_CODE $OUTPUT_FILE

"""

K_MIN_ARG = 5


def shortHandAminoAcidToGpcrdb(aa, GPCRDB_DICT):
	aa_letter = aa[0]
	resnum = aa[1:]
	resid = aa1to3_dict[aa_letter.upper()].upper() 
	key = resid + resnum
	key = fixAminoAcidNames(key)
	if(key not in GPCRDB_DICT):
		print(key + " not in GPCRDB_DICT")
		return "-"
	return GPCRDB_DICT[key]

# Process "V266 -- N314@wb" to (gpcrdb1, gpcrdb2, interaction)
def processInteraction(line, GPCRDB_DICT):
	aa_pair, interaction_type = line.split("@")
	interaction_type = interaction_type.strip()
	aa1,aa2 = aa_pair.split(" -- ")
	gpcrdb1, gpcrdb2 = shortHandAminoAcidToGpcrdb(aa1, GPCRDB_DICT), shortHandAminoAcidToGpcrdb(aa2, GPCRDB_DICT)
	return (gpcrdb1, gpcrdb2, interaction_type)


# Parses the list of interactions present in the crystal structure of interest 
# and generates the corresponding list of gpcrdb numbers 
def processInteractionList(NETWORK_FILTER_LIST, GPCRDB_DICT):
	GPCRDB_SET = set()
	f = open(NETWORK_FILTER_LIST, 'r')
	for line in f: 
		if("#" in line or "PDB" in line or line == "\n"): continue
		a = processInteraction(line, GPCRDB_DICT)
		GPCRDB_SET.add(a)
	return GPCRDB_SET


# Checks if gpcrdb pair and interaction type is present in the GPCRDB_SET based on the
# user provided crystal structure 
def inGPCRDB_Set(GPCRDB_SET, gpcrdb1, gpcrdb2):
	key1a = (gpcrdb1, gpcrdb2, "wb")
	key1b = (gpcrdb1, gpcrdb2, "wb2")
	key2a = (gpcrdb2, gpcrdb1, "wb")
	key2b = (gpcrdb2, gpcrdb1, "wb2")
	if(key1a in GPCRDB_SET or key1b in GPCRDB_SET or key2a in GPCRDB_SET or key2b in GPCRDB_SET): return True 
	else: return False 


# Writes out every row of the aggregate frequency table that matches in the 
# gpcrdb numbers and interaction type from the interaction list 
def subsetAggregateFreqTable(AGGREGATE_FREQ_TABLE, GPCRDB_SET, OUTPUT_FILE):
	f = open(AGGREGATE_FREQ_TABLE, 'r')
	# fw = genWriteDescriptor(OUTPUT_FILE)
	subset_list = []
	header = ""
	for line in f: 
		if(line == "\n"): continue
		if("#" in line):
			header = line.split("#")[1].strip() + "\n"
			continue
		l_info = line.split("\t")
		interaction_label = l_info[0].split(":")
		gpcrdb1, gpcrdb2 = interaction_label[0].strip(), interaction_label[1].strip()
		if(inGPCRDB_Set(GPCRDB_SET, gpcrdb1, gpcrdb2) or inGPCRDB_Set(GPCRDB_SET, gpcrdb2, gpcrdb1)):
			subset_list.append(line)
			### Simply extracting the lines that match the polar network list. Not additional numeric sorting needed for gpcrdb
			# fw.write(line)
	return header, subset_list


# Sort the subsettted intereactions and group by interaction type 
def sortByInteractionFlag(subset_list):
	split_subset_list = []
	for si in subset_list:
		linfo = si.split("\t")
		interaction_info = linfo[0].split(":")[0:2] # Get only gpcrdb1:gpcrdb2
		freq_info = linfo[1:]
		split_subset_list.append(tuple(interaction_info + freq_info))
	split_subset_list = sorted(split_subset_list, key= lambda x: x[4])
	sorted_subset_interaction_list = [":".join(list(linfo[0:2])) + "\t" + "\t".join(list(linfo[2:])) for linfo in split_subset_list]
	return sorted_subset_interaction_list


# Write out to output file the polar network interactions subsetted from aggregate table. 
# Interactions have been sorted to be grouped by interaction type. 
def writeToOutput(OUTPUT_FILE, header, sorted_subset_interaction_list):
	f = genWriteDescriptor(OUTPUT_FILE)
	f.write(header)
	for ss in sorted_subset_interaction_list:
		f.write(ss)


def unionResidueFootprintTableDriver(AGGREGATE_FREQ_TABLE, NETWORK_FILTER_LIST, PDB_CODE, OUTPUT_FILE):
	GPCRDB_DICT = genResidueToGpcrdbTable(PDB_CODE)
	GPCRDB_SET = processInteractionList(NETWORK_FILTER_LIST, GPCRDB_DICT)
	header, subset_list = subsetAggregateFreqTable(AGGREGATE_FREQ_TABLE, GPCRDB_SET, OUTPUT_FILE)
	sorted_subset_interaction_list = sortByInteractionFlag(subset_list)
	writeToOutput(OUTPUT_FILE, header, sorted_subset_interaction_list)

if __name__ == "__main__":
	if(len(sys.argv) < K_MIN_ARG):
		print(USAGE_STR)
		exit(1)
	(AGGREGATE_FREQ_TABLE, NETWORK_FILTER_LIST, PDB_CODE, OUTPUT_FILE) = (sys.argv[1], sys.argv[2], sys.argv[3], sys.argv[4])
	unionResidueFootprintTableDriver(AGGREGATE_FREQ_TABLE, NETWORK_FILTER_LIST, PDB_CODE, OUTPUT_FILE)
	






