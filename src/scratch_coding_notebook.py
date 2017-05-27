import sys
INTERACTION_FOOTPRINT_TABLE="/scratch/PI/rondror/akma327/DynamicNetworks/results/interaction-footprint-analysis/polar-network-freq-tables/atom-resolution/4N6H/dor-inactive-atom-footprint.txt"
EXP_REP_COLUMN_ID="DOR-inactive-naltrindole-unpublished-condition-naltrindole-bound-rep_1"
TOPOLOGY="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/DOR-inactive-naltrindole-unpublished/condition-naltrindole-bound/step5_assembly.pdb"
PDB_CODE="4N6H"
DISPLAY_MODE="-s"
sys.argv = ['a', INTERACTION_FOOTPRINT_TABLE, EXP_REP_COLUMN_ID, TOPOLOGY, PDB_CODE, DISPLAY_MODE]
execfile("3D_visualize.py")




EXP_REP_DICT_FOLDER="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutputDictionary/DOR-inactive-naltrindole-unpublished/condition-naltrindole-bound/rep_1/050516_NONHB_DEFAULT_HB_3.5_70"
POLAR_NETWORK_LIST="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/interaction-footprint-analysis/polar-network-lists/inactive-dor-network.txt"
OUTPUT_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/results/competing-network-analysis/4N6H/dor-inactive-competing-networks.txt"
PDB_CODE="4N6H"
python anticorrelated_networks.py $EXP_REP_DICT_FOLDER $POLAR_NETWORK_LIST $OUTPUT_FILE $PDB_CODE


EXP_REP_DICT_FOLDER="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutputDictionary/MOR-active-noNb-BU72-nature2015/condition-nb-interface-restrained-BU72/rep_1/050516_NONHB_DEFAULT_HB_3.5_70"
POLAR_NETWORK_LIST="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/interaction-footprint-analysis/polar-network-lists/active-mor-network.txt"
OUTPUT_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/results/competing-network-analysis/5C1M/mor-active-competing-networks.txt"
PDB_CODE="5C1M"
python anticorrelated_networks.py $EXP_REP_DICT_FOLDER $POLAR_NETWORK_LIST $OUTPUT_FILE $PDB_CODE


f = open("acm_rat.txt", 'r')
fw =open("acm3_fix.txt", 'w')
for l in f:
	uniprot, resnum, resname, region, gpcrdb = l.split("\t")
	resnum = int(resnum)
	gpcrdb = gpcrdb.strip()
	if(resnum < 64):
		fw.write("ACM3_FIX\t" + str(resnum) + "\t" + resname + "\t" + region + "\t" + gpcrdb + "\n")
	else:
		fw.write("ACM3_FIX\t" + str(resnum+1) + "\t" + resname + "\t" + region + "\t" +gpcrdb + "\n")



# DATE 060916

TOP="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-inactive-carazalol-cell2013b/condition-1/step5_assembly.pdb"
TRAJ="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-inactive-carazalol-cell2013b/condition-1/rep_1/Prod_0/Prod_0_rewrapped.dcd"





# Regenerate aggregate tables 

# # 3.5A-110D
# FREQ_SUM_EXP_FOLDER_PATH="/scratch/PI/rondror/akma327/DynamicNetworks/results/simulation-analysis/gpcrdb-freq-output/single-cond-rep-freqsum/052816-3.5A-110D-full"
# OUTPUT_FILE_PATH="/scratch/PI/rondror/akma327/DynamicNetworks/results/simulation-analysis/gpcrdb-freq-output/aggregate-freqsum/052816-3.5A-110D-aggregate.txt"
# RECEPTOR_PDB_LOOKUP_PATH="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/simulation-analysis/gpcrdb-freq-config/receptor_pdb_lookup.txt"
# python compile-gpcrdb-freq-data.py $FREQ_SUM_EXP_FOLDER_PATH $OUTPUT_FILE_PATH $RECEPTOR_PDB_LOOKUP_PATH


# # 3.2A-110D
# FREQ_SUM_EXP_FOLDER_PATH="/scratch/PI/rondror/akma327/DynamicNetworks/results/simulation-analysis/gpcrdb-freq-output/single-cond-rep-freqsum/052816-3.2A-110D-full"
# OUTPUT_FILE_PATH="/scratch/PI/rondror/akma327/DynamicNetworks/results/simulation-analysis/gpcrdb-freq-output/aggregate-freqsum/052816-3.2A-110D-aggregate.txt"
# RECEPTOR_PDB_LOOKUP_PATH="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/simulation-analysis/gpcrdb-freq-config/receptor_pdb_lookup.txt"
# python compile-gpcrdb-freq-data.py $FREQ_SUM_EXP_FOLDER_PATH $OUTPUT_FILE_PATH $RECEPTOR_PDB_LOOKUP_PATH


# # dor-inactive network, dor-inactive crystal
# EXP_REP_DICT_FOLDER="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutputDictionary/DOR-inactive-naltrindole-unpublished/condition-naltrindole-bound/rep_1/050516_NONHB_DEFAULT_HB_3.5_70"
# POLAR_NETWORK_LIST="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/interaction-footprint-analysis/polar-network-lists/inactive-dor-network.txt"
# OUTPUT_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/results/competing-network-analysis/inactive-dor-network/dor-inactive-competing-networks.txt"
# PDB_CODE="4N6H"
# python anticorrelated_networks.py $EXP_REP_DICT_FOLDER $POLAR_NETWORK_LIST $OUTPUT_FILE $PDB_CODE

# # dor-inactive netowkr, mor-active crystal
# EXP_REP_DICT_FOLDER="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutputDictionary/MOR-active-noNb-BU72-nature2015/condition-nb-interface-restrained-BU72/rep_1/050516_NONHB_DEFAULT_HB_3.5_70"
# POLAR_NETWORK_LIST="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/interaction-footprint-analysis/polar-network-lists/inactive-dor-network.txt"
# PDB_CODE="4N6H"
# OUTPUT_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/results/competing-network-analysis/inactive-dor-network/mor-active-competing-networks.txt"
# python anticorrelated_networks.py $EXP_REP_DICT_FOLDER $POLAR_NETWORK_LIST $OUTPUT_FILE $PDB_CODE





# EXP_REP_DICT_FOLDER="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutputDictionary/MOR-active-noNb-BU72-nature2015/condition-nb-interface-restrained-BU72/rep_1/050516_NONHB_DEFAULT_HB_3.5_70"
# POLAR_NETWORK_LIST="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/interaction-footprint-analysis/polar-network-lists/active-mor-network.txt"
# OUTPUT_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/results/competing-network-analysis/active-mor-network/mor-active-competing-networks.txt"
# PDB_CODE="5C1M"
# python anticorrelated_networks.py $EXP_REP_DICT_FOLDER $POLAR_NETWORK_LIST $OUTPUT_FILE $PDB_CODE



# # Competing Networks 
# # We would expect some competing interactions to occur in B2AR 

# EXP_REP_DICT_FOLDER="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutputDictionary/B2AR-active-Nb-BI-pnas2011b/condition-L/rep_1/050516_NONHB_DEFAULT_HB_3.5_70"
# POLAR_NETWORK_LIST="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/interaction-footprint-analysis/polar-network-lists/inactive-dor-network.txt"
# OUTPUT_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/results/competing-network-analysis/inactive-dor-network/B2AR-active-Nb-BI-pnas2011b-competing-networks.txt"
# PDB_CODE="3P0G"
# python anticorrelated_networks.py $EXP_REP_DICT_FOLDER $POLAR_NETWORK_LIST $OUTPUT_FILE $PDB_CODE







# Example 1 - dor-inactive-network with dor-inactive receptor 
# EXP_COND_DICT_FOLDER="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutputDictionary/DOR-inactive-naltrindole-unpublished/condition-naltrindole-bound/rep_1/050516_NONHB_DEFAULT_HB_3.5_70"
# EXP_COND_PDB="4N6H"
# POLAR_NETWORK_LIST="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/interaction-footprint-analysis/polar-network-lists/inactive-dor-network.txt"
# POLAR_NETWORK_PDB="4N6H"
# python competing_networks.py $EXP_COND_DICT_FOLDER $EXP_COND_PDB $POLAR_NETWORK_LIST $POLAR_NETWORK_PDB $OUTPUT_FILE

EXP_REP_DICT_FOLDER="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutputDictionary/MOR-active-noNb-BU72-nature2015/condition-nb-interface-restrained-BU72/rep_1/050516_NONHB_DEFAULT_HB_3.5_70"
EXP_COND_PDB="5C1M"
POLAR_NETWORK_LIST="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/interaction-footprint-analysis/polar-network-lists/inactive-dor-network.txt"
POLAR_NETWORK_PDB="4N6H"
python competing_networks.py $EXP_COND_DICT_FOLDER $EXP_COND_PDB $POLAR_NETWORK_LIST $POLAR_NETWORK_PDB $OUTPUT_FILE


EXP_COND_DICT_FOLDER="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutputDictionary/B2AR-active-Nb-BI-pnas2011b/condition-L/rep_1/050516_NONHB_DEFAULT_HB_3.5_70"
EXP_COND_PDB="3P0G"
POLAR_NETWORK_LIST="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/interaction-footprint-analysis/polar-network-lists/inactive-dor-network.txt"
POLAR_NETWORK_PDB="4N6H"
OUTPUT_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/results/competing-network-analysis/inactive-dor-network/B2AR-active-Nb-BI-competing-networks.txt"
python competing_networks.py $EXP_COND_DICT_FOLDER $EXP_COND_PDB $POLAR_NETWORK_LIST $POLAR_NETWORK_PDB $OUTPUT_FILE


EXP_COND_DICT_FOLDER="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutputDictionary/DOR-inactive-naltrindole-unpublished/condition-naltrindole-bound/rep_1/050516_NONHB_DEFAULT_HB_3.5_70"
EXP_COND_PDB="4N6H"
POLAR_NETWORK_LIST="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/interaction-footprint-analysis/polar-network-lists/inactive-dor-network.txt"
POLAR_NETWORK_PDB="4N6H"
OUTPUT_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/results/competing-network-analysis/inactive-dor-network/test-dor-inactive-competing-networks.txt"
python competing_networks.py $EXP_COND_DICT_FOLDER $EXP_COND_PDB $POLAR_NETWORK_LIST $POLAR_NETWORK_PDB $OUTPUT_FILE



FOOTPRINT_TABLE="/scratch/PI/rondror/akma327/DynamicNetworks/results/interaction-footprint-analysis/polar-network-freq-tables/residue-resolution/4N6H/dor-inactive-residue-footprint.txt"	
EXP_REP_ID="DOR-inactive-naltrindole-unpublished-condition-naltrindole-bound-rep_1"
OUTPUT_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/interaction-footprint-analysis/residue-resolution-evobundle-input/inactive-dor-network/test.json"
EXP_REP_PDB="4N6H"
python footprint_table_to_bundle_plot_json.py $FOOTPRINT_TABLE $EXP_REP_ID $OUTPUT_FILE -intra-pdb $EXP_REP_PDB


import json
gray_scale_dict = {}
f = open("gray_scale.txt", 'r')
fw = open("master_gray_scale.txt", 'w')
for line in f:
	hue, hexc = line.split("#")
	hue, hexc = hue.strip(), "#" + hexc.strip().upper()
	# fw.write(hue + "\t" + hexc + "\n")
	gray_scale_dict[hue] = hexc
with open("master_gray_scale.txt", 'w') as f:
	json.dump(gray_scale_dict, f)





TOP="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/step5_assembly.pdb"
TRAJ="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/rep_1/Prod_0/Prod_0_rewrapped.dcd"
trajid = molecule.load('pdb', TOP)
molecule.read(trajid, 'dcd', TRAJ, beg=0, end=-1, skip=1, waitfor=-1)


def getFileType(top_file_path):
	fileType = top_file_path.split("/")[-1].split(".")[1].strip()
	if(fileType == 'nc'): fileType = 'netcdf'
	return fileType

def load_traj(TOP, TRAJ):
	trajid = molecule.load(getFileType(TOP), TOP)
	molecule.read(trajid, getFileType(TRAJ), TRAJ, beg=0, end = -1, skip=1, waitfor=-1)



# DATE-060116

# Venn diagram stuff 


VENN_DIAGRAM_SECTOR="-second"
OUTPUT_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/interaction-footprint-analysis/polar-network-comparisons/active-mor-vs-inactive-dor/inactive-dor-only.json"

VENN_DIAGRAM_SECTOR="-intersect1"
OUTPUT_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/interaction-footprint-analysis/polar-network-comparisons/active-mor-vs-inactive-dor/active-mor-both.json"


VENN_DIAGRAM_SECTOR="-intersect2"
OUTPUT_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/interaction-footprint-analysis/polar-network-comparisons/active-mor-vs-inactive-dor/inactive-dor-both.json"




# Make new aggregate tables to seperate active from inactive state tables

FREQ_SUM_EXP_FOLDER_PATH="/scratch/PI/rondror/akma327/DynamicNetworks/results/simulation-analysis/gpcrdb-freq-output/single-cond-rep-freqsum/060116-3.2A-110D-inactive-receptors"
OUTPUT_FILE_PATH="/scratch/PI/rondror/akma327/DynamicNetworks/results/simulation-analysis/gpcrdb-freq-output/aggregate-freqsum/060116-3.2A-110D-inactive-receptors-aggregate.txt"
RECEPTOR_PDB_LOOKUP_PATH="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/simulation-analysis/gpcrdb-freq-config/receptor_pdb_lookup.txt"
python compile-gpcrdb-freq-data.py $FREQ_SUM_EXP_FOLDER_PATH $OUTPUT_FILE_PATH $RECEPTOR_PDB_LOOKUP_PATH


FREQ_SUM_EXP_FOLDER_PATH="/scratch/PI/rondror/akma327/DynamicNetworks/results/simulation-analysis/gpcrdb-freq-output/single-cond-rep-freqsum/060116-3.2A-110D-active-receptors"
OUTPUT_FILE_PATH="/scratch/PI/rondror/akma327/DynamicNetworks/results/simulation-analysis/gpcrdb-freq-output/aggregate-freqsum/060116-3.2A-110D-active-receptors-aggregate.txt"
RECEPTOR_PDB_LOOKUP_PATH="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/simulation-analysis/gpcrdb-freq-config/receptor_pdb_lookup.txt"
python compile-gpcrdb-freq-data.py $FREQ_SUM_EXP_FOLDER_PATH $OUTPUT_FILE_PATH $RECEPTOR_PDB_LOOKUP_PATH



FREQ_SUM_EXP_FOLDER_PATH="/scratch/PI/rondror/akma327/DynamicNetworks/results/simulation-analysis/gpcrdb-freq-output/single-cond-rep-freqsum/060116-3.5A-110D-inactive-receptors"
OUTPUT_FILE_PATH="/scratch/PI/rondror/akma327/DynamicNetworks/results/simulation-analysis/gpcrdb-freq-output/aggregate-freqsum/060116-3.5A-110D-inactive-receptors-aggregate.txt"
RECEPTOR_PDB_LOOKUP_PATH="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/simulation-analysis/gpcrdb-freq-config/receptor_pdb_lookup.txt"
python compile-gpcrdb-freq-data.py $FREQ_SUM_EXP_FOLDER_PATH $OUTPUT_FILE_PATH $RECEPTOR_PDB_LOOKUP_PATH


FREQ_SUM_EXP_FOLDER_PATH="/scratch/PI/rondror/akma327/DynamicNetworks/results/simulation-analysis/gpcrdb-freq-output/single-cond-rep-freqsum/060116-3.5A-110D-active-receptors"
OUTPUT_FILE_PATH="/scratch/PI/rondror/akma327/DynamicNetworks/results/simulation-analysis/gpcrdb-freq-output/aggregate-freqsum/060116-3.5A-110D-active-receptors-aggregate.txt"
RECEPTOR_PDB_LOOKUP_PATH="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/simulation-analysis/gpcrdb-freq-config/receptor_pdb_lookup.txt"
python compile-gpcrdb-freq-data.py $FREQ_SUM_EXP_FOLDER_PATH $OUTPUT_FILE_PATH $RECEPTOR_PDB_LOOKUP_PATH



# Make atom  footprint table for active and inactive state seperately 

AGGREGATE_FREQ_TABLE="/scratch/PI/rondror/akma327/DynamicNetworks/results/simulation-analysis/gpcrdb-freq-output/aggregate-freqsum/060116-3.5A-110D-inactive-receptors-aggregate.txt"
NETWORK_FILTER_LIST="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/interaction-footprint-analysis/polar-network-lists/inactive-dor-network.txt"
PDB_CODE="4N6H"
OUTPUT_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/results/interaction-footprint-analysis/polar-network-freq-tables/atom-resolution/4N6H/dor-inactive-network-inactive-receptors-footprint.txt"
python atom_footprint_table.py $AGGREGATE_FREQ_TABLE $NETWORK_FILTER_LIST $PDB_CODE $OUTPUT_FILE


AGGREGATE_FREQ_TABLE="/scratch/PI/rondror/akma327/DynamicNetworks/results/simulation-analysis/gpcrdb-freq-output/aggregate-freqsum/060116-3.5A-110D-active-receptors-aggregate.txt"
NETWORK_FILTER_LIST="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/interaction-footprint-analysis/polar-network-lists/inactive-dor-network.txt"
PDB_CODE="4N6H"
OUTPUT_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/results/interaction-footprint-analysis/polar-network-freq-tables/atom-resolution/4N6H/dor-inactive-network-active-receptors-footprint.txt"
python atom_footprint_table.py $AGGREGATE_FREQ_TABLE $NETWORK_FILTER_LIST $PDB_CODE $OUTPUT_FILE


AGGREGATE_FREQ_TABLE="/scratch/PI/rondror/akma327/DynamicNetworks/results/simulation-analysis/gpcrdb-freq-output/aggregate-freqsum/060116-3.5A-110D-inactive-receptors-aggregate.txt"
NETWORK_FILTER_LIST="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/interaction-footprint-analysis/polar-network-lists/active-mor-network.txt"
PDB_CODE="5C1M"
OUTPUT_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/results/interaction-footprint-analysis/polar-network-freq-tables/atom-resolution/5C1M/mor-active-network-inactive-receptors-footprint.txt"
python atom_footprint_table.py $AGGREGATE_FREQ_TABLE $NETWORK_FILTER_LIST $PDB_CODE $OUTPUT_FILE


AGGREGATE_FREQ_TABLE="/scratch/PI/rondror/akma327/DynamicNetworks/results/simulation-analysis/gpcrdb-freq-output/aggregate-freqsum/060116-3.5A-110D-active-receptors-aggregate.txt"
NETWORK_FILTER_LIST="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/interaction-footprint-analysis/polar-network-lists/active-mor-network.txt"
PDB_CODE="5C1M"
OUTPUT_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/results/interaction-footprint-analysis/polar-network-freq-tables/atom-resolution/5C1M/mor-active-network-active-receptors-footprint.txt"
python atom_footprint_table.py $AGGREGATE_FREQ_TABLE $NETWORK_FILTER_LIST $PDB_CODE $OUTPUT_FILE



# Convert inactive and active atom resolution to residue resolution

ATOM_FOOTPRINT_TABLE="/scratch/PI/rondror/akma327/DynamicNetworks/results/interaction-footprint-analysis/polar-network-freq-tables/atom-resolution/4N6H/dor-inactive-network-active-receptors-atom-footprint.txt"
OUTPUT_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/results/interaction-footprint-analysis/polar-network-freq-tables/residue-resolution/4N6H/dor-inactive-network-active-receptors-residue-footprint.txt"
python residue_footprint_table.py $ATOM_FOOTPRINT_TABLE $OUTPUT_FILE

ATOM_FOOTPRINT_TABLE="/scratch/PI/rondror/akma327/DynamicNetworks/results/interaction-footprint-analysis/polar-network-freq-tables/atom-resolution/4N6H/dor-inactive-network-inactive-receptors-atom-footprint.txt"
OUTPUT_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/results/interaction-footprint-analysis/polar-network-freq-tables/residue-resolution/4N6H/dor-inactive-network-inactive-receptors-residue-footprint.txt"
python residue_footprint_table.py $ATOM_FOOTPRINT_TABLE $OUTPUT_FILE

ATOM_FOOTPRINT_TABLE="/scratch/PI/rondror/akma327/DynamicNetworks/results/interaction-footprint-analysis/polar-network-freq-tables/atom-resolution/5C1M/mor-active-network-active-receptors-atom-footprint.txt"
OUTPUT_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/results/interaction-footprint-analysis/polar-network-freq-tables/residue-resolution/5C1M/mor-active-network-active-receptors-residue-footprint.txt"
python residue_footprint_table.py $ATOM_FOOTPRINT_TABLE $OUTPUT_FILE


ATOM_FOOTPRINT_TABLE="/scratch/PI/rondror/akma327/DynamicNetworks/results/interaction-footprint-analysis/polar-network-freq-tables/atom-resolution/5C1M/mor-active-network-inactive-receptors-atom-footprint.txt"
OUTPUT_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/results/interaction-footprint-analysis/polar-network-freq-tables/residue-resolution/5C1M/mor-active-network-inactive-receptors-residue-footprint.txt"
python residue_footprint_table.py $ATOM_FOOTPRINT_TABLE $OUTPUT_FILE







# DATE 060216

POLAR_NETWORK_JSON1="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/interaction-footprint-analysis/residue-resolution-evobundle-input/active-mor-network/MOR-active-noNB-BU72-nature2015-rep_1.json"
POLAR_NETWORK_JSON2="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/interaction-footprint-analysis/residue-resolution-evobundle-input/inactive-dor-network/DOR-inactive-naltrindole-rep_1.json"
VENN_DIAGRAM_SECTOR="-intersect1"
OUTPUT_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/interaction-footprint-analysis/polar-network-comparisons/active-mor-vs-inactive-dor/active-mor-both-debug.json"
python venn_diagram_compare_polar_networks.py $POLAR_NETWORK_JSON1 $POLAR_NETWORK_JSON2 $VENN_DIAGRAM_SECTOR $OUTPUT_FILE


POLAR_NETWORK_JSON1="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/interaction-footprint-analysis/residue-resolution-evobundle-input/active-mor-network/MOR-active-noNB-BU72-nature2015-rep_1.json"
POLAR_NETWORK_JSON2="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/interaction-footprint-analysis/residue-resolution-evobundle-input/inactive-dor-network/DOR-inactive-naltrindole-rep_1.json"
VENN_DIAGRAM_SECTOR="-intersect2"
OUTPUT_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/interaction-footprint-analysis/polar-network-comparisons/active-mor-vs-inactive-dor/inactive-dor-both-debug.json"
python venn_diagram_compare_polar_networks.py $POLAR_NETWORK_JSON1 $POLAR_NETWORK_JSON2 $VENN_DIAGRAM_SECTOR $OUTPUT_FILE



# Found the bug for the inconsistent number of interactions it was because of not including interaction type so
# there are possibly multiple instances of the same gpcrdb 

POLAR_NETWORK_JSON1="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/interaction-footprint-analysis/residue-resolution-evobundle-input/active-mor-network/MOR-active-noNB-BU72-nature2015-rep_1.json"
POLAR_NETWORK_JSON2="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/interaction-footprint-analysis/residue-resolution-evobundle-input/inactive-dor-network/DOR-inactive-naltrindole-rep_1.json"
VENN_DIAGRAM_SECTOR="-first"
OUTPUT_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/interaction-footprint-analysis/polar-network-comparisons/active-mor-vs-inactive-dor/active-mor-only.json"
python venn_diagram_compare_polar_networks.py $POLAR_NETWORK_JSON1 $POLAR_NETWORK_JSON2 $VENN_DIAGRAM_SECTOR $OUTPUT_FILE


VENN_DIAGRAM_SECTOR="-second"
OUTPUT_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/interaction-footprint-analysis/polar-network-comparisons/active-mor-vs-inactive-dor/inactive-dor-only.json"
python venn_diagram_compare_polar_networks.py $POLAR_NETWORK_JSON1 $POLAR_NETWORK_JSON2 $VENN_DIAGRAM_SECTOR $OUTPUT_FILE


VENN_DIAGRAM_SECTOR="-intersect1"
OUTPUT_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/interaction-footprint-analysis/polar-network-comparisons/active-mor-vs-inactive-dor/active-mor-both.json"
python venn_diagram_compare_polar_networks.py $POLAR_NETWORK_JSON1 $POLAR_NETWORK_JSON2 $VENN_DIAGRAM_SECTOR $OUTPUT_FILE


VENN_DIAGRAM_SECTOR="-intersect2"
OUTPUT_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/interaction-footprint-analysis/polar-network-comparisons/active-mor-vs-inactive-dor/inactive-dor-both.json"
python venn_diagram_compare_polar_networks.py $POLAR_NETWORK_JSON1 $POLAR_NETWORK_JSON2 $VENN_DIAGRAM_SECTOR $OUTPUT_FILE


# Make atom footprint table for inactive inactive + mor only, dor only, and both 


# Inactive network receptors 
AGGREGATE_FREQ_TABLE="/scratch/PI/rondror/akma327/DynamicNetworks/results/simulation-analysis/gpcrdb-freq-output/aggregate-freqsum/060116-3.5A-110D-inactive-receptors-aggregate.txt"
NETWORK_FILTER_LIST="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/interaction-footprint-analysis/polar-network-lists/comparison-network-lists/active-mor-only-list.txt"
PDB_CODE="5C1M"
OUTPUT_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/results/interaction-footprint-analysis/polar-network-freq-tables/atom-resolution/polar-network-comparison/active-mor-vs-inactive-dor/inactive-receptors/active-mor-only-network-inactive-receptors-atom-footprint.txt"
python atom_footprint_table.py $AGGREGATE_FREQ_TABLE $NETWORK_FILTER_LIST $PDB_CODE $OUTPUT_FILE


AGGREGATE_FREQ_TABLE="/scratch/PI/rondror/akma327/DynamicNetworks/results/simulation-analysis/gpcrdb-freq-output/aggregate-freqsum/060116-3.5A-110D-inactive-receptors-aggregate.txt"
NETWORK_FILTER_LIST="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/interaction-footprint-analysis/polar-network-lists/comparison-network-lists/inactive-dor-only-list.txt"
PDB_CODE="4N6H"
OUTPUT_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/results/interaction-footprint-analysis/polar-network-freq-tables/atom-resolution/polar-network-comparison/active-mor-vs-inactive-dor/inactive-receptors/inactive-dor-only-network-inactive-receptors-atom-footprint.txt"
python atom_footprint_table.py $AGGREGATE_FREQ_TABLE $NETWORK_FILTER_LIST $PDB_CODE $OUTPUT_FILE


AGGREGATE_FREQ_TABLE="/scratch/PI/rondror/akma327/DynamicNetworks/results/simulation-analysis/gpcrdb-freq-output/aggregate-freqsum/060116-3.5A-110D-inactive-receptors-aggregate.txt"
NETWORK_FILTER_LIST="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/interaction-footprint-analysis/polar-network-lists/comparison-network-lists/active-mor-both-list.txt"
PDB_CODE="5C1M"
OUTPUT_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/results/interaction-footprint-analysis/polar-network-freq-tables/atom-resolution/polar-network-comparison/active-mor-vs-inactive-dor/inactive-receptors/inactive-dor-active-mor-both-network-inactive-receptors-atom-footprint.txt"
python atom_footprint_table.py $AGGREGATE_FREQ_TABLE $NETWORK_FILTER_LIST $PDB_CODE $OUTPUT_FILE



# Active network receptors 
AGGREGATE_FREQ_TABLE="/scratch/PI/rondror/akma327/DynamicNetworks/results/simulation-analysis/gpcrdb-freq-output/aggregate-freqsum/060116-3.5A-110D-active-receptors-aggregate.txt"
NETWORK_FILTER_LIST="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/interaction-footprint-analysis/polar-network-lists/comparison-network-lists/active-mor-only-list.txt"
PDB_CODE="5C1M"
OUTPUT_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/results/interaction-footprint-analysis/polar-network-freq-tables/atom-resolution/polar-network-comparison/active-mor-vs-inactive-dor/active-receptors/active-mor-only-network-active-receptors-atom-footprint.txt"
python atom_footprint_table.py $AGGREGATE_FREQ_TABLE $NETWORK_FILTER_LIST $PDB_CODE $OUTPUT_FILE


AGGREGATE_FREQ_TABLE="/scratch/PI/rondror/akma327/DynamicNetworks/results/simulation-analysis/gpcrdb-freq-output/aggregate-freqsum/060116-3.5A-110D-active-receptors-aggregate.txt"
NETWORK_FILTER_LIST="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/interaction-footprint-analysis/polar-network-lists/comparison-network-lists/inactive-dor-only-list.txt"
PDB_CODE="4N6H"
OUTPUT_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/results/interaction-footprint-analysis/polar-network-freq-tables/atom-resolution/polar-network-comparison/active-mor-vs-inactive-dor/active-receptors/inactive-dor-only-network-active-receptors-atom-footprint.txt"
python atom_footprint_table.py $AGGREGATE_FREQ_TABLE $NETWORK_FILTER_LIST $PDB_CODE $OUTPUT_FILE

AGGREGATE_FREQ_TABLE="/scratch/PI/rondror/akma327/DynamicNetworks/results/simulation-analysis/gpcrdb-freq-output/aggregate-freqsum/060116-3.5A-110D-active-receptors-aggregate.txt"
NETWORK_FILTER_LIST="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/interaction-footprint-analysis/polar-network-lists/comparison-network-lists/active-mor-both-list.txt"
PDB_CODE="5C1M"
OUTPUT_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/results/interaction-footprint-analysis/polar-network-freq-tables/atom-resolution/polar-network-comparison/active-mor-vs-inactive-dor/active-receptors/inactive-dor-active-mor-both-network-active-receptors-atom-footprint.txt"
python atom_footprint_table.py $AGGREGATE_FREQ_TABLE $NETWORK_FILTER_LIST $PDB_CODE $OUTPUT_FILE





# Convert inactive/active x mor,dor, both atom resolution to residue resolution

# inactive receptors 
ATOM_FOOTPRINT_TABLE="/scratch/PI/rondror/akma327/DynamicNetworks/results/interaction-footprint-analysis/polar-network-freq-tables/atom-resolution/polar-network-comparison/active-mor-vs-inactive-dor/inactive-receptors/active-mor-only-network-inactive-receptors-atom-footprint.txt"
OUTPUT_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/results/interaction-footprint-analysis/polar-network-freq-tables/residue-resolution/polar-network-comparison/active-mor-vs-inactive-dor/inactive-receptors/active-mor-only-network-inactive-receptors-residue-footprint.txt"
python residue_footprint_table.py $ATOM_FOOTPRINT_TABLE $OUTPUT_FILE


ATOM_FOOTPRINT_TABLE="/scratch/PI/rondror/akma327/DynamicNetworks/results/interaction-footprint-analysis/polar-network-freq-tables/atom-resolution/polar-network-comparison/active-mor-vs-inactive-dor/inactive-receptors/inactive-dor-only-network-inactive-receptors-atom-footprint.txt"
OUTPUT_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/results/interaction-footprint-analysis/polar-network-freq-tables/residue-resolution/polar-network-comparison/active-mor-vs-inactive-dor/inactive-receptors/inactive-dor-only-network-inactive-receptors-residue-footprint.txt"
python residue_footprint_table.py $ATOM_FOOTPRINT_TABLE $OUTPUT_FILE

ATOM_FOOTPRINT_TABLE="/scratch/PI/rondror/akma327/DynamicNetworks/results/interaction-footprint-analysis/polar-network-freq-tables/atom-resolution/polar-network-comparison/active-mor-vs-inactive-dor/inactive-receptors/inactive-dor-active-mor-both-network-inactive-receptors-atom-footprint.txt"
OUTPUT_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/results/interaction-footprint-analysis/polar-network-freq-tables/residue-resolution/polar-network-comparison/active-mor-vs-inactive-dor/inactive-receptors/inactive-dor-active-mor-both-network-inactive-receptors-residue-footprint.txt"
python residue_footprint_table.py $ATOM_FOOTPRINT_TABLE $OUTPUT_FILE


# active receptors 
ATOM_FOOTPRINT_TABLE="/scratch/PI/rondror/akma327/DynamicNetworks/results/interaction-footprint-analysis/polar-network-freq-tables/atom-resolution/polar-network-comparison/active-mor-vs-inactive-dor/active-receptors/active-mor-only-network-active-receptors-atom-footprint.txt"
OUTPUT_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/results/interaction-footprint-analysis/polar-network-freq-tables/residue-resolution/polar-network-comparison/active-mor-vs-inactive-dor/active-receptors/active-mor-only-network-active-receptors-residue-footprint.txt"
python residue_footprint_table.py $ATOM_FOOTPRINT_TABLE $OUTPUT_FILE


