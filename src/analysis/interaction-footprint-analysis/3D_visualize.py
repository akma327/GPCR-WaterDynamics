# Author: Anthony Kai Kwang Ma
# Email: akma327@stanford.edu
# 3D_visualize.py

from __future__ import division

import csv 
import numpy as np
import vmd, molecule
from VMD import *
import sys
import os
import subprocess
import matplotlib.pyplot as plt
import matplotlib.mlab as mlab
import ast
from utils import *


USAGE_STR = """
# Purpose
# Given the interaction-footprint-table and designated column identifier display 
# the interactions on VMD with line properties representing the frequency and type
# of interaction throughout the experiment condition trajectory. 

# Usage 
# python 3D_visualize.py <INTERACTION_FOOTPRINT_TABLE> <EXP_REP_COLUMN_ID> <TOPOLOGY> <PDB_CODE> <DISPLAY_MODE>

# Arguments
# <INTERACTION_FOOTPRINT_TABLE> Absolute path to the interaction-footprint-table. Rows are the interaction 
# keys (gpcrdb1, gpcrdb2, atom1, atom2, interaction type) and columns are experiment replicate conditions. 
# <EXP_REP_COLUMN_ID> Name of the experiment replicate condition to visualize 
# <TOPOLOGY> Absolute path to the topology matching the experiment replicate condition being visualized 
# <PDB_CODE> PDB code for the topology. 
# <DISPLAY_MODE> Can be either "-d" for detailed mode or "-s" for displaying only alpha carbon 

# Example 1 MOR Polar Network
# import sys
# INTERACTION_FOOTPRINT_TABLE="/scratch/PI/rondror/akma327/DynamicNetworks/results/interaction-footprint-analysis/polar-network-freq-tables/atom-resolution/5C1M/mor-active-atom-footprint.txt"
# EXP_REP_COLUMN_ID="MOR-active-noNb-BU72-nature2015-rep_1"
# TOPOLOGY="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/MOR-active-noNb-BU72-nature2015/condition-nb-interface-restrained-BU72/step5_assembly.pdb"
# PDB_CODE="5C1M"
# DISPLAY_MODE="-s"
# sys.argv = ['a', INTERACTION_FOOTPRINT_TABLE, EXP_REP_COLUMN_ID, TOPOLOGY, PDB_CODE, DISPLAY_MODE]
# execfile("3D_visualize.py")

# Example 2 DOR Polar Network
import sys
INTERACTION_FOOTPRINT_TABLE="/scratch/PI/rondror/akma327/DynamicNetworks/results/interaction-footprint-analysis/polar-network-freq-tables/atom-resolution/4N6H/dor-inactive-atom-footprint.txt"
EXP_REP_COLUMN_ID="DOR-inactive-naltrindole-unpublished-condition-naltrindole-bound-rep_1"
TOPOLOGY="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/DOR-inactive-naltrindole-unpublished/condition-naltrindole-bound/step5_assembly.pdb"
PDB_CODE="4N6H"
DISPLAY_MODE="-s"
sys.argv = ['a', INTERACTION_FOOTPRINT_TABLE, EXP_REP_COLUMN_ID, TOPOLOGY, PDB_CODE, DISPLAY_MODE]
execfile("3D_visualize.py")

"""
K_MIN_ARG = 6
FREQ_THRESHOLD = 0.1
MAX_LINE_WIDTH = 10


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

# Load topology into vmd
def load_top(TOPOLOGY, DISPLAY_MODE):
	top_file_type = getFileType(TOPOLOGY)
	trajid = molecule.load(top_file_type, TOPOLOGY)
	molrep.delrep(0,0)
	# molrep.addrep(0, selection= "water within 4 of protein")
	if(DISPLAY_MODE == "-d"):
		molrep.addrep(0, style= "NewRibbons", color = "ColorID 8", material="Transparent", selection="protein")
	elif(DISPLAY_MODE == "-s"):
		molrep.addrep(0, style= "NewRibbons", color = "ColorID 8", material="Transparent", selection="protein")
		molrep.addrep(0, style= "CPK", color = "ColorID 8", material="Transparent", selection="name CA")

# Extract file type 
def getFileType(top_file_path):
	fileType = top_file_path.split("/")[-1].split(".")[1].strip()
	if(fileType == 'nc'): fileType = 'netcdf'
	return fileType

