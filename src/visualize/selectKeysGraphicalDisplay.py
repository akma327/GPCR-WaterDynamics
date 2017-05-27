# Author: Anthony Kai Kwang Ma
# Email: akma327@stanford.edu
# selectKeysGraphicalDisplay.py 

from __future__ import division

import vmd, molecule
from VMD import *
import sys
import os
import subprocess
import numpy as np
import matplotlib.pyplot as plt
import matplotlib.mlab as mlab
import ast
from vmdDisplayUtils import *

USAGE_STR = """

# Read in list of interactions that the user wants to visualize and also provide the experiment id
# and replicate id to gain access to the mOR-InteractionOutputDictionary's bit strings. User must 
# specify which interaction types are included in this filtered list to speed up load time. This script
# will display all the interactions within the list for a particular trajectory and topology. Timelapse
# functionality is still there. Will only draw the colored line interactions for the subset of
# interactions. 
#
# This script would be useful for speeding up loading times and directed viewing of specific interactions
# within a trajectory. Use in combination with numerical methods to select the prefiltered set of keys
# there will be print out warnings if the keys provided in the text file is not present in the 
# actual trajectory. 
# FILTER_KEY.txt File Format
# 	ARG276-NH1_0 -- ASP272-OD1_0@-sb
# 	ARG277-NH2_0 -- GLU341-OE1_0@-sb
#	THR153-OG1 -- TYR149-O@-hb
#	PHE123_0 -- PHE135_0@-ts
#
#
# Usage:
# >> python selectKeysGraphicalDisplay.py <FLAG_INTERACTION_DICT> <FILTER_KEY_LIST_PATH> <BINARY_DICTIONARY_PATH> <SIMPLE_DETAIL_FLAG>
#
# Example:
# >> FLAG_INTERACTION_DICT="/scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicInteractions/visualize/interactionFlagLabel.txt"
# >> FILTER_PATH="/scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicInteractions/data/filterKeyList/list.txt"
# >> BIT_DICT_PATH="/scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutputDictionary/MOR-active-noNb-BU72-nature2015/condition-nb-interface-restrained-BU72/rep_1"
# >> python selectKeysGraphicalDisplay.py $FLAG_INTERACTION_DICT $FILTER_PATH $BIT_DICT_PATH -d 
#
# import sys
# interactionFlagLabel='/scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicInteractions/visualize/interactionFlagLabel.txt'
# filterKeyList='/scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicInteractions/data/filterKeyList/list.txt'
# rep_dictionary='/scratch/users/akma327/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutputDictionary/B2AR-active-Nb-BI-pnas2011b/condition-L/rep_1'
# sys.argv = ['a', interactionFlagLabel, filterKeyList, rep_dictionary, '-d']
# execfile('selectKeysGraphicalDisplay.py')

"""

K_MIN_ARG = 5


start=0
stop=-1
stride=1
smoothing=0

interactionMapByTime = None 
display_mode = ""
bold = True 
printFrames = False
FLAG_INTERACTION_DICT = {}

def genFlagInteraction(flag_interaction_dict_path):
	global FLAG_INTERACTION_DICT
	f = open(flag_interaction_dict_path, 'r')
	if(f == None):
		print("Flag Interaction Dict Path Invalid")
		exit(0)
	for line in f:
		if(line != "\n"):
			line_info = line.split(":")
			key, value = line_info[0].strip(), line_info[1].strip()
			FLAG_INTERACTION_DICT[key] = value 


# Initialize the VMD Window
def init():
    display.set(size=[1024,768])
    display.set(projection='Perspective')
    color.set_colormap('Display',{'Background': 'white'})
    axes.set_location('OFF')
    display.set(depthcue=False)
    display.set(nearclip=0.01)
    for m in molecule.listall():
        molecule.delete(m)
    def ssrecalcu(molid, frame):
        molecule.ssrecalc(molid)


# Load Trajectory (Amber .nc, Desmond .dcd) and Topology (.pdb)
def load_traj(struct_file_name, traj_file_names):
	struct_file_name = struct_file_name.replace("_strip_waters", "")
	top_file_type = getFileType(struct_file_name)
	print("topo name", struct_file_name)
	trajid = molecule.load(top_file_type, struct_file_name)
	for traj_index, traj_file_name in enumerate(traj_file_names):
		if(traj_index > 0):break
		traj_file_name = traj_file_name.replace("_strip_waters", "")
		print("traj name", traj_file_name)
		traj_file_type = getFileType(traj_file_name)
		molecule.read(trajid, traj_file_type, traj_file_name, beg=start, end=stop, skip=stride, waitfor=-1)
	print("Finished Loading Trajectory")
	molrep.delrep(0, 0)
	if(display_mode == "-d"):
		molrep.addrep(0, style = 'NewRibbons', color = 'ColorID 8', selection = "protein")
		# molrep.addrep(0, style = 'HBonds 3.0 110', selection = 'protein and not carbon', color = 'Type')
		molrep.addrep(0, style = 'HBonds 3.8 70', selection = "(water within 3.5 of protein) or protein and not carbon", color = "Type")
		molrep.set_autoupdate(0, 1, 1)
	elif(display_mode == "-s"):
		molrep.addrep(0, style = "VDW", selection = "name CA", material = "Transparent")
	else:
		print("Input Format Incorrect")
		exit(1)
	animate.goto(0) 

