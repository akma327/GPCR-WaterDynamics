# Author: Chaitanya Asawa
# Edited By: Anthony Kai Kwang Ma
# Email: akma327@stanford.edu
# water_density.py

#!/share/PI/rondror/software/miniconda/bin/python

from __future__ import division

import vmd, molecule
from vmd import *
import mdtraj as md
import numpy as np 
import math
import operator
import sys
import time 
from multiprocessing import Pool 
from water_density_utils import *
import resource 
 
USAGE_STR = """

# Purpose 
# Finds out how many water atoms (not water molecules) pass through a cubical
# cells in a rectangular prism.
# The boundaries of the prism may be defined.

# USAGE:
# python water_density.py <TOP> <TRAJ> <OUTPUT_FILE> <-nFrames>

# Arguments
# <TOP> Absolute path to the topology file 
# <TRAJ> Absolute path to the trajectory file 
# <OUTPUT_FILE> Absolute path to the output file 
# <-nFrames> Optional flag to print out the number of frames. 

"""

 
def in_grid(coordinates):
  	"""
    Given the coordinates of a water molecule in the grid, finds 
    out if the water molecule is in the defined grid region.

    Parameters:
	coordinates: Coordinates of the water molecule

    Returns True if the water molecule is in the grid, False otherwise
	"""

	if MIN_X <= coordinates[0] and coordinates[0] < MAX_X:
		if MIN_Y <= coordinates[1] and coordinates[1] < MAX_Y:
 			if MIN_Z <= coordinates[2] and coordinates[2] < MAX_Z:
 				return True

	return False
 
 
def hash(coordinates):
 	"""
    Given the coordinates of a water molecule in the grid, finds 
    out which grid cell the water's location corresponds to.
	
    Parameters:
	coordinates: Coordinates of the water molecule

    Returns the corresponding grid cell indices as a tuple.
	"""

	x_index = int((coordinates[0] - MIN_X)/CELL_SIZE)
	y_index = int((coordinates[1] - MIN_Y)/CELL_SIZE)
	z_index = int((coordinates[2] - MIN_Z)/CELL_SIZE)
	
	return (x_index, y_index, z_index) 
 

def hash_insert(grid, coordinates, frame_num):

	"""
    Given the coordinates of a water molecule, if it is 
    in the grid, hash_insert increments the count of the grid cell the water's location
    corresponds to.
	
    Parameters:
	grid: The actual grid which stores water counts
	coordinates: Coordinates of the water molecule
    frame_num: The frame number at which we are considering the water molecule 

	"""

	if(in_grid(coordinates)):	

		cell_indices = hash(coordinates)
		x_index = cell_indices[0]
		y_index = cell_indices[1]
		z_index = cell_indices[2]

		grid[x_index][y_index][z_index][frame_num] = 1


def create_grid(num_frames):
	"""
    Initializes the grid by calculating its dimensions.
	
    Parameters:
	num_frames: The number of frames in the trajectory

    Returns the initialized grid of 0s.
	"""

	x_dimension = int((MAX_X - MIN_X)/CELL_SIZE)
	y_dimension = int((MAX_Y - MIN_Y)/CELL_SIZE)
	z_dimension = int((MAX_Z - MIN_Z)/CELL_SIZE)

	grid = np.zeros((x_dimension, y_dimension, z_dimension, num_frames))

	return grid


def calculate_water_density(grid, boundIndices, coord):
	"""
	Goes through all of the frames, and for each bound water, uses the
    coordinates to find the water's location in the grid. The hash_insert
    function takes care of updating the grid accordingly.

	Parameters:
	grid: The actual grid which stores water counts
	boundIndices: Indices of water in range
    coord: Has the coordinates of atoms in all frames

	"""
	for i in range(len(coord)):
		print("calculate_water_density " + str(i) + " / " + str(len(coord)))
		frame_coord = coord[i]
		for water_index in boundIndices:
			coordinates = frame_coord[water_index]
			hash_insert(grid, coordinates, i)	


def merge_frames(neighbor_frames):
	"""
	We want to know if the cell or any of the neighboring cells has a water
	at a given point in time. Thus, we want a merged array of all the neighboring
	cells where each index has the value 0 or 1 just as the individual
	arrays do. (Just summing the arrays might result in points in time with
	value greater than 1, rather than a boolean indicator).

	Parameters: 
	neighbor_frames: The neighboring arrays to merge.
	
	Returns:
	The merged array

	"""
	# get the number of frames in total by using the first array from neighbors
	num_frames = len(neighbor_frames[0]) 
	merged_neighbors = [0]*num_frames

	for neighbor in neighbor_frames:
		for frame_index in range(num_frames):
			if neighbor[frame_index] == 1:
				merged_neighbors[frame_index] = 1

	return merged_neighbors


def neighbor_sum(grid, x, y, z):
	"""
	This function computes the sum of the neighboring grid cells in 3D
	
	Parameters: 
	grid: Stores the data for the grid cells and in which frames they're occupied
	x, y, z: coordinates for the center cell 

	Returns the sum of the 26 neighboring cells. If the cell is in the exterior of the grid,
	just returns the water molecules that passed through that cell (does not do anything with neighbors).
	"""

	water_freq_through_cell = np.sum(grid[x][y][z])

	# for now, ignore the exterior of the grid
	if x == 0 or y == 0 or z == 0:
		return water_freq_through_cell
	if x == int((MAX_X - MIN_X)/CELL_SIZE - 1): 
		return water_freq_through_cell
	if y == int((MAX_Y - MIN_Y)/CELL_SIZE - 1):
		return water_freq_through_cell
	if z == int((MAX_Z - MIN_Z)/CELL_SIZE - 1):
		return water_freq_through_cell

	neighbor_frames = []
	for i in [-1, 0, 1]: 
		for j in [-1, 0, 1]:	
			for k in [-1, 0, 1]:
				neighbor_frames.append((grid[x + i][y + j][z + k]))

	merged_neighbors = merge_frames(neighbor_frames)
	return np.sum(merged_neighbors)


