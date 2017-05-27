# Author: Anthony Kai Kwang Ma
# Email: akma327@stanford.edu
# vmdDisplayUtils.py 

import vmd, molecule
from VMD import *

water_resnames = ['HOH', 'TIP3', 'IP3']

# Takes a dictionary with key = interaction value = binary time presence
# Output: Key = frameIndex or time, value = list of interactions
# def groupInteractionByTime(binaryInteractionMap, totalFrames):
# 	interactionByTimeDict = {timeFrame: [] for timeFrame in range(totalFrames)}
# 	for interaction in binaryInteractionMap.keys():
# 		print("asdf ", interaction)
# 		for time in range(totalFrames):
# 			print("time " + str(time))
# 			if(binaryInteractionMap[interaction][time] == 1):
# 				interactionByTimeDict[time].append(interaction)
# 	return interactionByTimeDict


def getFileType(top_file_path):
	fileType = top_file_path.split("/")[-1].split(".")[1].strip()
	if(fileType == 'nc'): fileType = 'netcdf'
	return fileType

def groupInteractionByTime(binaryInteractionMap, totalFrames):
	interactionByTimeDict = {timeFrame: [] for timeFrame in range(totalFrames)}
	for interaction in binaryInteractionMap.keys():
		for time in binaryInteractionMap[interaction]:
			interactionByTimeDict[time].append(interaction)
	return interactionByTimeDict

# For a given key return the residue name residue id, atom name, and chain id
def atomInfoExtractor(atomKey):
	if("-" in atomKey):
		residueAtom = atomKey.split("-")
		resname = residueAtom[0][0:3]
		resid = residueAtom[0][3:]
		if("_" in residueAtom[1]):
			atomname = residueAtom[1].split("_")[0]
			chainId = residueAtom[1].split("_")[1] # FIX: How to utilize chain information
		else:
			atomname, chainId = residueAtom[1], 0
		return resname, resid, atomname, chainId
	else:
		residue_Chain = atomKey.split("_")
		resname = residue_Chain[0][0:3]
		resid = residue_Chain[0][3:]
		if(len(residue_Chain) > 1):
			chainId = residue_Chain[1]
		else:
			chainId = 0
		return resname, resid, None, chainId


# Generate query for simplified alpha carbon mode
def alphaCarbonQuery(atomKey):
	resname, resid, atomname, chainId = atomInfoExtractor(atomKey)
	if(resname in water_resnames):
		selectString = "water and resid " + resid + " and name CA"
	else:
		selectString = "resname " + resname + " and resid " + resid + " and name CA"
	return selectString

# Generate Query for standard detail mode
def detailAtomQuery(atomKey):
	resname, resid, atomname, chainId = atomInfoExtractor(atomKey)
	if(atomname != None):
		if(resname == "HIS"):
			return "(resname HSE or resname HSD or resname HSP)" + " and resid " + resid + " and name " + atomname
		else:
			if(resname in water_resnames):
				return "water and resid " + resid + " and name " + atomname
			else:
				return "resname " + resname + " and resid " + resid + " and name " + atomname
	else:
		if(resname == "PHE" or resname == "TYR"):
			return "resname " + resname + " and resid " + resid + " and (name CG or name CE1 or name CE2)"
		elif(resname == "TRP"):
			return "resname " + resname + " and resid " + resid + " and (name CD2 or name CZ2 or name CZ3)"

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

# Set color for hydrogen bonds between side chains
# def backbone_hbond_color_toggle(atom1, atom2, interaction_selection):
# 	interactionStr = ""
# 	backbone_atoms = ['N', 'O']
# 	resname1, resid1, atomname1, chainId1 = atomInfoExtractor(atom1)
# 	resname2, resid2, atomname2, chainId2 = atomInfoExtractor(atom2)
# 	if(atomname1 not in backbone_atoms or atomname2 not in backbone_atoms):
# 		graphics.color(0, 'magenta')
# 		interactionStr = "Drew Hydrogen Bond Sidechain Interaction"
# 	return interactionStr

def coloringSetting(atom1, atom2, interaction_selection):
	interactionStr = ""
	if(interaction_selection == "-sb"): 
		graphics.color(0, 'ochre')
		interactionStr = "Drew Salt Bridge Interaction "
	elif(interaction_selection == "-pc"):
		graphics.color(0, 'orange')
		interactionStr = "Drew Pi Cation Interaction"
	elif(interaction_selection == "-ps"):
		graphics.color(0, 'pink')
		interactionStr = "Drew Pi Stacking Interaction"
	elif(interaction_selection == "-ts"):
		graphics.color(0, 'green') #originally pink
		interactionStr = "Drew T Stacking Interaction"
	elif(interaction_selection == "-vdw"):
		graphics.color(0, 'cyan') #originally silver
		interactionStr = "Drew Van Der Waals Interaction"
	# elif(interaction_selection == "-hbbb"):
	# 	graphics.color(0, 'gray')
	# 	interactionStr = "Drew Backbone-Backbone Hydrogen Bond"
	# elif(interaction_selection == "-hbsb"):
	# 	graphics.color(0, 'green')
	# 	interactionStr = "Drew Sidechain-Backbone Hydrogen Bond"
	# elif(interaction_selection == "-hbss"):
	# 	graphics.color(0, 'magenta')
	# 	interactionStr = "Drew Sidechain-Sidechain Hydrogen Bond"
	# elif(interaction_selection == "-rw"):
	# 	graphics.color(0, 'cyan')
	# 	interactionStr = "Drew Residue Water Interaction"
	# elif(interaction_selection == "-wb"):
	# 	graphics.color(0, 'cyan')
	# 	interactionStr = "Drew Water Bond Interaction"
	
	return interactionStr