ATOM_FOOTPRINT_TABLE="/scratch/PI/rondror/akma327/DynamicNetworks/results/interaction-footprint-analysis/polar-network-freq-tables/atom-resolution/polar-network-comparison/active-mor-vs-inactive-dor/active-receptors/inactive-dor-only-network-active-receptors-atom-footprint.txt"
OUTPUT_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/results/interaction-footprint-analysis/polar-network-freq-tables/residue-resolution/polar-network-comparison/active-mor-vs-inactive-dor/active-receptors/inactive-dor-only-network-active-receptors-residue-footprint.txt"
python residue_footprint_table.py $ATOM_FOOTPRINT_TABLE $OUTPUT_FILE

ATOM_FOOTPRINT_TABLE="/scratch/PI/rondror/akma327/DynamicNetworks/results/interaction-footprint-analysis/polar-network-freq-tables/atom-resolution/polar-network-comparison/active-mor-vs-inactive-dor/active-receptors/inactive-dor-active-mor-both-network-active-receptors-atom-footprint.txt"
OUTPUT_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/results/interaction-footprint-analysis/polar-network-freq-tables/residue-resolution/polar-network-comparison/active-mor-vs-inactive-dor/active-receptors/inactive-dor-active-mor-both-network-active-receptors-residue-footprint.txt"
python residue_footprint_table.py $ATOM_FOOTPRINT_TABLE $OUTPUT_FILE





# DATE 060816


TOP="/scratch/PI/rondror/DesRes-Simulations/ordered-from-DesRes/pnas2011b/DESRES-Trajectory_pnas2011b-A-all.1/DESRES-Trajectory_pnas2011b-A-00-all/pnas2011b-A-00-all/pnas2011b-A-00-all.mae"
TRAJ_DIR="/scratch/PI/rondror/DesRes-Simulations/ordered-from-DesRes/pnas2011b/DESRES-Trajectory_pnas2011b-A-all.1/DESRES-Trajectory_pnas2011b-A-00-all/pnas2011b-A-00-all"
TRAJ_FILE_TYPE="dcd"
OUTPUT="/scratch/PI/rondror/DesRes-Simulations/subsampled_desres_traj/B2AR-active-Nb-BI-pnas2011b-condL-rep1-sample1000.dcd"
python subsample_combine_traj.py $TOP $TRAJ_DIR $TRAJ_FILE_TYPE $OUTPUT 


TOP="/scratch/PI/rondror/MD_simulations/amber/robin_D4_dopamine/nemonapride/deprotonated/prep/inp03_03DRD4_nemonapride_hmr.pdb"
TRAJ_DIR="/scratch/PI/rondror/MD_simulations/amber/robin_D4_dopamine/nemonapride/deprotonated/production/03/1"
TRAJ_FILE_TYPE="nc"
OUTPUT="/scratch/PI/rondror/DesRes-Simulations/subsampled_desres_traj/D4R-rep1.nc"
python subsample_combine_traj.py $TOP $TRAJ_DIR $TRAJ_FILE_TYPE $OUTPUT 



import sys 
TOP="/scratch/PI/rondror/DesRes-Simulations/subsampled_desres_traj/pnas2011b-A-00-all.mae"
TRAJ="/scratch/PI/rondror/DesRes-Simulations/subsampled_desres_traj/B2AR-active-Nb-BI-pnas2011b-condL-rep1-sample1000.dcd"
sys.argv = ['a', TOP, TRAJ]
execfile('visualize_traj.py')




# Subsampling and combining trajectory table 

/scratch/PI/rondror/DesRes-Simulations/subsampled_desres_traj//scratch/PI/rondror/DesRes-Simulations/subsampled_desres_traj//scratch/PI/rondror/DesRes-Simulations/subsampled_desres_traj//scratch/PI/rondror/DesRes-Simulations/subsampled_desres_traj/B2AR-inactive-carazalol-cell2013b/condition-1/rep_1
/scratch/PI/rondror/DesRes-Simulations/subsampled_desres_traj//scratch/PI/rondror/DesRes-Simulations/subsampled_desres_traj//scratch/PI/rondror/DesRes-Simulations/subsampled_desres_traj//scratch/PI/rondror/DesRes-Simulations/subsampled_desres_traj/B2AR-inactive-carazalol-cell2013b/condition-2/rep_1
/scratch/PI/rondror/DesRes-Simulations/subsampled_desres_traj//scratch/PI/rondror/DesRes-Simulations/subsampled_desres_traj//scratch/PI/rondror/DesRes-Simulations/subsampled_desres_traj//scratch/PI/rondror/DesRes-Simulations/subsampled_desres_traj/B2AR-inactive-carazalol-cell2013b/condition-5/rep_1
/scratch/PI/rondror/DesRes-Simulations/subsampled_desres_traj//scratch/PI/rondror/DesRes-Simulations/subsampled_desres_traj//scratch/PI/rondror/DesRes-Simulations/subsampled_desres_traj//scratch/PI/rondror/DesRes-Simulations/subsampled_desres_traj/B2AR-inactive-carazalol-cell2013b/condition-6/rep_1
/scratch/PI/rondror/DesRes-Simulations/subsampled_desres_traj//scratch/PI/rondror/DesRes-Simulations/subsampled_desres_traj//scratch/PI/rondror/DesRes-Simulations/subsampled_desres_traj//scratch/PI/rondror/DesRes-Simulations/subsampled_desres_traj/B2AR-inactive-carazalol-cell2013b/condition-12/rep_1

/scratch/PI/rondror/DesRes-Simulations/subsampled_desres_traj//scratch/PI/rondror/DesRes-Simulations/subsampled_desres_traj//scratch/PI/rondror/DesRes-Simulations/subsampled_desres_traj/B2AR-inactive-carazalol-nature2011/condition-A/rep_1
/scratch/PI/rondror/DesRes-Simulations/subsampled_desres_traj//scratch/PI/rondror/DesRes-Simulations/subsampled_desres_traj//scratch/PI/rondror/DesRes-Simulations/subsampled_desres_traj/B2AR-inactive-carazalol-nature2011/condition-B/rep_1

/scratch/PI/rondror/DesRes-Simulations/subsampled_desres_traj//scratch/PI/rondror/DesRes-Simulations/subsampled_desres_traj/B2AR-active-noNb-BI-nature2011/condition-C/rep_1
/scratch/PI/rondror/DesRes-Simulations/subsampled_desres_traj//scratch/PI/rondror/DesRes-Simulations/subsampled_desres_traj/B2AR-active-noNb-BI-nature2011/condition-D/rep_1


/scratch/PI/rondror/DesRes-Simulations/subsampled_desres_traj/B2AR-active-Nb-BI-pnas2011b/condition-L/rep_1
/scratch/PI/rondror/DesRes-Simulations/subsampled_desres_traj/B2AR-active-Nb-BI-pnas2011b/condition-L/rep_2
/scratch/PI/rondror/DesRes-Simulations/subsampled_desres_traj/B2AR-active-Nb-BI-pnas2011b/condition-M/rep_1
/scratch/PI/rondror/DesRes-Simulations/subsampled_desres_traj/B2AR-active-Nb-BI-pnas2011b/condition-N/rep_1
/scratch/PI/rondror/DesRes-Simulations/subsampled_desres_traj/B2AR-active-Nb-BI-pnas2011b/condition-N/rep_2
/scratch/PI/rondror/DesRes-Simulations/subsampled_desres_traj/B2AR-active-Nb-BI-pnas2011b/condition-O/rep_1
/scratch/PI/rondror/DesRes-Simulations/subsampled_desres_traj/B2AR-active-Nb-BI-pnas2011b/condition-P/rep_1
/scratch/PI/rondror/DesRes-Simulations/subsampled_desres_traj/B2AR-active-Nb-BI-pnas2011b/condition-Q/rep_1
/scratch/PI/rondror/DesRes-Simulations/subsampled_desres_traj/B2AR-active-Nb-BI-pnas2011b/condition-Q/rep_2


/scratch/PI/rondror/DesRes-Simulations/subsampled_desres_traj/B2AR-active-Gs-BI-science2015/condition-22/rep_1
/scratch/PI/rondror/DesRes-Simulations/subsampled_desres_traj/B2AR-active-Gs-BI-science2015/condition-23/rep_1
/scratch/PI/rondror/DesRes-Simulations/subsampled_desres_traj/B2AR-active-Gs-BI-science2015/condition-24/rep_1
/scratch/PI/rondror/DesRes-Simulations/subsampled_desres_traj/B2AR-active-Gs-BI-science2015/condition-65/rep_1



/scratch/PI/rondror/DesRes-Simulations/subsampled_desres_traj/D4R-inactive-nemanopride-unpublished/condition-antagonist-bound/rep_1
/scratch/PI/rondror/DesRes-Simulations/subsampled_desres_traj/D4R-inactive-nemanopride-unpublished/condition-antagonist-bound/rep_2
/scratch/PI/rondror/DesRes-Simulations/subsampled_desres_traj/D4R-inactive-nemanopride-unpublished/condition-antagonist-bound/rep_3


/scratch/PI/rondror/DesRes-Simulations/subsampled_desres_traj/DOR-inactive-naltrindole-unpublished/condition-naltrindole-bound/rep_1
/scratch/PI/rondror/DesRes-Simulations/subsampled_desres_traj/DOR-inactive-naltrindole-unpublished/condition-naltrindole-bound/rep_2
/scratch/PI/rondror/DesRes-Simulations/subsampled_desres_traj/DOR-inactive-naltrindole-unpublished/condition-naltrindole-bound/rep_3


/scratch/PI/rondror/DesRes-Simulations/subsampled_desres_traj/M2R-inactive-QNB-nature2013/condition-AE/rep_1


/scratch/PI/rondror/DesRes-Simulations/subsampled_desres_traj/M2R-inactive-QNB-nature2012/condition-A/rep_1

/scratch/PI/rondror/DesRes-Simulations/subsampled_desres_traj/M3R-inactive-tiotropium-nature2012/condition-C/rep_1


/scratch/PI/rondror/DesRes-Simulations/subsampled_desres_traj/MOR-active-noNb-BU72-nature2015/condition-nb-interface-restrained-BU72/rep_1
/scratch/PI/rondror/DesRes-Simulations/subsampled_desres_traj/MOR-active-noNb-BU72-nature2015/condition-nb-interface-restrained-BU72/rep_2
/scratch/PI/rondror/DesRes-Simulations/subsampled_desres_traj/MOR-active-noNb-BU72-nature2015/condition-nb-interface-restrained-BU72/rep_3



/scratch/PI/rondror/DesRes-Simulations/subsampled_desres_traj/MOR-inactive-bFNA-nature2015/condition-bFNA-bound/rep_1
/scratch/PI/rondror/DesRes-Simulations/subsampled_desres_traj/MOR-inactive-bFNA-nature2015/condition-bFNA-bound/rep_2
/scratch/PI/rondror/DesRes-Simulations/subsampled_desres_traj/MOR-inactive-bFNA-nature2015/condition-bFNA-bound/rep_3



/scratch/PI/rondror/DesRes-Simulations/subsampled_desres_traj/PAR1-inactive-vorapaxar-nature2012b/condition-A/rep_1
/scratch/PI/rondror/DesRes-Simulations/subsampled_desres_traj/PAR1-inactive-vorapaxar-nature2012b/condition-B/rep_1





/scratch/PI/rondror/MD_simulations/amber/robin_D4_dopamine/nemonapride/deprotonated/prep/inp03_03DRD4_nemonapride_hmr.pdb


/scratch/PI/rondror/MD_simulations/amber/MOR_inactive_waters/bfna_bonded/rep_1/step5_assembly.pdb

/scratch/PI/rondror/MD_simulations/amber/MOR_active_waters/mor_active_refine196_agonist_NanobodyInterfaceRestrained/system.pdb




import sys 
TOP="/scratch/PI/rondror/DesRes-Simulations/subsampled_desres_traj/D4R-inactive-nemanopride-unpublished/condition-antagonist-bound/rep_1/inp03_03DRD4_nemonapride_hmr.pdb"
TRAJ="/scratch/PI/rondror/DesRes-Simulations/subsampled_desres_traj/D4R-inactive-nemanopride-unpublished/condition-antagonist-bound/rep_1/stitched.dcd"
sys.argv = ['a', TOP, TRAJ]
execfile('visualize_traj.py')

TOP="/scratch/PI/rondror/DesRes-Simulations/subsampled_desres_traj/B2AR-inactive-carazalol-nature2011/condition-A/rep_1/nature2011-A-all.mae"
TRAJ="/scratch/PI/rondror/DesRes-Simulations/subsampled_desres_traj/B2AR-inactive-carazalol-nature2011/condition-A/rep_1/stitched.dcd"
sys.argv = ['a', TOP, TRAJ]
execfile('visualize_traj.py')

TOP='cell2013b-sim1-all.mae'
molid = molecule.load('mae', TOP)
molecule.read(molid, 'dcd', 'stitched.dcd')




TOP="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/MOR-active-noNb-BU72-nature2015/condition-nb-interface-restrained-BU72/step5_assembly.pdb"
TRAJ="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/MOR-active-noNb-BU72-nature2015/condition-nb-interface-restrained-BU72/rep_1/Prod_1/Prod_1_reimaged.nc"
OUTPUT="/scratch/PI/rondror/akma327/DynamicNetworks/src/analysis/water-density/mine.dx"
import sys 
sys.argv= ['a', TOP, TRAJ, OUTPUT]
execfile('water_density.py')

TOP="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/M2R-inactive-QNB-nature2012/condition-A/step5_assembly.pdb"
TRAJ="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/M2R-inactive-QNB-nature2012/condition-A/rep_1/Prod_0/Prod_0_rewrapped.dcd"
python wet.py $TOP $TRAJ




# DATE 061416

TOP="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-inactive-carazalol-cell2013b/condition-1/step5_assembly.mae"
TRAJ="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-inactive-carazalol-cell2013b/condition-1/rep_1/Prod_0/Prod_0_rewrapped.dcd"
OUT="/scratch/PI/rondror/akma327/DynamicNetworks/src/analysis/water-density/B2AR-inactive-carazalol-cell2013b/Prod_0.dx"
python water_density.py $TOP $TRAJ $OUT


TOP="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-inactive-carazalol-cell2013b/condition-1/step5_assembly.mae"
TRAJ="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-inactive-carazalol-cell2013b/condition-1/rep_1/Prod_0/Prod_0_rewrapped.dcd"
OUT="/scratch/PI/rondror/akma327/DynamicNetworks/src/analysis/water-density/B2AR-inactive-carazalol-cell2013b/Prod_0.dx"
python -m memory_profiler water_density.py $TOP $TRAJ $OUT

TOP="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/MOR-active-noNb-BU72-nature2015/condition-nb-interface-restrained-BU72/step5_assembly.pdb"
TRAJ="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/MOR-active-noNb-BU72-nature2015/condition-nb-interface-restrained-BU72/rep_1/Prod_1/Prod_1_reimaged.nc"
OUT="/scratch/PI/rondror/akma327/DynamicNetworks/src/analysis/water-density/vmd061516.dx"
python water_density.py $TOP $TRAJ $OUT

TOP="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-noNb-BI-nature2011/condition-C/step5_assembly.pdb"
TRAJ="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-noNb-BI-nature2011/condition-C/rep_1/Prod_0/Prod_0_rewrapped.dcd"
OUT="/scratch/PI/rondror/akma327/DynamicNetworks/src/analysis/water-density/B2AR-active-noNb-BI-nature2011/condition-C/rep_1/Prod_0.dx"
python water_density.py $TOP $TRAJ $OUT


# B2AR-inactive-carazalol-cell2013b

TOP="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/MOR-active-noNb-BU72-nature2015/condition-nb-interface-restrained-BU72/step5_assembly.pdb"
TRAJ="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/MOR-active-noNb-BU72-nature2015/condition-nb-interface-restrained-BU72/rep_1/Prod_1/Prod_1_reimaged.nc"
OUT="/scratch/PI/rondror/akma327/DynamicNetworks/src/analysis/water-density/mdprofile.dx"
python -m memory_profiler water_density.py $TOP $TRAJ $OUT




# DATE 061516

LARGE JOBS:

salloc -n 12 -N 1 --time=48:00:00 -p rondror
srun -n 12 --x11=first --pty bash -i -l

salloc -n 6 -N 1 --time=48:00:00 -p rondror
srun -n 6 --x11=first --pty bash -i -l

salloc -n 6 --time=4:00:00 -p rondror
srun -n 6 --x11=first --pty bash -i -l

salloc -n 1 --time=2:00:00 -p rondror
srun -n 1 --x11=first --pty bash -i -l


salloc -n 1 --time=1:00:00 -p rondror --mem=10000
srun -n 1 --x11=first --pty bash -i -l

salloc -n 1 --time=1:00:00 -p bigmem --qos=bigmem
srun -n 1 --x11=first --pty bash -i -l

salloc -n 1 --time=4:00:00 -p rondror --mem=70000
srun -n 1 --x11=first --pty bash -i -l

salloc -n 6 --time=4:00:00 -p rondror --mem=70000
srun -n 6 --x11=first --pty bash -i -l





SIMULATION_TOOL="-anton"
TOP="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-inactive-carazalol-cell2013b/condition-1/step5_assembly.mae"
TRAJ_DIR="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-inactive-carazalol-cell2013b/condition-1/rep_1"
OUTPUT_DIR="/scratch/PI/rondror/akma327/DynamicNetworks/data/water-density/B2AR-inactive-carazalol-cell2013b/condition-1/rep_1"
JOB_FOLDER="/scratch/PI/rondror/akma327/DynamicNetworks/src/analysis/water-density/jobs/B2AR-inactive-carazalol-cell2013b/condition-1/rep_1"
python fragment_water_density.py $SIMULATION_TOOL $TOP $TRAJ_DIR $OUTPUT_DIR $JOB_FOLDER






OUTPUT_DIR="/scratch/PI/rondror/akma327/DynamicNetworks/data/water-density/B2AR-active-Gs-BI-science2015/condition-22/rep_1"
OUTPUT_DIR="/scratch/PI/rondror/akma327/DynamicNetworks/data/water-density/B2AR-active-Gs-BI-science2015/condition-23/rep_1"
OUTPUT_DIR="/scratch/PI/rondror/akma327/DynamicNetworks/data/water-density/B2AR-active-Gs-BI-science2015/condition-24/rep_1"
OUTPUT_DIR="/scratch/PI/rondror/akma327/DynamicNetworks/data/water-density/B2AR-active-Gs-BI-science2015/condition-65/rep_1"
OUTPUT_DIR="/scratch/PI/rondror/akma327/DynamicNetworks/data/water-density/B2AR-active-Nb-BI-pnas2011b/condition-L/rep_1"
OUTPUT_DIR="/scratch/PI/rondror/akma327/DynamicNetworks/data/water-density/B2AR-active-Nb-BI-pnas2011b/condition-L/rep_2"
OUTPUT_DIR="/scratch/PI/rondror/akma327/DynamicNetworks/data/water-density/B2AR-active-Nb-BI-pnas2011b/condition-M/rep_1"
OUTPUT_DIR="/scratch/PI/rondror/akma327/DynamicNetworks/data/water-density/B2AR-active-Nb-BI-pnas2011b/condition-N/rep_1"
OUTPUT_DIR="/scratch/PI/rondror/akma327/DynamicNetworks/data/water-density/B2AR-active-Nb-BI-pnas2011b/condition-N/rep_2"
OUTPUT_DIR="/scratch/PI/rondror/akma327/DynamicNetworks/data/water-density/B2AR-active-Nb-BI-pnas2011b/condition-O/rep_1"
OUTPUT_DIR="/scratch/PI/rondror/akma327/DynamicNetworks/data/water-density/B2AR-active-Nb-BI-pnas2011b/condition-P/rep_1"
OUTPUT_DIR="/scratch/PI/rondror/akma327/DynamicNetworks/data/water-density/B2AR-active-Nb-BI-pnas2011b/condition-Q/rep_1"
OUTPUT_DIR="/scratch/PI/rondror/akma327/DynamicNetworks/data/water-density/B2AR-active-Nb-BI-pnas2011b/condition-Q/rep_2"
OUTPUT_DIR="/scratch/PI/rondror/akma327/DynamicNetworks/data/water-density/B2AR-active-noNb-BI-nature2011/condition-C/rep_1"
OUTPUT_DIR="/scratch/PI/rondror/akma327/DynamicNetworks/data/water-density/B2AR-active-noNb-BI-nature2011/condition-D/rep_1"
OUTPUT_DIR="/scratch/PI/rondror/akma327/DynamicNetworks/data/water-density/B2AR-inactive-carazalol-cell2013b/condition-12/rep_1"
OUTPUT_DIR="/scratch/PI/rondror/akma327/DynamicNetworks/data/water-density/B2AR-inactive-carazalol-cell2013b/condition-1/rep_1"
OUTPUT_DIR="/scratch/PI/rondror/akma327/DynamicNetworks/data/water-density/B2AR-inactive-carazalol-cell2013b/condition-2/rep_1"
OUTPUT_DIR="/scratch/PI/rondror/akma327/DynamicNetworks/data/water-density/B2AR-inactive-carazalol-cell2013b/condition-5/rep_1"
OUTPUT_DIR="/scratch/PI/rondror/akma327/DynamicNetworks/data/water-density/B2AR-inactive-carazalol-cell2013b/condition-6/rep_1"
OUTPUT_DIR="/scratch/PI/rondror/akma327/DynamicNetworks/data/water-density/B2AR-inactive-carazalol-nature2011/condition-A/rep_1"
OUTPUT_DIR="/scratch/PI/rondror/akma327/DynamicNetworks/data/water-density/B2AR-inactive-carazalol-nature2011/condition-B/rep_1"
OUTPUT_DIR="/scratch/PI/rondror/akma327/DynamicNetworks/data/water-density/D4R-inactive-nemanopride-unpublished/condition-antagonist-bound/rep_1"
OUTPUT_DIR="/scratch/PI/rondror/akma327/DynamicNetworks/data/water-density/D4R-inactive-nemanopride-unpublished/condition-antagonist-bound/rep_2"
OUTPUT_DIR="/scratch/PI/rondror/akma327/DynamicNetworks/data/water-density/D4R-inactive-nemanopride-unpublished/condition-antagonist-bound/rep_3"
OUTPUT_DIR="/scratch/PI/rondror/akma327/DynamicNetworks/data/water-density/DOR-inactive-naltrindole-unpublished/condition-naltrindole-bound/rep_1"
OUTPUT_DIR="/scratch/PI/rondror/akma327/DynamicNetworks/data/water-density/DOR-inactive-naltrindole-unpublished/condition-naltrindole-bound/rep_2"
OUTPUT_DIR="/scratch/PI/rondror/akma327/DynamicNetworks/data/water-density/DOR-inactive-naltrindole-unpublished/condition-naltrindole-bound/rep_3"
OUTPUT_DIR="/scratch/PI/rondror/akma327/DynamicNetworks/data/water-density/M2R-inactive-QNB-nature2012/condition-A/rep_1"
OUTPUT_DIR="/scratch/PI/rondror/akma327/DynamicNetworks/data/water-density/M2R-inactive-QNB-nature2013/condition-AE/rep_1"
OUTPUT_DIR="/scratch/PI/rondror/akma327/DynamicNetworks/data/water-density/M3R-inactive-tiotropium-nature2012/condition-C/rep_1"
OUTPUT_DIR="/scratch/PI/rondror/akma327/DynamicNetworks/data/water-density/MOR-active-noNb-BU72-nature2015/condition-nb-interface-restrained-BU72/rep_1"
OUTPUT_DIR="/scratch/PI/rondror/akma327/DynamicNetworks/data/water-density/MOR-active-noNb-BU72-nature2015/condition-nb-interface-restrained-BU72/rep_2"
OUTPUT_DIR="/scratch/PI/rondror/akma327/DynamicNetworks/data/water-density/MOR-active-noNb-BU72-nature2015/condition-nb-interface-restrained-BU72/rep_3"
OUTPUT_DIR="/scratch/PI/rondror/akma327/DynamicNetworks/data/water-density/MOR-inactive-bFNA-nature2015/condition-bFNA-bound/rep_1"
OUTPUT_DIR="/scratch/PI/rondror/akma327/DynamicNetworks/data/water-density/MOR-inactive-bFNA-nature2015/condition-bFNA-bound/rep_2"
OUTPUT_DIR="/scratch/PI/rondror/akma327/DynamicNetworks/data/water-density/MOR-inactive-bFNA-nature2015/condition-bFNA-bound/rep_3"
OUTPUT_DIR="/scratch/PI/rondror/akma327/DynamicNetworks/data/water-density/PAR1-inactive-vorapaxar-nature2012b/condition-A/rep_1"
OUTPUT_DIR="/scratch/PI/rondror/akma327/DynamicNetworks/data/water-density/PAR1-inactive-vorapaxar-nature2012b/condition-B/rep_1"



JOB_FOLDER="/scratch/PI/rondror/akma327/DynamicNetworks/src/analysis/water-density/jobs/B2AR-active-Gs-BI-science2015/condition-22/rep_1"
JOB_FOLDER="/scratch/PI/rondror/akma327/DynamicNetworks/src/analysis/water-density/jobs/B2AR-active-Gs-BI-science2015/condition-23/rep_1"
JOB_FOLDER="/scratch/PI/rondror/akma327/DynamicNetworks/src/analysis/water-density/jobs/B2AR-active-Gs-BI-science2015/condition-24/rep_1"
JOB_FOLDER="/scratch/PI/rondror/akma327/DynamicNetworks/src/analysis/water-density/jobs/B2AR-active-Gs-BI-science2015/condition-65/rep_1"
JOB_FOLDER="/scratch/PI/rondror/akma327/DynamicNetworks/src/analysis/water-density/jobs/B2AR-active-Nb-BI-pnas2011b/condition-L/rep_1"
JOB_FOLDER="/scratch/PI/rondror/akma327/DynamicNetworks/src/analysis/water-density/jobs/B2AR-active-Nb-BI-pnas2011b/condition-L/rep_2"
JOB_FOLDER="/scratch/PI/rondror/akma327/DynamicNetworks/src/analysis/water-density/jobs/B2AR-active-Nb-BI-pnas2011b/condition-M/rep_1"
JOB_FOLDER="/scratch/PI/rondror/akma327/DynamicNetworks/src/analysis/water-density/jobs/B2AR-active-Nb-BI-pnas2011b/condition-N/rep_1"
JOB_FOLDER="/scratch/PI/rondror/akma327/DynamicNetworks/src/analysis/water-density/jobs/B2AR-active-Nb-BI-pnas2011b/condition-N/rep_2"
JOB_FOLDER="/scratch/PI/rondror/akma327/DynamicNetworks/src/analysis/water-density/jobs/B2AR-active-Nb-BI-pnas2011b/condition-O/rep_1"
JOB_FOLDER="/scratch/PI/rondror/akma327/DynamicNetworks/src/analysis/water-density/jobs/B2AR-active-Nb-BI-pnas2011b/condition-P/rep_1"
JOB_FOLDER="/scratch/PI/rondror/akma327/DynamicNetworks/src/analysis/water-density/jobs/B2AR-active-Nb-BI-pnas2011b/condition-Q/rep_1"
JOB_FOLDER="/scratch/PI/rondror/akma327/DynamicNetworks/src/analysis/water-density/jobs/B2AR-active-Nb-BI-pnas2011b/condition-Q/rep_2"
JOB_FOLDER="/scratch/PI/rondror/akma327/DynamicNetworks/src/analysis/water-density/jobs/B2AR-active-noNb-BI-nature2011/condition-C/rep_1"
JOB_FOLDER="/scratch/PI/rondror/akma327/DynamicNetworks/src/analysis/water-density/jobs/B2AR-active-noNb-BI-nature2011/condition-D/rep_1"
JOB_FOLDER="/scratch/PI/rondror/akma327/DynamicNetworks/src/analysis/water-density/jobs/B2AR-inactive-carazalol-cell2013b/condition-12/rep_1"
JOB_FOLDER="/scratch/PI/rondror/akma327/DynamicNetworks/src/analysis/water-density/jobs/B2AR-inactive-carazalol-cell2013b/condition-1/rep_1"
JOB_FOLDER="/scratch/PI/rondror/akma327/DynamicNetworks/src/analysis/water-density/jobs/B2AR-inactive-carazalol-cell2013b/condition-2/rep_1"
JOB_FOLDER="/scratch/PI/rondror/akma327/DynamicNetworks/src/analysis/water-density/jobs/B2AR-inactive-carazalol-cell2013b/condition-5/rep_1"
JOB_FOLDER="/scratch/PI/rondror/akma327/DynamicNetworks/src/analysis/water-density/jobs/B2AR-inactive-carazalol-cell2013b/condition-6/rep_1"
JOB_FOLDER="/scratch/PI/rondror/akma327/DynamicNetworks/src/analysis/water-density/jobs/B2AR-inactive-carazalol-nature2011/condition-A/rep_1"
JOB_FOLDER="/scratch/PI/rondror/akma327/DynamicNetworks/src/analysis/water-density/jobs/B2AR-inactive-carazalol-nature2011/condition-B/rep_1"
JOB_FOLDER="/scratch/PI/rondror/akma327/DynamicNetworks/src/analysis/water-density/jobs/D4R-inactive-nemanopride-unpublished/condition-antagonist-bound/rep_1"
JOB_FOLDER="/scratch/PI/rondror/akma327/DynamicNetworks/src/analysis/water-density/jobs/D4R-inactive-nemanopride-unpublished/condition-antagonist-bound/rep_2"
JOB_FOLDER="/scratch/PI/rondror/akma327/DynamicNetworks/src/analysis/water-density/jobs/D4R-inactive-nemanopride-unpublished/condition-antagonist-bound/rep_3"
JOB_FOLDER="/scratch/PI/rondror/akma327/DynamicNetworks/src/analysis/water-density/jobs/DOR-inactive-naltrindole-unpublished/condition-naltrindole-bound/rep_1"
JOB_FOLDER="/scratch/PI/rondror/akma327/DynamicNetworks/src/analysis/water-density/jobs/DOR-inactive-naltrindole-unpublished/condition-naltrindole-bound/rep_2"
JOB_FOLDER="/scratch/PI/rondror/akma327/DynamicNetworks/src/analysis/water-density/jobs/DOR-inactive-naltrindole-unpublished/condition-naltrindole-bound/rep_3"
JOB_FOLDER="/scratch/PI/rondror/akma327/DynamicNetworks/src/analysis/water-density/jobs/M2R-inactive-QNB-nature2012/condition-A/rep_1"
JOB_FOLDER="/scratch/PI/rondror/akma327/DynamicNetworks/src/analysis/water-density/jobs/M2R-inactive-QNB-nature2013/condition-AE/rep_1"
JOB_FOLDER="/scratch/PI/rondror/akma327/DynamicNetworks/src/analysis/water-density/jobs/M3R-inactive-tiotropium-nature2012/condition-C/rep_1"
JOB_FOLDER="/scratch/PI/rondror/akma327/DynamicNetworks/src/analysis/water-density/jobs/MOR-active-noNb-BU72-nature2015/condition-nb-interface-restrained-BU72/rep_1"
JOB_FOLDER="/scratch/PI/rondror/akma327/DynamicNetworks/src/analysis/water-density/jobs/MOR-active-noNb-BU72-nature2015/condition-nb-interface-restrained-BU72/rep_2"
JOB_FOLDER="/scratch/PI/rondror/akma327/DynamicNetworks/src/analysis/water-density/jobs/MOR-active-noNb-BU72-nature2015/condition-nb-interface-restrained-BU72/rep_3"
JOB_FOLDER="/scratch/PI/rondror/akma327/DynamicNetworks/src/analysis/water-density/jobs/MOR-inactive-bFNA-nature2015/condition-bFNA-bound/rep_1"
JOB_FOLDER="/scratch/PI/rondror/akma327/DynamicNetworks/src/analysis/water-density/jobs/MOR-inactive-bFNA-nature2015/condition-bFNA-bound/rep_2"
JOB_FOLDER="/scratch/PI/rondror/akma327/DynamicNetworks/src/analysis/water-density/jobs/MOR-inactive-bFNA-nature2015/condition-bFNA-bound/rep_3"
JOB_FOLDER="/scratch/PI/rondror/akma327/DynamicNetworks/src/analysis/water-density/jobs/PAR1-inactive-vorapaxar-nature2012b/condition-A/rep_1"
JOB_FOLDER="/scratch/PI/rondror/akma327/DynamicNetworks/src/analysis/water-density/jobs/PAR1-inactive-vorapaxar-nature2012b/condition-B/rep_1"







