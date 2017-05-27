# Author: Anthony Kai Kwang Ma
# Email: akma327@stanford.edu
# aggregate_water_density.py

from water_density_utils import *

USAGE_STR = """

# Purpose 
# After computing the water density for fragments of a larger trajectory and
# storing the resulting .dx file in output folder, this script takes a weighted
# average over the frequency values to output the summary water density .dx file
# in the same folder. 

# Usage 
# python aggregate_water_density.py <FRAG_WATER_DENSITY_FOLDER> 

# Arguments
# <FRAG_WATER_DENSITY_FOLDER> Absolute path to the folder containing .dx files for 
# each of the trajectory fragments. Output is aggregate.dx in the same folder 

# Example  
FRAG_WATER_DENSITY_FOLDER="/scratch/PI/rondror/akma327/DynamicNetworks/data/water-density/MOR-active-noNb-BU72-nature2015/condition-nb-interface-restrained-BU72"
python aggregate_water_density.py $FRAG_WATER_DENSITY_FOLDER

"""

K_MIN_ARG = 2

def get_grid_dimension(density_file):
	f = open(density_file, 'r')
	line1 = ""
	for line in f:
		if("counts" in line): 
			line1 = line 
			break

	xdim, ydim, zdim = map(int, line1.split("counts")[1].strip().split(" "))
	return xdim, ydim, zdim

# Driver function for average individual water density maps 
def calcWaterDensity(FRAG_WATER_DENSITY_FOLDER):
	frag_density_files = glob.glob(FRAG_WATER_DENSITY_FOLDER + "/Prod*.dx")
	frag_density_files.sort(key=natural_keys)
	total_frames = 0

	xdim, ydim, zdim = get_grid_dimension(frag_density_files[0])
	aggregate_water_freq = np.zeros(xdim*ydim*zdim + 1)
	for frag_index, frag in enumerate(frag_density_files):
		# if(frag_index > 10): break
		fread = open(frag, 'r')

		### Determine number of frames in fragment
		numFrames = int(fread.readline().split("numFrames:")[1])
		# print(numFrames)
		total_frames += numFrames

		### Extract water density information
		beg_density_info = False 
		freq_arr = [] # xdim*ydim*zdim entries 
		for line in fread:
			sline = line.strip() 
			if(beg_density_info and re.search("[a-zA-Z]", sline) == None and sline != ""):
				freq_arr += map(float, sline.split(" "))
			if ("object 3" in line): beg_density_info = True 

		### Weight by number of frames and add to aggreagte water frequency 
		freq_arr = np.array(freq_arr)*numFrames
		aggregate_water_freq += freq_arr
	aggregate_water_freq /= total_frames
	return aggregate_water_freq


# Write out aggregate water density information 
def writeAggregateWaterFreq(aggregate_water_freq):
	f = genWriteDescriptor(FRAG_WATER_DENSITY_FOLDER + "/aggregate.dx")
	### Write out header 
	print_file_header(f)

	### Write out grid information 
	for index in range(len(aggregate_water_freq)):
		if(index % 3 == 0 and index != 0):
			f.write("\n")
		f.write(str(aggregate_water_freq[index]) + " ")

	### Write out footer
	print_file_footer(f)

def aggregateWaterDensityDriver(FRAG_WATER_DENSITY_FOLDER):
	aggregate_water_freq = calcWaterDensity(FRAG_WATER_DENSITY_FOLDER)
	writeAggregateWaterFreq(aggregate_water_freq)


if __name__ == "__main__":
	if(len(sys.argv) < K_MIN_ARG):
		print(USAGE_STR)
		exit(1)
	FRAG_WATER_DENSITY_FOLDER = sys.argv[1]
	aggregateWaterDensityDriver(FRAG_WATER_DENSITY_FOLDER)

