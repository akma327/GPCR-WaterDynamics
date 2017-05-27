# Author: Anthony Kai Kwang Ma
# Email: akma327@stanford.edu
# Date: October 1, 2015

# DynamicInteractionCalculator.py

from __future__ import print_function
import os
import sys
import time
import itertools
import mdtraj as md
from hbond import baker_hubbard
from saltbridge import *
from vanderwaal import *
from hydrogenbond import *
from hydrophobe import *
from pication import *
from aromatic import *
from waterMediatedHBonds import *
from vmdMeasureHBonds import * 

USAGE_STR= """
# Usage:
# python DynamicInteractionCalculator.py <TRAJ_PATH> <TOP_PATH> <OUTPUT_DIRECTORY_PATH> <OUTPUT_FILE_IDENTIFIER> <Interaction Type> <optional -process > <optional file path for hbond to post process> <optional -stride flag > <stride value if not 1> <optional -solv if not water> <solvent> <optional -chain> <chainID> <optional -ligand> <Ligand>

# Arguments:
# <TRAJ_PATH> Absolute Path to trajectory 
# <TOP_PATH> Absolute path to topology 
# <OUTPUT_DIRECTIORY_PATH> Absolute path to folder to store the dynamic interaction output 
# <OUTPUT_FILE_IDENTIFIER> Name of the file inserted into the OUTPUT_DIRECTORY_PATH 
# <Interaction Type> Flag to denote the type of interaction being calculated (ie -sb, -pc, -ps, -ts, etc)
# <optional -process flag> To denote whether extra file path for the raw water mediated hydrogen bond file needs to be processed
# <optional -stride flag> To denote a stride value other than default of 1
# <optional -solv flag> To denote a solvent id other than default of TIP3
# <optional -chain flag> To denote the specific chain ID to query when using VMD's hydrogen bond calculator 
# <optional -ligand flag> To denote the resname of ligand in the simulation.

# Example 1:
TRAJ_PATH="/scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/mOR-InteractionOutput/MOR_active_waters/mor_active_refine150_agonist_noNanobody/rep_1/Prod_1/Prod_1_reimaged.nc"
TOP_PATH="/scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/mOR-InteractionOutput/MOR_active_waters/mor_active_refine150_agonist_noNanobody/step5_assembly.pdb"
OUTPUT_DIRECTORY_PATH="/scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicInteractions/data/testing"
OUTPUT_FILE_IDENTIFIER="salt_bridge_result.txt"
python DynamicInteractionCalculator.py $TRAJ_PATH $TOP_PATH $OUTPUT_DIRECTORY_PATH $OUTPUT_FILE_IDENTIFIER -sb -stride 1

# Example 2:
TRAJ_PATH="/scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/mOR-InteractionOutput/MOR_active_waters/mor_active_refine150_agonist_noNanobody/rep_1/Prod_1/Prod_1_reimaged.nc"
TOP_PATH="/scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/mOR-InteractionOutput/MOR_active_waters/mor_active_refine150_agonist_noNanobody/step5_assembly.pdb"
OUTPUT_DIRECTORY_PATH="/scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicInteractions/data/testing"
OUTPUT_FILE_IDENTIFIER="bb_hydrogen_bond_result.txt"
WATER_HBOND_FILE_PATH="/scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/mOR-InteractionOutput/MOR_active_waters/mor_active_refine150_agonist_noNanobody/rep_1/Prod_1/hydrogen_bond_water_result.txt"
python DynamicInteractionCalculator.py $TRAJ_PATH $TOP_PATH $OUTPUT_DIRECTORY_PATH $OUTPUT_FILE_IDENTIFIER -hbbb -process $WATER_HBOND_FILE_PATH -stride 1

# Take Note:
# The choice of OUTPUT_FILE_IDENTIFIER must stay consistent when providing input file name for stitching across fragments
# In the second example where user wants to compute water bond, the argument for post processing file must be specified.
# This applies for the case of trying to compute normal hydrogen bond, residue water bonds, and water bridges from the raw
# water mediated hydrogen bond file. This is a way to have everything incorporated into the pipeline. 
"""

K_MIN_ARG = 6

# Open file descriptor for path and returns error message if invalid path 
def readFileOpener(path):
	f = open(path, 'r')
	if(f == None):
		print("File Opener Invalid For: " + str(path))
		exit(0)
	return f

# Write hbbb, hbsb, hbss to file 
def writeToHBondFile(fhb, frameHBondList):
	for elem in frameHBondList:
		fhb.write(elem + "\n")


# Generate combinations of first order water bridges 
def getWBondCombos(water, resid_list):
	wBondCombos = set()
	for pair in itertools.combinations(resid_list, 2):
		resid1, resid2 = pair 
		if(resid1 != resid2):
			wBondCombos.add((resid1[0], resid2[0]))
	return wBondCombos

# Takes the frameWBondDict which contains key = unique solvent identifier, and 
# value = list of all the residues that the unique solvent has h-bond with 
# at the particular frame and writes out all the combinations 
def writeToWBondFile(fwb, frameWBondDict):
	frameWBonds = set() 
	for water in frameWBondDict:
		resid_list = sorted(frameWBondDict[water])
		frameWBonds = frameWBonds | getWBondCombos(water, resid_list)
	frameWBonds = sorted(list(frameWBonds))
	print(frameWBonds)
	for resid1, resid2 in frameWBonds:
		fwb.write(resid1 + " -- " + resid2 + "\n")

# Generate combinations of first order ligand water bridges
def getLWBondCombos(ligand, resid_ligand_list):
	lwBondCombos = set()
	for resid in resid_ligand_list:
		if("LIG" not in resid[0]): # valid residue
			lwBondCombos.add((ligand, resid[0]))
	return lwBondCombos