# DATE 061916
/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/D4R-inactive-nemanopride-unpublished/condition-antagonist-bound/step5_assembly.pdb
/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/MOR-inactive-bFNA-nature2015/condition-bFNA-bound/step5_assembly.pdb
/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/MOR-active-noNb-BU72-nature2015/condition-nb-interface-restrained-BU72/step5_assembly.pdb




 python ../subsample_combine_traj.py 
 /scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/MOR-inactive-bFNA-nature2015/condition-bFNA-bound/step5_assembly.pdb 
 /scratch/PI/rondror/MD_simulations/amber/MOR_inactive_waters/bfna_bonded/rep_1 
 nc 
 /scratch/PI/rondror/DesRes-Simulations/subsampled_desres_traj/MOR-inactive-bFNA-nature2015/condition-bFNA-bound/rep_1/stitched.nc


python ../subsample_combine_traj.py 
/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/MOR-inactive-bFNA-nature2015/condition-bFNA-bound/step5_assembly.pdb 
/scratch/PI/rondror/MD_simulations/amber/MOR_inactive_waters/bfna_bonded/rep_1 
nc 
/scratch/PI/rondror/DesRes-Simulations/subsampled_desres_traj/MOR-inactive-bFNA-nature2015/condition-bFNA-bound/rep_1/stitched.dcd





# DATE 062016

# All 3.2 and all 3.5 table 
BATCH_SCRIPT_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/src/analysis/simulation-analysis/batch/052816-3.5A-110D-full-gpcrdb-freq-aggregate-calc.sh"
OUTPUT_FOLDER_NAME="062016-3.5A-110D-full"
OUTPUT_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/src/analysis/simulation-analysis/batch/062016-3.5A-110D-full-gpcrdb-freq-aggregate-calc.sh"
python expand_experiment_condition_labels.py $BATCH_SCRIPT_FILE $OUTPUT_FOLDER_NAME $OUTPUT_FILE

BATCH_SCRIPT_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/src/analysis/simulation-analysis/batch/052816-3.2A-110D-full-gpcrdb-freq-aggregate-calc.sh"
OUTPUT_FOLDER_NAME="062016-3.2A-110D-full"
OUTPUT_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/src/analysis/simulation-analysis/batch/062016-3.2A-110D-full-gpcrdb-freq-aggregate-calc.sh"
python expand_experiment_condition_labels.py $BATCH_SCRIPT_FILE $OUTPUT_FOLDER_NAME $OUTPUT_FILE



# Split across active and inactive receptors for 3.2 and 3.5 tables
BATCH_SCRIPT_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/src/analysis/simulation-analysis/batch/060116-3.5A-110D-full-gpcrdb-freq-aggregate-calc-active-receptors.sh"
OUTPUT_FOLDER_NAME="062016-3.5A-110D-active-receptors"
OUTPUT_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/src/analysis/simulation-analysis/batch/062016-3.5A-110D-full-gpcrdb-freq-aggregate-calc-active-receptors.sh"
python expand_experiment_condition_labels.py $BATCH_SCRIPT_FILE $OUTPUT_FOLDER_NAME $OUTPUT_FILE


BATCH_SCRIPT_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/src/analysis/simulation-analysis/batch/060116-3.5A-110D-full-gpcrdb-freq-aggregate-calc-inactive-receptors.sh"
OUTPUT_FOLDER_NAME="062016-3.5A-110D-inactive-receptors"
OUTPUT_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/src/analysis/simulation-analysis/batch/062016-3.5A-110D-full-gpcrdb-freq-aggregate-calc-inactive-receptors.sh"
python expand_experiment_condition_labels.py $BATCH_SCRIPT_FILE $OUTPUT_FOLDER_NAME $OUTPUT_FILE


BATCH_SCRIPT_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/src/analysis/simulation-analysis/batch/060116-3.2A-110D-full-gpcrdb-freq-aggregate-calc-active-receptors.sh"
OUTPUT_FOLDER_NAME="062016-3.2A-110D-active-receptors"
OUTPUT_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/src/analysis/simulation-analysis/batch/062016-3.2A-110D-full-gpcrdb-freq-aggregate-calc-active-receptors.sh"
python expand_experiment_condition_labels.py $BATCH_SCRIPT_FILE $OUTPUT_FOLDER_NAME $OUTPUT_FILE


BATCH_SCRIPT_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/src/analysis/simulation-analysis/batch/060116-3.2A-110D-full-gpcrdb-freq-aggregate-calc-inactive-receptors.sh"
OUTPUT_FOLDER_NAME="062016-3.2A-110D-inactive-receptors"
OUTPUT_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/src/analysis/simulation-analysis/batch/062016-3.2A-110D-full-gpcrdb-freq-aggregate-calc-inactive-receptors.sh"
python expand_experiment_condition_labels.py $BATCH_SCRIPT_FILE $OUTPUT_FOLDER_NAME $OUTPUT_FILE




# Aggregate Frequency Table 

FREQ_SUM_EXP_FOLDER_PATH="/scratch/PI/rondror/akma327/DynamicNetworks/results/simulation-analysis/gpcrdb-freq-output/single-cond-rep-freqsum/062016-3.5A-110D-active-receptors"
OUTPUT_FILE_PATH="/scratch/PI/rondror/akma327/DynamicNetworks/results/simulation-analysis/gpcrdb-freq-output/aggregate-freqsum/062016-3.5A-110D-active-receptors-aggregate.txt"
RECEPTOR_PDB_LOOKUP_PATH="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/simulation-analysis/gpcrdb-freq-config/receptor_pdb_lookup.txt"
python compile-gpcrdb-freq-data.py $FREQ_SUM_EXP_FOLDER_PATH $OUTPUT_FILE_PATH $RECEPTOR_PDB_LOOKUP_PATH


FREQ_SUM_EXP_FOLDER_PATH="/scratch/PI/rondror/akma327/DynamicNetworks/results/simulation-analysis/gpcrdb-freq-output/single-cond-rep-freqsum/062016-3.5A-110D-inactive-receptors"
OUTPUT_FILE_PATH="/scratch/PI/rondror/akma327/DynamicNetworks/results/simulation-analysis/gpcrdb-freq-output/aggregate-freqsum/062016-3.5A-110D-inactive-receptors-aggregate.txt"
RECEPTOR_PDB_LOOKUP_PATH="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/simulation-analysis/gpcrdb-freq-config/receptor_pdb_lookup.txt"
python compile-gpcrdb-freq-data.py $FREQ_SUM_EXP_FOLDER_PATH $OUTPUT_FILE_PATH $RECEPTOR_PDB_LOOKUP_PATH


FREQ_SUM_EXP_FOLDER_PATH="/scratch/PI/rondror/akma327/DynamicNetworks/results/simulation-analysis/gpcrdb-freq-output/single-cond-rep-freqsum/062016-3.2A-110D-active-receptors"
OUTPUT_FILE_PATH="/scratch/PI/rondror/akma327/DynamicNetworks/results/simulation-analysis/gpcrdb-freq-output/aggregate-freqsum/062016-3.2A-110D-active-receptors-aggregate.txt"
RECEPTOR_PDB_LOOKUP_PATH="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/simulation-analysis/gpcrdb-freq-config/receptor_pdb_lookup.txt"
python compile-gpcrdb-freq-data.py $FREQ_SUM_EXP_FOLDER_PATH $OUTPUT_FILE_PATH $RECEPTOR_PDB_LOOKUP_PATH


FREQ_SUM_EXP_FOLDER_PATH="/scratch/PI/rondror/akma327/DynamicNetworks/results/simulation-analysis/gpcrdb-freq-output/single-cond-rep-freqsum/062016-3.2A-110D-inactive-receptors"
OUTPUT_FILE_PATH="/scratch/PI/rondror/akma327/DynamicNetworks/results/simulation-analysis/gpcrdb-freq-output/aggregate-freqsum/062016-3.2A-110D-inactive-receptors-aggregate.txt"
RECEPTOR_PDB_LOOKUP_PATH="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/simulation-analysis/gpcrdb-freq-config/receptor_pdb_lookup.txt"
python compile-gpcrdb-freq-data.py $FREQ_SUM_EXP_FOLDER_PATH $OUTPUT_FILE_PATH $RECEPTOR_PDB_LOOKUP_PATH


FREQ_SUM_EXP_FOLDER_PATH="/scratch/PI/rondror/akma327/DynamicNetworks/results/simulation-analysis/gpcrdb-freq-output/single-cond-rep-freqsum/062016-3.5A-110D-full"
OUTPUT_FILE_PATH="/scratch/PI/rondror/akma327/DynamicNetworks/results/simulation-analysis/gpcrdb-freq-output/aggregate-freqsum/062016-3.5A-110D-full-aggregate.txt"
RECEPTOR_PDB_LOOKUP_PATH="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/simulation-analysis/gpcrdb-freq-config/receptor_pdb_lookup.txt"
python compile-gpcrdb-freq-data.py $FREQ_SUM_EXP_FOLDER_PATH $OUTPUT_FILE_PATH $RECEPTOR_PDB_LOOKUP_PATH


FREQ_SUM_EXP_FOLDER_PATH="/scratch/PI/rondror/akma327/DynamicNetworks/results/simulation-analysis/gpcrdb-freq-output/single-cond-rep-freqsum/062016-3.2A-110D-full"
OUTPUT_FILE_PATH="/scratch/PI/rondror/akma327/DynamicNetworks/results/simulation-analysis/gpcrdb-freq-output/aggregate-freqsum/062016-3.2A-110D-full-aggregate.txt"
RECEPTOR_PDB_LOOKUP_PATH="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/simulation-analysis/gpcrdb-freq-config/receptor_pdb_lookup.txt"
python compile-gpcrdb-freq-data.py $FREQ_SUM_EXP_FOLDER_PATH $OUTPUT_FILE_PATH $RECEPTOR_PDB_LOOKUP_PATH



# DATE 062116

# Compute atom footprint table upon full aggregate 

AGGREGATE_FREQ_TABLE="/scratch/PI/rondror/akma327/DynamicNetworks/results/simulation-analysis/gpcrdb-freq-output/aggregate-freqsum/062016-3.5A-110D-full-aggregate.txt"
NETWORK_FILTER_LIST="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/interaction-footprint-analysis/polar-network-lists/inactive-dor-network.txt"
PDB_CODE="4N6H"
OUTPUT_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/results/interaction-footprint-analysis/polar-network-freq-tables/atom-resolution/4N6H/inactive-dor-network-atom-footprint.txt"
python atom_footprint_table.py $AGGREGATE_FREQ_TABLE $NETWORK_FILTER_LIST $PDB_CODE $OUTPUT_FILE



AGGREGATE_FREQ_TABLE="/scratch/PI/rondror/akma327/DynamicNetworks/results/simulation-analysis/gpcrdb-freq-output/aggregate-freqsum/062016-3.5A-110D-full-aggregate.txt"
NETWORK_FILTER_LIST="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/interaction-footprint-analysis/polar-network-lists/active-mor-network.txt"
PDB_CODE="5C1M"
OUTPUT_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/results/interaction-footprint-analysis/polar-network-freq-tables/atom-resolution/5C1M/active-mor-network-atom-footprint.txt"
python atom_footprint_table.py $AGGREGATE_FREQ_TABLE $NETWORK_FILTER_LIST $PDB_CODE $OUTPUT_FILE


# Compute atom footprint table for inactive receptor + full inactive polar network and active receptor + full active polar network 
AGGREGATE_FREQ_TABLE="/scratch/PI/rondror/akma327/DynamicNetworks/results/simulation-analysis/gpcrdb-freq-output/aggregate-freqsum/062016-3.5A-110D-inactive-receptors-aggregate.txt"
NETWORK_FILTER_LIST="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/interaction-footprint-analysis/polar-network-lists/inactive-dor-network.txt"
PDB_CODE="4N6H"
OUTPUT_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/results/interaction-footprint-analysis/polar-network-freq-tables/atom-resolution/4N6H/inactive-dor-network-inactive-receptors-atom-footprint.txt"
python atom_footprint_table.py $AGGREGATE_FREQ_TABLE $NETWORK_FILTER_LIST $PDB_CODE $OUTPUT_FILE



AGGREGATE_FREQ_TABLE="/scratch/PI/rondror/akma327/DynamicNetworks/results/simulation-analysis/gpcrdb-freq-output/aggregate-freqsum/062016-3.5A-110D-active-receptors-aggregate.txt"
NETWORK_FILTER_LIST="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/interaction-footprint-analysis/polar-network-lists/active-mor-network.txt"
PDB_CODE="5C1M"
OUTPUT_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/results/interaction-footprint-analysis/polar-network-freq-tables/atom-resolution/5C1M/active-mor-network-active-receptors-atom-footprint.txt"
python atom_footprint_table.py $AGGREGATE_FREQ_TABLE $NETWORK_FILTER_LIST $PDB_CODE $OUTPUT_FILE



# Make atom footprint table for inactive inactive + mor only, dor only, and both 


# Inactive network receptors 
AGGREGATE_FREQ_TABLE="/scratch/PI/rondror/akma327/DynamicNetworks/results/simulation-analysis/gpcrdb-freq-output/aggregate-freqsum/062016-3.5A-110D-inactive-receptors-aggregate.txt"
NETWORK_FILTER_LIST="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/interaction-footprint-analysis/polar-network-lists/comparison-network-lists/active-mor-only-list.txt"
PDB_CODE="5C1M"
OUTPUT_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/results/interaction-footprint-analysis/polar-network-freq-tables/atom-resolution/polar-network-comparison/active-mor-vs-inactive-dor/inactive-receptors/active-mor-only-network-inactive-receptors-atom-footprint.txt"
python atom_footprint_table.py $AGGREGATE_FREQ_TABLE $NETWORK_FILTER_LIST $PDB_CODE $OUTPUT_FILE


AGGREGATE_FREQ_TABLE="/scratch/PI/rondror/akma327/DynamicNetworks/results/simulation-analysis/gpcrdb-freq-output/aggregate-freqsum/062016-3.5A-110D-inactive-receptors-aggregate.txt"
NETWORK_FILTER_LIST="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/interaction-footprint-analysis/polar-network-lists/comparison-network-lists/inactive-dor-only-list.txt"
PDB_CODE="4N6H"
OUTPUT_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/results/interaction-footprint-analysis/polar-network-freq-tables/atom-resolution/polar-network-comparison/active-mor-vs-inactive-dor/inactive-receptors/inactive-dor-only-network-inactive-receptors-atom-footprint.txt"
python atom_footprint_table.py $AGGREGATE_FREQ_TABLE $NETWORK_FILTER_LIST $PDB_CODE $OUTPUT_FILE


AGGREGATE_FREQ_TABLE="/scratch/PI/rondror/akma327/DynamicNetworks/results/simulation-analysis/gpcrdb-freq-output/aggregate-freqsum/062016-3.5A-110D-inactive-receptors-aggregate.txt"
NETWORK_FILTER_LIST="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/interaction-footprint-analysis/polar-network-lists/comparison-network-lists/active-mor-both-list.txt"
PDB_CODE="5C1M"
OUTPUT_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/results/interaction-footprint-analysis/polar-network-freq-tables/atom-resolution/polar-network-comparison/active-mor-vs-inactive-dor/inactive-receptors/inactive-dor-active-mor-both-network-inactive-receptors-atom-footprint.txt"
python atom_footprint_table.py $AGGREGATE_FREQ_TABLE $NETWORK_FILTER_LIST $PDB_CODE $OUTPUT_FILE



# Active network receptors 
AGGREGATE_FREQ_TABLE="/scratch/PI/rondror/akma327/DynamicNetworks/results/simulation-analysis/gpcrdb-freq-output/aggregate-freqsum/062016-3.5A-110D-active-receptors-aggregate.txt"
NETWORK_FILTER_LIST="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/interaction-footprint-analysis/polar-network-lists/comparison-network-lists/active-mor-only-list.txt"
PDB_CODE="5C1M"
OUTPUT_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/results/interaction-footprint-analysis/polar-network-freq-tables/atom-resolution/polar-network-comparison/active-mor-vs-inactive-dor/active-receptors/active-mor-only-network-active-receptors-atom-footprint.txt"
python atom_footprint_table.py $AGGREGATE_FREQ_TABLE $NETWORK_FILTER_LIST $PDB_CODE $OUTPUT_FILE


AGGREGATE_FREQ_TABLE="/scratch/PI/rondror/akma327/DynamicNetworks/results/simulation-analysis/gpcrdb-freq-output/aggregate-freqsum/062016-3.5A-110D-active-receptors-aggregate.txt"
NETWORK_FILTER_LIST="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/interaction-footprint-analysis/polar-network-lists/comparison-network-lists/inactive-dor-only-list.txt"
PDB_CODE="4N6H"
OUTPUT_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/results/interaction-footprint-analysis/polar-network-freq-tables/atom-resolution/polar-network-comparison/active-mor-vs-inactive-dor/active-receptors/inactive-dor-only-network-active-receptors-atom-footprint.txt"
python atom_footprint_table.py $AGGREGATE_FREQ_TABLE $NETWORK_FILTER_LIST $PDB_CODE $OUTPUT_FILE

AGGREGATE_FREQ_TABLE="/scratch/PI/rondror/akma327/DynamicNetworks/results/simulation-analysis/gpcrdb-freq-output/aggregate-freqsum/062016-3.5A-110D-active-receptors-aggregate.txt"
NETWORK_FILTER_LIST="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/interaction-footprint-analysis/polar-network-lists/comparison-network-lists/active-mor-both-list.txt"
PDB_CODE="5C1M"
OUTPUT_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/results/interaction-footprint-analysis/polar-network-freq-tables/atom-resolution/polar-network-comparison/active-mor-vs-inactive-dor/active-receptors/inactive-dor-active-mor-both-network-active-receptors-atom-footprint.txt"
python atom_footprint_table.py $AGGREGATE_FREQ_TABLE $NETWORK_FILTER_LIST $PDB_CODE $OUTPUT_FILE






# Convert to Residue footprint table for full atom tables

ATOM_FOOTPRINT_TABLE="/scratch/PI/rondror/akma327/DynamicNetworks/results/interaction-footprint-analysis/polar-network-freq-tables/atom-resolution/4N6H/inactive-dor-network-atom-footprint.txt"
OUTPUT_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/results/interaction-footprint-analysis/polar-network-freq-tables/residue-resolution/4N6H/inactive-dor-residue-footprint.txt"
python residue_footprint_table.py $ATOM_FOOTPRINT_TABLE $OUTPUT_FILE


ATOM_FOOTPRINT_TABLE="/scratch/PI/rondror/akma327/DynamicNetworks/results/interaction-footprint-analysis/polar-network-freq-tables/atom-resolution/5C1M/active-mor-network-atom-footprint.txt"
OUTPUT_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/results/interaction-footprint-analysis/polar-network-freq-tables/residue-resolution/5C1M/active-mor-residue-footprint.txt"
python residue_footprint_table.py $ATOM_FOOTPRINT_TABLE $OUTPUT_FILE




# Convert to residue footprint table for inactive polar network + inactive receptors and active polar network + active receptors 

ATOM_FOOTPRINT_TABLE="/scratch/PI/rondror/akma327/DynamicNetworks/results/interaction-footprint-analysis/polar-network-freq-tables/atom-resolution/4N6H/inactive-dor-network-inactive-receptors-atom-footprint.txt"
OUTPUT_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/results/interaction-footprint-analysis/polar-network-freq-tables/residue-resolution/4N6H/inactive-dor-network-inactive-receptors-residue-footprint.txt"
python residue_footprint_table.py $ATOM_FOOTPRINT_TABLE $OUTPUT_FILE


ATOM_FOOTPRINT_TABLE="/scratch/PI/rondror/akma327/DynamicNetworks/results/interaction-footprint-analysis/polar-network-freq-tables/atom-resolution/5C1M/active-mor-network-active-receptors-atom-footprint.txt"
OUTPUT_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/results/interaction-footprint-analysis/polar-network-freq-tables/residue-resolution/5C1M/active-mor-network-active-receptors-residue-footprint.txt"
python residue_footprint_table.py $ATOM_FOOTPRINT_TABLE $OUTPUT_FILE





# Convert inactive/active x mor,dor, both atom resolution to residue resolution

# inactive receptors 
ATOM_FOOTPRINT_TABLE="/scratch/PI/rondror/akma327/DynamicNetworks/results/interaction-footprint-analysis/polar-network-freq-tables/atom-resolution/polar-network-comparison/active-mor-vs-inactive-dor/inactive-receptors/active-mor-only-network-inactive-receptors-atom-footprint.txt"
OUTPUT_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/results/interaction-footprint-analysis/polar-network-freq-tables/residue-resolution/polar-network-comparison/active-mor-vs-inactive-dor/inactive-receptors/active-mor-only-network-inactive-receptors-residue-footprint.txt"
python residue_footprint_table.py $ATOM_FOOTPRINT_TABLE $OUTPUT_FILE


ATOM_FOOTPRINT_TABLE="/scratch/PI/rondror/akma327/DynamicNetworks/results/interaction-footprint-analysis/polar-network-freq-tables/atom-resolution/polar-network-comparison/active-mor-vs-inactive-dor/inactive-receptors/inactive-dor-only-network-inactive-receptors-atom-footprint.txt"
OUTPUT_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/results/interaction-footprint-analysis/polar-network-freq-tables/residue-resolution/polar-network-comparison/active-mor-vs-inactive-dor/inactive-receptors/inactive-dor-only-network-inactive-receptors-residue-footprint.txt"
python residue_footprint_table.py $ATOM_FOOTPRINT_TABLE $OUTPUT_FILE

ATOM_FOOTPRINT_TABLE="/scratch/PI/rondror/akma327/DynamicNetworks/results/interaction-footprint-analysis/polar-network-freq-tables/atom-resolution/polar-network-comparison/active-mor-vs-inactive-dor/inactive-receptors/inactive-dor-active-mor-both-network-inactive-receptors-atom-footprint.txt"
OUTPUT_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/results/interaction-footprint-analysis/polar-network-freq-tables/residue-resolution/polar-network-comparison/active-mor-vs-inactive-dor/inactive-receptors/inactive-dor-active-mor-both-network-inactive-receptors-residue-footprint.txt"
python residue_footprint_table.py $ATOM_FOOTPRINT_TABLE $OUTPUT_FILE


# active receptors 
ATOM_FOOTPRINT_TABLE="/scratch/PI/rondror/akma327/DynamicNetworks/results/interaction-footprint-analysis/polar-network-freq-tables/atom-resolution/polar-network-comparison/active-mor-vs-inactive-dor/active-receptors/active-mor-only-network-active-receptors-atom-footprint.txt"
OUTPUT_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/results/interaction-footprint-analysis/polar-network-freq-tables/residue-resolution/polar-network-comparison/active-mor-vs-inactive-dor/active-receptors/active-mor-only-network-active-receptors-residue-footprint.txt"
python residue_footprint_table.py $ATOM_FOOTPRINT_TABLE $OUTPUT_FILE


ATOM_FOOTPRINT_TABLE="/scratch/PI/rondror/akma327/DynamicNetworks/results/interaction-footprint-analysis/polar-network-freq-tables/atom-resolution/polar-network-comparison/active-mor-vs-inactive-dor/active-receptors/inactive-dor-only-network-active-receptors-atom-footprint.txt"
OUTPUT_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/results/interaction-footprint-analysis/polar-network-freq-tables/residue-resolution/polar-network-comparison/active-mor-vs-inactive-dor/active-receptors/inactive-dor-only-network-active-receptors-residue-footprint.txt"
python residue_footprint_table.py $ATOM_FOOTPRINT_TABLE $OUTPUT_FILE

ATOM_FOOTPRINT_TABLE="/scratch/PI/rondror/akma327/DynamicNetworks/results/interaction-footprint-analysis/polar-network-freq-tables/atom-resolution/polar-network-comparison/active-mor-vs-inactive-dor/active-receptors/inactive-dor-active-mor-both-network-active-receptors-atom-footprint.txt"
OUTPUT_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/results/interaction-footprint-analysis/polar-network-freq-tables/residue-resolution/polar-network-comparison/active-mor-vs-inactive-dor/active-receptors/inactive-dor-active-mor-both-network-active-receptors-residue-footprint.txt"
python residue_footprint_table.py $ATOM_FOOTPRINT_TABLE $OUTPUT_FILE





# BATCH Evobundle Json competing networks

POLAR_NETWORK_LIST="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/interaction-footprint-analysis/polar-network-lists/active-mor-network.txt"
OUTPUT_DIR="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/competing-network-analysis/evobundle-json/active-mor-network"
OUTPUT_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/src/analysis/competing-network-analysis/batch/evobundle/active_network_batch_evobundle.sh"
python batch_evobundle_competing_networks.py $POLAR_NETWORK_LIST $OUTPUT_DIR $OUTPUT_FILE -state active 

POLAR_NETWORK_LIST="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/interaction-footprint-analysis/polar-network-lists/inactive-dor-network.txt"
OUTPUT_DIR="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/competing-network-analysis/evobundle-json/inactive-dor-network"
OUTPUT_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/src/analysis/competing-network-analysis/batch/evobundle/inactive_network_batch_evobundle.sh"
python batch_evobundle_competing_networks.py $POLAR_NETWORK_LIST $OUTPUT_DIR $OUTPUT_FILE -state inactive





# AJ evobundle plot for all interactions 


INTERACTION_DICT="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutputDictionary/MOR-active-noNb-BU72-nature2015/condition-nb-interface-restrained-BU72/rep_1/050516_NONHB_DEFAULT_HB_3.5_70/water_bond_result_dict.txt"
PDB_CODE="5C1M"
OUTPUT_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/interaction-footprint-analysis/simulation-evobundle/mor-active-rep1-wb-res.json"
python simulation_evobundle.py $INTERACTION_DICT $PDB_CODE $OUTPUT_FILE residue


EXP_COND_DICT_FOLDER="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutputDictionary/B2AR-active-Gs-BI-science2015/condition-65/rep_1/050516_NONHB_DEFAULT_HB_3.5_70"
EXP_COND_PDB="5C1M"
POLAR_NETWORK_LIST="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/interaction-footprint-analysis/polar-network-lists/active-mor-network.txt"
OUTPUT_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/competing-network-analysis/evobundle-json/active-mor-network/poop.json"
python ../../evobundle_competing_networks.py $EXP_COND_DICT_FOLDER $EXP_COND_PDB $POLAR_NETWORK_LIST $OUTPUT_FILE





# DATE 062416

FREQ_SUM_EXP_FOLDER_PATH="/scratch/PI/rondror/akma327/DynamicNetworks/results/simulation-analysis/gpcrdb-freq-output/single-cond-rep-freqsum/062016-3.2A-110D-full"
OUTPUT_FILE_PATH="/scratch/PI/rondror/akma327/DynamicNetworks/results/simulation-analysis/gpcrdb-freq-output/aggregate-freqsum/062416-3.2A-110D-full-aggregate-sort.txt"
RECEPTOR_PDB_LOOKUP_PATH="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/simulation-analysis/gpcrdb-freq-config/receptor_pdb_lookup.txt"
python compile-gpcrdb-freq-data.py $FREQ_SUM_EXP_FOLDER_PATH $OUTPUT_FILE_PATH $RECEPTOR_PDB_LOOKUP_PATH


AGGREGATE_FREQ_TABLE="/scratch/PI/rondror/akma327/DynamicNetworks/results/simulation-analysis/gpcrdb-freq-output/aggregate-freqsum/062416-3.2A-110D-full-aggregate-sort.txt"
NETWORK_FILTER_LIST="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/interaction-footprint-analysis/polar-network-lists/inactive-dor-network.txt"
PDB_CODE="4N6H"
OUTPUT_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/results/interaction-footprint-analysis/polar-network-freq-tables/atom-resolution/4N6H/sorted-inactive-dor-network-atom-footprint.txt"
python atom_footprint_table.py $AGGREGATE_FREQ_TABLE $NETWORK_FILTER_LIST $PDB_CODE $OUTPUT_FILE


ATOM_FOOTPRINT_TABLE="/scratch/PI/rondror/akma327/DynamicNetworks/results/interaction-footprint-analysis/polar-network-freq-tables/atom-resolution/4N6H/sorted-inactive-dor-network-atom-footprint.txt"
OUTPUT_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/results/interaction-footprint-analysis/polar-network-freq-tables/residue-resolution/4N6H/sorted-inactive-dor-residue-footprint.txt"
python residue_footprint_table.py $ATOM_FOOTPRINT_TABLE $OUTPUT_FILE




# RESIDUE FOOTPRINT TABLE PIPELINE


# Generate batch file to compute all single experiment 
# All 3.2 and all 3.5 table 
BATCH_SCRIPT_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/src/analysis/simulation-analysis/batch/060116-3.5A-110D-full-gpcrdb-freq-aggregate-calc.sh"
OUTPUT_FOLDER_NAME="062416-3.5A-110D-full"
OUTPUT_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/src/analysis/simulation-analysis/batch/062416-3.5A-110D-full-gpcrdb-freq-aggregate-calc.sh"
python expand_experiment_condition_labels.py $BATCH_SCRIPT_FILE $OUTPUT_FOLDER_NAME $OUTPUT_FILE

BATCH_SCRIPT_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/src/analysis/simulation-analysis/batch/060116-3.2A-110D-full-gpcrdb-freq-aggregate-calc.sh"
OUTPUT_FOLDER_NAME="062416-3.2A-110D-full"
OUTPUT_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/src/analysis/simulation-analysis/batch/062416-3.2A-110D-full-gpcrdb-freq-aggregate-calc.sh"
python expand_experiment_condition_labels.py $BATCH_SCRIPT_FILE $OUTPUT_FOLDER_NAME $OUTPUT_FILE



# Split across active and inactive receptors for 3.2 and 3.5 tables
BATCH_SCRIPT_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/src/analysis/simulation-analysis/batch/060116-3.5A-110D-full-gpcrdb-freq-aggregate-calc-active-receptors.sh"
OUTPUT_FOLDER_NAME="062416-3.5A-110D-active-receptors"
OUTPUT_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/src/analysis/simulation-analysis/batch/062416-3.5A-110D-full-gpcrdb-freq-aggregate-calc-active-receptors.sh"
python expand_experiment_condition_labels.py $BATCH_SCRIPT_FILE $OUTPUT_FOLDER_NAME $OUTPUT_FILE


BATCH_SCRIPT_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/src/analysis/simulation-analysis/batch/060116-3.5A-110D-full-gpcrdb-freq-aggregate-calc-inactive-receptors.sh"
OUTPUT_FOLDER_NAME="062416-3.5A-110D-inactive-receptors"
OUTPUT_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/src/analysis/simulation-analysis/batch/062416-3.5A-110D-full-gpcrdb-freq-aggregate-calc-inactive-receptors.sh"
python expand_experiment_condition_labels.py $BATCH_SCRIPT_FILE $OUTPUT_FOLDER_NAME $OUTPUT_FILE


BATCH_SCRIPT_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/src/analysis/simulation-analysis/batch/060116-3.2A-110D-full-gpcrdb-freq-aggregate-calc-active-receptors.sh"
OUTPUT_FOLDER_NAME="062416-3.2A-110D-active-receptors"
OUTPUT_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/src/analysis/simulation-analysis/batch/062416-3.2A-110D-full-gpcrdb-freq-aggregate-calc-active-receptors.sh"
python expand_experiment_condition_labels.py $BATCH_SCRIPT_FILE $OUTPUT_FOLDER_NAME $OUTPUT_FILE


BATCH_SCRIPT_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/src/analysis/simulation-analysis/batch/060116-3.2A-110D-full-gpcrdb-freq-aggregate-calc-inactive-receptors.sh"
OUTPUT_FOLDER_NAME="062416-3.2A-110D-inactive-receptors"
OUTPUT_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/src/analysis/simulation-analysis/batch/062416-3.2A-110D-full-gpcrdb-freq-aggregate-calc-inactive-receptors.sh"
python expand_experiment_condition_labels.py $BATCH_SCRIPT_FILE $OUTPUT_FOLDER_NAME $OUTPUT_FILE


# bash command to run each of the batch files 

# Aggregate Frequency Table 

