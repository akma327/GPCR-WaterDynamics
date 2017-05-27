# Author: Anthony Ma
# Email: akma327@stanford.edu
# volumetric_transformation.py 

#!/share/PI/rondror/software/miniconda/bin/python

import sys 
import numpy as np 

USAGE_STR = """

# Purpose
# Input: dx file, transformation matrix
# Output: Perform transformation matrix on input dx file and return transformed 
# output volumetric data. 

# USAGE 
# python volumetric_transformation.py <INPUT_DX> <OUTPUT_DX> 

# Arguments 
# <INPUT_DX> Absolute path to original dx file 
# <OUTPUT_DX> Absolute path to output dx file 

# Example 4DKL
INPUT_DX="/scratch/PI/rondror/akma327/DynamicNetworks/data/water-density/MOR-inactive-bFNA-nature2015/condition-bFNA-bound/rep_1/aggregate.dx"
OUTPUT_DX="/scratch/PI/rondror/akma327/DynamicNetworks/data/water-density/MOR-inactive-bFNA-nature2015/condition-bFNA-bound/rep_1/transformed_aggregate.dx"
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/analysis/water-density
python volumetric_transformation.py $INPUT_DX $OUTPUT_DX

# Example 5C1M
INPUT_DX="/scratch/PI/rondror/akma327/DynamicNetworks/data/water-density/MOR-active-noNb-BU72-nature2015/condition-nb-interface-restrained-BU72/rep_1/aggregate.dx"
OUTPUT_DX="/scratch/PI/rondror/akma327/DynamicNetworks/data/water-density/MOR-active-noNb-BU72-nature2015/condition-nb-interface-restrained-BU72/rep_1/transformed_aggregate.dx"
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/analysis/water-density
python volumetric_transformation.py $INPUT_DX $OUTPUT_DX

# Example 4N6H
INPUT_DX="/scratch/PI/rondror/akma327/DynamicNetworks/data/water-density/DOR-inactive-naltrindole-unpublished/condition-naltrindole-bound/rep_1/aggregate.dx"
OUTPUT_DX="/scratch/PI/rondror/akma327/DynamicNetworks/data/water-density/DOR-inactive-naltrindole-unpublished/condition-naltrindole-bound/rep_1/transformed_aggregate.dx"
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/analysis/water-density
python volumetric_transformation.py $INPUT_DX $OUTPUT_DX


"""
K_MIN_ARG = 3

CELL_SIZE = 0.1 # the cells of the grid are cubical


### Use VMD TO Compute the Transformation matrix 
# atom_selection0 = "4dkl_sim"
# atom_selection1 = "4kdl_exp"
# Move simulated water density to the experimentally solved crystal structure

# set sel0 [atomselect 0 "protein and name CA and resid 64 to 128"]
# set sel1 [atomselect 1 "protein and name CA and resid 64 to 128"]
# set M [measure fit $sel0 $sel1]
# $sel0 move $M

# 4DKL
# TRANS_MATRIX = np.matrix([[-0.44531047344207764, -0.8938724994659424, 0.051871005445718765,-24.749080657958984], 
# 	[0.025292454287409782, -0.07046689838171005, -0.9971933960914612, -3.8620123863220215], 
# 	[0.8950189352035522, -0.4427487254142761, 0.05398787558078766, -11.739592552185059], 
# 	[0.0, 0.0, 0.0, 1.0]])

# TRANS_MATRIX = np.matrix([[-0.33407503366470337, 0.9026454091072083, 0.2713395655155182, -1.0483953952789307], 
# 	[0.9377254247665405, 0.3473757803440094, -0.0010559142101556063, 15.536026000976563], 
# 	[-0.09520990401506424, 0.25408923625946045, -0.9624831080436707, -51.37983703613281], 
# 	[0.0, 0.0, 0.0, 1.0]])

# 4N6H 
TRANS_MATRIX = np.matrix([[-0.9431155920028687, 0.25255513191223145, -0.21621480584144592, -2.6598548889160156], 
	[.24233506619930267, 0.9674426913261414, 0.07299523800611496, -74.5792465209961], 
	[0.2276107668876648, 0.016446517780423164, -0.9736133217811584, 80.45936584472656], 
	[0.0, 0.0, 0.0, 1.0]])

