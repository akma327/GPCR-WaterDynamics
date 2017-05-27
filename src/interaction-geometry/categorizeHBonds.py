# categorizeHBonds.py
# Written by Anthony Ma 03/02/16
# This script takes in a path to hydrogen_bond_water_results.txt which stores the raw list of 
# solvent (usually water) mediated hydrogen bonds and will generate the hydrogen_bond_result.txt
# by filtering out the hydrogen bonds that incorporate two amino acid atoms. It can also generate
# water_bond_result.txt which is a file that stores the frame by frame list of amino acid pairs
# that are not connected directly by hydrogen bond, but rather share at least one unique water
# molecule that allows it to form a water bridge. 
# Usage:
# >> python categorizeHBonds.py <PATH to hydrogen_bond_water_results.txt> <solvent identifier> <-hb flag> <-wb flag>
# Example:
# >> PATH="/scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/mOR-InteractionOutput/MOR_active_waters/mor_active_refine150_agonist_noNanobody/rep_1/Prod_1/hydrogen_bond_water_result.txt"
# >> python categorizeHbonds.py $PATH HOH -hb -wb 


# Output: In this case we would get the hydrogen_bond_result.txt and water_bond_result.txt in the same folder as the
# original hydrogen_bond_water_result.txt.
# If we had specified solvent to be IP3 instead, then we would filter out the water molecule by this naming convention
# You must have at least -hb or -wb or program will exit. -hb will produce hydrogen_bond_result.txt and -wb will 
# produce water_bond_result.txt

from __future__ import print_function, division

import os
import sys
import time
import itertools
from itertools import product
import numpy as np
import mdtraj as md
from mdtraj.utils import ensure_type
from mdtraj.geometry import compute_distances, compute_angles
from mdtraj.geometry import _geometry


def writeToHBondFile(fhb, frameHBondList):
	for elem in frameHBondList:
		fhb.write(elem + "\n")


def writeWBondCombos(fwb, water,  resid_list):
	for pair in itertools.combinations(resid_list, 2):
		resid1, resid2 = pair
		if(resid1 != resid2):
			fwb.write(resid1 + " -- " + resid2 + "\n")

def writeToWBondFile(fwb, frameWBondDict):
	for water in frameWBondDict:
		resid_list = sorted(frameWBondDict[water])
		writeWBondCombos(fwb, water, resid_list)


def categorizeHBonds(file_path, solvent_id, output_options):
	f = open(file_path, 'r')
	base_write_path = "/".join(file_path.split("/")[:-1])
	fhb, fwb = None, None
	if("-hb" in output_options):
		hb_path = base_write_path + "/" + "hydrogen_bond_result.txt"
		if not os.path.exists(os.path.dirname(hb_path)):
			os.makedirs(os.path.dirname(hb_path))
		fhb = open(hb_path, 'w')
	if("-wb" in output_options):
		wb_path = base_write_path + "/" + "water_bond_result.txt"
		if not os.path.exists(os.path.dirname(wb_path)):
			os.makedirs(os.path.dirname(wb_path))
		fwb = open(wb_path, 'w')
	if(f == None):
		print("Invalid file path.")
		exit(0)
	currFrame = -1
	frameHBondList = []
	frameWBondDict = {} #Key = unique solvent identifier, Value = list of residues bonded to this water 
	nFrames = -1
	computingTime = -1
	for line in f:
		if("Stride:" in line or "TrajectoryPath:" in line or "TopologyPath:" in line):
			if(fhb != None): fhb.write(line)
			if(fwb != None): fwb.write(line)
		elif("nFrames:" in line):
			nFrames = int(line.split("nFrames:")[1])
		elif('Computing Time:' in line):
			computingTime = float(line.split("Computing Time:")[1])
		elif("Hydrogen Bond-Water Mediated:" in line):
			top_path = line.split("Hydrogen Bond-Water Mediated:")[1]
			if(fhb != None): fhb.write("\nHydrogen Bonds:" + top_path)
			if(fwb != None): fwb.write("\nWater Bonds:" + top_path)
		elif("Hydrogen Bond Water Frame:" in line):
			frame_index = line.split("Hydrogen Bond Water Frame: ")[1].strip()
			if(fhb != None): writeToHBondFile(fhb, frameHBondList)
			if(fwb != None): writeToWBondFile(fwb, frameWBondDict)
			frameHBondList, frameWBondDict = [], {} 
			currFrame = int(frame_index)
			if(currFrame %100 == 0): print("Finished: " + str(currFrame) + " frame.")
			if(fhb != None): fhb.write("\nHydrogen Bond Frame: " + str(frame_index) + "\n")
			if(fwb != None): fwb.write("\nWater Bond Frame: " + str(frame_index) + "\n")
		elif(line != "\n"):
			atoms = line.split(" -- ")
			atom1, atom2 = atoms[0].strip(), atoms[1].strip()
			if(solvent_id not in atom1 and solvent_id not in atom2): #hbond
				frameHBondList.append(atom1 + " -- " + atom2)
			else:
				if(solvent_id in atom1):
					solvent_atom, resid_atom = atom1, atom2
				else:
					solvent_atom, resid_atom = atom2, atom1 
				if(solvent_atom not in frameWBondDict):
					frameWBondDict[solvent_atom] = [resid_atom]
				else:
					frameWBondDict[solvent_atom].append(resid_atom)

	if(fhb != None): 
		writeToHBondFile(fhb, frameHBondList)
		fhb.write("nFrames:" + str(nFrames) + "\n")
		fhb.write("Computing Time:" + str(computingTime) + "\n")
	if(fwb != None): 
		writeToWBondFile(fwb, frameWBondDict)
		fwb.write("nFrames:" + str(nFrames) + "\n")
		fwb.write("Computing Time:" + str(computingTime) + "\n")

	frameHBondList, frameWBondDict = [], {} 



if __name__ == "__main__":
	file_path = sys.argv[1]
	solvent_id = sys.argv[2]
	output_options = sys.argv[3:]
	if(len(output_options) == 0):
		print("Must specify at least one of -hb or -wb.")
		exit(0)
	print("Categorizing Hydrogen Bonds: " + str(file_path) + " Solvent: " + solvent_id)
	tic = time.clock()
	categorizeHBonds(file_path, solvent_id, output_options)
	toc = time.clock()
	print("Categorizing Time = " + str(toc-tic))