FREQ_SUM_EXP_FOLDER_PATH="/scratch/PI/rondror/akma327/DynamicNetworks/results/simulation-analysis/gpcrdb-freq-output/single-cond-rep-freqsum/062416-3.5A-110D-active-receptors"
OUTPUT_FILE_PATH="/scratch/PI/rondror/akma327/DynamicNetworks/results/simulation-analysis/gpcrdb-freq-output/aggregate-freqsum/062416-3.5A-110D-active-receptors-aggregate.txt"
RECEPTOR_PDB_LOOKUP_PATH="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/simulation-analysis/gpcrdb-freq-config/receptor_pdb_lookup.txt"
python compile-gpcrdb-freq-data.py $FREQ_SUM_EXP_FOLDER_PATH $OUTPUT_FILE_PATH $RECEPTOR_PDB_LOOKUP_PATH


FREQ_SUM_EXP_FOLDER_PATH="/scratch/PI/rondror/akma327/DynamicNetworks/results/simulation-analysis/gpcrdb-freq-output/single-cond-rep-freqsum/062416-3.5A-110D-inactive-receptors"
OUTPUT_FILE_PATH="/scratch/PI/rondror/akma327/DynamicNetworks/results/simulation-analysis/gpcrdb-freq-output/aggregate-freqsum/062416-3.5A-110D-inactive-receptors-aggregate.txt"
RECEPTOR_PDB_LOOKUP_PATH="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/simulation-analysis/gpcrdb-freq-config/receptor_pdb_lookup.txt"
python compile-gpcrdb-freq-data.py $FREQ_SUM_EXP_FOLDER_PATH $OUTPUT_FILE_PATH $RECEPTOR_PDB_LOOKUP_PATH


FREQ_SUM_EXP_FOLDER_PATH="/scratch/PI/rondror/akma327/DynamicNetworks/results/simulation-analysis/gpcrdb-freq-output/single-cond-rep-freqsum/062416-3.2A-110D-active-receptors"
OUTPUT_FILE_PATH="/scratch/PI/rondror/akma327/DynamicNetworks/results/simulation-analysis/gpcrdb-freq-output/aggregate-freqsum/062416-3.2A-110D-active-receptors-aggregate.txt"
RECEPTOR_PDB_LOOKUP_PATH="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/simulation-analysis/gpcrdb-freq-config/receptor_pdb_lookup.txt"
python compile-gpcrdb-freq-data.py $FREQ_SUM_EXP_FOLDER_PATH $OUTPUT_FILE_PATH $RECEPTOR_PDB_LOOKUP_PATH


FREQ_SUM_EXP_FOLDER_PATH="/scratch/PI/rondror/akma327/DynamicNetworks/results/simulation-analysis/gpcrdb-freq-output/single-cond-rep-freqsum/062416-3.2A-110D-inactive-receptors"
OUTPUT_FILE_PATH="/scratch/PI/rondror/akma327/DynamicNetworks/results/simulation-analysis/gpcrdb-freq-output/aggregate-freqsum/062416-3.2A-110D-inactive-receptors-aggregate.txt"
RECEPTOR_PDB_LOOKUP_PATH="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/simulation-analysis/gpcrdb-freq-config/receptor_pdb_lookup.txt"
python compile-gpcrdb-freq-data.py $FREQ_SUM_EXP_FOLDER_PATH $OUTPUT_FILE_PATH $RECEPTOR_PDB_LOOKUP_PATH


FREQ_SUM_EXP_FOLDER_PATH="/scratch/PI/rondror/akma327/DynamicNetworks/results/simulation-analysis/gpcrdb-freq-output/single-cond-rep-freqsum/062416-3.5A-110D-full"
OUTPUT_FILE_PATH="/scratch/PI/rondror/akma327/DynamicNetworks/results/simulation-analysis/gpcrdb-freq-output/aggregate-freqsum/062416-3.5A-110D-full-aggregate.txt"
RECEPTOR_PDB_LOOKUP_PATH="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/simulation-analysis/gpcrdb-freq-config/receptor_pdb_lookup.txt"
python compile-gpcrdb-freq-data.py $FREQ_SUM_EXP_FOLDER_PATH $OUTPUT_FILE_PATH $RECEPTOR_PDB_LOOKUP_PATH


FREQ_SUM_EXP_FOLDER_PATH="/scratch/PI/rondror/akma327/DynamicNetworks/results/simulation-analysis/gpcrdb-freq-output/single-cond-rep-freqsum/062416-3.2A-110D-full"
OUTPUT_FILE_PATH="/scratch/PI/rondror/akma327/DynamicNetworks/results/simulation-analysis/gpcrdb-freq-output/aggregate-freqsum/062416-3.2A-110D-full-aggregate.txt"
RECEPTOR_PDB_LOOKUP_PATH="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/simulation-analysis/gpcrdb-freq-config/receptor_pdb_lookup.txt"
python compile-gpcrdb-freq-data.py $FREQ_SUM_EXP_FOLDER_PATH $OUTPUT_FILE_PATH $RECEPTOR_PDB_LOOKUP_PATH



# DATE 062116

# Generate batch file to compute all single experiment 
# All 3.2 and all 3.5 table 
BATCH_SCRIPT_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/src/analysis/simulation-analysis/batch/060116-3.5A-110D-full-gpcrdb-freq-aggregate-calc.sh"
OUTPUT_FOLDER_NAME="062416-3.5A-110D-full"
OUTPUT_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/src/analysis/simulation-analysis/batch/062416-3.5A-110D-full-gpcrdb-freq-aggregate-calc.sh"
python expand_experiment_condition_labels.py $BATCH_SCRIPT_FILE $OUTPUT_FOLDER_NAME $OUTPUT_FILE

BATCH_SCRIPT_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/src/analysis/simulation-analysis/batch/060116-3.2A-110D-full-gpcrdb-freq-aggregate-calc.sh"
OUTPUT_FOLDER_NAME="062416-3.2A-110D-full"
OUTPUT_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/src/analysis/simulation-analysis/batch/062416-3.2A-110D-full-gpcrdb-freq-aggregate-calc.sh"
python expand_experiment_condition_labels.py $BATCH_SCRIPT_FILE $OUTPUT_FOLDER_NAME $OUTPUT_FILE



# Split across active and inactive receptors for 3.2 and 3.5 tables
BATCH_SCRIPT_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/src/analysis/simulation-analysis/batch/060116-3.5A-110D-full-gpcrdb-freq-aggregate-calc-active-receptors.sh"
OUTPUT_FOLDER_NAME="062416-3.5A-110D-active-receptors"
OUTPUT_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/src/analysis/simulation-analysis/batch/062416-3.5A-110D-full-gpcrdb-freq-aggregate-calc-active-receptors.sh"
python expand_experiment_condition_labels.py $BATCH_SCRIPT_FILE $OUTPUT_FOLDER_NAME $OUTPUT_FILE


BATCH_SCRIPT_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/src/analysis/simulation-analysis/batch/060116-3.5A-110D-full-gpcrdb-freq-aggregate-calc-inactive-receptors.sh"
OUTPUT_FOLDER_NAME="062416-3.5A-110D-inactive-receptors"
OUTPUT_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/src/analysis/simulation-analysis/batch/062416-3.5A-110D-full-gpcrdb-freq-aggregate-calc-inactive-receptors.sh"
python expand_experiment_condition_labels.py $BATCH_SCRIPT_FILE $OUTPUT_FOLDER_NAME $OUTPUT_FILE


BATCH_SCRIPT_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/src/analysis/simulation-analysis/batch/060116-3.2A-110D-full-gpcrdb-freq-aggregate-calc-active-receptors.sh"
OUTPUT_FOLDER_NAME="062416-3.2A-110D-active-receptors"
OUTPUT_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/src/analysis/simulation-analysis/batch/062416-3.2A-110D-full-gpcrdb-freq-aggregate-calc-active-receptors.sh"
python expand_experiment_condition_labels.py $BATCH_SCRIPT_FILE $OUTPUT_FOLDER_NAME $OUTPUT_FILE


BATCH_SCRIPT_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/src/analysis/simulation-analysis/batch/060116-3.2A-110D-full-gpcrdb-freq-aggregate-calc-inactive-receptors.sh"
OUTPUT_FOLDER_NAME="062416-3.2A-110D-inactive-receptors"
OUTPUT_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/src/analysis/simulation-analysis/batch/062416-3.2A-110D-full-gpcrdb-freq-aggregate-calc-inactive-receptors.sh"
python expand_experiment_condition_labels.py $BATCH_SCRIPT_FILE $OUTPUT_FOLDER_NAME $OUTPUT_FILE


# bash command to run each of the batch files 

# Aggregate Frequency Table 

FREQ_SUM_EXP_FOLDER_PATH="/scratch/PI/rondror/akma327/DynamicNetworks/results/simulation-analysis/gpcrdb-freq-output/single-cond-rep-freqsum/062416-3.5A-110D-active-receptors"
OUTPUT_FILE_PATH="/scratch/PI/rondror/akma327/DynamicNetworks/results/simulation-analysis/gpcrdb-freq-output/aggregate-freqsum/test.txt"
python compile-gpcrdb-freq-data.py $FREQ_SUM_EXP_FOLDER_PATH $OUTPUT_FILE_PATH


FREQ_SUM_EXP_FOLDER_PATH="/scratch/PI/rondror/akma327/DynamicNetworks/results/simulation-analysis/gpcrdb-freq-output/single-cond-rep-freqsum/062416-3.5A-110D-inactive-receptors"
OUTPUT_FILE_PATH="/scratch/PI/rondror/akma327/DynamicNetworks/results/simulation-analysis/gpcrdb-freq-output/aggregate-freqsum/062416-3.5A-110D-inactive-receptors-aggregate.txt"
python compile-gpcrdb-freq-data.py $FREQ_SUM_EXP_FOLDER_PATH $OUTPUT_FILE_PATH


FREQ_SUM_EXP_FOLDER_PATH="/scratch/PI/rondror/akma327/DynamicNetworks/results/simulation-analysis/gpcrdb-freq-output/single-cond-rep-freqsum/062416-3.2A-110D-active-receptors"
OUTPUT_FILE_PATH="/scratch/PI/rondror/akma327/DynamicNetworks/results/simulation-analysis/gpcrdb-freq-output/aggregate-freqsum/062416-3.2A-110D-active-receptors-aggregate.txt"
python compile-gpcrdb-freq-data.py $FREQ_SUM_EXP_FOLDER_PATH $OUTPUT_FILE_PATH


FREQ_SUM_EXP_FOLDER_PATH="/scratch/PI/rondror/akma327/DynamicNetworks/results/simulation-analysis/gpcrdb-freq-output/single-cond-rep-freqsum/062416-3.2A-110D-inactive-receptors"
OUTPUT_FILE_PATH="/scratch/PI/rondror/akma327/DynamicNetworks/results/simulation-analysis/gpcrdb-freq-output/aggregate-freqsum/062416-3.2A-110D-inactive-receptors-aggregate.txt"
python compile-gpcrdb-freq-data.py $FREQ_SUM_EXP_FOLDER_PATH $OUTPUT_FILE_PATH


FREQ_SUM_EXP_FOLDER_PATH="/scratch/PI/rondror/akma327/DynamicNetworks/results/simulation-analysis/gpcrdb-freq-output/single-cond-rep-freqsum/062416-3.5A-110D-full"
OUTPUT_FILE_PATH="/scratch/PI/rondror/akma327/DynamicNetworks/results/simulation-analysis/gpcrdb-freq-output/aggregate-freqsum/062416-3.5A-110D-full-aggregate.txt"
python compile-gpcrdb-freq-data.py $FREQ_SUM_EXP_FOLDER_PATH $OUTPUT_FILE_PATH


FREQ_SUM_EXP_FOLDER_PATH="/scratch/PI/rondror/akma327/DynamicNetworks/results/simulation-analysis/gpcrdb-freq-output/single-cond-rep-freqsum/062416-3.2A-110D-full"
OUTPUT_FILE_PATH="/scratch/PI/rondror/akma327/DynamicNetworks/results/simulation-analysis/gpcrdb-freq-output/aggregate-freqsum/062416-3.2A-110D-full-aggregate.txt"
python compile-gpcrdb-freq-data.py $FREQ_SUM_EXP_FOLDER_PATH $OUTPUT_FILE_PATH



# DATE 062116

# Compute atom footprint table upon full aggregate 

AGGREGATE_FREQ_TABLE="/scratch/PI/rondror/akma327/DynamicNetworks/results/simulation-analysis/gpcrdb-freq-output/aggregate-freqsum/062416-3.5A-110D-full-aggregate.txt"
NETWORK_FILTER_LIST="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/interaction-footprint-analysis/polar-network-lists/inactive-dor-network.txt"
PDB_CODE="4N6H"
OUTPUT_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/results/interaction-footprint-analysis/polar-network-freq-tables/atom-resolution/4N6H/inactive-dor-network-atom-footprint.txt"
python atom_footprint_table.py $AGGREGATE_FREQ_TABLE $NETWORK_FILTER_LIST $PDB_CODE $OUTPUT_FILE



AGGREGATE_FREQ_TABLE="/scratch/PI/rondror/akma327/DynamicNetworks/results/simulation-analysis/gpcrdb-freq-output/aggregate-freqsum/062416-3.5A-110D-full-aggregate.txt"
NETWORK_FILTER_LIST="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/interaction-footprint-analysis/polar-network-lists/active-mor-network.txt"
PDB_CODE="5C1M"
OUTPUT_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/results/interaction-footprint-analysis/polar-network-freq-tables/atom-resolution/5C1M/active-mor-network-atom-footprint.txt"
python atom_footprint_table.py $AGGREGATE_FREQ_TABLE $NETWORK_FILTER_LIST $PDB_CODE $OUTPUT_FILE


# Compute atom footprint table for inactive receptor + full inactive polar network and active receptor + full active polar network 
AGGREGATE_FREQ_TABLE="/scratch/PI/rondror/akma327/DynamicNetworks/results/simulation-analysis/gpcrdb-freq-output/aggregate-freqsum/062416-3.5A-110D-inactive-receptors-aggregate.txt"
NETWORK_FILTER_LIST="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/interaction-footprint-analysis/polar-network-lists/inactive-dor-network.txt"
PDB_CODE="4N6H"
OUTPUT_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/results/interaction-footprint-analysis/polar-network-freq-tables/atom-resolution/4N6H/inactive-dor-network-inactive-receptors-atom-footprint.txt"
python atom_footprint_table.py $AGGREGATE_FREQ_TABLE $NETWORK_FILTER_LIST $PDB_CODE $OUTPUT_FILE



AGGREGATE_FREQ_TABLE="/scratch/PI/rondror/akma327/DynamicNetworks/results/simulation-analysis/gpcrdb-freq-output/aggregate-freqsum/062416-3.5A-110D-active-receptors-aggregate.txt"
NETWORK_FILTER_LIST="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/interaction-footprint-analysis/polar-network-lists/active-mor-network.txt"
PDB_CODE="5C1M"
OUTPUT_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/results/interaction-footprint-analysis/polar-network-freq-tables/atom-resolution/5C1M/active-mor-network-active-receptors-atom-footprint.txt"
python atom_footprint_table.py $AGGREGATE_FREQ_TABLE $NETWORK_FILTER_LIST $PDB_CODE $OUTPUT_FILE



# Make atom footprint table for inactive inactive + mor only, dor only, and both 


# Inactive network receptors 
AGGREGATE_FREQ_TABLE="/scratch/PI/rondror/akma327/DynamicNetworks/results/simulation-analysis/gpcrdb-freq-output/aggregate-freqsum/062416-3.5A-110D-inactive-receptors-aggregate.txt"
NETWORK_FILTER_LIST="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/interaction-footprint-analysis/polar-network-lists/comparison-network-lists/active-mor-only-list.txt"
PDB_CODE="5C1M"
OUTPUT_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/results/interaction-footprint-analysis/polar-network-freq-tables/atom-resolution/polar-network-comparison/active-mor-vs-inactive-dor/inactive-receptors/active-mor-only-network-inactive-receptors-atom-footprint.txt"
python atom_footprint_table.py $AGGREGATE_FREQ_TABLE $NETWORK_FILTER_LIST $PDB_CODE $OUTPUT_FILE


AGGREGATE_FREQ_TABLE="/scratch/PI/rondror/akma327/DynamicNetworks/results/simulation-analysis/gpcrdb-freq-output/aggregate-freqsum/062416-3.5A-110D-inactive-receptors-aggregate.txt"
NETWORK_FILTER_LIST="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/interaction-footprint-analysis/polar-network-lists/comparison-network-lists/inactive-dor-only-list.txt"
PDB_CODE="4N6H"
OUTPUT_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/results/interaction-footprint-analysis/polar-network-freq-tables/atom-resolution/polar-network-comparison/active-mor-vs-inactive-dor/inactive-receptors/inactive-dor-only-network-inactive-receptors-atom-footprint.txt"
python atom_footprint_table.py $AGGREGATE_FREQ_TABLE $NETWORK_FILTER_LIST $PDB_CODE $OUTPUT_FILE


AGGREGATE_FREQ_TABLE="/scratch/PI/rondror/akma327/DynamicNetworks/results/simulation-analysis/gpcrdb-freq-output/aggregate-freqsum/062416-3.5A-110D-inactive-receptors-aggregate.txt"
NETWORK_FILTER_LIST="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/interaction-footprint-analysis/polar-network-lists/comparison-network-lists/active-mor-both-list.txt"
PDB_CODE="5C1M"
OUTPUT_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/results/interaction-footprint-analysis/polar-network-freq-tables/atom-resolution/polar-network-comparison/active-mor-vs-inactive-dor/inactive-receptors/inactive-dor-active-mor-both-network-inactive-receptors-atom-footprint.txt"
python atom_footprint_table.py $AGGREGATE_FREQ_TABLE $NETWORK_FILTER_LIST $PDB_CODE $OUTPUT_FILE



# Active network receptors 
AGGREGATE_FREQ_TABLE="/scratch/PI/rondror/akma327/DynamicNetworks/results/simulation-analysis/gpcrdb-freq-output/aggregate-freqsum/062416-3.5A-110D-active-receptors-aggregate.txt"
NETWORK_FILTER_LIST="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/interaction-footprint-analysis/polar-network-lists/comparison-network-lists/active-mor-only-list.txt"
PDB_CODE="5C1M"
OUTPUT_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/results/interaction-footprint-analysis/polar-network-freq-tables/atom-resolution/polar-network-comparison/active-mor-vs-inactive-dor/active-receptors/active-mor-only-network-active-receptors-atom-footprint.txt"
python atom_footprint_table.py $AGGREGATE_FREQ_TABLE $NETWORK_FILTER_LIST $PDB_CODE $OUTPUT_FILE


AGGREGATE_FREQ_TABLE="/scratch/PI/rondror/akma327/DynamicNetworks/results/simulation-analysis/gpcrdb-freq-output/aggregate-freqsum/062416-3.5A-110D-active-receptors-aggregate.txt"
NETWORK_FILTER_LIST="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/interaction-footprint-analysis/polar-network-lists/comparison-network-lists/inactive-dor-only-list.txt"
PDB_CODE="4N6H"
OUTPUT_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/results/interaction-footprint-analysis/polar-network-freq-tables/atom-resolution/polar-network-comparison/active-mor-vs-inactive-dor/active-receptors/inactive-dor-only-network-active-receptors-atom-footprint.txt"
python atom_footprint_table.py $AGGREGATE_FREQ_TABLE $NETWORK_FILTER_LIST $PDB_CODE $OUTPUT_FILE

AGGREGATE_FREQ_TABLE="/scratch/PI/rondror/akma327/DynamicNetworks/results/simulation-analysis/gpcrdb-freq-output/aggregate-freqsum/062416-3.5A-110D-active-receptors-aggregate.txt"
NETWORK_FILTER_LIST="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/interaction-footprint-analysis/polar-network-lists/comparison-network-lists/active-mor-both-list.txt"
PDB_CODE="5C1M"
OUTPUT_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/results/interaction-footprint-analysis/polar-network-freq-tables/atom-resolution/polar-network-comparison/active-mor-vs-inactive-dor/active-receptors/inactive-dor-active-mor-both-network-active-receptors-atom-footprint.txt"
python atom_footprint_table.py $AGGREGATE_FREQ_TABLE $NETWORK_FILTER_LIST $PDB_CODE $OUTPUT_FILE






# Convert to Residue footprint table for full atom tables

ATOM_FOOTPRINT_TABLE="/scratch/PI/rondror/akma327/DynamicNetworks/results/interaction-footprint-analysis/polar-network-freq-tables/atom-resolution/4N6H/inactive-dor-network-atom-footprint.txt"
OUTPUT_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/results/interaction-footprint-analysis/polar-network-freq-tables/residue-resolution/4N6H/inactive-dor-residue-footprint.txt"
python residue_footprint_table.py $ATOM_FOOTPRINT_TABLE $OUTPUT_FILE


ATOM_FOOTPRINT_TABLE="/scratch/PI/rondror/akma327/DynamicNetworks/results/interaction-footprint-analysis/polar-network-freq-tables/atom-resolution/5C1M/active-mor-network-atom-footprint.txt"
OUTPUT_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/results/interaction-footprint-analysis/polar-network-freq-tables/residue-resolution/5C1M/active-mor-residue-footprint.txt"
python residue_footprint_table.py $ATOM_FOOTPRINT_TABLE $OUTPUT_FILE




# Convert to residue footprint table for inactive polar network + inactive receptors and active polar network + active receptors 

ATOM_FOOTPRINT_TABLE="/scratch/PI/rondror/akma327/DynamicNetworks/results/interaction-footprint-analysis/polar-network-freq-tables/atom-resolution/4N6H/inactive-dor-network-inactive-receptors-atom-footprint.txt"
OUTPUT_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/results/interaction-footprint-analysis/polar-network-freq-tables/residue-resolution/4N6H/inactive-dor-network-inactive-receptors-residue-footprint.txt"
python residue_footprint_table.py $ATOM_FOOTPRINT_TABLE $OUTPUT_FILE


ATOM_FOOTPRINT_TABLE="/scratch/PI/rondror/akma327/DynamicNetworks/results/interaction-footprint-analysis/polar-network-freq-tables/atom-resolution/5C1M/active-mor-network-active-receptors-atom-footprint.txt"
OUTPUT_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/results/interaction-footprint-analysis/polar-network-freq-tables/residue-resolution/5C1M/active-mor-network-active-receptors-residue-footprint.txt"
python residue_footprint_table.py $ATOM_FOOTPRINT_TABLE $OUTPUT_FILE





# Convert inactive/active x mor,dor, both atom resolution to residue resolution

# inactive receptors 
ATOM_FOOTPRINT_TABLE="/scratch/PI/rondror/akma327/DynamicNetworks/results/interaction-footprint-analysis/polar-network-freq-tables/atom-resolution/polar-network-comparison/active-mor-vs-inactive-dor/inactive-receptors/active-mor-only-network-inactive-receptors-atom-footprint.txt"
OUTPUT_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/results/interaction-footprint-analysis/polar-network-freq-tables/residue-resolution/polar-network-comparison/active-mor-vs-inactive-dor/inactive-receptors/active-mor-only-network-inactive-receptors-residue-footprint.txt"
python residue_footprint_table.py $ATOM_FOOTPRINT_TABLE $OUTPUT_FILE


ATOM_FOOTPRINT_TABLE="/scratch/PI/rondror/akma327/DynamicNetworks/results/interaction-footprint-analysis/polar-network-freq-tables/atom-resolution/polar-network-comparison/active-mor-vs-inactive-dor/inactive-receptors/inactive-dor-only-network-inactive-receptors-atom-footprint.txt"
OUTPUT_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/results/interaction-footprint-analysis/polar-network-freq-tables/residue-resolution/polar-network-comparison/active-mor-vs-inactive-dor/inactive-receptors/inactive-dor-only-network-inactive-receptors-residue-footprint.txt"
python residue_footprint_table.py $ATOM_FOOTPRINT_TABLE $OUTPUT_FILE

ATOM_FOOTPRINT_TABLE="/scratch/PI/rondror/akma327/DynamicNetworks/results/interaction-footprint-analysis/polar-network-freq-tables/atom-resolution/polar-network-comparison/active-mor-vs-inactive-dor/inactive-receptors/inactive-dor-active-mor-both-network-inactive-receptors-atom-footprint.txt"
OUTPUT_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/results/interaction-footprint-analysis/polar-network-freq-tables/residue-resolution/polar-network-comparison/active-mor-vs-inactive-dor/inactive-receptors/inactive-dor-active-mor-both-network-inactive-receptors-residue-footprint.txt"
python residue_footprint_table.py $ATOM_FOOTPRINT_TABLE $OUTPUT_FILE


# active receptors 
ATOM_FOOTPRINT_TABLE="/scratch/PI/rondror/akma327/DynamicNetworks/results/interaction-footprint-analysis/polar-network-freq-tables/atom-resolution/polar-network-comparison/active-mor-vs-inactive-dor/active-receptors/active-mor-only-network-active-receptors-atom-footprint.txt"
OUTPUT_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/results/interaction-footprint-analysis/polar-network-freq-tables/residue-resolution/polar-network-comparison/active-mor-vs-inactive-dor/active-receptors/active-mor-only-network-active-receptors-residue-footprint.txt"
python residue_footprint_table.py $ATOM_FOOTPRINT_TABLE $OUTPUT_FILE


ATOM_FOOTPRINT_TABLE="/scratch/PI/rondror/akma327/DynamicNetworks/results/interaction-footprint-analysis/polar-network-freq-tables/atom-resolution/polar-network-comparison/active-mor-vs-inactive-dor/active-receptors/inactive-dor-only-network-active-receptors-atom-footprint.txt"
OUTPUT_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/results/interaction-footprint-analysis/polar-network-freq-tables/residue-resolution/polar-network-comparison/active-mor-vs-inactive-dor/active-receptors/inactive-dor-only-network-active-receptors-residue-footprint.txt"
python residue_footprint_table.py $ATOM_FOOTPRINT_TABLE $OUTPUT_FILE

ATOM_FOOTPRINT_TABLE="/scratch/PI/rondror/akma327/DynamicNetworks/results/interaction-footprint-analysis/polar-network-freq-tables/atom-resolution/polar-network-comparison/active-mor-vs-inactive-dor/active-receptors/inactive-dor-active-mor-both-network-active-receptors-atom-footprint.txt"
OUTPUT_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/results/interaction-footprint-analysis/polar-network-freq-tables/residue-resolution/polar-network-comparison/active-mor-vs-inactive-dor/active-receptors/inactive-dor-active-mor-both-network-active-receptors-residue-footprint.txt"
python residue_footprint_table.py $ATOM_FOOTPRINT_TABLE $OUTPUT_FILE




# Expand condition labels for footprint_summary_evobundle

BATCH_SCRIPT_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/src/analysis/interaction-footprint-analysis/batch/residue_table/052016/active-mor-polar-network-residue-table.sh"
OUTPUT_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/src/analysis/interaction-footprint-analysis/batch/residue_table/active-mor-polar-network-residue-table.sh"
python expand_experiment_condition_labels.py $BATCH_SCRIPT_FILE $OUTPUT_FILE

BATCH_SCRIPT_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/src/analysis/interaction-footprint-analysis/batch/residue_table/052016/inactive-dor-polar-network-residue-table.sh"
OUTPUT_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/src/analysis/interaction-footprint-analysis/batch/residue_table/inactive-dor-polar-network-residue-table.sh"
python expand_experiment_condition_labels.py $BATCH_SCRIPT_FILE $OUTPUT_FILE



BATCH_SCRIPT_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/src/analysis/interaction-footprint-analysis/batch/atom_table/052016/active-mor-polar-network-residue-table.sh"
OUTPUT_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/src/analysis/interaction-footprint-analysis/batch/atom_table/active-mor-polar-network-residue-table.sh"
python expand_experiment_condition_labels.py $BATCH_SCRIPT_FILE $OUTPUT_FILE

BATCH_SCRIPT_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/src/analysis/interaction-footprint-analysis/batch/atom_table/052016/inactive-dor-polar-network-residue-table.sh"
OUTPUT_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/src/analysis/interaction-footprint-analysis/batch/atom_table/inactive-dor-polar-network-residue-table.sh"
python expand_experiment_condition_labels.py $BATCH_SCRIPT_FILE $OUTPUT_FILE









[core]
        repositoryformatversion = 0
        filemode = true
        bare = false
        logallrefupdates = true