def print_grid(f, grid, num_frames):	
	"""
	Prints the grid for the dx file

	Parameters:
	grid: The actual grid which stores water counts
	num_frames: The number of frames in the trajectory
	"""
	
	newline_flag = 0 # There need to be 3 values per line; this flag serves as a counter
	for x in range(grid.shape[0]):
		for y in range(grid.shape[1]):
			for z in range(grid.shape[2]):

				if(newline_flag % 3 == 0 and newline_flag != 0):
					f.write("\n")
				
				# f.write(str(float(neighbor_sum(grid, x, y, z))/num_frames) + " ")
				f.write(str(float(sum(grid[x][y][z]))/num_frames) + " ")
				newline_flag += 1


# @profile
def getNumCoordinates():
	"""
	Determine the number of atom coordinate pairs in the topology of interest
	"""
	allAtoms = evaltcl("set sel [atomselect top \"all\"]")
	xstr, ystr, zstr = evaltcl("$sel get x"), evaltcl("$sel get y"), evaltcl("$sel get z")
	x, y, z = coordList(xstr), coordList(ystr), coordList(zstr)
	return len(x)


# @profile
def getSingleCoord(allCoords, frame_index, n_frames):
	print(str(frame_index) + "/" + str(n_frames))
	allAtoms = evaltcl("set sel [atomselect top \"all\" frame " + str(frame_index) + "]")
	xstr, ystr, zstr = evaltcl("$sel get x"), evaltcl("$sel get y"), evaltcl("$sel get z")
	x, y, z = coordList(xstr), coordList(ystr), coordList(zstr)
	numCoords = getNumCoordinates()
	print("Memory Usage: " + str(resource.getrusage(resource.RUSAGE_SELF).ru_maxrss/1000))
	evaltcl("$sel delete")
	for i in range(len(x)):
		xc, yc, zc = float(x[i])/10, float(y[i])/10, float(z[i])/10 # get x,y,z coordinate for each atom 
		allCoords[frame_index][i] = [xc, yc, zc]



def getAllCoords(molid, n_frames):
	"""
	For every frame, extract an array of 3-dimensional coordinates for every 
	atom in the topology. The ith index of coordinates cooresponds to the ith atom 
	"""
	allCoords = np.ndarray(shape = (n_frames, getNumCoordinates(), 3))
	for frame_index in range(n_frames):
		getSingleCoord(allCoords, frame_index, n_frames)
	return allCoords




def getWaterLocations(f, TOP, TRAJ, printNumFrames):
	print("Start getWaterLocations()")
	molid = molecule.load(getFileType(TOP), TOP)
	molecule.read(molid, getFileType(TRAJ), TRAJ, beg=1, end=-1, skip=1, waitfor=-1)
	n_frames = molecule.numframes(molid)
	if(printNumFrames): f.write("numFrames:" + str(n_frames) + "\n")
	grid = create_grid(n_frames)
	print_file_header(f)
	waters = atomsel.atomsel('water', molid= molid)
	# waters = atomsel.atomsel('resname IP3', molid= molid)
	coords = getAllCoords(molid, n_frames)
	return grid, waters, coords, n_frames



def waterDensityDriver(TOP, TRAJ, OUTPUT_FILE, printNumFrames):
	tic = time.clock()
	f = genWriteDescriptor(OUTPUT_FILE)
	grid, waters, coord, n_frames = getWaterLocations(f, TOP, TRAJ, printNumFrames)
	calculate_water_density(grid, waters, coord)
	print("finished calculate_water_density")
	print_grid(f, grid, n_frames)
	print_file_footer(f)
	toc = time.clock()
	print("Water Density Computation Time: " + str(toc-tic))


# @profile
def main(TOP, TRAJ, OUTPUT_FILE, printNumFrames):
	# Create file writer 
	f = genWriteDescriptor(OUTPUT_FILE)
    # Loads the trajectory
	traj = md.load(TRAJ, top = TOP) 
	if(printNumFrames): f.write("numFrames:" + str(traj.n_frames) + "\n")

	grid = create_grid(traj.n_frames)
	print_file_header(f)

	# Select oxygens -- approximately the center of mass of waters
	waters = traj.topology.select('water and name O')
	# waters = traj.topology.select('resname IP3')
	coord = traj.xyz
	calculate_water_density(grid, waters, coord)

	print_grid(f,grid, traj.n_frames)
	print_file_footer(f)

if __name__ == "__main__":
	TOP, TRAJ, OUTPUT_FILE = sys.argv[1], sys.argv[2], sys.argv[3]
	printNumFrames = False 
	if("-nFrames" in sys.argv): printNumFrames = True 
	# main(TOP, TRAJ, OUTPUT_FILE, printNumFrames)
	waterDensityDriver(TOP, TRAJ, OUTPUT_FILE, printNumFrames)