# Calculate coordinate as a point, or centroid for aromatic ring
def atomCoordinate(atomSelection):
	x = atomSelection.get('x')
	y = atomSelection.get('y')
	z = atomSelection.get('z')
	atomcoord = None
	if(len(x) == 0 or len(y) == 0 or len(z) == 0): # BUGGY SAFETY CATCH FIX THIS
		return atomcoord
	elif(len(x) == 1 and len(y) == 1 and len(z) == 1):
		atomcoord = (x[0], y[0], z[0])
	elif(len(x) == 3 and len(y) == 3 and len(z) == 3):
		x_median = float(x[0] + x[1] + x[2])/3
		y_median = float(y[0] + y[1] + y[2])/3
		z_median = float(z[0] + z[1] + z[2])/3
		atomcoord = (x_median, y_median, z_median)
	return atomcoord


# Generates detailed atom query 
def genDetailedAtomQuery(residue, atom):
	resname = residue[0:3]
	resid = residue[3:]
	query = "resname " + resname + " and resid " + resid + " and name " + atom
	return query

def genSimpleAtomQuery(residue):
	resname = residue[0:3]
	resid = residue[3:]
	query = "resname " + resname + " and resid " + resid + " and name CA"
	return query 


# Draw line between two atoms to represent an interaction. 
# Red: Direct hydrogen bond
# Blue: Water Bridge
# Green: Extended water Bridge
def drawInteractionLine(residue1, atom1, residue2, atom2, interaction_type, freq_val, DISPLAY_MODE):
	if(DISPLAY_MODE == "-d"):
		atomquery1, atomquery2 = genDetailedAtomQuery(residue1, atom1), genDetailedAtomQuery(residue2, atom2)
	elif(DISPLAY_MODE == "-s"):
		atomquery1, atomquery2 = genSimpleAtomQuery(residue1), genSimpleAtomQuery(residue2)
	atomsel1 = atomsel.atomsel(atomquery1, molid = 0)
	atomsel2 = atomsel.atomsel(atomquery2, molid = 0)
	atom1Coord = atomCoordinate(atomsel1)
	atom2Coord = atomCoordinate(atomsel2)
	if(atom1Coord != None and atom2Coord != None):
		distance = np.linalg.norm(np.array(atom1Coord) - np.array(atom2Coord))
		width = int(freq_val*MAX_LINE_WIDTH)
		# width = MAX_LINE_WIDTH
		if(interaction_type in ["hbss", "hbsb", "hbbb"]):
			graphics.color(0, 'orange')
		elif(interaction_type == "wb"):
			graphics.color(0, 'cyan')
		elif(interaction_type == "wb2"):
			graphics.color(0, 'green')
		graphics.line(0, atom1Coord, atom2Coord, style = 'solid', width = width)



# Bold the amino acid that is connected by an interaction 
def boldResidue(residue):
	resname = residue[0:3]
	resid = residue[3:]
	if(resname == "HIS"):
		bold_query = "(resname HSE or resname HSD or resname HSP) and resid " + resid + " and noh"
	else:
		bold_query = "resname " + resname + " and resid " + resid + " and noh"
	molrep.addrep(0, style="Licorice", color="Name", material = "Opaque", selection = bold_query)


# Visualize frequency of interactions between amino acid with respect to the protein in three dimensions
def visualize3D(row_label_freq, GPCRDB_DICT, DISPLAY_MODE):
	boldResidueSet = set()
	for row_label, freq_val in row_label_freq:
		if(freq_val > FREQ_THRESHOLD and '-' not in row_label):
			gpcrdb1, gpcrdb2, atom1, atom2, interaction_type = row_label.split(":")
			residue1, residue2 = GPCRDB_DICT[gpcrdb1], GPCRDB_DICT[gpcrdb2]
			drawInteractionLine(residue1, atom1, residue2, atom2, interaction_type, freq_val, DISPLAY_MODE)
			if(DISPLAY_MODE == "-d"):
				boldResidueSet.add(residue1)
				boldResidueSet.add(residue2)
	if(DISPLAY_MODE == "-d"):
		for residue in list(boldResidueSet):
			boldResidue(residue)


if __name__ == "__main__":
	if(len(sys.argv) < K_MIN_ARG):
		print(USAGE_STR)
		exit(1)
	INTERACTION_FOOTPRINT_TABLE = sys.argv[1]
	EXP_REP_COLUMN_ID = sys.argv[2]
	TOPOLOGY = sys.argv[3]
	PDB_CODE = sys.argv[4]
	DISPLAY_MODE = sys.argv[5]
	init()
	load_top(TOPOLOGY, DISPLAY_MODE)
	GPCRDB_DICT = {v:k for k,v in genResidueToGpcrdbTable(PDB_CODE).items()} # Invert keys to values to go from GPCRDB to Residue Name 
	row_label_freq = processInteractionFootprintTable(INTERACTION_FOOTPRINT_TABLE, EXP_REP_COLUMN_ID)
	visualize3D(row_label_freq, GPCRDB_DICT, DISPLAY_MODE)