# Takes the frameLWBond Dict which contains key = unique solvent identifier, and
# value = list of all residues and ligand that the unique solvent has h-bond with
# at the particular frame and writes out all the valid combinations involving
# ligand -- residue
def writeToLWBondFile(fwb, frameLWBondDict, currFrame=-1):
	def find_ligand(arr):
		"""
			Subroutine to find ligand in list of residue + ligand
		"""
		for elem in arr:
			cand_ligand = elem[0]
			if("LIG" in cand_ligand): return cand_ligand
		return None

	frameLWBonds = set()
	for water in frameLWBondDict:
		resid_ligand_list = sorted(frameLWBondDict[water])
		ligand = find_ligand(resid_ligand_list)
		if(ligand == None): continue
		frameLWBonds = frameLWBonds | getLWBondCombos(ligand, resid_ligand_list)
	frameLWBonds = sorted(list(frameLWBonds))
	print(frameLWBonds)
	for ligand, resid in frameLWBonds:
		fwb.write(ligand + " -- " + resid + "\n")


# Takes two lists of residues and returns cross product combination of the residue pairs
def residueCombinations(water1, water2, resid_list1, resid_list2):	
	return set([(res1[0], res2[0]) for res1 in resid_list1 for res2 in resid_list2]) #doesn't make distinct by water 

def residueLigandCombinations(water1, water2, resid_ligand_list1, resid_ligand_list2):
	rlCombos = set()
	for resid_lig1 in resid_ligand_list1:
		for resid_lig2 in resid_ligand_list2:
			rl1, rl2 = resid_lig1[0], resid_lig2[0]
			if("LIG" in rl1 and "LIG" not in rl2):
				rlCombos.add((rl1, rl2))
			elif("LIG" not in rl1 and "LIG" in rl2):
				rlCombos.add((rl2, rl1))
	return rlCombos




# Considers all pairs hoh1 and hoh2 that have hydrogen bond between them. 
# If residlist1 and residlist2 are the list of residues that exhibit hydrogen 
# bond to hoh1 and hoh2 respectively, then return the cross product combination
# of all resid1,resid2 pairs from the two lists. 
def writeToExtendedWBondFile(fwb, frameWBond2Dicts):
	print("writeToExtendedWBondFile()")
	extendWaterBridges = set()
	waterToWaterDict, waterToResidueDict = frameWBond2Dicts
	print("Length WaterToWater", len(waterToWaterDict), len(waterToResidueDict))
	for water1 in waterToWaterDict:
		water2_list = sorted(waterToWaterDict[water1]) # solvent molecules close to water 1 
		wat1_resid_list = []
		if(water1 in waterToResidueDict):
			wat1_resid_list = waterToResidueDict[water1]
		for i, water2 in enumerate(water2_list):
			wat2_resid_list = []
			if(water2 in waterToResidueDict):
				wat2_resid_list = waterToResidueDict[water2]
			extendWaterBridges = extendWaterBridges | residueCombinations(water1, water2, wat1_resid_list, wat2_resid_list)
	for resid1, resid2 in extendWaterBridges:
		fwb.write(resid1 + " -- " + resid2 + "\n")

# Considers all pairs hoh1 and hoh2 that have hydrogen bond between them. 
# If residlist1 and residlist2 are the list of residues and ligand that exhibit hydrogen 
# bond to hoh1 and hoh2 respectively, then return the cross product combination
# of all resid1,resid2 pairs from the two lists. 
def writeToExtendedLWBondFile(fwb, frameLWBond2Dicts):
	extendLigandWaterBridges = set()
	waterToWaterDict, waterToResidueLigandDict = frameLWBond2Dicts
	print(len(waterToWaterDict), len(waterToResidueLigandDict))
	for water1 in waterToWaterDict:
		water2_list = sorted(waterToWaterDict[water1])
		wat1_resid_ligand_list = []
		if(water1 in waterToResidueLigandDict):
			wat1_resid_ligand_list = waterToResidueLigandDict[water1]
		for i, water2 in enumerate(water2_list):
			wat2_residue_ligand_list = []
			if(water2 in waterToResidueLigandDict):
				wat2_residue_ligand_list = waterToResidueLigandDict[water2]
			extendLigandWaterBridges = extendLigandWaterBridges | residueLigandCombinations(water1, water2, wat1_resid_ligand_list, wat2_residue_ligand_list)
	for ligand, resid in extendLigandWaterBridges:
		fwb.write(ligand + " -- " + resid + "\n")


