# water_density_utils.py 

import os
import sys
import glob
import re 
import numpy as np


def atoi(text):
    return int(text) if text.isdigit() else text

def natural_keys(text):
    return [ atoi(c) for c in re.split('(\d+)', text) ]

# Get file type of topology or trajectory file 
def getFileType(top_file_path):
	fileType = top_file_path.split("/")[-1].split(".")[1].strip()
	if(fileType == 'nc'): fileType = 'netcdf'
	return fileType

# Create directory if not exist
def createDirectory(OUTPUT_FILE):
	directory = os.path.dirname(OUTPUT_FILE)
	if not os.path.exists(directory):
		os.makedirs(directory)

# Generate write file descriptor 
def genWriteDescriptor(OUTPUT_FILE):
	createDirectory(OUTPUT_FILE)
	return open(OUTPUT_FILE, 'w')

	
# Convert coordinate string to coordinate array 
def coordList(coordString):
	return map(float, coordString.split(" "))


#### Code Specific To water_density.py 

# Parameters that can be changed. Note that all distances, sizes, and coordinates are in nanometers.
# MIN_X = -1.5
# MAX_X = 1.5
# MIN_Y = -1.5
# MAX_Y = 1.5
# MIN_Z = -1.5
# MAX_Z = 1.5 

# # 041817 DOR Inactive Expand box size
# MIN_X = -1.5
# MAX_X = 2.5
# MIN_Y = -2.5
# MAX_Y = 2.5
# MIN_Z = -1.7
# MAX_Z = 1.7


# 050817 A2A Inactive Expand box size
MIN_X = -2.0
MAX_X = 2.5
MIN_Y = -2.0
MAX_Y = 2.0
MIN_Z = -1.7
MAX_Z = 1.7


### For B2AR-active-Gs special sizing
# MIN_X = -0.7
# MAX_X = 2.3
# MIN_Y = -2.2
# MAX_Y = 0.8
# MIN_Z = 2.0
# MAX_Z = 5.0

# MIN_X = -1.5
# MAX_X = 1.5
# MIN_Y = -1.5
# MAX_Y = 1.5
# MIN_Z = -2.7
# MAX_Z = 0.3

CELL_SIZE = 0.1 # the cells of the grid are cubical



def print_file_header(f):
	"""
	Print header information such as grid dimensions, grid spacing, and grid cell count
	for the dx file.
	"""
	x_dimension = int((MAX_X - MIN_X)/CELL_SIZE)
	y_dimension = int((MAX_Y - MIN_Y)/CELL_SIZE)
	z_dimension = int((MAX_Z - MIN_Z)/CELL_SIZE)

	f.write("object 1 class gridpositions counts" + " " + str(x_dimension) + " " + str(y_dimension) + " " + str(z_dimension) + "\n")
	f.write("origin" + " " + str(int(MIN_X*10)) + " " + str(int(MIN_Y*10)) + " " + str(int(MIN_Z*10)) + "\n")
	f.write("delta " + str(int(10*CELL_SIZE)) + " " + str(0) + " " + str(0) + "\n")
	f.write("delta " + str(0) + " " + str(int(10*CELL_SIZE)) + " " + str(0) + "\n")
	f.write("delta " + str(0) + " " + str(0) + " " + str(10*CELL_SIZE) + "\n")
	f.write("object 2 class gridconnections counts " + str(x_dimension) + " " + str(y_dimension) + " " + str(z_dimension) + "\n")
	f.write("object 3 class array type double rank 0 items ")
	f.write(str(x_dimension*y_dimension*z_dimension) + " data follows\n")



def print_file_footer(f):
	"""
	Footer information for the dx file which has to do with naming in VMD.
	"""
	f.write(str(0) + "\n")
	f.write("\n")
	f.write("object \" occupancy (waters and noh)\" class field\n")
