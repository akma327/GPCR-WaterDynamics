# Process Noncovalent Interaction Timelapse Binary Vector to HeatMap - Anthony Ma 11/06/15

from __future__ import print_function
import os
import sys
import time
import itertools
import copy
import ast
import matplotlib.pyplot as plt
import numpy as np


def retrieveDataFileReader():
	output_id = sys.argv[1]
	interaction_selection = sys.argv[2]
	filename = "../SingleNoncovalentInteractionOutputDictionary/" + output_id 
	if(interaction_selection == '-sb'):
		filename += "/salt_bridge_detect.txt"
	if(interaction_selection == '-vdw'):
		filename += "/vanderwaal_detect.txt"
	if(interaction_selection == '-hp'):
		filename += "/hydrophobe_result.txt"
	if(interaction_selection == '-pc'):
		filename += "/pi_cation_result.txt"
	if(interaction_selection == '-ps'):
		filename += "/pi_stacking_result.txt"
	if(interaction_selection == '-ts'):
		filename += "/t_stacking_result.txt"
	if os.path.isfile(filename):
		f = open(filename, 'r')
		return f
	else:
		print("Interaction Results Not Found")
		return None


# Reads in the binary mapping of whether interaction is present at time point t
# and creates a visual map representation 
def calculateHeatMap():
	f = retrieveDataFileReader()
	data_matrix = []
	column_names = []
	row_names = []
	if(f != None):
		for line in f:
			if("Heat Map" in line):
				print("Processing Heat Map ...")
			elif("TotalFrames" in line):
				totalFrames = int(line.split(": ")[1])
				row_names = map(str,range(totalFrames + 1))
			elif("Chain" in line):
				print("For Chain: " + str(line.split(": ")[1]))
			elif(line != "\n"):
				key, value = line.split(": ")
				column_names.append(key)
				data_matrix.append(ast.literal_eval(value))
	data_matrix = np.array(data_matrix)
	fig, ax = plt.subplots()
	heatmap = ax.pcolor(data_matrix, cmap=plt.cm.Blues)
	ax.autoscale(True)
	ax.invert_yaxis()
	plt.xlabel("Time Frame")
	plt.ylabel("Interaction ID")
	plt.title("Salt Bridge Interaction 5C1M - All Frames")
	plt.show()

calculateHeatMap()