# Parses the water mediated hydrogen bond frame line by line and writes to the new 
# file that represents hBondType file. It will extract the stride, traj, top, 
# nFrames, compute time information. Every time the frame number updates, then 
# the frameHBondDataStruct written to the new file and then cleared out to prepare
# for the new frame.  
def writeToHeader(f, line, nFrames, currFrame, computingTime, frameHBondDataStruct, hBondType):
	isHeader = True
	if("Stride:" in line or "TrajectoryPath:" in line or "TopologyPath:" in line):
		f.write(line)
	elif("nFrames:" in line):
		nFrames = int(line.split("nFrames:")[1])
	elif('Computing Time:' in line):
		computingTime = float(line.split("Computing Time:")[1])
	elif("Hydrogen Bond-Water Mediated:" in line and "Ligand" not in line):
		top_path = line.split("Hydrogen Bond-Water Mediated:")[1]
		if(hBondType == '-hbbb'): f.write("\nBackbone Backbone Hydrogen Bonds:" + top_path)
		if(hBondType == '-hbsb'): f.write("\nSidechain Backbond Hydrogen Bonds:" + top_path)
		if(hBondType == '-hbss'): f.write("\nSidechain Sidechain Hydrogen Bonds:" + top_path)
		if(hBondType == '-rw'): f.write("\nResidue Water Hydrogen Bonds:" + top_path)
		if(hBondType == '-wb'): f.write("\nWater Bonds:" + top_path)
		if(hBondType == '-wb2'): f.write("\nExtended Water Bonds:" + top_path)

	### Ligand Based Interactions
	elif("Ligand Hydrogen Bond-Water Mediated:" in line):
		top_path = line.split("Ligand Hydrogen Bond-Water Mediated:")[1]
		if(hBondType == "-hlb"): f.write("\nLigand Backbone Hydrogen Bonds:" + top_path)
		if(hBondType == "-hls"): f.write("\nLigand Sidechain Hydrogen Bonds:" + top_path)
		if(hBondType == '-lw'): f.write("\nLigand Water Hydrogen Bonds:" + top_path)
		if(hBondType == '-lwb'): f.write("\nLigand Water Bonds:" + top_path)
		if(hBondType == '-lwb2'): f.write("\nLigand Extended Water Bonds:" + top_path)

	### Protein H-Bond Interactions
	elif("Hydrogen Bond Water Frame:" in line and "Ligand" not in line):
		frame_index = line.split("Hydrogen Bond Water Frame: ")[1].strip()
		if(hBondType == '-wb'):
			writeToWBondFile(f, frameHBondDataStruct)
			frameHBondDataStruct = {}
		elif(hBondType == '-wb2'):
			writeToExtendedWBondFile(f, frameHBondDataStruct)
			frameHBondDataStruct = ({},{})
		elif(hBondType in ['-hbbb', '-hbsb', '-hbss', '-rw']):
			writeToHBondFile(f, frameHBondDataStruct)
			frameHBondDataStruct = []
		currFrame = int(frame_index)
		if(currFrame %100 == 0): print("Finished: " + str(currFrame) + " frame.")
		if(hBondType == '-hbbb'): f.write("\nBackbone Backbone Hydrogen Bond Frame:" + str(frame_index) +"\n")
		if(hBondType == '-hbsb'): f.write("\nSidechain Backbond Hydrogen Bond Frame:" + str(frame_index) +"\n")
		if(hBondType == '-hbss'): f.write("\nSidechain Sidechain Hydrogen Bond Frame:" + str(frame_index) +"\n")
		if(hBondType == '-rw'): f.write("\nResidue Water Hydrogen Bond Frame:" + str(frame_index) +"\n")
		if(hBondType == '-wb'): f.write("\nWater Bond Frame:" + str(frame_index) +"\n")
		if(hBondType == '-wb2'): f.write("\nExtended Water Bond Frame:" + str(frame_index) + "\n")
	
	### Ligand H-Bond Interactions
	elif("Ligand Hydrogen Bond Water Frame:" in line):
		frame_index = line.split("Ligand Hydrogen Bond Water Frame: ")[1].strip()
		if(hBondType == '-lwb'):
			writeToLWBondFile(f, frameHBondDataStruct, currFrame)
			frameHBondDataStruct = {}
		elif(hBondType == '-lwb2'):
			writeToExtendedLWBondFile(f, frameHBondDataStruct)
			frameHBondDataStruct = ({},{})
		elif(hBondType in ['-hlb', '-hls', '-lw']):
			writeToHBondFile(f, frameHBondDataStruct)
			frameHBondDataStruct = []
		
		currFrame = int(frame_index)
		if(hBondType == '-hlb'): f.write("\nLigand Backbone Hydrogen Bond Frame:" + str(frame_index) + "\n")
		if(hBondType == '-hls'): f.write("\nLigand Sidechain Hydrogen Bond Frame:" + str(frame_index) + "\n")
		if(hBondType == '-lw'): f.write("\nLigand Water Hydrogen Bond Frame:" + str(frame_index) +"\n")
		if(hBondType == '-lwb'): f.write("\nLigand Water Bond Frame:" + str(frame_index) +"\n")
		if(hBondType == '-lwb2'): f.write("\nLigand Extended Water Bond Frame:" + str(frame_index) + "\n")


	elif(line !="\n"): isHeader = False
	return isHeader, nFrames, currFrame, computingTime, frameHBondDataStruct

# Computation for Salt Bridges
def calcSaltBridgeResults(traj, f, PROTEIN_CODE):
	print("\n\nSalt Bridges:" + PROTEIN_CODE + "\n")
	tic = time.clock()
	chainDict = initSaltBridgeChainDict(traj)
	sbFramePairs = calcSaltBridgeFramePairs(traj, chainDict)
	toc = time.clock()
	computingTime = toc - tic
	f.write("nFrames:" + str(len(sbFramePairs)) + "\n")
	f.write("\n\nSalt Bridges:" + PROTEIN_CODE + "\n")
	for index, sbPairs in enumerate(sbFramePairs):
		f.write("Salt Bridge Frame: " + str(index) + "\n")
		for pairs in sbPairs:
			atom1, atom2 = pairs[0], pairs[1]
			f.write(str(atom1[0]) + "_" + str(atom1[1]) +  " -- " + str(atom2[0]) + "_" + str(atom2[1]) + "\n")
	f.write("\nComputing Time:" + str(computingTime) + "\n")
	print("\nComputing Time:" + str(computingTime) + "\n")
	return computingTime


