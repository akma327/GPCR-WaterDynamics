# Author: Anthony Kai Kwang Ma
# Email: akma327@stanford.edu
# Date: 02/20/17
# weighted_column_average.py

import os
import sys
import csv 
import numpy as np 


USAGE_STR = """
# Purpose
# Input: Table with columns being replicates of simulation and rows being interaction frequencies
# Output: Combine replicates into single column by taking weighted average of frequency values 
# with number of frames. 

# Usage 
# python weighted_column_average.py <INPUT_FILE> <OUTPUT_FILE> <decomp>

# Arguments
# <INPUT_FILE> Absolute path to input table 
# <OUTPUT_FILE> Absolute path to output table 
# <decomp> Optional flag to include if using state decomposed frames 

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

"""

K_MIN_ARG = 3


def get_exp_cond_to_group_id():
	"""
		Hard coding all experiment conditions used until this point into 
		a numeric group id. ie {'B2AR-active-Gs-cond22' : 0, 'B2AR-active-Gs-cond23 : 0', ...}
	"""
	exp_cond_to_group_id = {}

	exp_cond_to_group_id['A2A:active:engGprotein-rep_1,Active'] = 0
	exp_cond_to_group_id['A2A:active:engGprotein-rep_2,Active'] = 0
	exp_cond_to_group_id['A2A:active:engGprotein-rep_3,Active'] = 0
	exp_cond_to_group_id['A2A:active:engGprotein-rep_4,Active'] = 0
	exp_cond_to_group_id['A2A:active:engGprotein-rep_5,Active'] = 0

	exp_cond_to_group_id['B2AR:active:agonist-bound-nanobody-complex:3.6us:D70+,D130+,H172+,C341_palm,Active'] = 1
	exp_cond_to_group_id['B2AR:active:agonist-bound-nanobody-complex:6.5us:D70+,D130+,H172+,C341_palm,Active'] = 1

	exp_cond_to_group_id['B2AR:active:long-isoform-B2AR-heterotrimeric-Gs:no_ligand:10.0us:with_membrane,Active'] = 2
	exp_cond_to_group_id['B2AR:active:long-isoform-B2AR-heterotrimeric-Gs:no_ligand:10us:with_membrane,Active'] = 2
	exp_cond_to_group_id['B2AR:active:long-isoform-B2AR-heterotrimeric-Gs:no_ligand:50us:with_membrane,Active'] = 2
	exp_cond_to_group_id['B2AR:active:short-isoform-B2AR-heterotrimeric-Gs:no_ligand:5us:with_membrane,Active'] = 2

	exp_cond_to_group_id['M2R:active:restrained:prot:Asp2x50:3x49-rep_1,Active'] = 3
	exp_cond_to_group_id['M2R:active:restrained:prot:Asp2x50:3x49-rep_2,Active'] = 3
	exp_cond_to_group_id['M2R:active:restrained:prot:Asp2x50:3x49-rep_3,Active'] = 3

	exp_cond_to_group_id['M2R:active:unrestrained:prot:Asp2x50:3x49-rep_1,Active'] = 4
	exp_cond_to_group_id['M2R:active:unrestrained:prot:Asp2x50:3x49-rep_2,Active'] = 4
	exp_cond_to_group_id['M2R:active:unrestrained:prot:Asp2x50:3x49-rep_3,Active'] = 4

	exp_cond_to_group_id['MOR:active-noNb:BU72-nB_interface_restrained:2.7us,Active'] = 5
	exp_cond_to_group_id['MOR:active-noNb:BU72-nB_interface_restrained:2.9us,Active'] = 5
	exp_cond_to_group_id['MOR:active-noNb:BU72-nB_interface_restrained:3.0us,Active'] = 5

	exp_cond_to_group_id['MOR:active:unpublished-rep_1,Active'] = 6
	exp_cond_to_group_id['MOR:active:unpublished-rep_2,Active'] = 6
	exp_cond_to_group_id['MOR:active:unpublished-rep_3,Active'] = 6

	exp_cond_to_group_id['RHO:active:unrestrained-rep_1,Active'] = 7
	exp_cond_to_group_id['RHO:active:unrestrained-rep_2,Active'] = 7
	exp_cond_to_group_id['RHO:active:unrestrained-rep_3,Active'] = 7

	exp_cond_to_group_id['US28:active:restrained-rep_1,Active'] = 8
	exp_cond_to_group_id['US28:active:restrained-rep_2,Active'] = 8
	exp_cond_to_group_id['US28:active:restrained-rep_3,Active'] = 8

	exp_cond_to_group_id['US28:active:unrestrained-rep_1,Active'] = 9
	exp_cond_to_group_id['US28:active:unrestrained-rep_2,Active'] = 9
	exp_cond_to_group_id['US28:active:unrestrained-rep_3,Active'] = 9

	### Inactive
	exp_cond_to_group_id['A2A:inactive:unpublished-rep_1,Inactive'] = 10
	exp_cond_to_group_id['A2A:inactive:unpublished-rep_2,Inactive'] = 10
	exp_cond_to_group_id['A2A:inactive:unpublished-rep_3,Inactive'] = 10
	exp_cond_to_group_id['A2A:inactive:unpublished-rep_4,Inactive'] = 10
	exp_cond_to_group_id['A2A:inactive:unpublished-rep_5,Inactive'] = 10


	exp_cond_to_group_id['B2AR:inactive:carazalol:10us:D79-,D130-,Inactive'] = 11

	exp_cond_to_group_id['D4R:inactive:nemanopride:deprotonated:1.3us,Inactive'] = 12
	exp_cond_to_group_id['D4R:inactive:nemanopride:deprotonated:1.5us,Inactive'] = 12
	exp_cond_to_group_id['D4R:inactive:nemanopride:deprotonated:1.50us,Inactive'] = 12
	
	exp_cond_to_group_id['M2R:inactive:QNB-orthosteric-no-allosteric:10us,Inactive'] = 13

	exp_cond_to_group_id['M2R:inactive:QNB-orthosteric:16.4us,Inactive'] = 14
	
	exp_cond_to_group_id['MOR:inactive:bFNA-antagonist-bound_to_K233:0.63us,Inactive'] = 15
	exp_cond_to_group_id['MOR:inactive:bFNA-antagonist-bound_to_K233:1.21us,Inactive'] = 15
	exp_cond_to_group_id['MOR:inactive:bFNA-antagonist-bound_to_K233:1.42us,Inactive'] = 15

	exp_cond_to_group_id['DOR:inactive:naltrindole:1.3us,Inactive'] = 16
	exp_cond_to_group_id['DOR:inactive:naltrindole:2.0us,Inactive'] = 16
	exp_cond_to_group_id['DOR:inactive:naltrindole:3.0us,Inactive'] = 16

	return exp_cond_to_group_id