def parse_input_dx(INPUT_DX):
	"""
		Parse input dx file to get origin, dimensions, and list of isovalues. 
		Returns {(x, y, z) = isovalue} for each input point (x,y,z)
	"""
	f = open(INPUT_DX, 'r')
	xdim, ydim, zdim = map(int, f.readline().split("counts")[1].strip().split(" "))
	xorg, yorg, zorg = map(int, f.readline().split("origin")[1].strip().split(" "))

	isovalues = []
	for line in f:
		if("delta" not in line and "object" not in line and line != "\n"):
			isovalues += map(float, line.strip().split(" "))

	### Generate dictionary from original coordinates to isovalues 
	iso_count = 0
	coord_to_iso = {}
	for x in range(xdim):
		for y in range(ydim):
			for z in range(zdim):
				coord_to_iso[(x+xorg, y+yorg, z+zorg)] = isovalues[iso_count]
				iso_count += 1

	return coord_to_iso


def transform_matrix(input_coord_to_iso):
	"""
		Apply transformation matrix on every coordinate in dictionary.
		Populate new dictionary {(x', y', z') = isovalue}
	"""
	trans_coord_to_iso = {}
	for coord in input_coord_to_iso:
		isoval = input_coord_to_iso[coord]
		x, y, z = coord 
		orig_point = np.matrix([[x],[y],[z],[1]])
		xp, yp, zp, qp = TRANS_MATRIX*orig_point
		xp, yp, zp = int(round(float(xp))), int(round(float(yp))), int(round(float(zp)))
		trans_coord_to_iso[(xp, yp, zp)] = isoval
	return trans_coord_to_iso


def get_dimensions(trans_coord_to_iso):
	"""
		Determine the min and max value for each dimension.
		Return origin and dimensions. 
	"""
	xmin, ymin, zmin, xmax, ymax, zmax = [0]*6
	for coord in trans_coord_to_iso:
		x,y,z = coord 
		if(x < xmin): xmin = x 
		if(x > xmax): xmax = x 
		if(y < ymin): ymin = y 
		if(y > ymax): ymax = y 
		if(z < zmin): zmin = z
		if(z > zmax): zmax = z 
	xorig, yorig, zorig = xmin, ymin, zmin
	xdim, ydim, zdim = xmax - xmin + 1, ymax - ymin + 1, zmax - zmin + 1
	return xorig, yorig, zorig, xdim, ydim, zdim

def write_header(f, xdim, ydim, zdim, xorig, yorig, zorig):
	"""
		Write header of dx file to include the update origin, x,y,z dimensions, 
		and total number of data points
	"""
	f.write("object 1 class gridpositions counts " + str(xdim) + " " + str(ydim) + " " + str(zdim) + "\n")
	f.write("origin " + str(xorig) + " " + str(yorig) + " " + str(zorig) +"\n")
	f.write("delta " + str(int(10*CELL_SIZE)) + " " + str(0) + " " + str(0) + "\n")
	f.write("delta " + str(0) + " " + str(int(10*CELL_SIZE)) + " " + str(0) + "\n")
	f.write("delta " + str(0) + " " + str(0) + " " + str(10*CELL_SIZE) + "\n")
	f.write("object 2 class gridconnections counts " + str(xdim) + " " + str(ydim) + " " + str(zdim) + "\n")
	f.write("object 3 class array type double rank 0 items ")
	f.write(str(xdim*ydim*zdim) + " data follows\n")

def write_isovalues(f, trans_coord_to_iso, xdim, ydim, zdim, xorig, yorig, zorig):
	"""
		Write out the isovalues of transformed coordinate system in new dx
	"""
	newline_flag = 0
	for x in range(xdim):
		for y in range(ydim):
			for z in range(zdim):
				if(newline_flag %3 == 0 and newline_flag != 0):
					f.write("\n")

				coord_key = (x + xorig, y + yorig, z + zorig)
				if(coord_key not in trans_coord_to_iso):
					f.write(str(0) + " ")
				else:
					f.write(str(trans_coord_to_iso[coord_key]) + " ")
				newline_flag += 1


def transform(INPUT_DX, OUTPUT_DX):
	"""
		Transform input dx with hard coded transform matrix. Write to output 
	"""
	input_coord_to_iso = parse_input_dx(INPUT_DX)
	trans_coord_to_iso = transform_matrix(input_coord_to_iso)
	xorig, yorig, zorig, xdim, ydim, zdim = get_dimensions(trans_coord_to_iso)

	print(xorig, yorig, zorig, xdim, ydim, zdim)
	### Write to output
	f = open(OUTPUT_DX, 'w')
	write_header(f, xdim, ydim, zdim, xorig, yorig, zorig)
	write_isovalues(f, trans_coord_to_iso, xdim, ydim, zdim, xorig, yorig, zorig)

	

if __name__ == "__main__":
	if(len(sys.argv) < K_MIN_ARG):
		print(USAGE_STR)
	(INPUT_DX, OUTPUT_DX) = (sys.argv[1], sys.argv[2])
	transform(INPUT_DX, OUTPUT_DX)




