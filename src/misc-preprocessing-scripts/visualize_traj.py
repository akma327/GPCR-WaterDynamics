# Author: Anthony Kai Kwang Ma
# Email: akma327@stanford.edu

# visualize_traj.py 

import sys
import os

def getFileType(top_file_path):
	fileType = top_file_path.split("/")[-1].split(".")[1].strip()
	if(fileType == 'nc'): fileType = 'netcdf'
	return fileType

def load_traj(TOP, TRAJ):
	trajid = molecule.load(getFileType(TOP), TOP)
	molecule.read(trajid, getFileType(TRAJ), TRAJ, skip=10)

if __name__ == "__main__":
	TOP = sys.argv[1]
	TRAJ = sys.argv[2]
	load_traj(TOP, TRAJ)