#Computation for pi-cation interaction
def calcPiCationResults(traj, f, PROTEIN_CODE):
	print("\n\nPi-Cation:" + PROTEIN_CODE + "\n")
	tic = time.clock()
	chainDict = initPiCationChainDict(traj)
	pcFramePairs = calcPiCationFramePairs(traj, chainDict)
	toc = time.clock()
	computingTime = toc - tic 
	f.write("nFrames:" + str(len(pcFramePairs)) + "\n")
	f.write("\n\nPi-Cation:" + PROTEIN_CODE + "\n")
	for index, picationPairs in enumerate(pcFramePairs):
		f.write("Pi_Cation Frame: " + str(index) + "\n")
		for pair in picationPairs:
			cation, aromatic = pair[0], pair[1]
			cation_str = str(cation[0]) + "_" + str(cation[1])
			aromatic_str = str(aromatic[0][0]).split("-")[0] + "_" + str(aromatic[0][1])
			f.write(cation_str + " -- " + aromatic_str + "\n")
	f.write("\nComputing Time:" + str(computingTime) + "\n")
	print("\nComputing Time:" + str(computingTime) + "\n")
	return computingTime

def calcFaceToFaceResults(traj, f, PROTEIN_CODE):
	print("\n\nPi-Stacking:" + PROTEIN_CODE + "\n")
	nFrames = len(traj)
	tic = time.clock()
	chainDict = initFaceFaceAromaticChainDict(traj)
	psFramePairs = calcPiStackingFramePairs(traj, chainDict)
	toc = time.clock()
	computingTime = toc - tic 
	f.write("nFrames:" + str(len(psFramePairs)) + "\n")
	f.write("\n\nPi-Stacking:" + PROTEIN_CODE + "\n")
	for index, pi_stackPairs in enumerate(psFramePairs):
		f.write("Pi_Stacking Frame: " + str(index) + "\n")
		for pair in pi_stackPairs:
			aromatic1, aromatic2 = pair[0], pair[1]
			aromatic_str1 = str(aromatic1[0][0]).split("-")[0] + "_" + str(aromatic1[0][1])
			aromatic_str2 = str(aromatic2[0][0]).split("-")[0] + "_" + str(aromatic2[0][1])
			f.write(aromatic_str1 + " -- " + aromatic_str2 + "\n")
	f.write("\nComputing Time:" + str(computingTime) + "\n")
	print("\nComputing Time:" + str(computingTime) + "\n")
	return computingTime


#Computation for edge to face aromatic detection
def calcEdgeToFaceResults(traj, f, PROTEIN_CODE):
	print("\n\nT-Stacking:" + PROTEIN_CODE + "\n")
	nFrames = len(traj)
	tic = time.clock()
	tsFramePairs = []
	chainDict = initFaceEdgeAromaticChainDict(traj)
	tsFramePairs = calcTStackingFramePairs(traj, chainDict)
	toc = time.clock()
	computingTime = toc - tic
	f.write("nFrames:" + str(len(tsFramePairs)) + "\n")
	f.write("\n\nT-Stacking:" + PROTEIN_CODE + "\n")
	for index, t_stackPairs in enumerate(tsFramePairs):
		f.write("T_Stacking Frame: " + str(index) + "\n")
		for pair in t_stackPairs:
			aromatic1, aromatic2 = pair[0], pair[1]
			aromatic_str1 = str(aromatic1[0][0]).split("-")[0] + "_" + str(aromatic1[0][1])
			aromatic_str2 = str(aromatic2[0][0]).split("-")[0] + "_" + str(aromatic2[0][1])
			f.write(aromatic_str1 + " -- " + aromatic_str2 + "\n")
	f.write("\nComputing Time:" + str(computingTime) + "\n")
	print("\nComputing Time:" + str(computingTime) + "\n")
	return computingTime


def calcVanderwaalsResults(traj, f, PROTEIN_CODE):
	print("\n\nVan Der Waals:" + PROTEIN_CODE + "\n")
	tic = time.clock()
	vdwFramePairs = calcVDWFramePairs(traj)
	toc = time.clock()
	computingTime = toc - tic
	f.write("nFrames:" + str(len(vdwFramePairs)) + "\n")
	f.write("\n\nVan Der Waals:" + PROTEIN_CODE + "\n")
	for index, vanderwaalPairs in enumerate(vdwFramePairs):
		f.write("Vanderwaal Frame: " + str(index) + "\n")
		for pair in vanderwaalPairs:
			atom1, atom2 = pair[0], pair[1]
			f.write(str(atom1[0]) + "_" + str(atom1[1]) +  " -- " + str(atom2[0]) + "_" + str(atom2[1]) + "\n")
	f.write("\nComputing Time:" + str(computingTime) + "\n")
	print("\nComputing Time:" + str(computingTime) + "\n")
	return computingTime


### Calculate all water mediated hydrogen bonds between protein and water
def calcHydrogenBondWaterResults(f, stride, TOP_PATH, TRAJ_PATH, solventId, chainId):
	print("BEGIN VMD HYDROGEN water: " + str(TOP_PATH))
	f.write("\n\nHydrogen Bond-Water Mediated:" + TOP_PATH + "\n")
	totalFrames, computingTime = calcVMDHydrogenBondWaterResults(f, stride, TOP_PATH, TRAJ_PATH, solventId, chainId)
	f.write("nFrames:" + str(totalFrames) + "\n")
	f.write("\nComputing Time:" + str(computingTime) + "\n")
	return computingTime


### Calculate all water mediated hydrogen bonds between protein, water, and ligand
def calcLigandHydrogenBondWaterResults(f, stride, TOP_PATH, TRAJ_PATH, solventId, chainId, ligand):
	print("BEGIN VMD LIGAND HYDROGEN water: " + str(TOP_PATH))
	f.write("\n\nLigand Hydrogen Bond-Water Mediated:" + TOP_PATH + "\n")
	totalFrames, computingTime = calcVMDHydrogenBondWaterResults(f, stride, TOP_PATH, TRAJ_PATH, solventId, chainId, ligand)
	f.write("nFrames:" + str(totalFrames) + "\n")
	f.write("\nComputing Time:" + str(computingTime) + "\n")
	return computingTime

