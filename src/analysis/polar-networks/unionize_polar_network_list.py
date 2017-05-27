# Author: Anthony Kai Kwang Ma
# Email: akma327@stanford.edu
# unionize_polar_network_list.py

import sys
import glob
from polar_network_utils import *

USAGE_STR = """
# Purpose
# After running the static interaction calculator upon receptors individually,
# this script will generate a unionized list of gpcrdb pairs for interactions
# that appear in the crystal structure of any of the receptors in a given 
# directory of individual polar network lists. 

# Usage 
# python unionize_polar_network_list.py <INDIVIDUAL_POLAR_NETWORK_DIR> <OUTPUT>

# Arguments
# <INDIVIDUAL_POLAR_NETWORK_DIR> Absolute path to the directory containing individual polar network 
# lists that user wants to unionize
# <OUTPUT> Path to output unionized polar network 

# Output Format 
	5x58 -- 5x58@wb2
	5x58 -- 7x53@wb
	5x58 -- 7x53@wb2
	7x53 -- 3x46@wb2
	7x53 -- 7x45@wb2
	7x53 -- 3x50@wb2
	7x53 -- 3x47@wb2
	7x53 -- 7x53@wb2
	1x55 -- 1x55@wb
	1x60 -- 1x59@wb2

# Example 1
INDIVIDUAL_POLAR_NETWORK_DIR="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/polar-networks/102716/active_receptors"
OUTPUT="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/polar-networks/102716/active_polar_network.txt"
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/analysis/polar-networks
python unionize_polar_network_list.py $INDIVIDUAL_POLAR_NETWORK_DIR $OUTPUT

# Example 2
INDIVIDUAL_POLAR_NETWORK_DIR="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/polar-networks/102716/inactive_receptors"
OUTPUT="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/polar-networks/102716/inactive_polar_network.txt"
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/analysis/polar-networks
python unionize_polar_network_list.py $INDIVIDUAL_POLAR_NETWORK_DIR $OUTPUT

"""

# INDIVIDUAL_POLAR_NETWORK_DIR="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/polar-networks/b2ar_mor/inactive_receptors"
# OUTPUT="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/polar-networks/102716/b2ar_mor_inactive.txt"
# python unionize_polar_network_list.py $INDIVIDUAL_POLAR_NETWORK_DIR $OUTPUT

# INDIVIDUAL_POLAR_NETWORK_DIR="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/polar-networks/b2ar_mor/active_receptors"
# OUTPUT="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/polar-networks/102716/b2ar_mor_active.txt"
# python unionize_polar_network_list.py $INDIVIDUAL_POLAR_NETWORK_DIR $OUTPUT

K_MIN_ARG = 3



def unionize(INDIVIDUAL_POLAR_NETWORK_DIR, OUTPUT):
	"""
		Parses each individual polar network list and writes out 
		the unionized set of gpcrdb1--gpcrdb2-type tuples
	"""

	### Compute unionzed set of crystal interactions
	crystal_interactions = set()

	polar_network_paths = glob.glob(INDIVIDUAL_POLAR_NETWORK_DIR + "/*")
	for path in polar_network_paths:
		f = open(path, 'r')
		for line in f:
			if(" -- " in line):
				linfo = line.strip().split("@")
				interaction_type = linfo[1]
				aa1, aa2, gpcrdb1, gpcrdb2 = linfo[0].split(" -- ")
				key1 = (gpcrdb1, gpcrdb2, interaction_type)
				key2 = (gpcrdb2, gpcrdb1, interaction_type)
				if(key1 not in crystal_interactions and key2 not in crystal_interactions):
					crystal_interactions.add(key1)

	crystal_interactions = sorted(list(crystal_interactions))
	### Write to output the unionized crystal interactions
	fw = open(OUTPUT, 'w')
	for ci in crystal_interactions:
		gpcrdb1, gpcrdb2, interaction_type = ci
		fw.write(gpcrdb1 + " -- " + gpcrdb2 + "@" + interaction_type + "\n")




if __name__ == "__main__":
	if(len(sys.argv) < K_MIN_ARG):
		print(USAGE_STR)
		exit(0)
	(INDIVIDUAL_POLAR_NETWORK_DIR, OUTPUT) = (sys.argv[1], sys.argv[2])
	unionize(INDIVIDUAL_POLAR_NETWORK_DIR, OUTPUT)