def addToFileReaders(fileReaders, path, interaction_selection):
	if os.path.isfile(path):
		f = open(path, 'r')
		fileReaders.append((f, interaction_selection))


# Extract the filter key list 
def extractFilterKeyDict(filterKeyPath):
	keyDict = {} #key = interaction type, value = [interaction 1, interaction2 , etc...]
	f = open(filterKeyPath, 'r')
	for line in f:
		if(line == "\n" or "#" in line): continue
		key_type_pair = line.split("@")
		key = key_type_pair[0].strip()
		key = removeChainInfo(key) #get rid of chain information 
		interaction_type = key_type_pair[1].strip()
		print("Key: Interaction Type ", key, interaction_type)
		if(interaction_type not in keyDict):
			keyDict[interaction_type] = [key]
		else:
			keyDict[interaction_type].append(key)
	return keyDict

# Retrieve file reader for specified interaction type 
def retrieveDataFileReader(bit_dict_path, interaction_selections):
	filename = bit_dict_path
	fileReaders = []
	for interaction_selection in interaction_selections:
		path = filename + "/" + FLAG_INTERACTION_DICT[interaction_selection]
		addToFileReaders(fileReaders, path, interaction_selection)	
	print("retrieveDataFileReader() ", fileReaders, filename)
	return fileReaders, filename


# Strips off the chain information
def removeChainInfo(interaction):
	atoms = interaction.split(" -- ")
	atom1 = atoms[0].split("_")[0]
	atom2 = atoms[1].split("_")[0]
	return atom1 + " -- " + atom2


def retrieveInfo(filterKeyPath, bit_dict_path):
	filterKeyDict = extractFilterKeyDict(filterKeyPath)
	interaction_selections = filterKeyDict.keys()
	fileReaders, filename = retrieveDataFileReader(bit_dict_path, interaction_selections)
	print("Filter Key Dictionary", filterKeyDict)
	print(filename)
	totalFrames = 0
	CurrentChain = 0
	TrajectoryPaths = []
	TopologyPath = ""
	binaryInteractionMap = {}
	for f, interaction_selection in fileReaders:
		filterKeyByType = filterKeyDict[interaction_selection] # the interactions user wants by type 
		if(f!= None):
			for line in f:
				if("Stride:" in line):
					stride = int(line.split("Stride:")[1])
				elif("TrajectoryPath:" in line):
					TrajectoryPath = line.split("TrajectoryPath:")[1].strip()
					if(TrajectoryPath not in TrajectoryPaths):
						TrajectoryPaths.append(TrajectoryPath)
				elif("TopologyPath:" in line):
					TopologyPath = line.split("TopologyPath:")[1].strip()
				elif("Dictionary Heat Map" in line):
					continue
				elif("TotalFrames:" in line):
					totalFrames = int(line.split(": ")[1])
				elif("Dictionary for Chain:" in line):
					CurrentChain = int(line.split(": ")[1])
				elif(line != "\n"):
					keyValPair = line.split("~")
					keySig = removeChainInfo(keyValPair[0])
					if(keySig in filterKeyByType):
						print("adding ", keySig)
						atomPair = keySig.split(" -- ")
						key = (atomPair[0], atomPair[1], interaction_selection)
						value = ast.literal_eval(keyValPair[1].strip())
						binaryInteractionMap[key] = value
	return totalFrames, TrajectoryPaths, TopologyPath, binaryInteractionMap, filename