### Compute interactions between two residues that are part of backbone
def calcBackBoneHBondResults(f, post_process_file, solventId = 'HOH'):
	print("Calculating -hbbb interactions.")
	fp = readFileOpener(post_process_file)
	currFrame, nFrames, computingTime, frameHBondList = -1, -1, -1, []
	backbone_atoms = ['N', 'O']
	for line in fp:
		isHeader, nFrames, currFrame, computingTime, frameHBondList = writeToHeader(f, line, nFrames, currFrame, computingTime, frameHBondList, '-hbbb')
		if(isHeader == False):
			resAtoms = line.split(" -- ")
			resAtom1, resAtom2 = resAtoms[0].strip(), resAtoms[1].strip()
			if(solventId not in resAtom1 and solventId not in resAtom2):
				atom1, atom2 = resAtom1.split("-")[1].strip(), resAtom2.split("-")[1].strip()
				if(atom1 in backbone_atoms and atom2 in backbone_atoms):
					frameHBondList.append(resAtom1 + " -- " + resAtom2)
	writeToHBondFile(f, frameHBondList)
	f.write("nFrames:" + str(nFrames) + "\n")
	f.write("Computing Time:" + str(computingTime) + "\n")
	frameHBondList = []

### Compute interaction between ligand to backbone of residue
def calcLigandBackBoneHBondResults(f, post_process_file, ligand, solventId = "HOH"):
	print("Calculating -lhbbb interactions.")
	fp = readFileOpener(post_process_file)
	currFrame, nFrames, computingTime, frameHBondList = -1, -1, -1, []
	backbone_atoms = ['N', 'O']
	for line in fp:
		isHeader, nFrames, currFrame, computingTime, frameHBondList = writeToHeader(f, line, nFrames, currFrame, computingTime, frameHBondList, '-hlb')
		if(isHeader == False):
			resAtoms = line.split(" -- ")
			resAtom1, resAtom2 = resAtoms[0].strip(), resAtoms[1].strip()
			if("LIG" in resAtom1 and ("LIG" not in resAtom2 and solventId not in resAtom2)): 
				atom2 = resAtom2.split("-")[1].strip()
				if(atom2 in backbone_atoms):
					frameHBondList.append(resAtom1 + " -- " + resAtom2)
			if(("LIG" not in resAtom1 and solventId not in resAtom1) and "LIG" in resAtom2):
				atom1 = resAtom1.split("-")[1].strip()
				if(atom1 in backbone_atoms):
					frameHBondList.append(resAtom1 + " -- " + resAtom2)
	writeToHBondFile(f, frameHBondList)
	f.write("nFrames:" + str(nFrames) + "\n")
	f.write("Computing Time:" + str(computingTime) + "\n")
	frameHBondList = []
			



### Processes full water mediated hydrogen file and sees if both atoms are part of backbone
def calcSideChainBackBoneHBondResults(f, post_process_file, solventId='HOH'):
	print("Calculating -hbsb interactions.")
	fp = readFileOpener(post_process_file)
	currFrame, nFrames, computingTime, frameHBondList = -1, -1, -1, []
	backbone_atoms = ['N', 'O']
	for line in fp:
		isHeader, nFrames, currFrame, computingTime, frameHBondList = writeToHeader(f, line, nFrames, currFrame, computingTime, frameHBondList, '-hbsb')
		if(isHeader == False):
			resAtoms = line.split(" -- ")
			resAtom1, resAtom2 = resAtoms[0].strip(), resAtoms[1].strip()
			if(solventId not in resAtom1 and solventId not in resAtom2):
				atom1, atom2 = resAtom1.split("-")[1].strip(), resAtom2.split("-")[1].strip()
				if((atom1 in backbone_atoms and atom2 not in backbone_atoms) or (atom1 not in backbone_atoms and atom2 in backbone_atoms)):
					frameHBondList.append(resAtom1 + " -- " + resAtom2)
	writeToHBondFile(f, frameHBondList)
	f.write("nFrames:" + str(nFrames) + "\n")
	f.write("Computing Time:" + str(computingTime) + "\n")
	frameHBondList = []

### Compute interactions between ligand to sidechain of residue
def calcLigandSideChainHBondResults(f, post_process_file, ligand, solventId="HOH"):
	print("Calculating -hbbb interactions.")
	fp = readFileOpener(post_process_file)
	currFrame, nFrames, computingTime, frameHBondList = -1, -1, -1, []
	backbone_atoms = ['N', 'O']
	for line in fp:
		isHeader, nFrames, currFrame, computingTime, frameHBondList = writeToHeader(f, line, nFrames, currFrame, computingTime, frameHBondList, '-hls')
		if(isHeader == False):
			resAtoms = line.split(" -- ")
			resAtom1, resAtom2 = resAtoms[0].strip(), resAtoms[1].strip()
			if("LIG" in resAtom1 and ("LIG" not in resAtom2 and solventId not in resAtom2)): 
				atom2 = resAtom2.split("-")[1].strip()
				if(atom2 not in backbone_atoms):
					frameHBondList.append(resAtom1 + " -- " + resAtom2)
			if(("LIG" not in resAtom1 and solventId not in resAtom1) and "LIG" in resAtom2):
				atom1 = resAtom1.split("-")[1].strip()
				if(atom1 not in backbone_atoms):
					frameHBondList.append(resAtom1 + " -- " + resAtom2)
	writeToHBondFile(f, frameHBondList)
	f.write("nFrames:" + str(nFrames) + "\n")
	f.write("Computing Time:" + str(computingTime) + "\n")
	frameHBondList = []