[remote "origin"]
        url = https://github.com/akma327/dynamic-interactions/branches
        fetch = +refs/heads/*:refs/remotes/origin/*
[remote "upstream"]
        url = https://github.com/drorlab/dynamic-interactions
        fetch = +refs/heads/*:refs/remotes/upstream/*




# 080516 

EXP_COND_LABEL="B2AR:inactive:carazalol:cond1:15us:D79+,D130-"
STATE_DECOMP_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutputDictionary/B2AR-inactive-carazalol-cell2013b/condition-1/rep_1/050516_NONHB_DEFAULT_HB_3.5_70/state_classification.txt"
OUTPUT_FILE="B2AR:inactive:carazalol:cond1:15us:D79+,D130-.png"
python pi_chart_state_decomposition.py $EXP_COND_LABEL $STATE_DECOMP_FILE $OUTPUT_FILE


EXP_COND_LABEL="B2AR:inactive:carazalol:cond2:15us:D79+,D130-"
STATE_DECOMP_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutputDictionary/B2AR-inactive-carazalol-cell2013b/condition-2/rep_1/050516_NONHB_DEFAULT_HB_3.5_70/state_classification.txt"
OUTPUT_FILE="B2AR:inactive:carazalol:cond2:15us:D79+,D130-.png"
python pi_chart_state_decomposition.py $EXP_COND_LABEL $STATE_DECOMP_FILE $OUTPUT_FILE




# 080816


# Generate the aggregate frequency table
DECOMP_FREQ_SUM_EXP_FOLDER_PATH="/scratch/PI/rondror/akma327/DynamicNetworks/results/state-decomposition/single-cond-rep-decomp-freqsum/080816_state_decomp_freq"
OUTPUT_FILE_PATH="/scratch/PI/rondror/akma327/DynamicNetworks/results/state-decomposition/aggregate-decomp-freqsum/080816_compiled_state_decomp_freq2.txt"
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/analysis/state-decomposition
python compile_gpcrdb_state_decomp_freq.py $DECOMP_FREQ_SUM_EXP_FOLDER_PATH $OUTPUT_FILE_PATH


# ALL RECEPTORS DOR INACTIVE POLAR NETWORK

# Generate atom-resolution polar list filtered table 
AGGREGATE_FREQ_TABLE="/scratch/PI/rondror/akma327/DynamicNetworks/results/state-decomposition/aggregate-decomp-freqsum/080816/inactive_receptors/inactive_state_decomp.txt"
NETWORK_FILTER_LIST="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/interaction-footprint-analysis/polar-network-lists/inactive-dor-network.txt"
PDB_CODE="4N6H"
OUTPUT_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/results/state-decomposition/atom-resolution/4N6H/dor-inactive-atom-footprint.txt"
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/analysis/interaction-footprint-analysis
python atom_footprint_table.py $AGGREGATE_FREQ_TABLE $NETWORK_FILTER_LIST $PDB_CODE $OUTPUT_FILE

# Generate residue-resolution footprint table

ATOM_FOOTPRINT_TABLE="/scratch/PI/rondror/akma327/DynamicNetworks/results/state-decomposition/atom-resolution/4N6H/dor-inactive-atom-footprint.txt"
OUTPUT_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/results/state-decomposition/residue-resolution/4N6H/dor-inactive-residue-footprint.txt"
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/analysis/interaction-footprint-analysis
python residue_footprint_table.py $ATOM_FOOTPRINT_TABLE $OUTPUT_FILE




# ALL RECEPTORS MOR ACTIVE POLAR NETWORK
# Generate atom-resolution polar list filtered table 
AGGREGATE_FREQ_TABLE="/scratch/PI/rondror/akma327/DynamicNetworks/results/state-decomposition/aggregate-decomp-freqsum/080816_compiled_state_decomp_freq.txt"
NETWORK_FILTER_LIST="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/interaction-footprint-analysis/polar-network-lists/active-mor-network.txt"
PDB_CODE="5C1M"
OUTPUT_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/results/state-decomposition/atom-resolution/5C1M/mor-active-atom-footprint.txt"
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/analysis/interaction-footprint-analysis
python atom_footprint_table.py $AGGREGATE_FREQ_TABLE $NETWORK_FILTER_LIST $PDB_CODE $OUTPUT_FILE

# Generate residue-resolution footprint table

ATOM_FOOTPRINT_TABLE="/scratch/PI/rondror/akma327/DynamicNetworks/results/state-decomposition/atom-resolution/5C1M/mor-active-atom-footprint.txt"
OUTPUT_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/results/state-decomposition/residue-resolution/5C1M/mor-active-residue-footprint.txt"
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/analysis/interaction-footprint-analysis
python residue_footprint_table.py $ATOM_FOOTPRINT_TABLE $OUTPUT_FILE




#081116

EXP_REP_PATH="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/M3R-inactive-tiotropium-nature2012/condition-C/rep_1"
FRAGMENT_ID="Prod"
TITRATION_ID="HB_3.5A_70D"
FILE_NAME_ID="water_bond_result.txt"
OUTPUT_PATH="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/M3R-inactive-tiotropium-nature2012/condition-C/rep_1/HB_3.5A_70D"
OUTPUT_FILE_NAME="water_bond_result_stitch.txt"
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/interaction-geometry
python stitchFrames.py $EXP_REP_PATH $FRAGMENT_ID $TITRATION_ID $FILE_NAME_ID $OUTPUT_PATH $OUTPUT_FILE_NAME




TRAJ_PATH="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/M3R-inactive-tiotropium-nature2012/condition-C/rep_1/Prod_13/Prod_13_rewrapped.dcd"
TOP_PATH="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/M3R-inactive-tiotropium-nature2012/condition-C/step5_assembly.mae"
OUTPUT_DIRECTORY_PATH="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/M3R-inactive-tiotropium-nature2012/condition-C/rep_1/Prod_13/HB_3.5A_70D"
OUTPUT_FILE_IDENTIFIER="water_bond_result.txt"
WATER_HBOND_FILE_PATH="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/M3R-inactive-tiotropium-nature2012/condition-C/rep_1/Prod_13/HB_3.5A_70D/hydrogen_bond_water_result.txt"
python DynamicInteractionCalculator.py $TRAJ_PATH $TOP_PATH $OUTPUT_DIRECTORY_PATH $OUTPUT_FILE_IDENTIFIER -wb -process $WATER_HBOND_FILE_PATH -stride 1



StitchedInteractionPath="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/M3R-inactive-tiotropium-nature2012/condition-C/rep_1/HB_3.5A_70D"
INPUT_FILE_PATH="water_bond_result_stitch.txt"
OUTPUT_PATH="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutputDictionary/M3R-inactive-tiotropium-nature2012/condition-C/rep_1/HB_3.5A_70D"
OUTPUT_FILE_NAME="water_bond_result_dict.txt"
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/DynamicInteractions-Calculator/geometry
./processTimeFrameData $StitchedInteractionPath $INPUT_FILE_PATH $OUTPUT_PATH $OUTPUT_FILE_NAME -wb


TOP_FILE="/scratch/PI/rondror/DesRes-Simulations/subsampled_desres_traj/B2AR-active-Gs-BI-science2015/condition-22/rep_1/science2015-22-all.mae"
TRAJ_DIR="/scratch/PI/rondror/DesRes-Simulations/Downloaded/Gprot_Science2015_Dror_Desres/science2015/DESRES-Trajectory_science2015-22-all/science2015-22-all"
FILETYPE="dcd"
OUTPUT_DIR="/scratch/PI/rondror/DesRes-Simulations/subsampled_desres_traj/B2AR-active-Gs-BI-science2015/condition-22/rep_1/stitched.dcd"
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/misc-preprocessing-scripts
python subsample_combine_traj.py $TOP_FILE $TRAJ_DIR $FILETYPE $OUTPUT_DIR




# 091016

TOP_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/MOR-active-noNb-BU72-nature2015/condition-nb-interface-restrained-BU72/step5_assembly.pdb"
TRAJ_DIR="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/MOR-active-noNb-BU72-nature2015/condition-nb-interface-restrained-BU72/rep_1"
FILETYPE="nc"
OUTPUT_DIR="/scratch/PI/rondror/akma327/DynamicNetworks/data/subsampled/mor_new.dcd"
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/misc-preprocessing-scripts
python subsample_combine_traj.py $TOP_FILE $TRAJ_DIR $FILETYPE $OUTPUT_DIR



# 091116

TOP_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/MOR-inactive-bFNA-nature2015/condition-bFNA-bound/step5_assembly.pdb"
TRAJ_DIR="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/MOR-inactive-bFNA-nature2015/condition-bFNA-bound/rep_1"
FILETYPE="nc"
OUTPUT_DIR="/scratch/PI/rondror/DesRes-Simulations/subsampled_desres_traj/MOR-inactive-bFNA-nature2015/condition-bFNA-bound/rep_1/stitched.dcd"
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/misc-preprocessing-scripts
python subsample_combine_traj.py $TOP_FILE $TRAJ_DIR $FILETYPE $OUTPUT_DIR



# 09/14/16

PDB_CODE="2RH1"
EXP_REP_DICT_PATH="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutputDictionary/B2AR-inactive-carazalol-cell2013b/condition-1/rep_1/050516_NONHB_DEFAULT_HB_3.5_70"
STATE_DECOMP_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutputDictionary/B2AR-inactive-carazalol-cell2013b/condition-1/rep_1/050516_NONHB_DEFAULT_HB_3.5_70/state_classification.txt"
OUTPUT_FILE_PATH="/scratch/PI/rondror/akma327/DynamicNetworks/src/analysis/B2AR:inactive:carazalol:15us:D79+,D130-.txt"
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/analysis/state-decomposition
python dynamic_inter_dict_to_state_decomp_unionized_freq.py $PDB_CODE $EXP_REP_DICT_PATH $STATE_DECOMP_FILE $OUTPUT_FILE_PATH -chainId 0 -interlist -wb -wb2





OUTPUT_DIR="/scratch/PI/rondror/akma327/DynamicNetworks/results/state-decomposition/single-cond-rep-decomp-freqsum/091516_state_decomp_union_wb_freq"
python batch_dict_to_state_decomp_freq.py $OUTPUT_DIR -interlist -wb -wb2 





B2AR:active:agonist-bound-nanobody-complex:3.6us:D70+,D130+,H172+,C341_palm.txt   
B2AR:active:short-isoform-B2AR-heterotrimeric-Gs:no_ligand:5us:with_membrane.txt
B2AR:active:agonist-bound-nanobody-complex:6.5us:D70+,D130+,H172+,C341_palm.txt   
MOR:active-noNb:BU72-nB_interface_restrained:2.7us.txt
B2AR:active:long-isoform-B2AR-heterotrimeric-Gs:no_ligand:10us:with_membrane.txt  
MOR:active-noNb:BU72-nB_interface_restrained:2.9us.txt
B2AR:active:long-isoform-B2AR-heterotrimeric-Gs:no_ligand:50us:with_membrane.txt  
MOR:active-noNb:BU72-nB_interface_restrained:3.0us.txt




#09/21/16

# DOR-inactive wb and wb2 separate

FOOTPRINT_TABLE="/scratch/PI/rondror/akma327/DynamicNetworks/results/state-decomposition/residue-resolution/080816/dor_inactive_polar_network/inactive_receptors/inactive_state_decomp_residue_resolution.txt"
EXP_REP_ID="DOR:inactive:naltrindole:3.0us,Inactive"
OUTPUT_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/interaction-footprint-analysis/residue-resolution-evobundle-input/092116/wb_separate/inactive-dor-network/DOR-inactive-naltrindole-unpublished-condition-naltrindole-bound-rep_1.json"
EXP_REP_PDB="4N6H"
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/analysis/interaction-footprint-analysis
python footprint_summary_evobundle.py $FOOTPRINT_TABLE $EXP_REP_ID $OUTPUT_FILE -intra-pdb $EXP_REP_PDB -no-conserve

FOOTPRINT_TABLE="/scratch/PI/rondror/akma327/DynamicNetworks/results/state-decomposition/residue-resolution/080816/dor_inactive_polar_network/inactive_receptors/inactive_state_decomp_residue_resolution.txt"
EXP_REP_ID="DOR:inactive:naltrindole:1.3us,Inactive"
OUTPUT_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/interaction-footprint-analysis/residue-resolution-evobundle-input/092116/wb_separate/inactive-dor-network/DOR-inactive-naltrindole-unpublished-condition-naltrindole-bound-rep_2.json"
EXP_REP_PDB="4N6H"
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/analysis/interaction-footprint-analysis
python footprint_summary_evobundle.py $FOOTPRINT_TABLE $EXP_REP_ID $OUTPUT_FILE -intra-pdb $EXP_REP_PDB -no-conserve

FOOTPRINT_TABLE="/scratch/PI/rondror/akma327/DynamicNetworks/results/state-decomposition/residue-resolution/080816/dor_inactive_polar_network/inactive_receptors/inactive_state_decomp_residue_resolution.txt"
EXP_REP_ID="DOR:inactive:naltrindole:2.0us,Inactive"
OUTPUT_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/interaction-footprint-analysis/residue-resolution-evobundle-input/092116/wb_separate/inactive-dor-network/DOR-inactive-naltrindole-unpublished-condition-naltrindole-bound-rep_3.json"
EXP_REP_PDB="4N6H"
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/analysis/interaction-footprint-analysis
python footprint_summary_evobundle.py $FOOTPRINT_TABLE $EXP_REP_ID $OUTPUT_FILE -intra-pdb $EXP_REP_PDB -no-conserve



# DOR-inactive wb and wb2 combined

FOOTPRINT_TABLE="/scratch/PI/rondror/akma327/DynamicNetworks/results/state-decomposition/residue-resolution/091516_state_decomp_union_wb_freq/dor_inactive_polar_network/inactive_receptors/inactive_state_decomp_residue_resolution.txt"
EXP_REP_ID="DOR:inactive:naltrindole:3.0us,Inactive"
OUTPUT_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/interaction-footprint-analysis/residue-resolution-evobundle-input/092116/wb_combined/inactive-dor-network/DOR-inactive-naltrindole-unpublished-condition-naltrindole-bound-rep_1.json"
EXP_REP_PDB="4N6H"
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/analysis/interaction-footprint-analysis
python footprint_summary_evobundle.py $FOOTPRINT_TABLE $EXP_REP_ID $OUTPUT_FILE -intra-pdb $EXP_REP_PDB -no-conserve

FOOTPRINT_TABLE="/scratch/PI/rondror/akma327/DynamicNetworks/results/state-decomposition/residue-resolution/091516_state_decomp_union_wb_freq/dor_inactive_polar_network/inactive_receptors/inactive_state_decomp_residue_resolution.txt"
EXP_REP_ID="DOR:inactive:naltrindole:1.3us,Inactive"
OUTPUT_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/interaction-footprint-analysis/residue-resolution-evobundle-input/092116/wb_combined/inactive-dor-network/DOR-inactive-naltrindole-unpublished-condition-naltrindole-bound-rep_2.json"
EXP_REP_PDB="4N6H"
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/analysis/interaction-footprint-analysis
python footprint_summary_evobundle.py $FOOTPRINT_TABLE $EXP_REP_ID $OUTPUT_FILE -intra-pdb $EXP_REP_PDB -no-conserve

FOOTPRINT_TABLE="/scratch/PI/rondror/akma327/DynamicNetworks/results/state-decomposition/residue-resolution/091516_state_decomp_union_wb_freq/dor_inactive_polar_network/inactive_receptors/inactive_state_decomp_residue_resolution.txt"
EXP_REP_ID="DOR:inactive:naltrindole:2.0us,Inactive"
OUTPUT_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/interaction-footprint-analysis/residue-resolution-evobundle-input/092116/wb_combined/inactive-dor-network/DOR-inactive-naltrindole-unpublished-condition-naltrindole-bound-rep_3.json"
EXP_REP_PDB="4N6H"
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/analysis/interaction-footprint-analysis
python footprint_summary_evobundle.py $FOOTPRINT_TABLE $EXP_REP_ID $OUTPUT_FILE -intra-pdb $EXP_REP_PDB -no-conserve



# MOR-active wb and wb2 separate

FOOTPRINT_TABLE="/scratch/PI/rondror/akma327/DynamicNetworks/results/state-decomposition/residue-resolution/080816/mor_active_polar_network/active_receptors/active_state_decomp_residue_resolution.txt"
EXP_REP_ID="MOR:active-noNb:BU72-nB_interface_restrained:3.0us,Active"
OUTPUT_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/interaction-footprint-analysis/residue-resolution-evobundle-input/092116/wb_separate/active-mor-network/MOR-active-noNb-BU72-nature2015-rep_1.json"
EXP_REP_PDB="5C1M"
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/analysis/interaction-footprint-analysis
python footprint_summary_evobundle.py $FOOTPRINT_TABLE $EXP_REP_ID $OUTPUT_FILE -intra-pdb $EXP_REP_PDB -no-conserve

FOOTPRINT_TABLE="/scratch/PI/rondror/akma327/DynamicNetworks/results/state-decomposition/residue-resolution/080816/mor_active_polar_network/active_receptors/active_state_decomp_residue_resolution.txt"
EXP_REP_ID="MOR:active-noNb:BU72-nB_interface_restrained:2.7us,Active"
OUTPUT_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/interaction-footprint-analysis/residue-resolution-evobundle-input/092116/wb_separate/active-mor-network/MOR-active-noNb-BU72-nature2015-rep_2.json"
EXP_REP_PDB="5C1M"
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/analysis/interaction-footprint-analysis
python footprint_summary_evobundle.py $FOOTPRINT_TABLE $EXP_REP_ID $OUTPUT_FILE -intra-pdb $EXP_REP_PDB -no-conserve

FOOTPRINT_TABLE="/scratch/PI/rondror/akma327/DynamicNetworks/results/state-decomposition/residue-resolution/080816/mor_active_polar_network/active_receptors/active_state_decomp_residue_resolution.txt"
EXP_REP_ID="MOR:active-noNb:BU72-nB_interface_restrained:2.9us,Active"
OUTPUT_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/interaction-footprint-analysis/residue-resolution-evobundle-input/092116/wb_separate/active-mor-network/MOR-active-noNb-BU72-nature2015-rep_3.json"
EXP_REP_PDB="5C1M"
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/analysis/interaction-footprint-analysis
python footprint_summary_evobundle.py $FOOTPRINT_TABLE $EXP_REP_ID $OUTPUT_FILE -intra-pdb $EXP_REP_PDB -no-conserve

# MOR-active wb combined

FOOTPRINT_TABLE="/scratch/PI/rondror/akma327/DynamicNetworks/results/state-decomposition/residue-resolution/091516_state_decomp_union_wb_freq/mor_active_polar_network/active_receptors/active_state_decomp_residue_resolution.txt"
EXP_REP_ID="MOR:active-noNb:BU72-nB_interface_restrained:3.0us,Active"
OUTPUT_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/interaction-footprint-analysis/residue-resolution-evobundle-input/092116/wb_combined/active-mor-network/MOR-active-noNb-BU72-nature2015-rep_1.json"
EXP_REP_PDB="5C1M"
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/analysis/interaction-footprint-analysis
python footprint_summary_evobundle.py $FOOTPRINT_TABLE $EXP_REP_ID $OUTPUT_FILE -intra-pdb $EXP_REP_PDB -no-conserve

FOOTPRINT_TABLE="/scratch/PI/rondror/akma327/DynamicNetworks/results/state-decomposition/residue-resolution/091516_state_decomp_union_wb_freq/mor_active_polar_network/active_receptors/active_state_decomp_residue_resolution.txt"
EXP_REP_ID="MOR:active-noNb:BU72-nB_interface_restrained:2.7us,Active"
OUTPUT_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/interaction-footprint-analysis/residue-resolution-evobundle-input/092116/wb_combined/active-mor-network/MOR-active-noNb-BU72-nature2015-rep_2.json"
EXP_REP_PDB="5C1M"
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/analysis/interaction-footprint-analysis
python footprint_summary_evobundle.py $FOOTPRINT_TABLE $EXP_REP_ID $OUTPUT_FILE -intra-pdb $EXP_REP_PDB -no-conserve

FOOTPRINT_TABLE="/scratch/PI/rondror/akma327/DynamicNetworks/results/state-decomposition/residue-resolution/091516_state_decomp_union_wb_freq/mor_active_polar_network/active_receptors/active_state_decomp_residue_resolution.txt"
EXP_REP_ID="MOR:active-noNb:BU72-nB_interface_restrained:2.9us,Active"
OUTPUT_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/interaction-footprint-analysis/residue-resolution-evobundle-input/092116/wb_combined/active-mor-network/MOR-active-noNb-BU72-nature2015-rep_3.json"
EXP_REP_PDB="5C1M"
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/analysis/interaction-footprint-analysis
python footprint_summary_evobundle.py $FOOTPRINT_TABLE $EXP_REP_ID $OUTPUT_FILE -intra-pdb $EXP_REP_PDB -no-conserve


# Venn Diagram Comparison

POLAR_NETWORK_JSON1="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/interaction-footprint-analysis/residue-resolution-evobundle-input/092116/wb_combined/active-mor-network/MOR-active-noNb-BU72-nature2015-rep_1.json"
POLAR_NETWORK_JSON2="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/interaction-footprint-analysis/residue-resolution-evobundle-input/092116/wb_combined/inactive-dor-network/DOR-inactive-naltrindole-unpublished-condition-naltrindole-bound-rep_1.json"
VENN_DIAGRAM_SECTOR="-first"
OUTPUT_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/interaction-footprint-analysis/polar-network-comparisons/092116/active-mor-only.json"
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/analysis/interaction-footprint-analysis/
python venn_diagram_compare_polar_networks.py $POLAR_NETWORK_JSON1 $POLAR_NETWORK_JSON2 $VENN_DIAGRAM_SECTOR $OUTPUT_FILE

POLAR_NETWORK_JSON1="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/interaction-footprint-analysis/residue-resolution-evobundle-input/092116/wb_combined/active-mor-network/MOR-active-noNb-BU72-nature2015-rep_1.json"
POLAR_NETWORK_JSON2="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/interaction-footprint-analysis/residue-resolution-evobundle-input/092116/wb_combined/inactive-dor-network/DOR-inactive-naltrindole-unpublished-condition-naltrindole-bound-rep_1.json"
VENN_DIAGRAM_SECTOR="-second"
OUTPUT_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/interaction-footprint-analysis/polar-network-comparisons/092116/inactive-dor-only.json"
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/analysis/interaction-footprint-analysis/
python venn_diagram_compare_polar_networks.py $POLAR_NETWORK_JSON1 $POLAR_NETWORK_JSON2 $VENN_DIAGRAM_SECTOR $OUTPUT_FILE

POLAR_NETWORK_JSON1="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/interaction-footprint-analysis/residue-resolution-evobundle-input/092116/wb_combined/active-mor-network/MOR-active-noNb-BU72-nature2015-rep_1.json"
POLAR_NETWORK_JSON2="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/interaction-footprint-analysis/residue-resolution-evobundle-input/092116/wb_combined/inactive-dor-network/DOR-inactive-naltrindole-unpublished-condition-naltrindole-bound-rep_1.json"
VENN_DIAGRAM_SECTOR="-intersect1"
OUTPUT_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/interaction-footprint-analysis/polar-network-comparisons/092116/active-mor-both.json"
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/analysis/interaction-footprint-analysis/
python venn_diagram_compare_polar_networks.py $POLAR_NETWORK_JSON1 $POLAR_NETWORK_JSON2 $VENN_DIAGRAM_SECTOR $OUTPUT_FILE


POLAR_NETWORK_JSON1="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/interaction-footprint-analysis/residue-resolution-evobundle-input/092116/wb_combined/active-mor-network/MOR-active-noNb-BU72-nature2015-rep_1.json"
POLAR_NETWORK_JSON2="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/interaction-footprint-analysis/residue-resolution-evobundle-input/092116/wb_combined/inactive-dor-network/DOR-inactive-naltrindole-unpublished-condition-naltrindole-bound-rep_1.json"
VENN_DIAGRAM_SECTOR="-intersect2"
OUTPUT_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/interaction-footprint-analysis/polar-network-comparisons/092116/inactive-dor-both.json"
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/analysis/interaction-footprint-analysis/
python venn_diagram_compare_polar_networks.py $POLAR_NETWORK_JSON1 $POLAR_NETWORK_JSON2 $VENN_DIAGRAM_SECTOR $OUTPUT_FILE


POLAR_NETWORK_JSON1="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/interaction-footprint-analysis/residue-resolution-evobundle-input/092116/wb_combined/active-mor-network/MOR-active-noNb-BU72-nature2015-rep_1.json"
POLAR_NETWORK_JSON2="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/interaction-footprint-analysis/residue-resolution-evobundle-input/092116/wb_combined/inactive-dor-network/DOR-inactive-naltrindole-unpublished-condition-naltrindole-bound-rep_1.json"
VENN_DIAGRAM_SECTOR="-firstorig"
OUTPUT_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/interaction-footprint-analysis/polar-network-comparisons/092116/active-mor-orig.json"
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/analysis/interaction-footprint-analysis/
python venn_diagram_compare_polar_networks.py $POLAR_NETWORK_JSON1 $POLAR_NETWORK_JSON2 $VENN_DIAGRAM_SECTOR $OUTPUT_FILE

POLAR_NETWORK_JSON1="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/interaction-footprint-analysis/residue-resolution-evobundle-input/092116/wb_combined/active-mor-network/MOR-active-noNb-BU72-nature2015-rep_1.json"
POLAR_NETWORK_JSON2="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/interaction-footprint-analysis/residue-resolution-evobundle-input/092116/wb_combined/inactive-dor-network/DOR-inactive-naltrindole-unpublished-condition-naltrindole-bound-rep_1.json"
VENN_DIAGRAM_SECTOR="-secondorig"
OUTPUT_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/interaction-footprint-analysis/polar-network-comparisons/092116/inactive-dor-orig.json"
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/analysis/interaction-footprint-analysis/
python venn_diagram_compare_polar_networks.py $POLAR_NETWORK_JSON1 $POLAR_NETWORK_JSON2 $VENN_DIAGRAM_SECTOR $OUTPUT_FILE



# Water Density Upon Subsampled Aligned Amber Trajectories

TOP="/scratch/PI/rondror/DesRes-Simulations/subsampled_desres_traj_orig/MOR-active-noNb-BU72-nature2015/condition-nb-interface-restrained-BU72/rep_1/step5_assembly.pdb"
TRAJ="/scratch/PI/rondror/DesRes-Simulations/subsampled_desres_traj_orig/MOR-active-noNb-BU72-nature2015/condition-nb-interface-restrained-BU72/rep_1/stitched.dcd"
OUTPUT_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/src/analysis/water-density/test/test.dx"
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/analysis/water-density
python water_density.py $TOP $TRAJ $OUTPUT_FILE 



TOP="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/MOR-active-noNb-BU72-nature2015/condition-nb-interface-restrained-BU72/step5_assembly.pdb"
TRAJ="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/MOR-active-noNb-BU72-nature2015/condition-nb-interface-restrained-BU72/rep_1/Prod_0/Prod_0_reimaged.nc"
OUTPUT_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/AlignedAmberTraj/MOR-active-noNb-BU72-nature2015/rep_1/Prod_0.dcd"
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/misc-preprocessing-scripts
python wrapAlignAmber.py $TOP $TRAJ $OUTPUT_FILE -crys


TOP="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/AlignedAmberTraj/MOR-active-noNb-BU72-nature2015/rep_1/step5_assembly.pdb"
TRAJ="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/AlignedAmberTraj/MOR-active-noNb-BU72-nature2015/rep_1/Prod_0.dcd"
OUTPUT_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/AlignedAmberTraj/MOR-active-noNb-BU72-nature2015/rep_1/Prod_0.dx"
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/analysis/water-density
python water_density.py $TOP $TRAJ $OUTPUT_FILE 


#M2R Subsample Redo
TOP="/scratch/PI/rondror/DesRes-Simulations/ordered-from-DesRes/nature2012/DESRES-Trajectory_nature2012-A-M2-QNB-all.1/nature2012-A-M2-QNB-all/nature2012-A-M2-QNB-all.mae"
TRAJ_DIR="/scratch/PI/rondror/DesRes-Simulations/ordered-from-DesRes/nature2012/DESRES-Trajectory_nature2012-A-M2-QNB-all.1/nature2012-A-M2-QNB-all"
FILETYPE="dcd"
OUTPUT_DIR="/scratch/PI/rondror/DesRes-Simulations/subsampled_desres_traj/M2R-inactive-QNB-nature2012/condition-A/rep_1/stitched.dcd"
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/misc-preprocessing-scripts
python subsample_combine_traj.py $TOP $TRAJ_DIR $FILETYPE $OUTPUT_DIR


# 09/23/16 Realign origin for water density

TOP="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-65/step5_assembly.mae"
TRAJ="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-65/rep_1/Prod_0/Prod_0_rewrapped.dcd"
OUT=/scratch/PI/rondror/akma327/DynamicNetworks/data/water-density/B2AR-active-Gs-BI-science2015/condition-65/rep_1/Prod_0_test2_5.dx
python /scratch/PI/rondror/akma327/DynamicNetworks/src/analysis/water-density/water_density_test.py $TOP $TRAJ $OUT -nFrames



# 10/03/16

PDB="3SN6"
SIM_TOOL="anton"
TOP_DIR="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-65"
TRAJ_DIR="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-65/rep_1"
STRIP_WATER_FLAG="yes"
OUTPUT_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutputDictionary/B2AR-active-Gs-BI-science2015/condition-65/rep_1/050516_NONHB_DEFAULT_HB_3.5_70/state_classification_fix.txt"
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/analysis/state-decomposition
python classify_macrostate.py $PDB $SIM_TOOL $TOP_DIR $TRAJ_DIR $STRIP_WATER_FLAG $OUTPUT_FILE




PDB_CODE="2RH1"
EXP_REP_DICT_PATH="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutputDictionary/B2AR-inactive-carazalol-cell2013b/condition-1/rep_1/050516_NONHB_DEFAULT_HB_3.5_70"
STATE_DECOMP_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutputDictionary/B2AR-inactive-carazalol-cell2013b/condition-1/rep_1/050516_NONHB_DEFAULT_HB_3.5_70/state_classification.txt"
OUTPUT_FILE_PATH="/scratch/PI/rondror/akma327/DynamicNetworks/results/state-decomposition/single-cond-rep-decomp-freqsum/100316_state_decomp_union_wb_freq/B2AR:inactive:carazalol:15us:D79+,D130-.txt"
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/analysis/state-decomposition
python dynamic_inter_dict_to_state_decomp_unionized_freq.py $PDB_CODE $EXP_REP_DICT_PATH $STATE_DECOMP_FILE $OUTPUT_FILE_PATH -chainId 0 -interlist -wb -wb2 



# 100416
# Inactive combine B2AR and MOR
FOOTPRINT_TABLE="/scratch/PI/rondror/akma327/DynamicNetworks/results/state-decomposition/residue-resolution/100316_state_decomp_union_wb_freq/dor_inactive_polar_network/inactive_receptors/inactive_state_decomp_residue_resolution.txt"
EXP_REP_ID1="B2AR:inactive:carazalol:10us:D79-,D130-,Inactive"
EXP_REP_ID2="MOR:inactive:bFNA-antagonist-bound_to_K233:1.21us"
OUTPUT_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/interaction-footprint-analysis/residue-resolution-evobundle-input/100316/cross_receptor_union/B2AR_MOR_inactive.json"
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/analysis/interaction-footprint-analysis
python cross_receptor_intersect_evobundle.py $FOOTPRINT_TABLE $EXP_REP_ID1 $EXP_REP_ID2 $OUTPUT_FILE -no-conserve


# Active combine B2AR and MOR
FOOTPRINT_TABLE="/scratch/PI/rondror/akma327/DynamicNetworks/results/state-decomposition/residue-resolution/100316_state_decomp_union_wb_freq/mor_active_polar_network/active_receptors/active_state_decomp_residue_resolution.txt"	
EXP_REP_ID1="B2AR:active:short-isoform-B2AR-heterotrimeric-Gs:no_ligand:5us:with_membrane"
EXP_REP_ID2="MOR:active-noNb:BU72-nB_interface_restrained:3.0us"
OUTPUT_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/interaction-footprint-analysis/residue-resolution-evobundle-input/100316/cross_receptor_union/B2AR_MOR_active.json"
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/analysis/interaction-footprint-analysis
python cross_receptor_intersect_evobundle.py $FOOTPRINT_TABLE $EXP_REP_ID1 $EXP_REP_ID2 $OUTPUT_FILE -no-conserve

# Venn Diagram of B2AR and MOR combined

POLAR_NETWORK_JSON1="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/interaction-footprint-analysis/residue-resolution-evobundle-input/100316/cross_receptor_union/B2AR_MOR_active.json"
POLAR_NETWORK_JSON2="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/interaction-footprint-analysis/residue-resolution-evobundle-input/100316/cross_receptor_union/B2AR_MOR_inactive.json"
VENN_DIAGRAM_SECTOR="-first"
OUTPUT_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/interaction-footprint-analysis/residue-resolution-evobundle-input/100316/venn_diagram/B2AR_MOR_active_only.json"
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/analysis/interaction-footprint-analysis
python venn_diagram_compare_polar_networks.py $POLAR_NETWORK_JSON1 $POLAR_NETWORK_JSON2 $VENN_DIAGRAM_SECTOR $OUTPUT_FILE


POLAR_NETWORK_JSON1="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/interaction-footprint-analysis/residue-resolution-evobundle-input/100316/cross_receptor_union/B2AR_MOR_active.json"
POLAR_NETWORK_JSON2="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/interaction-footprint-analysis/residue-resolution-evobundle-input/100316/cross_receptor_union/B2AR_MOR_inactive.json"
VENN_DIAGRAM_SECTOR="-second"
OUTPUT_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/interaction-footprint-analysis/residue-resolution-evobundle-input/100316/venn_diagram/B2AR_MOR_inactive_only.json"
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/analysis/interaction-footprint-analysis
python venn_diagram_compare_polar_networks.py $POLAR_NETWORK_JSON1 $POLAR_NETWORK_JSON2 $VENN_DIAGRAM_SECTOR $OUTPUT_FILE

POLAR_NETWORK_JSON1="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/interaction-footprint-analysis/residue-resolution-evobundle-input/100316/cross_receptor_union/B2AR_MOR_active.json"
POLAR_NETWORK_JSON2="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/interaction-footprint-analysis/residue-resolution-evobundle-input/100316/cross_receptor_union/B2AR_MOR_inactive.json"
VENN_DIAGRAM_SECTOR="-intersect1"
OUTPUT_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/interaction-footprint-analysis/residue-resolution-evobundle-input/100316/venn_diagram/B2AR_MOR_active_both.json"
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/analysis/interaction-footprint-analysis
python venn_diagram_compare_polar_networks.py $POLAR_NETWORK_JSON1 $POLAR_NETWORK_JSON2 $VENN_DIAGRAM_SECTOR $OUTPUT_FILE


POLAR_NETWORK_JSON1="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/interaction-footprint-analysis/residue-resolution-evobundle-input/100316/cross_receptor_union/B2AR_MOR_active.json"
POLAR_NETWORK_JSON2="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/interaction-footprint-analysis/residue-resolution-evobundle-input/100316/cross_receptor_union/B2AR_MOR_inactive.json"
VENN_DIAGRAM_SECTOR="-intersect2"
OUTPUT_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/interaction-footprint-analysis/residue-resolution-evobundle-input/100316/venn_diagram/B2AR_MOR_inactive_both.json"
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/analysis/interaction-footprint-analysis
python venn_diagram_compare_polar_networks.py $POLAR_NETWORK_JSON1 $POLAR_NETWORK_JSON2 $VENN_DIAGRAM_SECTOR $OUTPUT_FILE

POLAR_NETWORK_JSON1="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/interaction-footprint-analysis/residue-resolution-evobundle-input/100316/cross_receptor_union/B2AR_MOR_active.json"
POLAR_NETWORK_JSON2="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/interaction-footprint-analysis/residue-resolution-evobundle-input/100316/cross_receptor_union/B2AR_MOR_inactive.json"
VENN_DIAGRAM_SECTOR="-firstorig"
OUTPUT_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/interaction-footprint-analysis/residue-resolution-evobundle-input/100316/venn_diagram/B2AR_MOR_active_orig.json"
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/analysis/interaction-footprint-analysis
python venn_diagram_compare_polar_networks.py $POLAR_NETWORK_JSON1 $POLAR_NETWORK_JSON2 $VENN_DIAGRAM_SECTOR $OUTPUT_FILE

POLAR_NETWORK_JSON1="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/interaction-footprint-analysis/residue-resolution-evobundle-input/100316/cross_receptor_union/B2AR_MOR_active.json"
POLAR_NETWORK_JSON2="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/interaction-footprint-analysis/residue-resolution-evobundle-input/100316/cross_receptor_union/B2AR_MOR_inactive.json"
VENN_DIAGRAM_SECTOR="-secondorig"
OUTPUT_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/interaction-footprint-analysis/residue-resolution-evobundle-input/100316/venn_diagram/B2AR_MOR_inactive_orig.json"
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/analysis/interaction-footprint-analysis
python venn_diagram_compare_polar_networks.py $POLAR_NETWORK_JSON1 $POLAR_NETWORK_JSON2 $VENN_DIAGRAM_SECTOR $OUTPUT_FILE











TOP_PATH="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/Rhodopsin-active-unpublished/rho_arr_c_tail_complexA_336_338pp/step5_assembly.pdb"
TRAJ_PATH="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/Rhodopsin-active-unpublished/rho_arr_c_tail_complexA_336_338pp/rep_1/Prod_0/Prod_0_reimaged.nc"
OUTPUT_DIRECTORY_PATH="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/Rhodopsin-active-unpublished/rho_arr_c_tail_complexA_336_338pp/rep_1/Prod_0/HB_3.5A_70D"
OUTPUT_FILE_IDENTIFIER="hydrogen_bond_water_result.txt"
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/DynamicInteractions-Calculator/geometry
python DynamicInteractionCalculator.py $TRAJ_PATH $TOP_PATH $OUTPUT_DIRECTORY_PATH $OUTPUT_FILE_IDENTIFIER -hbw -stride 1 -chain A



# Rhodopsin 
PDB="TMP1"
SIM_TOOL="amber"
TOP_DIR="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/Rhodopsin-active-unpublished/Rho-active-arr-mut-prot-D83-E113-E122-E134-unpublished"
TRAJ_DIR="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/Rhodopsin-active-unpublished/Rho-active-arr-mut-prot-D83-E113-E122-E134-unpublished/rep_1"
STRIP_WATER_FLAG="no"
CHAIN_ID="A"
OUTPUT_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutputDictionary/Rhodopsin-active-unpublished/Rho-active-arr-mut-prot-D83-E113-E122-E134-unpublished/rep_1/HB_3.5A_70D/state_classification.txt"
python classify_macrostate.py $PDB $SIM_TOOL $TOP_DIR $TRAJ_DIR $STRIP_WATER_FLAG $CHAIN_ID $OUTPUT_FILE


# US28
PDB="TMP2"
SIM_TOOL="amber"
TOP_DIR="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/US28-active-unpublished/US28-active-unpublished"
TRAJ_DIR="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/US28-active-unpublished/US28-active-unpublished/rep_1"
STRIP_WATER_FLAG="no"
CHAIN_ID="A"
OUTPUT_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutputDictionary/US28-active-unpublished/US28-active-unpublished/rep_1/HB_3.5A_70D/state_classification.txt"
python classify_macrostate.py $PDB $SIM_TOOL $TOP_DIR $TRAJ_DIR $STRIP_WATER_FLAG $CHAIN_ID $OUTPUT_FILE

# Rhodopsin convert to single cond rep decomp
PDB_CODE="TMP1"
EXP_REP_DICT_PATH="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutputDictionary/Rhodopsin-active-unpublished/Rho-active-arr-mut-prot-D83-E113-E122-E134-unpublished/rep_1/HB_3.5A_70D"
STATE_DECOMP_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutputDictionary/Rhodopsin-active-unpublished/Rho-active-arr-mut-prot-D83-E113-E122-E134-unpublished/rep_1/HB_3.5A_70D/state_classification.txt"
OUTPUT_FILE_PATH="/scratch/PI/rondror/akma327/DynamicNetworks/results/state-decomposition/single-cond-rep-decomp-freqsum/100316_state_decomp_union_wb_freq/Rhodopsin:active:arr-mut-prot-D83-E113-E122-E134.txt"
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/analysis/state-decomposition
python dynamic_inter_dict_to_state_decomp_unionized_freq.py $PDB_CODE $EXP_REP_DICT_PATH $STATE_DECOMP_FILE $OUTPUT_FILE_PATH -chainId 0 -interlist -wb -wb2 & 

PDB_CODE="TMP2"
EXP_REP_DICT_PATH="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutputDictionary/US28-active-unpublished/US28-active-unpublished/rep_1/HB_3.5A_70D"
STATE_DECOMP_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutputDictionary/US28-active-unpublished/US28-active-unpublished/rep_1/HB_3.5A_70D/state_classification.txt"
OUTPUT_FILE_PATH="/scratch/PI/rondror/akma327/DynamicNetworks/results/state-decomposition/single-cond-rep-decomp-freqsum/100316_state_decomp_union_wb_freq/US28:active:unpublished-rep_1.txt"
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/analysis/state-decomposition
python dynamic_inter_dict_to_state_decomp_unionized_freq.py $PDB_CODE $EXP_REP_DICT_PATH $STATE_DECOMP_FILE $OUTPUT_FILE_PATH -chainId 0 -interlist -wb -wb2 & 


# Generate residue resolution table
DECOMP_FREQ_SUM_EXP_FOLDER_PATH="/scratch/PI/rondror/akma327/DynamicNetworks/results/state-decomposition/single-cond-rep-decomp-freqsum/100916_new_active_states/active_receptors"
STATE="Active"
OUTPUT_FILE_PATH="/scratch/PI/rondror/akma327/DynamicNetworks/results/state-decomposition/aggregate-decomp-freqsum/100916_new_active_states/active_receptors/active_state_decomp.txt"
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/analysis/state-decomposition
python compile_gpcrdb_state_decomp_unionized_freq.py $DECOMP_FREQ_SUM_EXP_FOLDER_PATH $STATE $OUTPUT_FILE_PATH

AGGREGATE_FREQ_TABLE="/scratch/PI/rondror/akma327/DynamicNetworks/results/state-decomposition/aggregate-decomp-freqsum/100916_new_active_states/active_receptors/active_state_decomp.txt"
NETWORK_FILTER_LIST="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/interaction-footprint-analysis/polar-network-lists/active-mor-network.txt"
PDB_CODE="5C1M"
OUTPUT_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/results/state-decomposition/residue-resolution/100916_new_active_states/mor_active_polar_network/active_receptors/active_state_decomp_residue_resolution.txt"
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/analysis/state-decomposition
python unionized_residue_footprint_table.py $AGGREGATE_FREQ_TABLE $NETWORK_FILTER_LIST $PDB_CODE $OUTPUT_FILE

# Flareplot

FOOTPRINT_TABLE="/scratch/PI/rondror/akma327/DynamicNetworks/results/state-decomposition/residue-resolution/100916_new_active_states/mor_active_polar_network/active_receptors/active_state_decomp_residue_resolution.txt"	
EXP_REP_ID="Rhodopsin:active:arr-mut-prot-D83-E113-E122-E134"
OUTPUT_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/interaction-footprint-analysis/residue-resolution-evobundle-input/100916/wb_combined/active-mor-network/Rhodopsin:active:arr-mut-prot-D83-E113-E122-E134.json"
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/analysis/interaction-footprint-analysis
python footprint_summary_evobundle.py $FOOTPRINT_TABLE $EXP_REP_ID $OUTPUT_FILE -no-conserve


FOOTPRINT_TABLE="/scratch/PI/rondror/akma327/DynamicNetworks/results/state-decomposition/residue-resolution/100916_new_active_states/mor_active_polar_network/active_receptors/active_state_decomp_residue_resolution.txt"	
EXP_REP_ID="US28:active:unpublished-rep_1"
OUTPUT_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/interaction-footprint-analysis/residue-resolution-evobundle-input/100916/wb_combined/active-mor-network/US28:active:unpublished-rep_1.json"
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/analysis/interaction-footprint-analysis
python footprint_summary_evobundle.py $FOOTPRINT_TABLE $EXP_REP_ID $OUTPUT_FILE -no-conserve



# Ligand Water Mediated 

TOP_PATH="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/MOR-active-noNb-BU72-nature2015/condition-nb-interface-restrained-BU72/step5_assembly.pdb"
TRAJ_PATH="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/MOR-active-noNb-BU72-nature2015/condition-nb-interface-restrained-BU72/rep_1/Prod_0/Prod_0_reimaged.nc"
OUTPUT_DIRECTORY_PATH="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/MOR-active-noNb-BU72-nature2015/condition-nb-interface-restrained-BU72/rep_1/Prod_0/HB_3.5A_70D"
OUTPUT_FILE_IDENTIFIER="ligand_hydrogen_bond_water_result.txt"
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/interaction-geometry
python DynamicInteractionCalculator.py $TRAJ_PATH $TOP_PATH $OUTPUT_DIRECTORY_PATH $OUTPUT_FILE_IDENTIFIER -lhbw -stride 1 -chain A -ligand H3B


TOP_PATH="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/MOR-active-noNb-BU72-nature2015/condition-nb-interface-restrained-BU72/step5_assembly.pdb"
TRAJ_PATH="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/MOR-active-noNb-BU72-nature2015/condition-nb-interface-restrained-BU72/rep_1/Prod_0/Prod_0_reimaged.nc"
OUTPUT_DIRECTORY_PATH="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/MOR-active-noNb-BU72-nature2015/condition-nb-interface-restrained-BU72/rep_1/Prod_0/HB_3.5A_70D"
OUTPUT_FILE_IDENTIFIER="lb_hydrogen_bond_result.txt"
WATER_HBOND_FILE_PATH="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/MOR-active-noNb-BU72-nature2015/condition-nb-interface-restrained-BU72/rep_1/Prod_0/HB_3.5A_70D/ligand_hydrogen_bond_water_result.txt"
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/interaction-geometry
python DynamicInteractionCalculator.py $TRAJ_PATH $TOP_PATH $OUTPUT_DIRECTORY_PATH $OUTPUT_FILE_IDENTIFIER -hlb -process $WATER_HBOND_FILE_PATH -stride 1 -ligand H3B

TOP_PATH="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/MOR-active-noNb-BU72-nature2015/condition-nb-interface-restrained-BU72/step5_assembly.pdb"
TRAJ_PATH="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/MOR-active-noNb-BU72-nature2015/condition-nb-interface-restrained-BU72/rep_1/Prod_0/Prod_0_reimaged.nc"
OUTPUT_DIRECTORY_PATH="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/MOR-active-noNb-BU72-nature2015/condition-nb-interface-restrained-BU72/rep_1/Prod_0/HB_3.5A_70D"
OUTPUT_FILE_IDENTIFIER="ls_hydrogen_bond_result.txt"
WATER_HBOND_FILE_PATH="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/MOR-active-noNb-BU72-nature2015/condition-nb-interface-restrained-BU72/rep_1/Prod_0/HB_3.5A_70D/ligand_hydrogen_bond_water_result.txt"
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/interaction-geometry
python DynamicInteractionCalculator.py $TRAJ_PATH $TOP_PATH $OUTPUT_DIRECTORY_PATH $OUTPUT_FILE_IDENTIFIER -hls -process $WATER_HBOND_FILE_PATH -stride 1 -ligand H3B


TOP_PATH="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/MOR-active-noNb-BU72-nature2015/condition-nb-interface-restrained-BU72/step5_assembly.pdb"
TRAJ_PATH="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/MOR-active-noNb-BU72-nature2015/condition-nb-interface-restrained-BU72/rep_1/Prod_0/Prod_0_reimaged.nc"
OUTPUT_DIRECTORY_PATH="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/MOR-active-noNb-BU72-nature2015/condition-nb-interface-restrained-BU72/rep_1/Prod_0/HB_3.5A_70D"
OUTPUT_FILE_IDENTIFIER="ligand_water_bond_result.txt"
WATER_HBOND_FILE_PATH="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/MOR-active-noNb-BU72-nature2015/condition-nb-interface-restrained-BU72/rep_1/Prod_0/HB_3.5A_70D/ligand_hydrogen_bond_water_result.txt"
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/interaction-geometry
python DynamicInteractionCalculator.py $TRAJ_PATH $TOP_PATH $OUTPUT_DIRECTORY_PATH $OUTPUT_FILE_IDENTIFIER -lwb -process $WATER_HBOND_FILE_PATH -stride 1 -ligand H3B


TOP_PATH="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/MOR-active-noNb-BU72-nature2015/condition-nb-interface-restrained-BU72/step5_assembly.pdb"
TRAJ_PATH="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/MOR-active-noNb-BU72-nature2015/condition-nb-interface-restrained-BU72/rep_1/Prod_0/Prod_0_reimaged.nc"
OUTPUT_DIRECTORY_PATH="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/MOR-active-noNb-BU72-nature2015/condition-nb-interface-restrained-BU72/rep_1/Prod_0/HB_3.5A_70D"
OUTPUT_FILE_IDENTIFIER="ligand_extended_water_bond_result.txt"
WATER_HBOND_FILE_PATH="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/MOR-active-noNb-BU72-nature2015/condition-nb-interface-restrained-BU72/rep_1/Prod_0/HB_3.5A_70D/ligand_hydrogen_bond_water_result.txt"
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/interaction-geometry
python DynamicInteractionCalculator.py $TRAJ_PATH $TOP_PATH $OUTPUT_DIRECTORY_PATH $OUTPUT_FILE_IDENTIFIER -lwb2 -process $WATER_HBOND_FILE_PATH -stride 1 -ligand H3B


TOP_PATH="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/MOR-active-noNb-BU72-nature2015/condition-nb-interface-restrained-BU72/step5_assembly.pdb"
TRAJ_PATH="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/MOR-active-noNb-BU72-nature2015/condition-nb-interface-restrained-BU72/rep_1/Prod_0/Prod_0_reimaged.nc"
OUTPUT_DIRECTORY_PATH="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/MOR-active-noNb-BU72-nature2015/condition-nb-interface-restrained-BU72/rep_1/Prod_0/HB_3.5A_70D"
OUTPUT_FILE_IDENTIFIER="residue_water_hydrogen_bond_result.txt"
WATER_HBOND_FILE_PATH="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/MOR-active-noNb-BU72-nature2015/condition-nb-interface-restrained-BU72/rep_1/Prod_0/HB_3.5A_70D/hydrogen_bond_water_result.txt"
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/interaction-geometry
python DynamicInteractionCalculator.py $TRAJ_PATH $TOP_PATH $OUTPUT_DIRECTORY_PATH $OUTPUT_FILE_IDENTIFIER -rw -process $WATER_HBOND_FILE_PATH -stride 1


TOP_PATH="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/MOR-active-noNb-BU72-nature2015/condition-nb-interface-restrained-BU72/step5_assembly.pdb"
TRAJ_PATH="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/MOR-active-noNb-BU72-nature2015/condition-nb-interface-restrained-BU72/rep_1/Prod_0/Prod_0_reimaged.nc"
OUTPUT_DIRECTORY_PATH="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/MOR-active-noNb-BU72-nature2015/condition-nb-interface-restrained-BU72/rep_1/Prod_0/HB_3.5A_70D"
OUTPUT_FILE_IDENTIFIER="ligand_water_hydrogen_bond_result.txt"
WATER_HBOND_FILE_PATH="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/MOR-active-noNb-BU72-nature2015/condition-nb-interface-restrained-BU72/rep_1/Prod_0/HB_3.5A_70D/ligand_hydrogen_bond_water_result.txt"
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/interaction-geometry
python DynamicInteractionCalculator.py $TRAJ_PATH $TOP_PATH $OUTPUT_DIRECTORY_PATH $OUTPUT_FILE_IDENTIFIER -lw -process $WATER_HBOND_FILE_PATH -stride 1 -ligand H3B



TOP_PATH="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/MOR-active-noNb-BU72-nature2015/condition-nb-interface-restrained-BU72/step5_assembly.pdb"
OUTPUT_FILE_PATH="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/MOR-active-noNb-BU72-nature2015/condition-nb-interface-restrained-BU72/rep_1/Prod_0/HB_3.5A_70D/mor-active-rep1-ligand-crys.txt"
python StaticInteractionCalculator.py $TOP_PATH $OUTPUT_FILE_PATH -chain A -solv TIP3 -ligand H3B -interlist -lhbw

TOP_PATH="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/MOR-active-noNb-BU72-nature2015/condition-nb-interface-restrained-BU72/step5_assembly.pdb"
OUTPUT_FILE_PATH="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/MOR-active-noNb-BU72-nature2015/condition-nb-interface-restrained-BU72/rep_1/Prod_0/HB_3.5A_70D/mor-active-rep1-crys.txt"
python StaticInteractionCalculator.py $TOP_PATH $OUTPUT_FILE_PATH -interlist -hbw


# DOR Inactive

TOP_PATH="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/DOR-inactive-naltrindole-unpublished/condition-naltrindole-bound/step5_assembly.pdb"
TRAJ_PATH="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/DOR-inactive-naltrindole-unpublished/condition-naltrindole-bound/rep_1/Prod_0/Prod_0_reimaged.nc"
OUTPUT_DIRECTORY_PATH="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/DOR-inactive-naltrindole-unpublished/condition-naltrindole-bound/rep_1/Prod_0/HB_3.5A_70D"
OUTPUT_FILE_IDENTIFIER="ligand_hydrogen_bond_water_result.txt"
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/interaction-geometry
python DynamicInteractionCalculator.py $TRAJ_PATH $TOP_PATH $OUTPUT_DIRECTORY_PATH $OUTPUT_FILE_IDENTIFIER -lhbw -stride 1 -chain A -ligand EJ4

TOP_PATH="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/DOR-inactive-naltrindole-unpublished/condition-naltrindole-bound/step5_assembly.pdb"
TRAJ_PATH="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/DOR-inactive-naltrindole-unpublished/condition-naltrindole-bound/rep_1/Prod_0/Prod_0_reimaged.nc"
OUTPUT_DIRECTORY_PATH="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/DOR-inactive-naltrindole-unpublished/condition-naltrindole-bound/rep_1/Prod_0/HB_3.5A_70D"
OUTPUT_FILE_IDENTIFIER="ligand_extended_water_bond_result.txt"
WATER_HBOND_FILE_PATH="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/DOR-inactive-naltrindole-unpublished/condition-naltrindole-bound/rep_1/Prod_0/HB_3.5A_70D/ligand_hydrogen_bond_water_result.txt"
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/interaction-geometry
python DynamicInteractionCalculator.py $TRAJ_PATH $TOP_PATH $OUTPUT_DIRECTORY_PATH $OUTPUT_FILE_IDENTIFIER -lwb2 -process $WATER_HBOND_FILE_PATH -stride 1 -ligand H3B


TOP_PATH="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/DOR-inactive-naltrindole-unpublished/condition-naltrindole-bound/step5_assembly.pdb"
OUTPUT_FILE_PATH="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/DOR-inactive-naltrindole-unpublished/condition-naltrindole-bound/rep_1/Prod_0/HB_3.5A_70D/dor-inactive-rep1-ligand-crys.txt"
python StaticInteractionCalculator.py $TOP_PATH $OUTPUT_FILE_PATH -chain A -ligand EJ4 -interlist -lwb2


# 10/13/16 
TOP_PATH="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/MOR-active-noNb-BU72-nature2015/condition-nb-interface-restrained-BU72/step5_assembly.pdb"
OUTPUT_FILE_PATH="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/polar-networks/mor-active-wb.txt"
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/interaction-geometry
python StaticInteractionCalculator_101316_save.py $TOP_PATH $OUTPUT_FILE_PATH -interlist -wb 



# Rerun mor active simulation hbw and wb to do comparison with static calc 

TOP_PATH="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/MOR-active-noNb-BU72-nature2015/condition-nb-interface-restrained-BU72/step5_assembly.pdb"
TRAJ_PATH="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/MOR-active-noNb-BU72-nature2015/condition-nb-interface-restrained-BU72/rep_1/Prod_0/Prod_0_reimaged.nc"
OUTPUT_DIRECTORY_PATH="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/MOR-active-noNb-BU72-nature2015/condition-nb-interface-restrained-BU72/rep_1/Prod_0/HB_3.5A_70D/verify_calc"
OUTPUT_FILE_IDENTIFIER="ligand_hydrogen_bond_water_result.txt"
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/interaction-geometry
python DynamicInteractionCalculator.py $TRAJ_PATH $TOP_PATH $OUTPUT_DIRECTORY_PATH $OUTPUT_FILE_IDENTIFIER -lhbw -stride 1 -chain A -ligand H3B


TOP_PATH="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/MOR-active-noNb-BU72-nature2015/condition-nb-interface-restrained-BU72/step5_assembly.pdb"
TRAJ_PATH="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/MOR-active-noNb-BU72-nature2015/condition-nb-interface-restrained-BU72/rep_1/Prod_0/Prod_0_reimaged.nc"
OUTPUT_DIRECTORY_PATH="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/MOR-active-noNb-BU72-nature2015/condition-nb-interface-restrained-BU72/rep_1/Prod_0/HB_3.5A_70D/verify_calc"
OUTPUT_FILE_IDENTIFIER="water_bond_result.txt"
WATER_HBOND_FILE_PATH="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/MOR-active-noNb-BU72-nature2015/condition-nb-interface-restrained-BU72/rep_1/Prod_0/HB_3.5A_70D/verify_calc/ligand_hydrogen_bond_water_result.txt"
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/interaction-geometry
python DynamicInteractionCalculator.py $TRAJ_PATH $TOP_PATH $OUTPUT_DIRECTORY_PATH $OUTPUT_FILE_IDENTIFIER -lwb -process $WATER_HBOND_FILE_PATH -stride 1



#MOR-inactive

TOP_PATH="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/MOR-inactive-bFNA-nature2015/condition-bFNA-bound/step5_assembly.pdb"
TRAJ_PATH="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/MOR-inactive-bFNA-nature2015/condition-bFNA-bound/rep_1/Prod_0/Prod_0_reimaged.nc"
OUTPUT_DIRECTORY_PATH="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/MOR-inactive-bFNA-nature2015/condition-bFNA-bound/rep_1/Prod_0/HB_3.5A_70D/verify_calc"
OUTPUT_FILE_IDENTIFIER="hydrogen_bond_water_result.txt"
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/interaction-geometry
python DynamicInteractionCalculator.py $TRAJ_PATH $TOP_PATH $OUTPUT_DIRECTORY_PATH $OUTPUT_FILE_IDENTIFIER -hbw -stride 1 -solv IP3

TOP_PATH="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/MOR-inactive-bFNA-nature2015/condition-bFNA-bound/step5_assembly.pdb"
TRAJ_PATH="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/MOR-inactive-bFNA-nature2015/condition-bFNA-bound/rep_1/Prod_0/Prod_0_reimaged.nc"
OUTPUT_DIRECTORY_PATH="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/MOR-inactive-bFNA-nature2015/condition-bFNA-bound/rep_1/Prod_0/HB_3.5A_70D/verify_calc"
OUTPUT_FILE_IDENTIFIER="ligand_hydrogen_bond_water_result.txt"
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/interaction-geometry
python DynamicInteractionCalculator.py $TRAJ_PATH $TOP_PATH $OUTPUT_DIRECTORY_PATH $OUTPUT_FILE_IDENTIFIER -lhbw -stride 1 -solv IP3 -ligand BF0


# 10/14/16
TOP_PATH="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-inactive-carazalol-cell2013b/condition-12/step5_assembly.mae"
OUTPUT_FILE_PATH="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/polar-networks/b2ar-inactive-cond12-frame0.txt"
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/interaction-geometry
python StaticInteractionCalculator.py $TOP_PATH $OUTPUT_FILE_PATH -chain A -ligand CAU -interlist -wb


PDB="4N6H"
TOP="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/DOR-inactive-naltrindole-unpublished/condition-naltrindole-bound/step5_assembly.pdb"
OUT="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/polar-networks/DOR-inactive-naltrindole-unpublished-condition-naltrindole-bound.txt"
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/analysis/polar-networks
python compute_polar_network_list.py $PDB $TOP $OUT -inactive -chain A -ligand EJ4 -interlist -wb -wb2 -lwb -lwb2




mkdir 050516_NONHB_DEFAULT_HB_3.5_70
cd HB_3.5A_70D/
cp * ../050516_NONHB_DEFAULT_HB_3.5_70/
cd ../050516_NONHB_DEFAULT_HB_3.5_70/
rm ligand_water_hydrogen_bond_result_dict.txt


PDB_CODE="2RH1"
EXP_REP_DICT_PATH="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutputDictionary/B2AR-inactive-carazalol-cell2013b/condition-12/rep_1/050516_NONHB_DEFAULT_HB_3.5_70"
STATE_DECOMP_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutputDictionary/B2AR-inactive-carazalol-cell2013b/condition-12/rep_1/050516_NONHB_DEFAULT_HB_3.5_70/state_classification.txt"
OUTPUT_FILE_PATH="/scratch/PI/rondror/akma327/DynamicNetworks/results/state-decomposition/single-cond-rep-decomp-freqsum/101516_state_decomp_union_wb_freq/B2AR:inactive:carazalol:10us:D79-,D130-.txt"
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/analysis/state-decomposition
python dynamic_inter_dict_to_state_decomp_unionized_freq.py $PDB_CODE $EXP_REP_DICT_PATH $STATE_DECOMP_FILE $OUTPUT_FILE_PATH -chainId 0 -interlist -lwb -lwb2


# compile to active

DECOMP_FREQ_SUM_EXP_FOLDER_PATH="/scratch/PI/rondror/akma327/DynamicNetworks/results/state-decomposition/single-cond-rep-decomp-freqsum/102516_state_decomp_union_wb_freq/active_receptors"
STATE="Active"
OUTPUT_FILE_PATH="/scratch/PI/rondror/akma327/DynamicNetworks/results/state-decomposition/residue-resolution/102516_state_decomp_union_wb_freq/active_receptors/active_state_decomp_residue_resolution.txt"
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/analysis/state-decomposition
python compile_gpcrdb_state_decomp_unionized_freq.py $DECOMP_FREQ_SUM_EXP_FOLDER_PATH $STATE $OUTPUT_FILE_PATH



DECOMP_FREQ_SUM_EXP_FOLDER_PATH="/scratch/PI/rondror/akma327/DynamicNetworks/results/state-decomposition/single-cond-rep-decomp-freqsum/102516_state_decomp_union_wb_freq/inactive_receptors"
STATE="Inactive"
OUTPUT_FILE_PATH="/scratch/PI/rondror/akma327/DynamicNetworks/results/state-decomposition/residue-resolution/102516_state_decomp_union_wb_freq/inactive_receptors/inactive_state_decomp_residue_resolution.txt"
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/analysis/state-decomposition
python compile_gpcrdb_state_decomp_unionized_freq.py $DECOMP_FREQ_SUM_EXP_FOLDER_PATH $STATE $OUTPUT_FILE_PATH



#101816
FOOTPRINT_TABLE="/scratch/PI/rondror/akma327/DynamicNetworks/results/state-decomposition/residue-resolution/101516_state_decomp_union_wb_freq/active_receptors/active_state_decomp.txt"
EXP_REP_ID="B2AR:active:short-isoform-B2AR-heterotrimeric-Gs:no_ligand:5us:with_membrane,Active"
OUTPUT_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/interaction-footprint-analysis/residue-resolution-evobundle-input/101516/B2AR-active-Gs-cond65-cutoff90.json"
EXP_REP_PDB="3SN6"
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/analysis/interaction-footprint-analysis
python footprint_summary_evobundle.py $FOOTPRINT_TABLE $EXP_REP_ID $OUTPUT_FILE -intra-pdb $EXP_REP_PDB -no-conserve


FOOTPRINT_TABLE="/scratch/PI/rondror/akma327/DynamicNetworks/results/state-decomposition/residue-resolution/101516_state_decomp_union_wb_freq/active_receptors/active_state_decomp.txt"
EXP_REP_ID="MOR:active-noNb:BU72-nB_interface_restrained:3.0us,Active"
OUTPUT_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/interaction-footprint-analysis/residue-resolution-evobundle-input/101516/MOR-active-rep_1-cutoff90.json"
EXP_REP_PDB="5C1M"
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/analysis/interaction-footprint-analysis
python footprint_summary_evobundle.py $FOOTPRINT_TABLE $EXP_REP_ID $OUTPUT_FILE -intra-pdb $EXP_REP_PDB -no-conserve

FOOTPRINT_TABLE="/scratch/PI/rondror/akma327/DynamicNetworks/results/state-decomposition/residue-resolution/101516_state_decomp_union_wb_freq/inactive_receptors/inactive_state_decomp.txt"
EXP_REP_ID="B2AR:inactive:carazalol:10us:D79-,D130-,Inactive"
OUTPUT_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/interaction-footprint-analysis/residue-resolution-evobundle-input/101516/B2AR-inactive-carazalol-cond12-cutoff90.json"
EXP_REP_PDB="2RH1"
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/analysis/interaction-footprint-analysis
python footprint_summary_evobundle.py $FOOTPRINT_TABLE $EXP_REP_ID $OUTPUT_FILE -intra-pdb $EXP_REP_PDB -no-conserve

FOOTPRINT_TABLE="/scratch/PI/rondror/akma327/DynamicNetworks/results/state-decomposition/residue-resolution/101516_state_decomp_union_wb_freq/inactive_receptors/inactive_state_decomp.txt"
EXP_REP_ID="MOR:inactive:bFNA-antagonist-bound_to_K233:1.21us,Inactive"
OUTPUT_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/interaction-footprint-analysis/residue-resolution-evobundle-input/101516/MOR-inactive-rep_1-cutoff90.json"
EXP_REP_PDB="4DKL"
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/analysis/interaction-footprint-analysis
python footprint_summary_evobundle.py $FOOTPRINT_TABLE $EXP_REP_ID $OUTPUT_FILE -intra-pdb $EXP_REP_PDB -no-conserve


PDB="3SN6"
TOP="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/step5_assembly.mae"
OUT="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/polar-networks/B2AR-active-Gs-BI-science2015-cond22.txt"
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/analysis/polar-networks
python compute_polar_network_list.py $PDB $TOP $OUT -interlist -wb -wb2 -lwb -lwb2





# Stratified to region


# 3SN6

FOOTPRINT_TABLE="/scratch/PI/rondror/akma327/DynamicNetworks/results/state-decomposition/residue-resolution/101516_state_decomp_union_wb_freq/active_receptors/active_state_decomp.txt"
EXP_REP_ID="B2AR:active:short-isoform-B2AR-heterotrimeric-Gs:no_ligand:5us:with_membrane,Active"
OUTPUT_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/interaction-footprint-analysis/residue-resolution-evobundle-input/102216/B2AR-active-Gs-cond65-cutoff90-all.json"
EXP_REP_PDB="3SN6"
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/analysis/interaction-footprint-analysis
python footprint_summary_evobundle.py $FOOTPRINT_TABLE $EXP_REP_ID $OUTPUT_FILE -intra-pdb $EXP_REP_PDB -no-conserve


FOOTPRINT_TABLE="/scratch/PI/rondror/akma327/DynamicNetworks/results/state-decomposition/residue-resolution/101516_state_decomp_union_wb_freq/active_receptors/active_state_decomp.txt"
EXP_REP_ID="B2AR:active:short-isoform-B2AR-heterotrimeric-Gs:no_ligand:5us:with_membrane,Active"
OUTPUT_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/interaction-footprint-analysis/residue-resolution-evobundle-input/102216/B2AR-active-Gs-cond65-cutoff90-upper.json"
EXP_REP_PDB="3SN6"
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/analysis/interaction-footprint-analysis
python footprint_summary_evobundle.py $FOOTPRINT_TABLE $EXP_REP_ID $OUTPUT_FILE -intra-pdb $EXP_REP_PDB -no-conserve -upper


FOOTPRINT_TABLE="/scratch/PI/rondror/akma327/DynamicNetworks/results/state-decomposition/residue-resolution/101516_state_decomp_union_wb_freq/active_receptors/active_state_decomp.txt"
EXP_REP_ID="B2AR:active:short-isoform-B2AR-heterotrimeric-Gs:no_ligand:5us:with_membrane,Active"
OUTPUT_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/interaction-footprint-analysis/residue-resolution-evobundle-input/102216/B2AR-active-Gs-cond65-cutoff90-lower.json"
EXP_REP_PDB="3SN6"
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/analysis/interaction-footprint-analysis
python footprint_summary_evobundle.py $FOOTPRINT_TABLE $EXP_REP_ID $OUTPUT_FILE -intra-pdb $EXP_REP_PDB -no-conserve -lower


# 5C1M

FOOTPRINT_TABLE="/scratch/PI/rondror/akma327/DynamicNetworks/results/state-decomposition/residue-resolution/101516_state_decomp_union_wb_freq/active_receptors/active_state_decomp.txt"
EXP_REP_ID="MOR:active-noNb:BU72-nB_interface_restrained:3.0us,Active"
OUTPUT_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/interaction-footprint-analysis/residue-resolution-evobundle-input/102216/MOR-active-rep_1-cutoff90-all.json"
EXP_REP_PDB="5C1M"
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/analysis/interaction-footprint-analysis
python footprint_summary_evobundle.py $FOOTPRINT_TABLE $EXP_REP_ID $OUTPUT_FILE -intra-pdb $EXP_REP_PDB -no-conserve

FOOTPRINT_TABLE="/scratch/PI/rondror/akma327/DynamicNetworks/results/state-decomposition/residue-resolution/101516_state_decomp_union_wb_freq/active_receptors/active_state_decomp.txt"
EXP_REP_ID="MOR:active-noNb:BU72-nB_interface_restrained:3.0us,Active"
OUTPUT_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/interaction-footprint-analysis/residue-resolution-evobundle-input/102216/MOR-active-rep_1-cutoff90-upper.json"
EXP_REP_PDB="5C1M"
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/analysis/interaction-footprint-analysis
python footprint_summary_evobundle.py $FOOTPRINT_TABLE $EXP_REP_ID $OUTPUT_FILE -intra-pdb $EXP_REP_PDB -no-conserve -upper

FOOTPRINT_TABLE="/scratch/PI/rondror/akma327/DynamicNetworks/results/state-decomposition/residue-resolution/101516_state_decomp_union_wb_freq/active_receptors/active_state_decomp.txt"
EXP_REP_ID="MOR:active-noNb:BU72-nB_interface_restrained:3.0us,Active"
OUTPUT_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/interaction-footprint-analysis/residue-resolution-evobundle-input/102216/MOR-active-rep_1-cutoff90-lower.json"
EXP_REP_PDB="5C1M"
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/analysis/interaction-footprint-analysis
python footprint_summary_evobundle.py $FOOTPRINT_TABLE $EXP_REP_ID $OUTPUT_FILE -intra-pdb $EXP_REP_PDB -no-conserve -lower





# 2RH1
FOOTPRINT_TABLE="/scratch/PI/rondror/akma327/DynamicNetworks/results/state-decomposition/residue-resolution/101516_state_decomp_union_wb_freq/inactive_receptors/inactive_state_decomp.txt"
EXP_REP_ID="B2AR:inactive:carazalol:10us:D79-,D130-,Inactive"
OUTPUT_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/interaction-footprint-analysis/residue-resolution-evobundle-input/102216/B2AR-inactive-carazalol-cond12-cutoff90-all.json"
EXP_REP_PDB="2RH1"
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/analysis/interaction-footprint-analysis
python footprint_summary_evobundle.py $FOOTPRINT_TABLE $EXP_REP_ID $OUTPUT_FILE -intra-pdb $EXP_REP_PDB -no-conserve


FOOTPRINT_TABLE="/scratch/PI/rondror/akma327/DynamicNetworks/results/state-decomposition/residue-resolution/101516_state_decomp_union_wb_freq/inactive_receptors/inactive_state_decomp.txt"
EXP_REP_ID="B2AR:inactive:carazalol:10us:D79-,D130-,Inactive"
OUTPUT_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/interaction-footprint-analysis/residue-resolution-evobundle-input/102216/B2AR-inactive-carazalol-cond12-cutoff90-upper.json"
EXP_REP_PDB="2RH1"
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/analysis/interaction-footprint-analysis
python footprint_summary_evobundle.py $FOOTPRINT_TABLE $EXP_REP_ID $OUTPUT_FILE -intra-pdb $EXP_REP_PDB -no-conserve -upper


FOOTPRINT_TABLE="/scratch/PI/rondror/akma327/DynamicNetworks/results/state-decomposition/residue-resolution/101516_state_decomp_union_wb_freq/inactive_receptors/inactive_state_decomp.txt"
EXP_REP_ID="B2AR:inactive:carazalol:10us:D79-,D130-,Inactive"
OUTPUT_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/interaction-footprint-analysis/residue-resolution-evobundle-input/102216/B2AR-inactive-carazalol-cond12-cutoff90-lower.json"
EXP_REP_PDB="2RH1"
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/analysis/interaction-footprint-analysis
python footprint_summary_evobundle.py $FOOTPRINT_TABLE $EXP_REP_ID $OUTPUT_FILE -intra-pdb $EXP_REP_PDB -no-conserve -lower



# 4DKL

FOOTPRINT_TABLE="/scratch/PI/rondror/akma327/DynamicNetworks/results/state-decomposition/residue-resolution/101516_state_decomp_union_wb_freq/inactive_receptors/inactive_state_decomp.txt"
EXP_REP_ID="MOR:inactive:bFNA-antagonist-bound_to_K233:1.21us,Inactive"
OUTPUT_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/interaction-footprint-analysis/residue-resolution-evobundle-input/101516/MOR-inactive-rep_1-cutoff90-all.json"
EXP_REP_PDB="4DKL"
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/analysis/interaction-footprint-analysis
python footprint_summary_evobundle.py $FOOTPRINT_TABLE $EXP_REP_ID $OUTPUT_FILE -intra-pdb $EXP_REP_PDB -no-conserve


FOOTPRINT_TABLE="/scratch/PI/rondror/akma327/DynamicNetworks/results/state-decomposition/residue-resolution/101516_state_decomp_union_wb_freq/inactive_receptors/inactive_state_decomp.txt"
EXP_REP_ID="MOR:inactive:bFNA-antagonist-bound_to_K233:1.21us,Inactive"
OUTPUT_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/interaction-footprint-analysis/residue-resolution-evobundle-input/102216/MOR-inactive-rep_1-cutoff90-upper.json"
EXP_REP_PDB="4DKL"
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/analysis/interaction-footprint-analysis
python footprint_summary_evobundle.py $FOOTPRINT_TABLE $EXP_REP_ID $OUTPUT_FILE -intra-pdb $EXP_REP_PDB -no-conserve -upper


FOOTPRINT_TABLE="/scratch/PI/rondror/akma327/DynamicNetworks/results/state-decomposition/residue-resolution/101516_state_decomp_union_wb_freq/inactive_receptors/inactive_state_decomp.txt"
EXP_REP_ID="MOR:inactive:bFNA-antagonist-bound_to_K233:1.21us,Inactive"
OUTPUT_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/interaction-footprint-analysis/residue-resolution-evobundle-input/102216/MOR-inactive-rep_1-cutoff90-lower.json"
EXP_REP_PDB="4DKL"
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/analysis/interaction-footprint-analysis
python footprint_summary_evobundle.py $FOOTPRINT_TABLE $EXP_REP_ID $OUTPUT_FILE -intra-pdb $EXP_REP_PDB -no-conserve -lower



stored.list=[]
cmd.iterate("(byres resi 103 around 4.5 and organic and not resname POPC)","stored.list.append((resi,resn))")
print stored.list


mkdir 050516_NONHB_DEFAULT_HB_3.5_70
cd HB_3.5A_70D
cp * ../050516_NONHB_DEFAULT_HB_3.5_70
cd ../050516_NONHB_DEFAULT_HB_3.5_70
rm ligand_water_hydrogen_bond_result_dict.txt


# Go directly from the single interaction frequency list to the table

# compile to active

DECOMP_FREQ_SUM_EXP_FOLDER_PATH="/scratch/PI/rondror/akma327/DynamicNetworks/results/state-decomposition/single-cond-rep-decomp-freqsum/102516_state_decomp_union_wb_freq/active_receptors"
STATE="Active"
OUTPUT_FILE_PATH="/scratch/PI/rondror/akma327/DynamicNetworks/results/state-decomposition/residue-resolution/102516_state_decomp_union_wb_freq/active_receptors/active_state_decomp_residue_resolution.txt"
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/analysis/state-decomposition
python compile_gpcrdb_state_decomp_unionized_freq.py $DECOMP_FREQ_SUM_EXP_FOLDER_PATH $STATE $OUTPUT_FILE_PATH



DECOMP_FREQ_SUM_EXP_FOLDER_PATH="/scratch/PI/rondror/akma327/DynamicNetworks/results/state-decomposition/single-cond-rep-decomp-freqsum/102516_state_decomp_union_wb_freq/inactive_receptors"
STATE="Inactive"
OUTPUT_FILE_PATH="/scratch/PI/rondror/akma327/DynamicNetworks/results/state-decomposition/residue-resolution/102516_state_decomp_union_wb_freq/inactive_receptors/inactive_state_decomp_residue_resolution.txt"
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/analysis/state-decomposition
python compile_gpcrdb_state_decomp_unionized_freq.py $DECOMP_FREQ_SUM_EXP_FOLDER_PATH $STATE $OUTPUT_FILE_PATH



# Evobundle plots
FOOTPRINT_TABLE="/scratch/PI/rondror/akma327/DynamicNetworks/results/state-decomposition/residue-resolution/102516_state_decomp_union_wb_freq/active_receptors/active_state_decomp_residue_resolution.txt"
EXP_REP_ID="MOR:active:unpublished-rep_1,Active"
OUTPUT_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/interaction-footprint-analysis/residue-resolution-evobundle-input/102516/MOR-active-unpublished-rep_1-cutoff75-lower.json"
EXP_REP_PDB="5C1M"
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/analysis/interaction-footprint-analysis
python footprint_summary_evobundle.py $FOOTPRINT_TABLE $EXP_REP_ID $OUTPUT_FILE -intra-pdb $EXP_REP_PDB -no-conserve -lower -cutoff

FOOTPRINT_TABLE="/scratch/PI/rondror/akma327/DynamicNetworks/results/state-decomposition/residue-resolution/102516_state_decomp_union_wb_freq/active_receptors/active_state_decomp_residue_resolution.txt"
EXP_REP_ID="MOR:active:unpublished-rep_1,Active"
OUTPUT_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/interaction-footprint-analysis/residue-resolution-evobundle-input/102516/MOR-active-unpublished-rep_1-upper.json"
EXP_REP_PDB="5C1M"
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/analysis/interaction-footprint-analysis
python footprint_summary_evobundle.py $FOOTPRINT_TABLE $EXP_REP_ID $OUTPUT_FILE -intra-pdb $EXP_REP_PDB -no-conserve -upper


FOOTPRINT_TABLE="/scratch/PI/rondror/akma327/DynamicNetworks/results/state-decomposition/residue-resolution/102516_state_decomp_union_wb_freq/active_receptors/active_state_decomp_residue_resolution.txt"
EXP_REP_ID="MOR:active-noNb:BU72-nB_interface_restrained:3.0us,Active"
OUTPUT_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/interaction-footprint-analysis/residue-resolution-evobundle-input/102516/Test-MOR-active-rep_1-upper.json"
EXP_REP_PDB="5C1M"
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/analysis/interaction-footprint-analysis
python footprint_summary_evobundle.py $FOOTPRINT_TABLE $EXP_REP_ID $OUTPUT_FILE -intra-pdb $EXP_REP_PDB -no-conserve -upper

FOOTPRINT_TABLE="/scratch/PI/rondror/akma327/DynamicNetworks/results/state-decomposition/residue-resolution/102516_state_decomp_union_wb_freq/active_receptors/active_state_decomp_residue_resolution.txt"
EXP_REP_ID="MOR:active-noNb:BU72-nB_interface_restrained:3.0us,Active"
OUTPUT_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/interaction-footprint-analysis/residue-resolution-evobundle-input/102516/Test-MOR-active-rep_1-lower.json"
EXP_REP_PDB="5C1M"
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/analysis/interaction-footprint-analysis
python footprint_summary_evobundle.py $FOOTPRINT_TABLE $EXP_REP_ID $OUTPUT_FILE -intra-pdb $EXP_REP_PDB -no-conserve -lower


FOOTPRINT_TABLE="/scratch/PI/rondror/akma327/DynamicNetworks/results/state-decomposition/residue-resolution/102516_state_decomp_union_wb_freq/active_receptors/active_state_decomp_residue_resolution.txt"
EXP_REP_ID="M2R:active:restrained:prot:Asp2x50:3x49-rep_1,Active"
OUTPUT_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/interaction-footprint-analysis/residue-resolution-evobundle-input/102516/M2R-active-unpublished-rep_1-cutoff90-lower.json"
EXP_REP_PDB="4MQS"
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/analysis/interaction-footprint-analysis
python footprint_summary_evobundle.py $FOOTPRINT_TABLE $EXP_REP_ID $OUTPUT_FILE -intra-pdb $EXP_REP_PDB -no-conserve -lower -cutoff .9



FOOTPRINT_TABLE="/scratch/PI/rondror/akma327/DynamicNetworks/results/state-decomposition/residue-resolution/102516_state_decomp_union_wb_freq/inactive_receptors/inactive_state_decomp_residue_resolution.txt"
EXP_REP_ID="B2AR:inactive:carazalol:10us:D79-,D130-,Inactive"
OUTPUT_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/interaction-footprint-analysis/residue-resolution-evobundle-input/102516/B2AR-inactive-carazalol-cond12-cutoff90-lower.json"
EXP_REP_PDB="2RH1"
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/analysis/interaction-footprint-analysis
python footprint_summary_evobundle.py $FOOTPRINT_TABLE $EXP_REP_ID $OUTPUT_FILE -intra-pdb $EXP_REP_PDB -no-conserve -lower -cutoff 0.9




# 102616 Meeting with AJ

# Try 50 percent cutoff

#MOR-active
FOOTPRINT_TABLE="/scratch/PI/rondror/akma327/DynamicNetworks/results/state-decomposition/residue-resolution/102516_state_decomp_union_wb_freq/active_receptors/active_state_decomp_residue_resolution.txt"
EXP_REP_ID="MOR:active-noNb:BU72-nB_interface_restrained:3.0us,Active"
OUTPUT_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/interaction-footprint-analysis/residue-resolution-evobundle-input/102516/MOR-active-rep_1-cutoff50-lower-inter.json"
EXP_REP_PDB="5C1M"
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/analysis/interaction-footprint-analysis
python footprint_summary_evobundle.py $FOOTPRINT_TABLE $EXP_REP_ID $OUTPUT_FILE -intra-pdb $EXP_REP_PDB -no-conserve -lower -cutoff 0.5 -inter


# MOR-inactive
FOOTPRINT_TABLE="/scratch/PI/rondror/akma327/DynamicNetworks/results/state-decomposition/residue-resolution/102516_state_decomp_union_wb_freq/inactive_receptors/inactive_state_decomp_residue_resolution.txt"
EXP_REP_ID="MOR:inactive:bFNA-antagonist-bound_to_K233:1.21us,Inactive"
OUTPUT_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/interaction-footprint-analysis/residue-resolution-evobundle-input/102516/MOR-inactive-rep_1-cutoff50-lower-inter.json"
EXP_REP_PDB="4DKL"
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/analysis/interaction-footprint-analysis
python footprint_summary_evobundle.py $FOOTPRINT_TABLE $EXP_REP_ID $OUTPUT_FILE -intra-pdb $EXP_REP_PDB -no-conserve -lower -cutoff 0.5 -inter


# B2AR-active-G
FOOTPRINT_TABLE="/scratch/PI/rondror/akma327/DynamicNetworks/results/state-decomposition/residue-resolution/102516_state_decomp_union_wb_freq/active_receptors/active_state_decomp_residue_resolution.txt"
EXP_REP_ID="B2AR:active:short-isoform-B2AR-heterotrimeric-Gs:no_ligand:5us:with_membrane,Active"
OUTPUT_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/interaction-footprint-analysis/residue-resolution-evobundle-input/102516/B2AR-active-Gs-cond65-cutoff50-lower-inter.json"
EXP_REP_PDB="3SN6"
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/analysis/interaction-footprint-analysis
python footprint_summary_evobundle.py $FOOTPRINT_TABLE $EXP_REP_ID $OUTPUT_FILE -intra-pdb $EXP_REP_PDB -no-conserve -lower -cutoff 0.5 -inter


# B2AR-inactive
FOOTPRINT_TABLE="/scratch/PI/rondror/akma327/DynamicNetworks/results/state-decomposition/residue-resolution/102516_state_decomp_union_wb_freq/inactive_receptors/inactive_state_decomp_residue_resolution.txt"
EXP_REP_ID="B2AR:inactive:carazalol:10us:D79-,D130-,Inactive"
OUTPUT_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/interaction-footprint-analysis/residue-resolution-evobundle-input/102516/B2AR-inactive-carazalol-cond12-cutoff50-lower-inter.json"
EXP_REP_PDB="2RH1"
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/analysis/interaction-footprint-analysis
python footprint_summary_evobundle.py $FOOTPRINT_TABLE $EXP_REP_ID $OUTPUT_FILE -intra-pdb $EXP_REP_PDB -no-conserve -lower -cutoff 0.5 -inter


#102716

DECOMP_FREQ_SUM_EXP_FOLDER_PATH="/scratch/PI/rondror/akma327/DynamicNetworks/results/state-decomposition/single-cond-rep-decomp-freqsum/102716_state_decomp_union_wb_freq/active_receptors"
STATE="Active"
OUTPUT_FILE_PATH="/scratch/PI/rondror/akma327/DynamicNetworks/results/state-decomposition/residue-resolution/102816_state_decomp_union_wb_freq/active_receptors/active_state_decomp_residue_resolution.txt"
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/analysis/state-decomposition
python compile_gpcrdb_state_decomp_unionized_freq.py $DECOMP_FREQ_SUM_EXP_FOLDER_PATH $STATE $OUTPUT_FILE_PATH



DECOMP_FREQ_SUM_EXP_FOLDER_PATH="/scratch/PI/rondror/akma327/DynamicNetworks/results/state-decomposition/single-cond-rep-decomp-freqsum/102716_state_decomp_union_wb_freq/inactive_receptors"
STATE="Inactive"
OUTPUT_FILE_PATH="/scratch/PI/rondror/akma327/DynamicNetworks/results/state-decomposition/residue-resolution/102816_state_decomp_union_wb_freq/inactive_receptors/inactive_state_decomp_residue_resolution.txt"
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/analysis/state-decomposition
python compile_gpcrdb_state_decomp_unionized_freq.py $DECOMP_FREQ_SUM_EXP_FOLDER_PATH $STATE $OUTPUT_FILE_PATH



# 102916

TOP_PATH="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/MOR-active-noNb-BU72-nature2015/condition-nb-interface-restrained-BU72/step5_assembly.pdb"
OUTPUT_FILE_PATH="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/MOR-active-noNb-BU72-nature2015/condition-nb-interface-restrained-BU72/test_static.txt"
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/interaction-geometry
python StaticInteractionCalculator.py $TOP_PATH $OUTPUT_FILE_PATH -interlist -wb



# 110316

stored.list=[]
cmd.iterate("(byres resi 84 around 4.5 and organic and not resname POPC)","stored.list.append((resi,resn))")
print stored.list



#110316

DECOMP_FREQ_SUM_EXP_FOLDER_PATH="/scratch/PI/rondror/akma327/DynamicNetworks/results/state-decomposition/single-cond-rep-decomp-freqsum/110416_state_decomp_union_wb_freq/active_receptors"
STATE="Active"
OUTPUT_FILE_PATH="/scratch/PI/rondror/akma327/DynamicNetworks/results/state-decomposition/residue-resolution/110416_lax_angle_state_decomp_union_wb_freq/active_receptors/active_state_decomp_residue_resolution.txt"
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/analysis/state-decomposition
python compile_gpcrdb_state_decomp_unionized_freq.py $DECOMP_FREQ_SUM_EXP_FOLDER_PATH $STATE $OUTPUT_FILE_PATH



DECOMP_FREQ_SUM_EXP_FOLDER_PATH="/scratch/PI/rondror/akma327/DynamicNetworks/results/state-decomposition/single-cond-rep-decomp-freqsum/110416_state_decomp_union_wb_freq/inactive_receptors"
STATE="Inactive"
OUTPUT_FILE_PATH="/scratch/PI/rondror/akma327/DynamicNetworks/results/state-decomposition/residue-resolution/110416_lax_angle_state_decomp_union_wb_freq/inactive_receptors/inactive_state_decomp_residue_resolution.txt"
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/analysis/state-decomposition
python compile_gpcrdb_state_decomp_unionized_freq.py $DECOMP_FREQ_SUM_EXP_FOLDER_PATH $STATE $OUTPUT_FILE_PATH




# 110316 Venn Diagram Comparison

POLAR_NETWORK_JSON1="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/interaction-footprint-analysis/residue-resolution-evobundle-input/110416_lower_freq50_inter/active_receptors/B2AR:active:long-isoform-B2AR-heterotrimeric-Gs:no_ligand:10us:with_membrane.json"
POLAR_NETWORK_JSON2="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/interaction-footprint-analysis/residue-resolution-evobundle-input/110416_lower_freq50_inter/inactive_receptors/B2AR:inactive:carazalol:10us:D79-,D130-,Inactive.json"
VENN_DIAGRAM_SECTOR="-first"
OUTPUT_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/interaction-footprint-analysis/residue-resolution-evobundle-input/110416_lower_freq50_inter/intersect/active-b2ar-only.json"
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/analysis/interaction-footprint-analysis
python venn_diagram_compare_polar_networks.py $POLAR_NETWORK_JSON1 $POLAR_NETWORK_JSON2 $VENN_DIAGRAM_SECTOR $OUTPUT_FILE

POLAR_NETWORK_JSON1="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/interaction-footprint-analysis/residue-resolution-evobundle-input/110416_lower_freq50_inter/active_receptors/B2AR:active:long-isoform-B2AR-heterotrimeric-Gs:no_ligand:10us:with_membrane.json"
POLAR_NETWORK_JSON2="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/interaction-footprint-analysis/residue-resolution-evobundle-input/110416_lower_freq50_inter/inactive_receptors/B2AR:inactive:carazalol:10us:D79-,D130-,Inactive.json"
VENN_DIAGRAM_SECTOR="-second"
OUTPUT_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/interaction-footprint-analysis/residue-resolution-evobundle-input/110416_lower_freq50_inter/intersect/inactive-b2ar-only.json"
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/analysis/interaction-footprint-analysis
python venn_diagram_compare_polar_networks.py $POLAR_NETWORK_JSON1 $POLAR_NETWORK_JSON2 $VENN_DIAGRAM_SECTOR $OUTPUT_FILE


POLAR_NETWORK_JSON1="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/interaction-footprint-analysis/residue-resolution-evobundle-input/110416_lower_freq50_inter/active_receptors/B2AR:active:long-isoform-B2AR-heterotrimeric-Gs:no_ligand:10us:with_membrane.json"
POLAR_NETWORK_JSON2="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/interaction-footprint-analysis/residue-resolution-evobundle-input/110416_lower_freq50_inter/inactive_receptors/B2AR:inactive:carazalol:10us:D79-,D130-,Inactive.json"
VENN_DIAGRAM_SECTOR="-intersect1"
OUTPUT_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/interaction-footprint-analysis/residue-resolution-evobundle-input/110416_lower_freq50_inter/intersect/b2ar-both.json"
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/analysis/interaction-footprint-analysis
python venn_diagram_compare_polar_networks.py $POLAR_NETWORK_JSON1 $POLAR_NETWORK_JSON2 $VENN_DIAGRAM_SECTOR $OUTPUT_FILE



# 110716

# Intersecting MOR and B2AR active and inactives

POLAR_NETWORK_JSON1="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/interaction-footprint-analysis/residue-resolution-evobundle-input/110716_lower_freq50_inter/active_receptors/MOR:active-noNb:BU72-nB_interface_restrained:3.0us.json"
POLAR_NETWORK_JSON2="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/interaction-footprint-analysis/residue-resolution-evobundle-input/110716_lower_freq50_inter/active_receptors/B2AR:active:long-isoform-B2AR-heterotrimeric-Gs:no_ligand:50us:with_membrane.json"
VENN_DIAGRAM_SECTOR="-intersect1"
OUTPUT_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/interaction-footprint-analysis/residue-resolution-evobundle-input/110716_lower_freq50_inter/110716_intersect/mor-b2ar-active-both.json"
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/analysis/interaction-footprint-analysis
python venn_diagram_compare_polar_networks.py $POLAR_NETWORK_JSON1 $POLAR_NETWORK_JSON2 $VENN_DIAGRAM_SECTOR $OUTPUT_FILE


POLAR_NETWORK_JSON1="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/interaction-footprint-analysis/residue-resolution-evobundle-input/110716_lower_freq50_inter/inactive_receptors/MOR:inactive:bFNA-antagonist-bound_to_K233:1.42us.json"
POLAR_NETWORK_JSON2="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/interaction-footprint-analysis/residue-resolution-evobundle-input/110716_lower_freq50_inter/inactive_receptors/B2AR:inactive:carazalol:10us:D79-,D130-,Inactive.json"
VENN_DIAGRAM_SECTOR="-intersect1"
OUTPUT_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/interaction-footprint-analysis/residue-resolution-evobundle-input/110716_lower_freq50_inter/110716_intersect/mor-b2ar-inactive-both.json"
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/analysis/interaction-footprint-analysis
python venn_diagram_compare_polar_networks.py $POLAR_NETWORK_JSON1 $POLAR_NETWORK_JSON2 $VENN_DIAGRAM_SECTOR $OUTPUT_FILE


# Intersecting active and inactive

POLAR_NETWORK_JSON1="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/interaction-footprint-analysis/residue-resolution-evobundle-input/110716_lower_freq50_inter/110716_intersect/mor-b2ar-active-both.json"
POLAR_NETWORK_JSON2="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/interaction-footprint-analysis/residue-resolution-evobundle-input/110716_lower_freq50_inter/110716_intersect/mor-b2ar-inactive-both.json"
VENN_DIAGRAM_SECTOR="-first"
OUTPUT_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/interaction-footprint-analysis/residue-resolution-evobundle-input/110716_lower_freq50_inter/110716_intersect/active-only.json"
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/analysis/interaction-footprint-analysis
python venn_diagram_compare_polar_networks.py $POLAR_NETWORK_JSON1 $POLAR_NETWORK_JSON2 $VENN_DIAGRAM_SECTOR $OUTPUT_FILE


POLAR_NETWORK_JSON1="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/interaction-footprint-analysis/residue-resolution-evobundle-input/110716_lower_freq50_inter/110716_intersect/mor-b2ar-active-both.json"
POLAR_NETWORK_JSON2="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/interaction-footprint-analysis/residue-resolution-evobundle-input/110716_lower_freq50_inter/110716_intersect/mor-b2ar-inactive-both.json"
VENN_DIAGRAM_SECTOR="-second"
OUTPUT_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/interaction-footprint-analysis/residue-resolution-evobundle-input/110716_lower_freq50_inter/110716_intersect/inactive-only.json"
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/analysis/interaction-footprint-analysis
python venn_diagram_compare_polar_networks.py $POLAR_NETWORK_JSON1 $POLAR_NETWORK_JSON2 $VENN_DIAGRAM_SECTOR $OUTPUT_FILE


POLAR_NETWORK_JSON1="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/interaction-footprint-analysis/residue-resolution-evobundle-input/110716_lower_freq50_inter/110716_intersect/mor-b2ar-active-both.json"
POLAR_NETWORK_JSON2="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/interaction-footprint-analysis/residue-resolution-evobundle-input/110716_lower_freq50_inter/110716_intersect/mor-b2ar-inactive-both.json"
VENN_DIAGRAM_SECTOR="-intersect1"
OUTPUT_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/interaction-footprint-analysis/residue-resolution-evobundle-input/110716_lower_freq50_inter/110716_intersect/both.json"
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/analysis/interaction-footprint-analysis
python venn_diagram_compare_polar_networks.py $POLAR_NETWORK_JSON1 $POLAR_NETWORK_JSON2 $VENN_DIAGRAM_SECTOR $OUTPUT_FILE





#110916

DECOMP_FREQ_SUM_EXP_FOLDER_PATH="/scratch/PI/rondror/akma327/DynamicNetworks/results/state-decomposition/single-cond-rep-decomp-freqsum/110916_state_decomp_union_wb_freq/active_receptors"
STATE="Active"
OUTPUT_FILE_PATH="/scratch/PI/rondror/akma327/DynamicNetworks/results/state-decomposition/residue-resolution/110916_state_decomp_union_wb_freq/active_receptors/active_state_decomp_residue_resolution.txt"
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/analysis/state-decomposition
python compile_gpcrdb_state_decomp_unionized_freq.py $DECOMP_FREQ_SUM_EXP_FOLDER_PATH $STATE $OUTPUT_FILE_PATH



DECOMP_FREQ_SUM_EXP_FOLDER_PATH="/scratch/PI/rondror/akma327/DynamicNetworks/results/state-decomposition/single-cond-rep-decomp-freqsum/110916_state_decomp_union_wb_freq/inactive_receptors"
STATE="Inactive"
OUTPUT_FILE_PATH="/scratch/PI/rondror/akma327/DynamicNetworks/results/state-decomposition/residue-resolution/110916_state_decomp_union_wb_freq/inactive_receptors/inactive_state_decomp_residue_resolution.txt"
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/analysis/state-decomposition
python compile_gpcrdb_state_decomp_unionized_freq.py $DECOMP_FREQ_SUM_EXP_FOLDER_PATH $STATE $OUTPUT_FILE_PATH



#111416

EXP_COND_LABEL="B2AR:inactive:carazalol:cond1:15us:D79+,D130-"
STATE_DECOMP_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutputDictionary/B2AR-inactive-carazalol-cell2013b/condition-12/rep_1/050516_NONHB_DEFAULT_HB_3.5_70/state_classification.txt"
OUTPUT_FILE="B2AR:inactive:carazalol:cond1:15us:D79+,D130-.png"
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/analysis/state-decomposition
python pi_chart_state_decomposition.py $EXP_COND_LABEL $STATE_DECOMP_FILE $OUTPUT_FILE


# B2ar active
EXP_COND_LABEL="B2AR:inactive:carazalol:cond1:15us:D79+,D130-"
STATE_DECOMP_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutputDictionary/B2AR-active-Gs-BI-science2015/condition-65/rep_1/050516_NONHB_DEFAULT_HB_3.5_70/state_classification.txt"
OUTPUT_FILE="B2AR:inactive:carazalol:cond1:15us:D79+,D130-.png"
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/analysis/state-decomposition
python pi_chart_state_decomposition.py $EXP_COND_LABEL $STATE_DECOMP_FILE $OUTPUT_FILE


EXP_COND_LABEL="B2AR:inactive:carazalol:cond1:15us:D79+,D130-"
STATE_DECOMP_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutputDictionary/B2AR-active-Gs-BI-science2015/condition-22/rep_1/050516_NONHB_DEFAULT_HB_3.5_70/state_classification.txt"
OUTPUT_FILE="B2AR:inactive:carazalol:cond1:15us:D79+,D130-.png"
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/analysis/state-decomposition
python pi_chart_state_decomposition.py $EXP_COND_LABEL $STATE_DECOMP_FILE $OUTPUT_FILE


EXP_COND_LABEL="B2AR:inactive:carazalol:cond1:15us:D79+,D130-"
STATE_DECOMP_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutputDictionary/B2AR-active-Gs-BI-science2015/condition-23/rep_1/050516_NONHB_DEFAULT_HB_3.5_70/state_classification.txt"
OUTPUT_FILE="B2AR:inactive:carazalol:cond1:15us:D79+,D130-.png"
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/analysis/state-decomposition
python pi_chart_state_decomposition.py $EXP_COND_LABEL $STATE_DECOMP_FILE $OUTPUT_FILE


EXP_COND_LABEL="B2AR:inactive:carazalol:cond1:15us:D79+,D130-"
STATE_DECOMP_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutputDictionary/B2AR-active-Gs-BI-science2015/condition-24/rep_1/050516_NONHB_DEFAULT_HB_3.5_70/state_classification.txt"
OUTPUT_FILE="B2AR:inactive:carazalol:cond1:15us:D79+,D130-.png"
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/analysis/state-decomposition
python pi_chart_state_decomposition.py $EXP_COND_LABEL $STATE_DECOMP_FILE $OUTPUT_FILE


# MOR-active

EXP_COND_LABEL="B2AR:inactive:carazalol:cond1:15us:D79+,D130-"
STATE_DECOMP_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutputDictionary/MOR-active-noNb-BU72-nature2015/condition-nb-interface-restrained-BU72/rep_1/050516_NONHB_DEFAULT_HB_3.5_70/state_classification.txt"
OUTPUT_FILE="B2AR:inactive:carazalol:cond1:15us:D79+,D130-.png"
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/analysis/state-decomposition
python pi_chart_state_decomposition.py $EXP_COND_LABEL $STATE_DECOMP_FILE $OUTPUT_FILE



EXP_COND_LABEL="B2AR:inactive:carazalol:cond1:15us:D79+,D130-"
STATE_DECOMP_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutputDictionary/MOR-active-noNb-BU72-nature2015/condition-nb-interface-restrained-BU72/rep_2/050516_NONHB_DEFAULT_HB_3.5_70/state_classification.txt"
OUTPUT_FILE="B2AR:inactive:carazalol:cond1:15us:D79+,D130-.png"
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/analysis/state-decomposition
python pi_chart_state_decomposition.py $EXP_COND_LABEL $STATE_DECOMP_FILE $OUTPUT_FILE



EXP_COND_LABEL="B2AR:inactive:carazalol:cond1:15us:D79+,D130-"
STATE_DECOMP_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutputDictionary/MOR-active-noNb-BU72-nature2015/condition-nb-interface-restrained-BU72/rep_3/050516_NONHB_DEFAULT_HB_3.5_70/state_classification.txt"
OUTPUT_FILE="B2AR:inactive:carazalol:cond1:15us:D79+,D130-.png"
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/analysis/state-decomposition
python pi_chart_state_decomposition.py $EXP_COND_LABEL $STATE_DECOMP_FILE $OUTPUT_FILE



# MOR-inactive

EXP_COND_LABEL="B2AR:inactive:carazalol:cond1:15us:D79+,D130-"
STATE_DECOMP_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutputDictionary/MOR-inactive-bFNA-nature2015/condition-bFNA-bound/rep_1/050516_NONHB_DEFAULT_HB_3.5_70/state_classification.txt"
OUTPUT_FILE="B2AR:inactive:carazalol:cond1:15us:D79+,D130-.png"
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/analysis/state-decomposition
python pi_chart_state_decomposition.py $EXP_COND_LABEL $STATE_DECOMP_FILE $OUTPUT_FILE



EXP_COND_LABEL="B2AR:inactive:carazalol:cond1:15us:D79+,D130-"
STATE_DECOMP_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutputDictionary/MOR-inactive-bFNA-nature2015/condition-bFNA-bound/rep_1/050516_NONHB_DEFAULT_HB_3.5_70/state_classification.txt"
OUTPUT_FILE="B2AR:inactive:carazalol:cond1:15us:D79+,D130-.png"
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/analysis/state-decomposition
python pi_chart_state_decomposition.py $EXP_COND_LABEL $STATE_DECOMP_FILE $OUTPUT_FILE



EXP_COND_LABEL="B2AR:inactive:carazalol:cond1:15us:D79+,D130-"
STATE_DECOMP_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutputDictionary/MOR-inactive-bFNA-nature2015/condition-bFNA-bound/rep_1/050516_NONHB_DEFAULT_HB_3.5_70/state_classification.txt"
OUTPUT_FILE="B2AR:inactive:carazalol:cond1:15us:D79+,D130-.png"
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/analysis/state-decomposition
python pi_chart_state_decomposition.py $EXP_COND_LABEL $STATE_DECOMP_FILE $OUTPUT_FILE







TOP_PATH="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/M2R-inactive-QNB-nature2012/condition-A/step5_assembly.pdb"
TRAJ_PATH="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/M2R-inactive-QNB-nature2012/condition-A/rep_1/Prod_0/Prod_0_rewrapped.dcd"
OUTPUT_DIRECTORY_PATH="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/M2R-inactive-QNB-nature2012/condition-A/rep_1/Prod_0/HB_3.5A_70D"
OUTPUT_FILE_IDENTIFIER="residue_water_hydrogen_bond_result.txt"
WATER_HBOND_FILE_PATH="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/M2R-inactive-QNB-nature2012/condition-A/rep_1/Prod_0/HB_3.5A_70D/hydrogen_bond_water_result.txt"
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/interaction-geometry
python DynamicInteractionCalculator.py $TRAJ_PATH $TOP_PATH $OUTPUT_DIRECTORY_PATH $OUTPUT_FILE_IDENTIFIER -rw -process $WATER_HBOND_FILE_PATH -stride 1 &


TOP_PATH="/scratch/PI/rondror/akma327/DynamicNetworks/data/StaticNetworks/pdb-files/4EIY_edited_Hadded.pdb"
OUTPUT_FILE_PATH="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/residue-water-conservation/111916/tables/4EIY.txt"
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/interaction-geometry
python StaticInteractionCalculator.py $TOP_PATH $OUTPUT_FILE_PATH -interlist -rw



#112316

1U19 - 3x32 - 117 - RET
3VW7 - 3x32 - 128
4BVN - 3x32 - 121 - P32
4EIY - 3x32 - 84 - ZMA
4N6H - 3x32 - 128 - EJ4
4PHU - 3x32 - 86 - 
4XNV - 3x32 - 131 -
5C1M - 3x32 - 147 - 4VO
D4DR - 3x32 - 115 - NEMO
5IU4 - 3x32 - 84 - ZMA
5K2C - 3x32 - 84 - ZMA


stored.list=[]
cmd.iterate("(byres resi 84 around 4.5 and organic and not resname POPC)","stored.list.append((resi,resn))")
print stored.list


python
import glob
gold = range(127)
h = glob.glob("Prod*/HB*/ligand*")
hx = [int(a.split("/")[0].split("_")[1]) for a in h]
for g in gold:
	if(g not in hx): print(g)