def get_group_id_to_exp_cond():
	"""
		Hard coding group_id to experiment condition name 
	"""

	group_id_to_exp_cond = {}
	### Active
	group_id_to_exp_cond[0] = "A2A:active:engGprotein"
	group_id_to_exp_cond[1] = "B2AR:active:agonist-bound-nanobody-complex:D70+:D130+:H172+:C341_palm"
	group_id_to_exp_cond[2] = "B2AR:active:long-isoform-B2AR-heterotrimeric-Gs:no_ligand"
	group_id_to_exp_cond[3] = "M2R:active:restrained:prot:Asp2x50:3x49"
	group_id_to_exp_cond[4] = "M2R:active:unrestrained:prot:Asp2x50:3x49"
	group_id_to_exp_cond[5] = "MOR:active-noNb:BU72-nB_interface_restrained"
	group_id_to_exp_cond[6] = "MOR:active:unrestrained"
	group_id_to_exp_cond[7] = "RHO:active:unrestrained"
	group_id_to_exp_cond[8] = "US28:active:restrained"
	group_id_to_exp_cond[9] = "US28:active:unrestrained"

	### Inactive
	group_id_to_exp_cond[10] = "A2A:inactive:unpublished"
	group_id_to_exp_cond[11] = "B2AR:inactive:carazalol:D79-:D130-"
	group_id_to_exp_cond[12] = "D4R:inactive:nemanopride:deprotonated"
	group_id_to_exp_cond[13] = "M2R:inactive:QNB-orthosteric-no-allosteric:10us"
	group_id_to_exp_cond[14] = "M2R:inactive:QNB-orthosteric:16.4us"
	group_id_to_exp_cond[15] = "MOR:inactive:bFNA-antagonist-bound_to_K233"
	group_id_to_exp_cond[16] = "DOR:inactive:naltrindole"

	return group_id_to_exp_cond