# Processes full water mediated hydrogen file and sees if exactly one atom part of side chain and 
# other atom part of back bone 
def calcSideChainHBondResults(f, post_process_file, solventId='HOH'):
	fp = readFileOpener(post_process_file)
	currFrame, nFrames, computingTime, frameHBondList = -1, -1, -1, []
	backbone_atoms = ['N', 'O']
	for line in fp:
		isHeader, nFrames, currFrame, computingTime, frameHBondList = writeToHeader(f, line, nFrames, currFrame, computingTime, frameHBondList, '-hbss')
		if(isHeader == False):
			resAtoms = line.split(" -- ")
			resAtom1, resAtom2 = resAtoms[0].strip(), resAtoms[1].strip()
			if(solventId not in resAtom1 and solventId not in resAtom2):
				atom1, atom2 = resAtom1.split("-")[1].strip(), resAtom2.split("-")[1].strip()
				if(atom1 not in backbone_atoms and atom2 not in backbone_atoms):
					frameHBondList.append(resAtom1 + " -- " + resAtom2)
	writeToHBondFile(f, frameHBondList)
	f.write("nFrames:" + str(nFrames) + "\n")
	f.write("Computing Time:" + str(computingTime) + "\n")
	frameHBondList = []		

# Processes full water mediated hydrogen file and sees if exactly one of the atoms is water
# and the other is part of residue 
def calcResidueWaterBondResults(f, post_process_file, solventId='HOH'):
	fp = readFileOpener(post_process_file)
	currFrame, nFrames, computingTime, frameHBondList = -1, -1, -1, []
	backbone_atoms = ['N', 'O']
	for line in fp:
		isHeader, nFrames, currFrame, computingTime, frameHBondList = writeToHeader(f, line, nFrames, currFrame, computingTime, frameHBondList, '-rw')
		if(isHeader == False):
			resAtoms = line.split(" -- ")
			resAtom1, resAtom2 = resAtoms[0].strip(), resAtoms[1].strip()
			if((solventId in resAtom1 and solventId not in resAtom2) or (solventId not in resAtom1 and solventId in resAtom2)):
				frameHBondList.append(resAtom1 + " -- " + resAtom2)
	writeToHBondFile(f, frameHBondList)
	f.write("nFrames:" + str(nFrames) + "\n")
	f.write("Computing Time:" + str(computingTime) + "\n")
	frameHBondList = []		


def calcLigandToWaterBondResults(f, post_process_file, ligand, solventId="HOH"):
	fp = readFileOpener(post_process_file)
	currFrame, nFrames, computingTime, frameHBondList = -1, -1, -1, []
	backbone_atoms = ['N', 'O']
	for line in fp:
		isHeader, nFrames, currFrame, computingTime, frameHBondList = writeToHeader(f, line, nFrames, currFrame, computingTime, frameHBondList, '-lw')
		if(isHeader == False):
			resAtoms = line.split(" -- ")
			resAtom1, resAtom2 = resAtoms[0].strip(), resAtoms[1].strip()
			if((solventId in resAtom1 and "LIG" in resAtom2) or ("LIG" in resAtom1 and solventId in resAtom2)):
				frameHBondList.append(resAtom1 + " -- " + resAtom2)
	writeToHBondFile(f, frameHBondList)
	f.write("nFrames:" + str(nFrames) + "\n")
	f.write("Computing Time:" + str(computingTime) + "\n")
	frameHBondList = []		

# This method computes first degree water bridges which means there 
# is at least one water that has hydrogen bond interaction to both of 
# the amino acids simultaneously in a single frame. 
def calcWaterBondResults(f, post_process_file, solventId='HOH'):
	fp = readFileOpener(post_process_file)
	currFrame, nFrames, computingTime, frameWBondDict = -1, -1, -1, {}
	backbone_atoms = ['N', 'O']
	for line in fp:
		isHeader, nFrames, currFrame, computingTime, frameWBondDict = writeToHeader(f, line, nFrames, currFrame, computingTime, frameWBondDict, '-wb')
		if(isHeader == False):
			resAtoms = line.split(" -- ")
			atomLabel1, atomLabel2, atomIndex1, atomIndex2 = resAtoms[0].strip(), resAtoms[1].strip(), resAtoms[2].strip(), resAtoms[3].strip()
			resAtom1 = (atomLabel1, atomIndex1)
			resAtom2 = (atomLabel2, atomIndex2)
			if(solventId in resAtom1[0] and solventId in resAtom2[0]): #skip if both atoms are water 
				continue 
			if(not(solventId not in resAtom1[0] and solventId not in resAtom2[0])): #at least one of atoms is water
				if(solventId in resAtom1[0]):
					solvent_atom, resid_atom = resAtom1, resAtom2
				else:
					solvent_atom, resid_atom = resAtom2, resAtom1
				if(solvent_atom not in frameWBondDict):
					frameWBondDict[solvent_atom] = [resid_atom]
				else:
					frameWBondDict[solvent_atom].append(resid_atom)
	writeToWBondFile(f, frameWBondDict)
	f.write("nFrames:" + str(nFrames) + "\n")
	f.write("Computing Time:" + str(computingTime) + "\n")
	frameWBondDict = {}