python
import os 
d = os.system("grep nFrames Prod*/HB*/lb* >temp.txt")
f = open("temp.txt", 'r')
frag_len = {}

for line in f:
	linfo = line.strip().split(":")
	nFrame = int(linfo[-1])
	frame = int(linfo[0].split("/")[0].split("_")[1])
	frag_len[frame] = nFrame

gold = range(48)
for g in gold:
	print(g, frag_len[g])




/scratch/PI/rondror/MD_simulations/amber/US28/4xt1/4xt1_A_B_wCLR_100ns_equil/rep1

/scratch/PI/rondror/MD_simulations/amber/US28/4xt1/4xt1_A_B_wCLR_100ns_equil/rep2

/scratch/PI/rondror/MD_simulations/amber/US28/4xt1/4xt1_A_B_wCLR_100ns_equil/rep3




#112416

DECOMP_FREQ_SUM_EXP_FOLDER_PATH="/scratch/PI/rondror/akma327/DynamicNetworks/results/state-decomposition/single-cond-rep-decomp-freqsum/112616_state_decomp_union_wb_freq/active_receptors"
STATE="Active"
OUTPUT_FILE_PATH="/scratch/PI/rondror/akma327/DynamicNetworks/results/state-decomposition/residue-resolution/112616_state_decomp_union_wb_freq/active_receptors/active_state_decomp_residue_resolution.txt"
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/analysis/state-decomposition
python compile_gpcrdb_state_decomp_unionized_freq.py $DECOMP_FREQ_SUM_EXP_FOLDER_PATH $STATE $OUTPUT_FILE_PATH