def get_frame_num_dict(STATE_DECOMP=False):
	"""
		Use hard coded path to experiment condition to nFrames table and 
		generate dictionary
	"""
	NUM_FRAME_TABLE_PATH ="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/state-decomposition/num_simulation_frames_by_exp_condition.csv"
	with open(NUM_FRAME_TABLE_PATH, 'rU') as f:
		reader = csv.reader(f, delimiter="\t")
		d = list(reader)

	darr = np.array(d)
	column_labels = list(darr[0,:])
	exp_cond_label_index = column_labels.index('long_exp_cond_description')
	if(STATE_DECOMP == False):
		num_frame_index = column_labels.index('num_frames_full_sim')
	else:
		num_frame_index = column_labels.index('num_frames_state_decomposed')

	exp_cond_to_frame_num = {}
	for row in darr[1:]:
		exp_cond = row[exp_cond_label_index]
		num_frame = int(row[num_frame_index])
		exp_cond_to_frame_num[exp_cond] = num_frame

	return exp_cond_to_frame_num


def process_input_table(INPUT_FILE, exp_cond_to_frame_num, exp_cond_to_group_id):
	"""
		Process input table 
	"""
	with open(INPUT_FILE, 'rU') as f:
		reader = csv.reader(f, delimiter="\t")
		d = list(reader)

	darr = np.array(d)
	column_labels = list(darr[0,:])
	
	gpcrdb_rows = darr[:,0][1:]
	group_id_to_encoded_val = {}

	for i in range(1, len(column_labels)):
		column_info = darr[:,i]
		exp_cond_label = column_info[0]
		gpcrdb_freq = column_info[1:]
		nFrames = exp_cond_to_frame_num[exp_cond_label]
		group_id = exp_cond_to_group_id[exp_cond_label]

		encoded_value = (exp_cond_label, gpcrdb_freq, nFrames)
		if(group_id not in group_id_to_encoded_val):
			group_id_to_encoded_val[group_id] = [encoded_value]
		else:
			group_id_to_encoded_val[group_id].append(encoded_value)

	return gpcrdb_rows, group_id_to_encoded_val


# def weight_column_average(OUTPUT_FILE, gpcrdb_rows, group_id_to_encoded_val):
# 	"""
# 		Take weighted average of column frequencies by number of frames. 
#		Original version that doesn't involve NA for interactions not present
# 		In each replicate. 
# 	"""
# 	group_id_to_exp_cond = get_group_id_to_exp_cond()

# 	first_column = ["GPCRDB1:GPCRDB2"] + map(str, gpcrdb_rows)
# 	all_columns = [first_column]

# 	### Experimental conditions grouped by replicates 
# 	for group_id in sorted(group_id_to_encoded_val.keys()):
# 		exp_cond_label = group_id_to_exp_cond[group_id]
# 		weighted_freq = np.array([0.0]*len(gpcrdb_rows))
# 		total_frames = 0

