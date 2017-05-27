# detectRepeatsInFrag.py

import sys 

USAGE_STR = """
# Purpose: Detect whether any interaction key is present multiple times in a frame 
# prints out the number of error keys, and the duplicates per frame 

# Usage: 
# python detectRepeatsInFrag.py <FILE_PATH> <INTERACTION FLAG> 

# Arguments:
# <FILE_PATH> Absolute path to the folder containing the raw data for a single fragment of replicate
# <INTERACTION_FLAG> Interaction flag to denote the file name (ie, -sb, -pc, etc)

# Example: 
$filepath="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/MOR-active-noNb-BU72-nature2015/condition-nb-interface-restrained-BU72/rep_1/Prod_0"
python detectRepeatsInFrag.py $filepath -wb 
"""

K_MIN_ARG = 2

def interactionFlag(flag):
	if(flag == "-sb"):
		return "salt_bridge_result.txt"
	elif(flag == "-pc"):
		return "pi_cation_result.txt"
	elif(flag == "-ps"):
		return "pi_stacking_result.txt"
	elif(flag == "-ts"):
		return "t_stacking_result.txt"
	elif(flag == "-vdw"):
		return "vanderwaal_result.txt"
	elif(flag == "-hbw"):
		return "hydrogen_bond_water_result.txt"
	elif(flag == "-hbbb"):
		return "bb_hydrogen_bond_result.txt"
	elif(flag == "-hbsb"):
		return "sb_hydrogen_bond_result.txt"
	elif(flag == "-hbss"):
		return "ss_hydrogen_bond_result.txt"
	elif(flag == "-rw"):
		return "residue_water_hydrogen_bond_result.txt"
	elif(flag == "-wb"):
		return "water_bond_result.txt"
	elif(flag == "-wb2"):
		return "extended_water_bond_result.txt"

def detectRepeats(filepath):
	f = open(filepath, 'r')
	currFrame = 0 
	frameContactList = []
	count = 0
	errorCount = 0 
	for line in f:
		if("Frame:" in line):
			currFrame = int(line.split("Frame:")[1].strip())
			frameContactList = []
		elif(" -- " in line):
			interaction = line.strip()
			if(interaction in frameContactList):
				print("Frame: " + "currFrame : Duplicate " + str(interaction))
				errorCount += 1
			else:
				if(count % 20 == 0):
					print("Line: " + str(count))
			frameContactList.append(interaction)
			count += 1
	return errorCount



if __name__ == "__main__":
	if(len(sys.argv) < K_MIN_ARG):
		print(USAGE_STR)
		exit(1)
	filepath = sys.argv[1]
	if(len(sys.argv)>2):
		flag = sys.argv[2]
		fullpath = filepath + "/" + interactionFlag(flag)
	else: 
		fullpath = filepath
	errorCount = detectRepeats(fullpath)
	print("Total Error Count: " + str(errorCount))
	print(fullpath)










