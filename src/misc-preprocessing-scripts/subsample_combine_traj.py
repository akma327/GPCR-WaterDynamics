# Author: AJ Venkatakrishnan
# Edited By: Anthony Kai Kwang Ma
# Email: akma327@stanford.edu

#####################################################################
### Program to align the frames of a trajectory
#####################################################################

#!/share/PI/rondror/software/miniconda/bin/python

import vmd, molecule, sys, glob, os, re
from vmd import *
from atomsel import *

# Utility tools 
def atoi(text):
    return int(text) if text.isdigit() else text

def natural_keys(text):
    return [ atoi(c) for c in re.split('(\d+)', text) ]

def getFileType(top_file_path):
	fileType = top_file_path.split("/")[-1].split(".")[1].strip()
	if(fileType == 'nc'): fileType = 'netcdf'
	return fileType

def createDirectory(OUTPUT_FILE):
	directory = os.path.dirname(OUTPUT_FILE)
	if not os.path.exists(directory):
		os.makedirs(directory)


# Main Function 

if __name__ == "__main__":
	if(len(sys.argv) < 5):
		print "Usage: python subsample_combine_traj.py <topology file> <trajectory dir> <traj file type> <out wrapped trajectory file>"
		sys.exit()

	#### Read in input topology, trajectory files, outTraj file
	(top_file, traj_dir, traj_file_type, out_traj_file) = (sys.argv[1], sys.argv[2], sys.argv[3], sys.argv[4])
	createDirectory(out_traj_file)
	output_directory = os.path.dirname(out_traj_file)

	#### Copy topology file to output directory
	# print("cp " + top_file + " " + output_directory)
	os.system("cp " + top_file + " " + output_directory)

	print("Subsampling Trajectory: " + traj_dir)

	#### load topology and trajectories
	traj_molid = molecule.load(getFileType(top_file), top_file)
	if(traj_file_type == "nc"):
		traj_fragments_list = glob.glob(traj_dir + "/Prod_*/Prod_*.nc")
	elif(traj_file_type == "dcdconvert"):
		traj_fragments_list = glob.glob(traj_dir + "/Prod_*/Prod_*.dcd")
	elif(traj_file_type == "dcd"):
		traj_fragments_list = glob.glob(traj_dir + "/*.dcd")
	traj_fragments_list.sort(key=natural_keys)


	for index, traj_fragment_file in enumerate(traj_fragments_list):
		print("Fragment Index " + str(index) + " : " + traj_fragment_file)
		molecule.read(traj_molid, getFileType(traj_fragment_file), traj_fragment_file, beg = 0, end = -1, skip=100, waitfor=-1)

	if(traj_file_type == "dcd"):
		evaltcl('package require pbctools')
		evaltcl('pbc wrap -compound residue -center com -centersel "protein" -all')

	#### align all frames
	refsel = atomsel("protein", molid = traj_molid, frame = 0)
	for i in range(molecule.numframes(traj_molid)):
		molecule.set_frame(traj_molid, i)
		b = atomsel("protein", molid = traj_molid, frame = i)
		T = b.fit(refsel)
		atomsel("all", molid = traj_molid, frame = i).move(T)

	#### Read out file
	molecule.write(traj_molid, getFileType(out_traj_file), out_traj_file, beg = 0, end = -1)