# 		### Summing the frequencies weighted by number of frames
# 		for group_member in group_id_to_encoded_val[group_id]:
# 			freqs, nFrames = np.array(map(float, group_member[1])), group_member[2]
# 			weighted_freq += freqs*nFrames
# 			total_frames += nFrames

# 		weighted_freq = np.around(weighted_freq/total_frames, 3)
# 		col_info = [exp_cond_label] + map(str, weighted_freq)
# 		all_columns.append(col_info)

# 	return all_columns


def weight_column_average(OUTPUT_FILE, gpcrdb_rows, group_id_to_encoded_val):
	"""
		Take weighted average of column frequencies by number of frames. 
		Handles NA in the calculations. Only do weighted average on interactions
		that are present in at least a single frame of each replicate. 
	"""
	group_id_to_exp_cond = get_group_id_to_exp_cond()

	first_column = ["GPCRDB1:GPCRDB2"] + map(str, gpcrdb_rows)
	all_columns = [first_column]

	### Experimental conditions grouped by replicates 
	for group_id in sorted(group_id_to_encoded_val.keys()):
		exp_cond_label = group_id_to_exp_cond[group_id]
		weighted_freq = [0.0]*len(gpcrdb_rows)
		total_frames = 0

		### Summing the frequencies of each replicate column weighted by number of frames
		for group_member in group_id_to_encoded_val[group_id]: # Each group_member is a replicate column
			str_freqs, nFrames = group_member[1], int(group_member[2]) # String of floats and NA for replicate, number of frames
			total_frames += nFrames
			### Iterate through each row
			for i in range(len(weighted_freq)):
				freq = str_freqs[i] # Either "NA" or string representation of float frequency
				if(weighted_freq[i] == "NA"): continue
				if("NA" not in freq):
					weighted_freq[i] += float(freq)*nFrames
				else:
					weighted_freq[i] = "NA"

		weighted_freq = np.array(weighted_freq)
		### Average over total number of frames
		for i in range(len(weighted_freq)):
			if("NA" not in str(weighted_freq[i])):
				weighted_freq[i] = round(float(weighted_freq[i])/total_frames, 3)
		col_info = [exp_cond_label] + map(str, weighted_freq)
		all_columns.append(col_info)


	return all_columns



def write_output(OUTPUT_FILE, all_columns):
	### Write out weighted frequency file

	print(OUTPUT_FILE)
	f = open(OUTPUT_FILE, 'w')
	num_rows = len(all_columns[0])
	for i in range(num_rows):
		row_info = []
		for col in all_columns:
			row_info.append(col[i])
		f.write("\t".join(row_info) + "\n")

def driver(INPUT_FILE, OUTPUT_FILE, STATE_DECOMP=False):
	"""
		Driver method for performing weighted average over replicates of table
	"""

	OUT_DIR = "/".join(OUTPUT_FILE.split("/")[0:-1])
	if not os.path.exists(OUT_DIR):
		os.makedirs(OUT_DIR)

	exp_cond_to_frame_num = get_frame_num_dict(STATE_DECOMP)
	exp_cond_to_group_id = get_exp_cond_to_group_id()
	gpcrdb_rows, group_id_to_encoded_val = process_input_table(INPUT_FILE, exp_cond_to_frame_num, exp_cond_to_group_id)
	all_columns = weight_column_average(OUTPUT_FILE, gpcrdb_rows, group_id_to_encoded_val)
	write_output(OUTPUT_FILE, all_columns)

	


if __name__ == "__main__":
	if(len(sys.argv) < K_MIN_ARG):
		print(USAGE_STR)
		exit(0)

	(INPUT_FILE, OUTPUT_FILE) = (sys.argv[1], sys.argv[2])
	STATE_DECOMP = False 
	if("decomp" in sys.argv):
		STATE_DECOMP = True
	print(STATE_DECOMP)
	driver(INPUT_FILE, OUTPUT_FILE, STATE_DECOMP)