# Draws a line between two atoms of specific interaction
def drawInteraction(interaction, frameIndex):
	atom1, atom2, interaction_selection = interaction
	interactionStr = coloringSetting(atom1, atom2, interaction_selection)
	query1, query2 = '',''
	if(display_mode == "-s"):
		query1, query2 = alphaCarbonQuery(atom1), alphaCarbonQuery(atom2)
	elif(display_mode == "-d"):
		query1, query2 = detailAtomQuery(atom1), detailAtomQuery(atom2)
	atomsel1 = atomsel.atomsel(query1, molid = 0, frame = frameIndex+1) #for some reason VMD is one frame behind numeric dictionary
	atomsel2 = atomsel.atomsel(query2, molid = 0, frame = frameIndex+1)
	atom1Coord = atomCoordinate(atomsel1)
	atom2Coord = atomCoordinate(atomsel2)
	if(atom1Coord != None and atom2Coord != None):
		distance = np.linalg.norm(np.array(atom1Coord) - np.array(atom2Coord))
		graphics.line(0, atom1Coord, atom2Coord, style = 'solid', width = 3)
		if(printFrames == True):
			print("FrameIndex: ", frameIndex,  interactionStr, interaction, "Coordinates: ", atom1Coord, atom2Coord, " Distance: ", distance)

def parseInteraction(interaction):
	print("parseInteraction()", interaction)
	info = interaction.split("@")
	atoms = info[0].strip()
	inter_sel = info[1].strip()
	atom1, atom2 = atoms.split(" -- ")
	return atom1, atom2, inter_sel	

def clearBoldResidues():
	for i in reversed(range(molrep.num(0) - 1, 1)):
		molrep.delrep(0, i+1)

def boldResidues(licorice_residue):
	clearBoldResidues()
	if(bold == True):
		for bold_query in licorice_residue:
			if(bold_query != ""):
				molrep.addrep(0, style = "Licorice", color = "Name", selection = bold_query)


def boldHistidine(resid1, resid2, resname1, resname2):
	if(resname1 == "HIS"):
		partQuery1 = "((resname HSE or resname HSD or resname HSP) and resid " + resid1 + " and noh)"
	else:
		if(resname1 in water_resnames):
			partQuery1 = "(water and resid " + resid1 + " and noh)"
		else:
			partQuery1 = "(resname " + resname1 + " and resid " + resid1 + " and noh)"
	if(resname2 == "HIS"):
		partQuery2 = "((resname HSE or resname HSD or resname HSP) and resid " + resid2 + " and noh)"
	else:
		if(resname2 in water_resnames):
			partQuery2 = "(water and resid " + resid2 + " and noh)"
		else:
			partQuery2 = "(resname " + resname2 + " and resid " + resid2 + " and noh)"
	return partQuery1 + " or " + partQuery2

# Generate a query for showing residues as licorice form
def boldQuery(atom1, atom2, interaction_sel):
	backbone_atoms = ['N', 'O']
	resname1, resid1, atomname1, chainId1 = atomInfoExtractor(atom1)
	resname2, resid2, atomname2, chainId2 = atomInfoExtractor(atom2)
	if(interaction_sel != '-hbbb'):
		if(resname1 == "HIS" or resname2 == "HIS"):
			return boldHistidine(resid1, resid2, resname1, resname2)
		else:
			if(resname1 in water_resnames):
				partQuery1 = "(water and resid " + resid1 + " and noh)"
			else:
				partQuery1 = "(resname " + resname1 + " and resid " + resid1 + " and noh)"
			if(resname2 in water_resnames):
				partQuery2 = "(water and resid " + resid2 + " and noh)"
			else:
				partQuery2 = "(resname " + resname2 + " and resid " + resid2 + " and noh)"
			return partQuery1 + " or " + partQuery2
	return ""

# Bold out the interactions of a given frame by setting the coloring scheme to licorice
def boldInteractions(frame_interactions):
	residues_to_bold = []
	for interaction in frame_interactions:
		atom1, atom2, interaction_selection = interaction
		residues_to_bold.append(boldQuery(atom1, atom2, interaction_selection))
	boldResidues(residues_to_bold)

# Callback function to draw interaction when frame is updated via VMD
def timelapseSimulation(molid, frame):
	time = frame - 1
	if(time >= 0): # BUGGY FIX
		graphics.delete(0, 'all')
		frame_interactions = interactionMapByTime[time]
		for interaction in frame_interactions:
			drawInteraction(interaction, time)
		boldInteractions(frame_interactions)


if __name__ == "__main__":
	if(len(sys.argv) < K_MIN_ARG):
		print(USAGE_STR)
		exit(1)
	global display_mode
	global interactionMapByTime
	flag_interaction_dict_path = sys.argv[1]
	genFlagInteraction(flag_interaction_dict_path)
	filterKeyPath = sys.argv[2]
	bit_dict_path = sys.argv[3]
	display_mode = sys.argv[4]
	totalFrames, TrajectoryPaths, TopologyPath, binaryInteractionMap, filename = retrieveInfo(filterKeyPath, bit_dict_path)
	print(totalFrames)
	interactionMapByTime = groupInteractionByTime(binaryInteractionMap, totalFrames)
	init()
	load_traj(TopologyPath, TrajectoryPaths)
	vmdcallbacks.add_callback('frame', timelapseSimulation)