# Compute Ligand -- Water -- Residue Interactions
def calcLigandWaterBondResults(f, post_process_file, ligand, solventId="HOH"):
	fp = readFileOpener(post_process_file)
	currFrame, nFrames, computingTime, frameLWBondDict = -1, -1, -1, {}
	backbone_atoms = ['N', 'O']
	for line in fp:
		isHeader, nFrames, currFrame, computingTime, frameLWBondDict = writeToHeader(f, line, nFrames, currFrame, computingTime, frameLWBondDict, '-lwb')
		if(isHeader == False):
			resAtoms = line.split(" -- ")
			atomLabel1, atomLabel2, atomIndex1, atomIndex2 = resAtoms[0].strip(), resAtoms[1].strip(), resAtoms[2].strip(), resAtoms[3].strip()
			resAtom1 = (atomLabel1, atomIndex1)
			resAtom2 = (atomLabel2, atomIndex2)
			if(solventId in resAtom1[0] and solventId in resAtom2[0]): #skip if both atoms are water 
				continue 
			if(not(solventId not in resAtom1[0] and solventId not in resAtom2[0])): #at least one of atoms is water
				if(solventId in resAtom1[0]):
					solvent_atom, resid_ligand_atom = resAtom1, resAtom2
				else:
					solvent_atom, resid_ligand_atom = resAtom2, resAtom1
				if(solvent_atom not in frameLWBondDict):
					frameLWBondDict[solvent_atom] = [resid_ligand_atom]
				else:
					frameLWBondDict[solvent_atom].append(resid_ligand_atom)
	writeToLWBondFile(f, frameLWBondDict)
	f.write("nFrames:" + str(nFrames) + "\n")
	f.write("Computing Time:" + str(computingTime) + "\n")
	frameLWBondDict = {}



# This method computes second degree water bridges. This class of interaction
# is defined between amino acids aa1 and aa2, which have unique hydrogen bond
# interactions with hoh1 and hoh2 respectively. If hoh1-hoh2 also have 
# hydrogen bond interaction then aa1 and aa2 form an extended second degree
# water bridge. 
def calcWaterBond2Results(f, post_process_file, solventId='HOH'):
	fp = readFileOpener(post_process_file)
	currFrame, nFrames, computingTime = -1, -1, -1
	frameWBond2Dicts = ({},{}) 
	backbone_atoms = ['N', 'O']
	line_count = 0
	for line in fp: 
		if(line_count %100 == 0): print("Line count: " + str(line_count))
		isHeader, nFrames, currFrame, computingTime, frameWBond2Dicts = writeToHeader(f, line, nFrames, currFrame, computingTime, frameWBond2Dicts, '-wb2')
		if(isHeader == False):
			resAtoms = line.split(" -- ")
			atomLabel1, atomLabel2, atomIndex1, atomIndex2 = resAtoms[0].strip(), resAtoms[1].strip(), resAtoms[2].strip(), resAtoms[3].strip()
			resAtom1 = (atomLabel1, atomIndex1)
			resAtom2 = (atomLabel2, atomIndex2)
			if(solventId in resAtom1[0] and solventId in resAtom2[0]):
				if(resAtom1 not in frameWBond2Dicts[0]):
					frameWBond2Dicts[0][resAtom1] = [resAtom2]
				else:
					frameWBond2Dicts[0][resAtom1].append(resAtom2)
			elif((solventId in resAtom1[0] and solventId not in resAtom2[0]) or (solventId not in resAtom1[0] and solventId in resAtom2[0])):
				if(solventId in resAtom1[0]): solvent_atom, resid_atom = resAtom1, resAtom2
				else: solvent_atom, resid_atom = resAtom2, resAtom1 
				if(solvent_atom not in frameWBond2Dicts[1]):
					frameWBond2Dicts[1][solvent_atom] = [resid_atom]
				else:
					frameWBond2Dicts[1][solvent_atom].append(resid_atom)
		line_count += 1
	writeToExtendedWBondFile(f, frameWBond2Dicts)
	f.write("nFrames:" + str(nFrames) + "\n")
	f.write("Computing Time:" + str(computingTime) + "\n")
	frameWBond2Dicts = ({},{})


# This method computes second degree water bridges. This class of interaction
# is defined between ligand and aa, which have unique hydrogen bond
# interactions with hoh1 and hoh2 respectively. If hoh1-hoh2 also have 
# hydrogen bond interaction then ligand and aa form an extended second degree
# water bridge. 
def calcLigandWaterBond2Results(f, post_process_file, ligand, solventId="HOH"):
	fp = readFileOpener(post_process_file)
	currFrame, nFrames, computingTime = -1, -1, -1
	frameLWBond2Dicts = ({},{}) 
	backbone_atoms = ['N', 'O']
	line_count = 0
	for line in fp: 
		if(line_count %100 == 0): print("Line count: " + str(line_count))
		isHeader, nFrames, currFrame, computingTime, frameLWBond2Dicts = writeToHeader(f, line, nFrames, currFrame, computingTime, frameLWBond2Dicts, '-lwb2')
		if(isHeader == False):
			resAtoms = line.split(" -- ")
			atomLabel1, atomLabel2, atomIndex1, atomIndex2 = resAtoms[0].strip(), resAtoms[1].strip(), resAtoms[2].strip(), resAtoms[3].strip()
			resAtom1 = (atomLabel1, atomIndex1)
			resAtom2 = (atomLabel2, atomIndex2)
			if(solventId in resAtom1[0] and solventId in resAtom2[0]):
				if(resAtom1 not in frameLWBond2Dicts[0]):
					frameLWBond2Dicts[0][resAtom1] = [resAtom2]
				else:
					frameLWBond2Dicts[0][resAtom1].append(resAtom2)
			elif((solventId in resAtom1[0] and solventId not in resAtom2[0]) or (solventId not in resAtom1[0] and solventId in resAtom2[0])):
				if(solventId in resAtom1[0]): solvent_atom, resid_atom = resAtom1, resAtom2
				else: solvent_atom, resid_atom = resAtom2, resAtom1 
				if(solvent_atom not in frameLWBond2Dicts[1]):
					frameLWBond2Dicts[1][solvent_atom] = [resid_atom]
				else:
					frameLWBond2Dicts[1][solvent_atom].append(resid_atom)
		line_count += 1
	writeToExtendedLWBondFile(f, frameLWBond2Dicts)
	f.write("nFrames:" + str(nFrames) + "\n")
	f.write("Computing Time:" + str(computingTime) + "\n")
	frameLWBond2Dicts = ({},{})



