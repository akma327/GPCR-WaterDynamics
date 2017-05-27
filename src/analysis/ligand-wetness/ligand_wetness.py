# Author: Anthony Ma
# Date: 01/07/16
# ligand_wetness.py

import sys
import glob
import ast

USAGE_STR = """
# Purpose
# Input: ligand to water hydrogen bond binary dictionary file
# Output: Determines the percentage of frames each part of the ligand
# is making contact with some water. 

# Usage
# python ligand_wetness.py <OUTPUT_FILE>

# Arguments
# <OUTPUT_FILE> Absolute path to write frequencies for all ligand
# water interactions across the experiment condition of interest. 

# Example
OUTPUT_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/ligand-wetness/ligand_wetness.txt"
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/analysis/ligand-wetness
python ligand_wetness.py $OUTPUT_FILE

"""

def sort_ligand_water(atom1, atom2):
    if("LIG" in atom1): return (atom1, atom2)
    else: return (atom2, atom1)

def calc_ligand_wetness(fw, BIN_DICT_FILE):
    
    ### Parse ligand water interaction binary dictionary
    f = open(BIN_DICT_FILE, 'r')
    nFrames = None
    ligand_part_to_frames = {} # key: LIG-OAD, value: [3,45,311,3333]
    for line in f:
        if("TotalFrames" in line):
            nFrames = int(line.split("TotalFrames:")[1].strip())
        if("~" in line):
            linfo = line.strip().split("~")
            tp = set(ast.literal_eval(linfo[1])) # Timepoints
            atom1, atom2 = linfo[0].split(" -- ")
            ligand, water = sort_ligand_water(atom1, atom2)
            if(ligand not in ligand_part_to_frames):
                ligand_part_to_frames[ligand] = tp
            else:
                ligand_part_to_frames[ligand] |= tp
            
    ### Ligand Wetness
    fw.write(":".join(BIN_DICT_FILE.split("/")[9:12]) + "\n")
    for ligand_part in ligand_part_to_frames:
        freq = float(len(ligand_part_to_frames[ligand_part]))/ nFrames
        fw.write("%s : %f\n" % (ligand_part, freq))
    fw.write("\n")

def ligand_wetness_driver(OUTPUT_FILE):
	fw = open(OUTPUT_FILE, 'w')
	ligand_water_files = sorted(glob.glob("/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutputDictionary" + "/*/*/rep*/0505*/ligand_water_hydrogen_bond_result_dict.txt"))
	for i, BIN_DICT_FILE in enumerate(ligand_water_files):
	    calc_ligand_wetness(fw, BIN_DICT_FILE)

if __name__ == "__main__":
	OUTPUT_FILE = sys.argv[1]
	ligand_wetness_driver(OUTPUT_FILE)

