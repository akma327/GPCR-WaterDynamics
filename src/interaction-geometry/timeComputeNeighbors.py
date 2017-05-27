# timeComputeNeighbors.py
# Usage
# >> TrajectoryPath="/scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/mOR-InteractionOutput/MOR_active_waters/mor_active_refine150_agonist_noNanobody/rep_1/Prod_9/Prod_9_reimaged.nc"
# >> TopologyPath="/scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/mOR-InteractionOutput/MOR_active_waters/mor_active_refine150_agonist_noNanobody/step5_assembly.pdb"
# >> python timeComputeNeighbors.py $TrajectoryPath $TopologyPath

import sys
import os
import mdtraj as md
import time 

if __name__ == "__main__":
	TOP_PATH = sys.argv[1]
	if(len(sys.argv) > 1):
		TRAJ_PATH = sys.argv[2]
		t = md.load(TRAJ_PATH, top=TOP_PATH)
	else:
		t = md.load(TOP_PATH)
	top = t.topology
	print("Start")
	proteinAtoms = top.select("protein")
	waterAtoms = top.select("water")
	print("proteinAtoms ", proteinAtoms)
	print("waterAtoms ", waterAtoms)
	tic = time.clock()
	traj_chunk = t[0:2]
	filteredWater = md.compute_neighbors(traj_chunk, 0.35, proteinAtoms, haystack_indices=waterAtoms)[0]
	toc = time.clock()
	print(filteredWater)
	print("Compute Neighboring Time: " + str(toc-tic))