def calcDynamicInteractions(file_writer, interaction_selection, stride, TOP_PATH, TRAJ_PATH, solvent, solventId, chainId, ligand, post_process_file):
	if(interaction_selection in ['-sb', '-pc', '-ps', '-ts', '-vdw']):
		traj = md.load(TRAJ_PATH, top = TOP_PATH)
		traj = traj[::stride] #take stride value into account 
	if(interaction_selection == '-sb'):
		calcSaltBridgeResults(traj, file_writer, TOP_PATH)
	if(interaction_selection == '-pc'):
		calcPiCationResults(traj, file_writer, TOP_PATH)
	if(interaction_selection == '-ps'):
		calcFaceToFaceResults(traj, file_writer, TOP_PATH)
	if(interaction_selection == '-ts'):
		calcEdgeToFaceResults(traj, file_writer, TOP_PATH)
	if(interaction_selection == '-vdw'):
		calcVanderwaalsResults(traj, file_writer, TOP_PATH)
	if(interaction_selection == '-hbw'):
		calcHydrogenBondWaterResults(file_writer, stride, TOP_PATH, TRAJ_PATH, solventId, chainId)
	if(interaction_selection == '-hbbb'):
		calcBackBoneHBondResults(file_writer, post_process_file)
	if(interaction_selection == '-hbsb'):
		calcSideChainBackBoneHBondResults(file_writer, post_process_file)
	if(interaction_selection == '-hbss'):
		calcSideChainHBondResults(file_writer, post_process_file)
	if(interaction_selection == '-rw'):
		calcResidueWaterBondResults(file_writer, post_process_file)
	if(interaction_selection == '-wb'):
		calcWaterBondResults(file_writer, post_process_file)
	if(interaction_selection == '-wb2'):
		calcWaterBond2Results(file_writer, post_process_file)

	### Ligand Based Interactions
	if(interaction_selection == "-lhbw"):
		calcLigandHydrogenBondWaterResults(file_writer, stride, TOP_PATH, TRAJ_PATH, solventId, chainId, ligand)
	if(interaction_selection == "-hlb"):
		calcLigandBackBoneHBondResults(file_writer, post_process_file, ligand)
	if(interaction_selection == "-hls"):
		calcLigandSideChainHBondResults(file_writer, post_process_file, ligand)
	if(interaction_selection == '-lw'):
		calcLigandToWaterBondResults(file_writer, post_process_file, ligand)
	if(interaction_selection == "-lwb"):
		calcLigandWaterBondResults(file_writer, post_process_file, ligand)
	if(interaction_selection == "-lwb2"):
		calcLigandWaterBond2Results(file_writer, post_process_file, ligand)

def getPDBCodes(str_list):
	pdb_codes = []
	pdb_list = str_list.split()
	for pdb_elem in pdb_list:
		pdb_codes.append(pdb_elem.split('_')[0])
	return pdb_codes

def createFileWriter(OutputPath, OutputFileIdentifier):
	filename = OutputPath + "/" + OutputFileIdentifier
	print("Output File Path: " + filename)
	if not os.path.exists(os.path.dirname(filename)):
		os.makedirs(os.path.dirname(filename))
	f = open(filename, 'w')
	return f


def displayResults():
	if(len(sys.argv) < K_MIN_ARG):
		print(USAGE_STR)
		exit(1)
	TRAJ_PATH = sys.argv[1]
	TOP_PATH= sys.argv[2]
	OutputPath = sys.argv[3]
	OutputFileIdentifier = sys.argv[4]
	interaction_selection = sys.argv[5]
	post_process_file = None
	if("-process" in sys.argv):
		processIndex = sys.argv.index("-process")
		post_process_file = sys.argv[processIndex + 1]
	stride = 1
	solvent = None 
	solventId = None 
	if("-stride" in sys.argv):
		strideIndex = sys.argv.index("-stride")
		stride = int(sys.argv[strideIndex+1])
	if("-solv" in sys.argv):
		solvIndex = sys.argv.index("-solv")
		solventId = sys.argv[solvIndex +1]
		solvent = "resname " + solventId
	chainId = None 
	if("-chain" in sys.argv):
		chainId = str(sys.argv[sys.argv.index("-chain") + 1])
	ligand = None
	if("-ligand" in sys.argv):
		ligand = str(sys.argv[sys.argv.index("-ligand") + 1])
	f = createFileWriter(OutputPath, OutputFileIdentifier)
	f.write("Stride:" + str(stride) + "\n")
	f.write("TrajectoryPath:" + TRAJ_PATH + "\n")
	print("Begin Noncovalent Interaction Calculator for: " + TRAJ_PATH)
	f.write("TopologyPath:" + TOP_PATH + "\n")
	calcDynamicInteractions(f, interaction_selection, stride, TOP_PATH, TRAJ_PATH, solvent, solventId, chainId, ligand, post_process_file)

if __name__ == "__main__":
	displayResults()
