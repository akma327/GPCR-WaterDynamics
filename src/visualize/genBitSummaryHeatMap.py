# Author: Anthony Kai Kwang Ma
# Email: akma327@stanford.edu

# genBitSummaryHeatMap.py
# Converts a dictionary between interaction key and bit vector to heatmap where
# each row represents an interaction, and column represents the average frequency
# value for nFrame sliding window across the entire trajectory. 
# If trajectory is 20000 frames long, and nFrame = 100 then there will be 20 columns
# for each row, and each cell represents the average frequency within that 100 frames
# increment. 

# Usage:
# python genBitSummaryHeatMap.py <WINDOW_SIZE> <TIMESCALE> <TIMESCALE UNITS> <OUTPUT_IMG_PATH> <OUTPUT_FOLDER_NAME> <OUTPUT_FILE_NAME> <LIST OF PATHS TO BIT DICTIONARIES>
# <WINDOW_SIZE> User specifies how many frames to group together to take frequency averages
# <TIMESCALE> User specifies how much time is represented per frame of the trajectory
# <TIMESCALE UNITS> Units in which the time is represented (fs, ps, etc)
# <OUTPUT_IMG_PATH> Specify the path to which folders for a certain image generation job will be stored
# <OUTPUT_FOLDER_NAME> Folder name for the output 
# <OUTPUT_FILE_NAME> Naming for the images 


# Example:
# WINDOW_SIZE="1000"
# TIMESCALE="2.5"
# TIMESCALE_UNIT="fs"
# OUTPUT_IMG_PATH="/scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicInteractions/data/flot_chart_results"
# OUTPUT_FOLDER_NAME="test1"
# OUTPUT_FILE_NAME="cond0rep1"
# PATH1="/scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/mOR-InteractionOutputDictionary/MOR_active_waters/mor_active_refine150_agonist_noNanobody/rep_1/salt_bridge_result_dict.txt"
# PATH2="/scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/mOR-InteractionOutputDictionary/MOR_active_waters/mor_active_refine150_agonist_noNanobody/rep_1/pi_cation_result_dict.txt"
# python genBitSummaryHeatMap.py $WINDOW_SIZE $TIMESCALE $TIMESCALE_UNIT $OUTPUT_IMG_PATH $OUTPUT_FOLDER_NAME $OUTPUT_FILE_NAME $PATH1 $PATH2


import os
import sys 
import ast
import numpy as np
import matplotlib.pyplot as plt

N_ROWS_PER_FIGURE = 50 #How many rows to show in each figure


def genSummaryFreqVec(window_size, binaryVec):
	summaryFreqVec = []
	split=lambda x,n: x if not x else [x[:n]]+[split([] if not -(len(x)-n) else x[-(len(x)-n):],n)][0]
	chunks = split(binaryVec, window_size)
	for chunk in chunks:
		summaryFreqVec.append(float(sum(chunk))/len(chunk))
	return summaryFreqVec

# Identifies the type of interaction with the header
def extractInteractionType(line):
	if("Salt Bridges" in line):
		return "-sb"
	if("Pi-Cation" in line):
		return "-pc"
	if("Pi-Stacking" in line):
		return "-ps"
	if("T_Stacking" in line):
		return "-ts"
	if("Van Der Waals" in line):
		return "-vdw"
	if("Hydrogen Bonds" in line):
		return "-hb"
	if("Hydrogen Bond-Water Mediated" in line):
		return "-hbw"
	if("Backbone Backbone Hydrogen Bonds" in line):
		return "-hbbb"
	if("Sidechain Backbond Hydrogen Bonds" in line):
		return "-hbsb"
	if("Sidechain Sidechain Hydrogen Bonds" in line):
		return "-hbss"
	if("Residue Water Hydrogen Bonds" in line):
		return "-rw"
	if("Water Bonds" in line):
		return "-wb"

def genSummaryFreq(window_size, bitDictPaths):
	counter = 0
	labels, summaryFreq = [], []
	for path in bitDictPaths:
		curr_dict_type = ""
		f = open(path, 'r')
		if(f == None):
			print(path + " does not exist.")
			exit(0)
		for line in f:
			if("Dictionary Heat Map" in line):
				curr_dict_type = extractInteractionType(line)
			if("~" in line):
				line_info = line.split("~")
				label = line_info[0].strip() + "@" + curr_dict_type
				if(counter % 10 == 0): print("Counter: " + str(counter) + " " + label)
				binaryVec = ast.literal_eval(line_info[1].strip())
				nFrames = len(binaryVec)
				summaryFreqVec = genSummaryFreqVec(window_size, binaryVec)
				labels.append(label)
				summaryFreq.append(summaryFreqVec)
				counter += 1
	return labels, np.array(summaryFreq), nFrames


def cluster_interaction_freq(labels, summaryFreq, xlabels, overall_x_label, timescale_units, output_img_path, output_folder_name, output_file_name):
	chunk_counter = 0
	for index in range(0, len(labels), N_ROWS_PER_FIGURE):
		labels_chunk = labels[index:index + N_ROWS_PER_FIGURE]
		summaryFreq_chunk = summaryFreq[index:index + N_ROWS_PER_FIGURE]
		fig, ax = plt.subplots()
		heatmap = ax.pcolor(summaryFreq_chunk, cmap=plt.cm.Blues)
		ax.set_yticks(np.arange(summaryFreq_chunk.shape[0])+0.5, minor=False)
		ax.set_yticklabels(labels_chunk, minor=False)
		ax.set_xticks(np.arange(len(xlabels)), minor = False)
		ax.set_xticklabels(["" for i in range(len(xlabels))], minor=False)
		ax.set_xlabel(overall_x_label)
		ax.set_title("Flot Chart: " + output_file_name)
		plt.tight_layout()
		plt.show(block=False)
		output_file_path = output_img_path + "/" + output_folder_name + "/" + output_file_name + "_" + str(chunk_counter) + ".png"
		if not os.path.exists(os.path.dirname(output_file_path)):
			os.makedirs(os.path.dirname(output_file_path))
		plt.savefig(output_file_path)
		chunk_counter += 1

def genTimeLabel(window_size, timescale, nFrames, timescale_units):
	overall_x_label = str(timescale*nFrames) + " " + timescale_units
	residue = nFrames % window_size
	nLabels = nFrames/window_size if residue == 0 else nFrames/window_size + 1
	xlabels = []
	time_increment = timescale*window_size
	for i in range(nLabels):
		xlabels.append(i*time_increment)
	return xlabels, overall_x_label


if __name__ == "__main__":
	window_size = int(sys.argv[1])
	timescale = float(sys.argv[2])
	timescale_units = sys.argv[3]
	output_img_path = sys.argv[4]
	output_folder_name = sys.argv[5]
	output_file_name = sys.argv[6]
	bitDictPaths = sys.argv[7:]
	if(len(bitDictPaths) < 1):
		print("Need to specify at least one binary dictionary file.")
		exit(0)
	labels, summaryFreq, nFrames = genSummaryFreq(window_size, bitDictPaths)
	xlabels, overall_x_label = genTimeLabel(window_size, timescale, nFrames, timescale_units)
	cluster_interaction_freq(labels, summaryFreq, xlabels, overall_x_label, timescale_units, output_img_path, output_folder_name, output_file_name)

