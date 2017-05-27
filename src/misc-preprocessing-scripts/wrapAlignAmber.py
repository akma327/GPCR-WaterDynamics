# Author: AJ Venkatakrishnan
# Edited By: Anthony Kai Kwang Ma
# Email: akma327@stanford.edu

#####################################################################
### Program to align the frames of a trajectory for AMBER trajectories
#####################################################################

# Usage
# python wrapAlignAmber.py <TOP_FILE> <TRAJ_FILE> <OUTPUT_FILE> <-crys flag>

# Arguments
# <TOP_FILE> Absolute path to the topology 
# <TRAJ_FILE> Absolute path to the original dcd trajectory file 
# <OUTPUT_FILE> Absolute path to the output dcd trajectory file 
# <-crys> optional flag to include the crystal structure as the first frame 

# TOP_FILE="/scratch/PI/rondror/DesRes-Simulations/ordered-from-DesRes/nature2013/DESRES-Trajectory_nature2013-AE-all/DESRES-Trajectory_nature2013-AE-64-all/nature2013-AE-64-all/nature2013-AE-64-all.mae"
# TRAJ_FILE="/scratch/PI/rondror/DesRes-Simulations/ordered-from-DesRes/nature2013/DESRES-Trajectory_nature2013-AE-all/DESRES-Trajectory_nature2013-AE-64-all/nature2013-AE-64-all/nature2013-AE-64-all-000.dcd"
# OUTPUT_FILE="/scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicInteractions/tools/testWrap/Prod_0_wrapped.dcd"
# python wrapAlignAmber.py $TOP_FILE $TRAJ_FILE $OUTPUT_FILE


import vmd, molecule, sys
from vmd import *
from atomsel import *
import time 


if __name__ == "__main__":
	tic = time.clock()
	if(len(sys.argv) <4):
		print "Usage: python wrapAlignAmber.py <topology file> <trajectory file> <out wrapped trajectory file>"
		sys.exit()

	#### Read in input topology, trajectory files, outTraj file
	top_file = sys.argv[1]
	traj_file = sys.argv[2]
	out_traj_file = sys.argv[3]
	if("-crys" in sys.argv):
		include_crys = True 
	else:
		include_crys = False 

	#### load topology and trajectories
	traj_molid = molecule.load('pdb', top_file)
	molecule.read(traj_molid, 'netcdf', traj_file, beg = 0, end = -1, waitfor = -1)

	#### align all frames
	refsel = atomsel("protein", molid = traj_molid, frame = 0)
	for i in range(molecule.numframes(traj_molid)):
		molecule.set_frame(traj_molid, i)
		b = atomsel("protein", molid = traj_molid, frame = i)
		T = b.fit(refsel)
		atomsel("all", molid = traj_molid, frame = i).move(T)

	#### Read out file
	if(include_crys == True):
		molecule.write(traj_molid, 'dcd', out_traj_file, beg = 0, end = -1)
	else:
		molecule.write(traj_molid, 'dcd', out_traj_file, beg = 1, end = -1)

	toc = time.clock()
	print("Time for wrapAlign.py = " + str(toc-tic))


	