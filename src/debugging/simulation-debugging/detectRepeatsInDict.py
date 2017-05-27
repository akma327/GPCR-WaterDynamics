# detectRepeatsInDict.py 

import ast
import sys

USAGE_STR = """
# Purpose: Detect whether there are any interaction keys with multiple frame repeats 

# Usage: 
# python detectRepeatsInDict.py <FILE_PATH> <INTERACTION_FLAG>

# Arguments:
# <FILE_PATH> If only specify this argument then its absolute path to the dictionary file. 
# Otherwise this path is only the directory component
# <INTERACTION_FLAG> Flag representing the interaction type. 

"""
K_MIN_ARG = 2


def interactionFlag(flag):
	if(flag == "-sb"):
		return "salt_bridge_result_dict.txt"
	elif(flag == "-pc"):
		return "pi_cation_result_dict.txt"
	elif(flag == "-ps"):
		return "pi_stacking_result_dict.txt"
	elif(flag == "-ts"):
		return "t_stacking_result_dict.txt"
	elif(flag == "-vdw"):
		return "vanderwaal_result_dict.txt"
	elif(flag == "-hbbb"):
		return "bb_hydrogen_bond_result_dict.txt"
	elif(flag == "-hbsb"):
		return "sb_hydrogen_bond_result_dict.txt"
	elif(flag == "-hbss"):
		return "ss_hydrogen_bond_result_dict.txt"
	elif(flag == "-rw"):
		return "residue_water_hydrogen_bond_result_dict.txt"
	elif(flag == "-wb"):
		return "water_bond_result_dict.txt"
	elif(flag == "-wb2"):
		return "extended_water_bond_result_dict.txt"


def isRepeat(filename):
	f = open(filename, 'r')
	count = 0
	keyRepeatDict = {}
	for line in f:
	    if("~" in line):
			l_info = line.split("~")
			key = l_info[0]
			vec = ast.literal_eval(l_info[1])
			s = set(vec)
			if(key not in keyRepeatDict): 
				keyRepeatDict[key] = 1
			else: 
				keyRepeatDict[key] += 1
			if(len(vec) != len(s)):
				print(key, len(vec), len(s))
			else:
				if(count % 20 == 0):
					print("True: " + str(count))
			count += 1
			if(count > 15000): 
				return keyRepeatDict
	return keyRepeatDict

# print out the repeat keys and frequency
def displayRepeats(keyRepeatDict):
	for k in keyRepeatDict:
		freq = keyRepeatDict[k]
		if(freq > 1):
			print(k, freq)

if __name__ == "__main__":
	if(len(sys.argv) < K_MIN_ARG):
		print(USAGE_STR)
		exit(1)
	filepath = sys.argv[1]
	if(len(sys.argv)> 2):
		flag = sys.argv[2]
		full_path = filepath + "/" + interactionFlag(flag)
	else:
		full_path = filepath
	keyRepeatDict = isRepeat(full_path)
	displayRepeats(keyRepeatDict)

    