DECOMP_FREQ_SUM_EXP_FOLDER_PATH="/scratch/PI/rondror/akma327/DynamicNetworks/results/state-decomposition/single-cond-rep-decomp-freqsum/112616_state_decomp_union_wb_freq/inactive_receptors"
STATE="Inactive"
OUTPUT_FILE_PATH="/scratch/PI/rondror/akma327/DynamicNetworks/results/state-decomposition/residue-resolution/112616_state_decomp_union_wb_freq/inactive_receptors/inactive_state_decomp_residue_resolution.txt"
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/analysis/state-decomposition
python compile_gpcrdb_state_decomp_unionized_freq.py $DECOMP_FREQ_SUM_EXP_FOLDER_PATH $STATE $OUTPUT_FILE_PATH




### 

# D4R-inactive
/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/D4R-inactive-nemanopride-unpublished/condition-antagonist-bound



#12/13/16

INTERACTION_DICT="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutputDictionary/MOR-active-noNb-BU72-nature2015/condition-nb-interface-restrained-BU72/rep_1/050516_NONHB_DEFAULT_HB_3.5_70/water_bond_result_dict.txt"
PDB_CODE="5C1M"
OUTPUT_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/mor-active-rep1-wb.txt"
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/analysis/interaction-footprint-analysis/old
python simulation_evobundle.py $INTERACTION_DICT $PDB_CODE $OUTPUT_FILE gpcrdb


# 1/5/17

EXP_COND_DICT_FOLDER="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutputDictionary/MOR-active-noNb-BU72-nature2015/condition-nb-interface-restrained-BU72/rep_1/050516_NONHB_DEFAULT_HB_3.5_70"
EXP_COND_PDB="5C1M"
OUTPUT_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/interaction-footprint-analysis/simulation-evobundle/flareplot-dataset/MOR-active-noNb-BU72-rep_1.json"
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/analysis/interaction-footprint-analysis
python simulation_evobundle.py $EXP_COND_DICT_FOLDER $EXP_COND_PDB $OUTPUT_FILE gpcrdb

EXP_COND_DICT_FOLDER="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutputDictionary/MOR-active-noNb-BU72-nature2015/condition-nb-interface-restrained-BU72/rep_2/050516_NONHB_DEFAULT_HB_3.5_70"
EXP_COND_PDB="5C1M"
OUTPUT_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/interaction-footprint-analysis/simulation-evobundle/flareplot-dataset/MOR-active-noNb-BU72-rep_2.json"
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/analysis/interaction-footprint-analysis
python simulation_evobundle.py $EXP_COND_DICT_FOLDER $EXP_COND_PDB $OUTPUT_FILE gpcrdb


EXP_COND_DICT_FOLDER="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutputDictionary/MOR-active-noNb-BU72-nature2015/condition-nb-interface-restrained-BU72/rep_3/050516_NONHB_DEFAULT_HB_3.5_70"
EXP_COND_PDB="5C1M"
OUTPUT_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/interaction-footprint-analysis/simulation-evobundle/flareplot-dataset/MOR-active-noNb-BU72-rep_3.json"
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/analysis/interaction-footprint-analysis
python simulation_evobundle.py $EXP_COND_DICT_FOLDER $EXP_COND_PDB $OUTPUT_FILE gpcrdb



# 1/23/17

atom_selection0 = "4dkl_sim"
atom_selection1 = "4kdl_exp"

set sel0 [atomselect 0 "protein and name CA and resid 64 to 128"]
set sel1 [atomselect 1 "protein and name CA and resid 64 to 128"]
set M [measure fit $sel0 $sel1]
$sel0 move $M


{-0.44531047344207764 -0.8938724994659424 0.051871005445718765 -24.749080657958984} {0.025292454287409782 -0.07046689838171005 -0.9971933960914612 -3.8620123863220215} {0.8950189352035522 -0.4427487254142761 0.05398787558078766 -11.739592552185059} {0.0 0.0 0.0 1.0}


TOP_PATH="/scratch/PI/rondror/akma327/DynamicNetworks/data/StaticNetworks/pdb-files/4EIY_edited_Hadded.pdb"
OUTPUT_FILE_PATH="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/ligand-wetness/highres_conserved_ligand_interactions/012617/4EIY.txt"
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/interaction-geometry
python StaticInteractionCalculator.py $TOP_PATH $OUTPUT_FILE_PATH -interlist -lwb -lwb2 -ligand ZMA





#012617

1U19 - 3x32 - 117 - RET
3VW7 - 3x32 - 128
4BVN - 3x32 - 121 - P32
4EIY - 3x32 - 84 - ZMA
4N6H - 3x32 - 128 - EJ4
4PHU - 3x32 - 86 - 
4XNV - 3x32 - 131 -
5C1M - 3x32 - 147 - 4VO
D4DR - 3x32 - 115 - NEMO
5IU4 - 3x32 - 84 - ZMA
5K2C - 3x32 - 84 - ZMA


stored.list=[]
cmd.iterate("(byres resi 128 around 4.5 and organic and not resname POPC)","stored.list.append((resi,resn))")
print stored.list



#021517

TOP_PATH="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-inactive-carazalol-cell2013b/condition-12/step5_assembly.mae"
TRAJ_PATH="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-inactive-carazalol-cell2013b/condition-12/rep_1/Prod_0/Prod_0_rewrapped.dcd"
OUTPUT_DIRECTORY_PATH="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-inactive-carazalol-cell2013b/condition-12/rep_1/Prod_0/HB_3.5A_70D"
OUTPUT_FILE_IDENTIFIER="ligand_water_bond_result_debug.txt"
LIGAND_WATER_HBOND_FILE_PATH="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-inactive-carazalol-cell2013b/condition-12/rep_1/Prod_0/HB_3.5A_70D/ligand_hydrogen_bond_water_result.txt"
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/interaction-geometry
python DynamicInteractionCalculator.py $TRAJ_PATH $TOP_PATH $OUTPUT_DIRECTORY_PATH $OUTPUT_FILE_IDENTIFIER -lwb -process $LIGAND_WATER_HBOND_FILE_PATH -stride 1 -chain A -ligand CAU 



# Recompiling unionized tables with ligand-water interactions corrected. 
DECOMP_FREQ_SUM_EXP_FOLDER_PATH="/scratch/PI/rondror/akma327/DynamicNetworks/results/state-decomposition/single-cond-rep-decomp-freqsum/112616_state_decomp_union_wb_freq/wb_wb2/active_receptors"
STATE="Active"
OUTPUT_FILE_PATH="/scratch/PI/rondror/akma327/DynamicNetworks/results/state-decomposition/residue-resolution/112616_state_decomp_union_wb_freq/wb_wb2/active_receptors/active_state_decomp_residue_resolution.txt"
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/analysis/state-decomposition
python compile_gpcrdb_state_decomp_unionized_freq.py $DECOMP_FREQ_SUM_EXP_FOLDER_PATH $STATE $OUTPUT_FILE_PATH


DECOMP_FREQ_SUM_EXP_FOLDER_PATH="/scratch/PI/rondror/akma327/DynamicNetworks/results/state-decomposition/single-cond-rep-decomp-freqsum/112616_state_decomp_union_wb_freq/wb_wb2/inactive_receptors"
STATE="Inactive"
OUTPUT_FILE_PATH="/scratch/PI/rondror/akma327/DynamicNetworks/results/state-decomposition/residue-resolution/112616_state_decomp_union_wb_freq/wb_wb2/inactive_receptors/inactive_state_decomp_residue_resolution.txt"
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/analysis/state-decomposition
python compile_gpcrdb_state_decomp_unionized_freq.py $DECOMP_FREQ_SUM_EXP_FOLDER_PATH $STATE $OUTPUT_FILE_PATH



PDB_CODE="2RH1"
EXP_REP_DICT_PATH="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutputDictionary/B2AR-inactive-carazalol-cell2013b/condition-12/rep_1/050516_NONHB_DEFAULT_HB_3.5_70"
STATE_DECOMP_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutputDictionary/B2AR-inactive-carazalol-cell2013b/condition-12/rep_1/050516_NONHB_DEFAULT_HB_3.5_70/state_classification.txt"
OUTPUT_FILE_PATH="/scratch/PI/rondror/akma327/DynamicNetworks/results/state-decomposition/single-cond-rep-decomp-freqsum/112616_state_decomp_union_wb_freq/lwb/B2AR:inactive:carazalol:10us:D79-,D130-.txt"
POLAR_NETWORK="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/polar-networks/110416/inactive_polar_network.txt"
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/analysis/state-decomposition
python dynamic_inter_dict_to_state_decomp_unionized_freq.py $PDB_CODE $EXP_REP_DICT_PATH $STATE_DECOMP_FILE $OUTPUT_FILE_PATH -chainId 0 -network $POLAR_NETWORK -interlist -lwb

PDB_CODE="2RH1"
EXP_REP_DICT_PATH="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutputDictionary/B2AR-inactive-carazalol-cell2013b/condition-12/rep_1/050516_NONHB_DEFAULT_HB_3.5_70"
STATE_DECOMP_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutputDictionary/B2AR-inactive-carazalol-cell2013b/condition-12/rep_1/050516_NONHB_DEFAULT_HB_3.5_70/state_classification.txt"
OUTPUT_FILE_PATH="/scratch/PI/rondror/akma327/DynamicNetworks/results/state-decomposition/single-cond-rep-decomp-freqsum/112616_state_decomp_union_wb_freq/lwb2/B2AR:inactive:carazalol:10us:D79-,D130-.txt"
POLAR_NETWORK="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/polar-networks/110416/inactive_polar_network.txt"
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/analysis/state-decomposition
python dynamic_inter_dict_to_state_decomp_unionized_freq.py $PDB_CODE $EXP_REP_DICT_PATH $STATE_DECOMP_FILE $OUTPUT_FILE_PATH -chainId 0 -network $POLAR_NETWORK -interlist -lwb2



sed -i 's/112616_state_decomp_union_wb_freq/112616_state_decomp_union_wb_freq\/lwb/g' calc_decomp_union_wb_freq_batch*.sbatch
sed -i 's/-wb -wb2 -lwb -lwb2/-lwb/g' calc_decomp_union_wb_freq_batch*.sbatch


sed -i 's/lwb/lwb2/g' calc_decomp_union_wb_freq_batch*.sbatch



# lwb

DECOMP_FREQ_SUM_EXP_FOLDER_PATH="/scratch/PI/rondror/akma327/DynamicNetworks/results/state-decomposition/single-cond-rep-decomp-freqsum/112616_state_decomp_union_wb_freq/lwb/active_receptors"
STATE="Active"
OUTPUT_FILE_PATH="/scratch/PI/rondror/akma327/DynamicNetworks/results/state-decomposition/residue-resolution/112616_state_decomp_union_wb_freq/lwb/active_receptors/active_state_decomp_residue_resolution.txt"
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/analysis/state-decomposition
python compile_gpcrdb_state_decomp_unionized_freq.py $DECOMP_FREQ_SUM_EXP_FOLDER_PATH $STATE $OUTPUT_FILE_PATH


DECOMP_FREQ_SUM_EXP_FOLDER_PATH="/scratch/PI/rondror/akma327/DynamicNetworks/results/state-decomposition/single-cond-rep-decomp-freqsum/112616_state_decomp_union_wb_freq/lwb/inactive_receptors"
STATE="Inactive"
OUTPUT_FILE_PATH="/scratch/PI/rondror/akma327/DynamicNetworks/results/state-decomposition/residue-resolution/112616_state_decomp_union_wb_freq/lwb/inactive_receptors/inactive_state_decomp_residue_resolution.txt"
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/analysis/state-decomposition
python compile_gpcrdb_state_decomp_unionized_freq.py $DECOMP_FREQ_SUM_EXP_FOLDER_PATH $STATE $OUTPUT_FILE_PATH


# lwb2

DECOMP_FREQ_SUM_EXP_FOLDER_PATH="/scratch/PI/rondror/akma327/DynamicNetworks/results/state-decomposition/single-cond-rep-decomp-freqsum/112616_state_decomp_union_wb_freq/lwb2/active_receptors"
STATE="Active"
OUTPUT_FILE_PATH="/scratch/PI/rondror/akma327/DynamicNetworks/results/state-decomposition/residue-resolution/112616_state_decomp_union_wb_freq/lwb2/active_receptors/active_state_decomp_residue_resolution.txt"
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/analysis/state-decomposition
python compile_gpcrdb_state_decomp_unionized_freq.py $DECOMP_FREQ_SUM_EXP_FOLDER_PATH $STATE $OUTPUT_FILE_PATH


DECOMP_FREQ_SUM_EXP_FOLDER_PATH="/scratch/PI/rondror/akma327/DynamicNetworks/results/state-decomposition/single-cond-rep-decomp-freqsum/112616_state_decomp_union_wb_freq/lwb2/inactive_receptors"
STATE="Inactive"
OUTPUT_FILE_PATH="/scratch/PI/rondror/akma327/DynamicNetworks/results/state-decomposition/residue-resolution/112616_state_decomp_union_wb_freq/lwb2/inactive_receptors/inactive_state_decomp_residue_resolution.txt"
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/analysis/state-decomposition
python compile_gpcrdb_state_decomp_unionized_freq.py $DECOMP_FREQ_SUM_EXP_FOLDER_PATH $STATE $OUTPUT_FILE_PATH





# 02/20/17
# Wrote a script that takes weighted average of frequency over columns of replicates of the same experimental condition 

# Residue centric wb, wb2
# Example Active
INPUT_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/results/state-decomposition/residue-resolution/112616_state_decomp_union_wb_freq/wb_wb2/active_receptors/active_state_decomp_residue_resolution.txt"
OUTPUT_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/results/state-decomposition/residue-resolution-combined-rep/112616_state_decomp_union_wb_freq/wb_wb2/active_receptors/active_state_decomp_residue_resolution.txt"
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/general
python weighted_column_average.py $INPUT_FILE $OUTPUT_FILE

# Example Inactive
INPUT_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/results/state-decomposition/residue-resolution/112616_state_decomp_union_wb_freq/wb_wb2/inactive_receptors/inactive_state_decomp_residue_resolution.txt"
OUTPUT_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/results/state-decomposition/residue-resolution-combined-rep/112616_state_decomp_union_wb_freq/wb_wb2/inactive_receptors/inactive_state_decomp_residue_resolution.txt"
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/general
python weighted_column_average.py $INPUT_FILE $OUTPUT_FILE







# 02/24/17

PDB_CODE="4MQS"
EXP_REP_DICT_PATH="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutputDictionary/M2R-active-restrained-unpublished/condition-prot-asp2x50-3x49/rep_1/050516_NONHB_DEFAULT_HB_3.5_70"
STATE_DECOMP_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutputDictionary/M2R-active-restrained-unpublished/condition-prot-asp2x50-3x49/rep_1/050516_NONHB_DEFAULT_HB_3.5_70/state_classification.txt"
OUTPUT_FILE_PATH="/scratch/PI/rondror/akma327/DynamicNetworks/results/non-state-decomposition/M2R:active:restrained:prot:Asp2x50:3x49-rep_1.txt"
POLAR_NETWORK="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/polar-networks/110416/active_polar_network.txt"
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/analysis/state-decomposition
python dynamic_inter_dict_to_non_state_decomp_unionized_freq.py $PDB_CODE $EXP_REP_DICT_PATH $STATE_DECOMP_FILE $OUTPUT_FILE_PATH -chainId 3 -network $POLAR_NETWORK -interlist -wb -wb2 -lwb -lwb2



PDB_CODE="4DKL"
EXP_REP_DICT_PATH="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutputDictionary/MOR-inactive-bFNA-nature2015/condition-bFNA-bound/rep_2/050516_NONHB_DEFAULT_HB_3.5_70"
STATE_DECOMP_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutputDictionary/MOR-inactive-bFNA-nature2015/condition-bFNA-bound/rep_2/050516_NONHB_DEFAULT_HB_3.5_70/state_classification.txt"
OUTPUT_FILE_PATH="/scratch/PI/rondror/akma327/DynamicNetworks/results/non-state-decomposition/MOR:inactive:bFNA-antagonist-bound_to_K233:1.42us.txt"
POLAR_NETWORK="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/polar-networks/110416/inactive_polar_network.txt"
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/analysis/state-decomposition
python dynamic_inter_dict_to_state_decomp_unionized_freq.py $PDB_CODE $EXP_REP_DICT_PATH $STATE_DECOMP_FILE $OUTPUT_FILE_PATH -chainId 0 -network $POLAR_NETWORK -interlist -wb -wb2 -lwb -lwb2



### Generate non state-decomp batch files 
sed -i 's/results\/state-decomposition/results\/non-state-decomposition/g' *.sbatch
sed -i 's/112616_state_decomp_union_wb_freq/022417_union_wb_freq\/wb_wb2/g' *.sbatch
sed -i 's/$POLAR_NETWORK/$POLAR_NETWORK -nodecomp /g' *.sbatch
sed -i 's/-lwb -lwb2//g' *.sbatch


PDB_CODE="4MQS"
EXP_REP_DICT_PATH="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutputDictionary/M2R-active-unrestrained-unpublished/condition-prot-asp2x50-3x49/rep_1/050516_NONHB_DEFAULT_HB_3.5_70"
STATE_DECOMP_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutputDictionary/M2R-active-unrestrained-unpublished/condition-prot-asp2x50-3x49/rep_1/050516_NONHB_DEFAULT_HB_3.5_70/state_classification.txt"
OUTPUT_FILE_PATH="/scratch/PI/rondror/akma327/DynamicNetworks/results/non-state-decomposition/single-cond-rep-decomp-freqsum/022417_union_wb_freq/wb_wb2/M2R:active:unrestrained:prot:Asp2x50:3x49-rep_1.txt"
POLAR_NETWORK="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/polar-networks/110416/active_polar_network.txt"
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/analysis/state-decomposition
python dynamic_inter_dict_to_state_decomp_unionized_freq.py $PDB_CODE $EXP_REP_DICT_PATH $STATE_DECOMP_FILE $OUTPUT_FILE_PATH -chainId 3 -network $POLAR_NETWORK -nodecomp  -interlist -wb -wb2


sed -i 's/calc-decomp-union-wb-freq-jobs\/progress/calc-non-decomp-union-wb-freq-jobs\/022417\/wb_wb2\/progress/g' *.sbatch 
sed -i 's/calc-decomp-union-wb-freq-jobs\/error/calc-non-decomp-union-wb-freq-jobs\/022417\/wb_wb2\/error/g' *.sbatch 

sed -i 's/calc-decomp-union-wb-freq-jobs/calc-non-decomp-union-wb-freq-jobs\/022417\/wb_wb2/g' *driver.sh
sed -i 's/calc-decomp-union-wb-freq-jobs/calc-non-decomp-union-wb-freq-jobs\/022417\/lwb/g' *driver.sh
sed -i 's/calc-decomp-union-wb-freq-jobs/calc-non-decomp-union-wb-freq-jobs\/022417\/lwb2/g' *driver.sh



sed -i 's/wb_wb2/lwb/g' *sbatch
sed -i 's/-wb -wb2/-lwb/g' *sbatch


sed -i 's/wb_wb2/lwb2/g' *sbatch
sed -i 's/-wb -wb2/-lwb2/g' *sbatch



### Weeding out data set

mv *unrestrained* unused/
mv *unpublished* unused/
mv D4R* unused/
mv RHO* unused
mv B2AR\:active\:agonist-bound-nanobody-complex\:* unused/

mv *inactive* inactive_receptors/
mv *active* active_receptors/
mv active_receptors/inactive_receptors .



# Joining Active and Inactive residue frequency table. 

join -a1 -a2 -1 1 -2 1 -o 0,1.2,1.3,1.4,1.5,2.2,2.3,2.4,2.5,2.6 -e "NA" active_receptors/active_non_state_decomp_residue_resolution_filtered_NA.txt inactive_receptors/inactive_non_state_decomp_residue_resolution_filtered_NA.txt | sed -e "s/\ /\t/g" > joined_receptors_non_state_decomp_residue_resolution_filtered_NA.txt


# Comparison between static crystal structure and all simulation interactions. 

PDB_CODE="5C1M"
EXP_REP_DICT_PATH="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutputDictionary/MOR-active-noNb-BU72-nature2015/condition-nb-interface-restrained-BU72/rep_1/050516_NONHB_DEFAULT_HB_3.5_70"
STATE_DECOMP_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutputDictionary/MOR-active-noNb-BU72-nature2015/condition-nb-interface-restrained-BU72/rep_1/050516_NONHB_DEFAULT_HB_3.5_70/state_classification.txt"
OUTPUT_FILE_PATH="/scratch/PI/rondror/akma327/DynamicNetworks/results/non-state-decomposition/single-cond-rep-decomp-freqsum/032717_crystal_vs_simulation/MOR:active:crystal.txt"
POLAR_NETWORK="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/polar-networks/032717_crystal_vs_simulation/MOR_active.txt"
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/analysis/state-decomposition
python dynamic_inter_dict_to_state_decomp_unionized_freq.py $PDB_CODE $EXP_REP_DICT_PATH $STATE_DECOMP_FILE $OUTPUT_FILE_PATH -chainId 3 -nodecomp -network $POLAR_NETWORK -interlist -wb -wb2


PDB_CODE="5C1M"
EXP_REP_DICT_PATH="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutputDictionary/MOR-active-noNb-BU72-nature2015/condition-nb-interface-restrained-BU72/rep_1/050516_NONHB_DEFAULT_HB_3.5_70"
STATE_DECOMP_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutputDictionary/MOR-active-noNb-BU72-nature2015/condition-nb-interface-restrained-BU72/rep_1/050516_NONHB_DEFAULT_HB_3.5_70/state_classification.txt"
OUTPUT_FILE_PATH="/scratch/PI/rondror/akma327/DynamicNetworks/results/non-state-decomposition/single-cond-rep-decomp-freqsum/032717_crystal_vs_simulation/MOR:active:simulation.txt"
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/analysis/state-decomposition
python dynamic_inter_dict_to_state_decomp_unionized_freq.py $PDB_CODE $EXP_REP_DICT_PATH $STATE_DECOMP_FILE $OUTPUT_FILE_PATH -chainId 3 -nodecomp -interlist -wb -wb2



INDIVIDUAL_POLAR_NETWORK_DIR="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/polar-networks/032717_crystal_vs_simulation/MOR_active/MOR-active-noNb-BU72-nature2015.txt"
OUTPUT="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/polar-networks/032717_crystal_vs_simulation/MOR_active/MOR-active-noNb-BU72-nature2015.txt"
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/analysis/polar-networks
python unionize_polar_network_list.py $INDIVIDUAL_POLAR_NETWORK_DIR $OUTPUT




sed -i 's/022417_union_wb_freq/040117_union_wb_freq/g' *sbatch
sed -i 's/022417/040117/g' *sbatch
sed -i 's/-network $POLAR_NETWORK//g' *sbatch
sed -i.bak '/POLAR_NETWORK=/d' *sbatch

sed -i 's/-wb -wb2/-lwb/g'
sed -i 's/wb_wb2/lwb/g'

sed -i 's/-wb -wb2/-lwb2/g'
sed -i 's/wb_wb2/lwb2/g'


sed -i 's/-wb -wb2/-lwb2/g' *sbatch
sed -i 's/wb_wb2/lwb2/g' *


join -a1 -a2 -1 1 -2 1 -o 0,1.2,1.3,1.4,1.5,2.2,2.3,2.4,2.5 -e "0.0" active_receptors/active_non_state_decomp_residue_resolution_filtered.txt inactive_receptors/inactive_non_state_decomp_residue_resolution_filtered.txt | sed -e "s/\ /\t/g" > joined_receptors_non_state_decomp_residue_resolution_filtered.txt



# 050417

sed -i 's/040117_union_wb_freq/050417_union_wb_freq/g' *sbatch
sed -i 's/040117/050417/g' *sbatch


join -a1 -a2 -1 1 -2 1 -o 0,1.2,1.3,1.4,1.5,1.6,2.2,2.3,2.4,2.5,2.6 -e "0.0" active_receptors/active_non_state_decomp_residue_resolution_filtered.txt inactive_receptors/inactive_non_state_decomp_residue_resolution_filtered.txt | sed -e "s/\ /\t/g" > joined_receptors_non_state_decomp_residue_resolution_filtered.txt





SIMULATION_TOOL="-amber"
TOP="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/MOR-active-noNb-BU72-nature2015/condition-nb-interface-restrained-BU72/step5_assembly.pdb"
TRAJ_DIR="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/MOR-active-noNb-BU72-nature2015/condition-nb-interface-restrained-BU72/rep_1"
OUTPUT_DIR="/scratch/PI/rondror/akma327/DynamicNetworks/data/water-density/MOR-active-noNb-BU72-nature2015/condition-nb-interface-restrained-BU72"
JOB_FOLDER="/scratch/PI/rondror/akma327/DynamicNetworks/src/analysis/water-density/jobs/MOR-active-rep_1"
python fragment_water_density.py $SIMULATION_TOOL $TOP $TRAJ_DIR $OUTPUT_DIR $JOB_FOLDER




TOP="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/AlignedAmberTraj/DOR-inactive-naltrindole-unpublished/condition-naltrindole-bound/step5_assembly.pdb"
TRAJ="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/AlignedAmberTraj/DOR-inactive-naltrindole-unpublished/condition-naltrindole-bound/rep_1/Prod_0/Prod_0_reimaged.dcd"
OUT=/scratch/PI/rondror/akma327/DynamicNetworks/data/water-density/test.dx
python /scratch/PI/rondror/akma327/DynamicNetworks/src/analysis/water-density/water_density.py $TOP $TRAJ $OUT -nFrames



# 051817

join -a1 -a2 -1 1 -2 1 -o 0,1.2,1.3,1.4,1.5,2.2,2.3,2.4,2.5 -e "0.0" active_receptors/active_non_state_decomp_residue_resolution_filtered.txt inactive_receptors/inactive_non_state_decomp_residue_resolution_filtered.txt | sed -e "s/\ /\t/g" > joined_receptors_non_state_decomp_residue_resolution_filtered.txt


