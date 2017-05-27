# tempWaterMediatedHBonds.py
# Written by Anthony Ma 02/11/16 
# Optimization of hydrogen bond calculation for multi-frame trajectory that includes
# water interaction with protein 
# Usage:
# >> python tempWaterMediatedHBonds.py <output_file_name > -d -d <-nw or -w> <optional -stride flag> <stride value> <optional -solv flag> <solvent string>
# Output: List of hydrogen bonds for every frame 


from __future__ import print_function, division

import os
import sys
import time
from itertools import product
import numpy as np
import mdtraj as md
from mdtraj.utils import ensure_type
from mdtraj.geometry import compute_distances, compute_angles
from mdtraj.geometry import _geometry
from hydrogenbond import *

start=0
stop=-1
stride = 1
smoothing=0

TRAJ_CHUNK_SIZE = 100

TRAJ = "/scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/mOR-InteractionOutput/MOR_active_waters/mor_active_refine150_agonist_noNanobody/rep_1/Prod_1/Prod_1_reimaged.nc"
TOP = "/scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/mOR-InteractionOutput/MOR_active_waters/mor_active_refine150_agonist_noNanobody/step5_assembly.pdb"

# TRAJ = "/scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/mOR-InteractionOutput/MOR_inactive_waters/bfna_bonded/rep_1/Prod_1/Prod_1_reimaged.nc"
# TOP = "/scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/mOR-InteractionOutput/MOR_inactive_waters/bfna_bonded/step5_assembly.pdb"
DESTPATH = "/scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/mOR-WaterMediatedHBonds"


def computeHBondSingleFrame(top, frame_mask, angle_triplets):
    singleFrameHbPairs = []
    for cand_index, exist in enumerate(frame_mask):
        if(exist):
            donor, hydrogen, acceptor = angle_triplets[cand_index]
            singleFrameHbPairs.append((top.atom(donor), top.atom(acceptor)))
    return singleFrameHbPairs


def computeAndWriteHBondAllFrames(f, beg_ind, top, mask, angle_triplets):
    for frame_index in range(mask.shape[0]):
        frame_mask = mask[frame_index]
        singleFrameHbPairs = computeHBondSingleFrame(top, mask[frame_index], angle_triplets)
        # print("Frame: " + str(beg_ind + frame_index))
        f.write("Frame: " + str(beg_ind + frame_index) + "\n")
        for hbond in singleFrameHbPairs:
            # print(str(hbond[0]) + " -- " + str(hbond[1]))
            f.write(str(hbond[0]) + " -- " + str(hbond[1]) + "\n")
    return frame_index+1


def genCandidateProduct(donors, acceptors, proteinAtoms, waterAtoms):
    print("genCandidateProduct()")
    return [(e[0][0], e[0][1], e[1]) for e in product(donors, acceptors)]


# def calcAngleTriplets(top, frameIndex, solvent, xh_donors, acceptors):
#     print("calcAngleTriplets() for frame Index: " + str(frameIndex))
#     tic = time.clock()
#     counter = 0
#     numTotalCandidates = len(xh_donors)*len(acceptors)
#     proteinAtoms = top.select("protein")
#     # waterAtoms = top.select(solvent) #This is a faulty assumption that the nomenclature is consistent
#     #replace the line about with the solvent got strictly by the 3.5 Angstrom from protein query. This way
#     #you wont be considering every water atom Reduces from 26823 solvent to 1883 solvents or less. This 
#     # 13 fold reduction could be significant. 
#     #add code from solventFilter.py
#     solventNearProtein = atomsel.atomsel(solvent + ' and within 3.5 of protein', molid=0, frame = frameIndex+1)
#     waterAtoms = np.array([a for a in solventNearProtein])
#     print("Length of water atom array for frameIndex: " + str(frameIndex) + " is: " + str(len(waterAtoms)))

#     xh_donors_w = [d for d in xh_donors if d[0] in waterAtoms]
#     xh_donors_p = [p for p in xh_donors if p[0] in proteinAtoms]
#     acceptors_w = [a for a in acceptors if a in waterAtoms]
#     acceptors_p = [p for p in acceptors if p in proteinAtoms]
#     dwap_triplets = genCandidateProduct(xh_donors_w, acceptors_p, proteinAtoms, waterAtoms)
#     dpaw_triplets = genCandidateProduct(xh_donors_p, acceptors_w, proteinAtoms, waterAtoms)
#     dpap_triplets = genCandidateProduct(xh_donors_p, acceptors_p, proteinAtoms, waterAtoms)
#     angle_triplets = dwap_triplets + dpaw_triplets + dpap_triplets
#     num_explicit_filter = numTotalCandidates - len(angle_triplets)
#     toc = time.clock()
#     print("Num Explicit Filtered: " + str(num_explicit_filter) + " Total Candidates: " + str(len(angle_triplets)))
#     print("Time to calcAngleTriplets: " + str(toc-tic) + " seconds for xh_donors len " + str(len(xh_donors)) + " and acceptors len " + str(len(acceptors)))
#     return np.array(angle_triplets)


# def precomputationCandidates(traj, index, solvent, freq=0.1, exclude_water=True, periodic=True):
#     print("precomputationCandidates()", traj)
#     if(solvent == "water"): 
#         residName = 'HOH'
#     else:
#         residName = solvent.split(" ")[1].strip()
#     print("Blah: " + residName)
#     def get_donors(e0, e1):
#         print("get_donors()")
#         elems = set((e0, e1))
#         bonditer = top.bonds #maybe filter this set to include only those that are in distance
#         atoms = [(b[0], b[1]) for b in bonditer if set((b[0].element.symbol, b[1].element.symbol)) == elems] # add condition for distance to protein
#         # print(len(atoms))
#         indices = []
#         for a0, a1 in atoms:
#             if exclude_water and (a0.residue.name == residName or a1.residue.name == residName): #residName used to be 'HOH'
#                 continue
#             pair = (a0.index, a1.index) 
#             # make sure to get the pair in the right order, so that the index
#             # for e0 comes before e1
#             if a0.element.symbol == e1:
#                 pair = pair[::-1]
#             indices.append(pair)
#         # print("Number of pairs in donor set " + str(len(indices)))
#         return indices

#     top = traj.topology
#     tic = time.clock()
#     nh_donors = get_donors('N', 'H')
#     oh_donors = get_donors('O', 'H')
#     xh_donors = np.concatenate((nh_donors, oh_donors))
#     if len(xh_donors) == 0:
#         # if there are no hydrogens or protein in the trajectory, we get
#         # no possible pairs and return nothing
#         return np.zeros((0, 3), dtype=int)

#     if not exclude_water:
#         acceptors = [a.index for a in traj.topology.atoms if a.element.symbol == 'O' or a.element.symbol == 'N']
#     else:
#         acceptors = [a.index for a in traj.topology.atoms if (a.element.symbol == 'O' and a.residue.name != residName) or a.element.symbol == 'N'] #residName used to be 'HOH'
#     angle_triplets = calcAngleTriplets(top, index, solvent, xh_donors, acceptors)
#     distance_pairs = angle_triplets[:, [1,2]]
#     print("angle_triplets", angle_triplets, "dimension ", len(angle_triplets), len(angle_triplets[0]))
#     print("distance_pairs", distance_pairs, "dimension ", len(distance_pairs), len(distance_pairs[0]))
#     toc = time.clock()
#     precomputationTime = toc - tic
#     print("precomputation time: " + str(precomputationTime))
#     return (angle_triplets, distance_pairs)



def calcAngleTriplets(top, solvent, xh_donors, acceptors):
    print("calcAngleTriplets()")
    tic = time.clock()
    counter = 0
    numTotalCandidates = len(xh_donors)*len(acceptors)
    proteinAtoms = top.select("protein")
    waterAtoms = top.select(solvent) #This is a faulty assumption that the nomenclature is consistent
    #replace the line about with the solvent got strictly by the 3.5 Angstrom from protein query. This way
    #you wont be considering every water atom Reduces from 26823 solvent to 1883 solvents or less. This 
    # 13 fold reduction could be significant. 
    #add code from solventFilter.py
    # solventNearProtein = atomsel.atomsel(solvent + ' and within 3.5 of protein', molid=0, frame = frameIndex+1)
    # waterAtoms = np.array([a for a in solventNearProtein])
    # print("Length of water atom array for frameIndex: " + str(frameIndex) + " is: " + str(len(waterAtoms)))

    xh_donors_w = [d for d in xh_donors if d[0] in waterAtoms]
    xh_donors_p = [p for p in xh_donors if p[0] in proteinAtoms]
    acceptors_w = [a for a in acceptors if a in waterAtoms]
    acceptors_p = [p for p in acceptors if p in proteinAtoms]
    dwap_triplets = genCandidateProduct(xh_donors_w, acceptors_p, proteinAtoms, waterAtoms)
    dpaw_triplets = genCandidateProduct(xh_donors_p, acceptors_w, proteinAtoms, waterAtoms)
    dpap_triplets = genCandidateProduct(xh_donors_p, acceptors_p, proteinAtoms, waterAtoms)
    angle_triplets = dwap_triplets + dpaw_triplets + dpap_triplets
    num_explicit_filter = numTotalCandidates - len(angle_triplets)
    toc = time.clock()
    print("Num Explicit Filtered: " + str(num_explicit_filter) + " Total Candidates: " + str(len(angle_triplets)))
    print("Time to calcAngleTriplets: " + str(toc-tic) + " seconds for xh_donors len " + str(len(xh_donors)) + " and acceptors len " + str(len(acceptors)))
    return np.array(angle_triplets)

def precomputationCandidates(traj, solvent, freq=0.1, exclude_water=True, periodic=True):
    print("precomputationCandidates()", traj)
    if(solvent == "water"): 
        residName = 'HOH'
    else:
        residName = solvent.split(" ")[1].strip()
    print("Blah: " + residName)
    def get_donors(e0, e1):
        print("get_donors()")
        elems = set((e0, e1))
        bonditer = top.bonds #maybe filter this set to include only those that are in distance
        atoms = [(b[0], b[1]) for b in bonditer if set((b[0].element.symbol, b[1].element.symbol)) == elems] # add condition for distance to protein
        # print(len(atoms))
        indices = []
        for a0, a1 in atoms:
            if exclude_water and (a0.residue.name == residName or a1.residue.name == residName): #residName used to be 'HOH'
                continue
            pair = (a0.index, a1.index) 
            # make sure to get the pair in the right order, so that the index
            # for e0 comes before e1
            if a0.element.symbol == e1:
                pair = pair[::-1]
            indices.append(pair)
        # print("Number of pairs in donor set " + str(len(indices)))
        return indices

    top = traj.topology
    tic = time.clock()
    nh_donors = get_donors('N', 'H')
    oh_donors = get_donors('O', 'H')
    xh_donors = np.concatenate((nh_donors, oh_donors))
    if len(xh_donors) == 0:
        # if there are no hydrogens or protein in the trajectory, we get
        # no possible pairs and return nothing
        return np.zeros((0, 3), dtype=int)

    if not exclude_water:
        acceptors = [a.index for a in traj.topology.atoms if a.element.symbol == 'O' or a.element.symbol == 'N']
    else:
        acceptors = [a.index for a in traj.topology.atoms if (a.element.symbol == 'O' and a.residue.name != residName) or a.element.symbol == 'N'] #residName used to be 'HOH'
    angle_triplets = calcAngleTriplets(top, solvent, xh_donors, acceptors)
    distance_pairs = angle_triplets[:, [1,2]]
    print("angle_triplets", angle_triplets, "dimension ", len(angle_triplets), len(angle_triplets[0]))
    print("distance_pairs", distance_pairs, "dimension ", len(distance_pairs), len(distance_pairs[0]))
    toc = time.clock()
    precomputationTime = toc - tic
    print("precomputation time: " + str(precomputationTime))
    return (angle_triplets, distance_pairs)

def chunk_traj(traj):
    print("chunk_traj()")
    totalFrames = traj.n_frames
    traj_chunks = []
    beg_ind = 0
    while(beg_ind < totalFrames):
        traj_chunks.append((beg_ind, traj[beg_ind:beg_ind+TRAJ_CHUNK_SIZE]))
        beg_ind += TRAJ_CHUNK_SIZE
    return traj_chunks

# This version performs precomputation one time for all frames and then computes actual distance and
# Angles for every 100 frame chunks. 
def chunk_baker_hubbard(f, traj, solvent, freq=0.1, exclude_water=True, periodic=True):
    print("Start chunk_baker_hubbard()")
    totalFrames = 0
    totalComputeTime = 0
    traj_chunks = chunk_traj(traj)
    angle_triplets, distance_pairs = precomputationCandidates(traj, solvent, freq=freq, exclude_water=exclude_water, periodic=periodic)
    for index, traj_piece in enumerate(traj_chunks):
        beg_ind, traj_chunk = traj_piece
        nFrames, compTime = optimized_baker_hubbard(f, angle_triplets, distance_pairs, beg_ind, traj_chunk, freq=freq, exclude_water=exclude_water, periodic=periodic)
        print("Optimized_baker_hubbard for Traj Chunk: " + str(index) + " : nFrames = " + str(nFrames) + " Compute Time: " + str(compTime))
        totalFrames += nFrames
        totalComputeTime += compTime
    print("Total baker_hubbard time: " + str(totalComputeTime) + " : nFrames = " + str(totalFrames))
    return totalFrames

# This version will perform a reduced precomputation on a more restricted set via 3 angstrom cutoff from 
# protein surface for waters for every single frame. 
# def chunk_baker_hubbard(f, traj, solvent, freq=0.1, exclude_water=True, periodic=True):
#     print("Start chunk_baker_hubbard()")
#     totalFrames = 0
#     totalComputeTime = 0
#     traj_chunks = chunk_traj(traj)
#     for index, traj_piece in enumerate(traj_chunks):
#         angle_triplets, distance_pairs = precomputationCandidates(traj_piece[1], index, solvent, freq=freq, exclude_water=exclude_water, periodic=periodic)
#         beg_ind, traj_chunk = traj_piece
#         nFrames, compTime = optimized_baker_hubbard(f, angle_triplets, distance_pairs, beg_ind, traj_chunk, freq=freq, exclude_water=exclude_water, periodic=periodic)
#         print("Optimized_baker_hubbard for Traj Chunk: " + str(index) + " : nFrames = " + str(nFrames) + " Compute Time: " + str(compTime))
#         totalFrames += nFrames
#         totalComputeTime += compTime
#     print("Total baker_hubbard time: " + str(totalComputeTime) + " : nFrames = " + str(totalFrames))
#     return totalFrames
 
def optimized_baker_hubbard(f, angle_triplets, distance_pairs, beg_ind, traj, freq=0.1, exclude_water=True, periodic=True):
    print("Start optimized_baker_hubbard()")
    # Cutoff criteria: these could be exposed as function arguments, or
    # modified if there are better definitions than the this one based only
    # on distances and angles
    top = traj.topology
    distance_cutoff = 0.25            # nanometers
    angle_cutoff = 2.0 * np.pi / 3.0  # radians

    if traj.topology is None:
        raise ValueError('baker_hubbard requires that traj contain topology '
                         'information')

    tic = time.clock()
    angles = compute_angles(traj, angle_triplets, periodic=periodic)
    print("angles", angles, "with nFrames: ", len(angles), " for numAngles ", len(angles[0]))
    distances = compute_distances(traj, distance_pairs, periodic=periodic)
    print("distances", distances, "with nFrames: ", len(distances), " for numDistances ", len(distances[0]))

    mask = np.logical_and(distances < distance_cutoff, angles > angle_cutoff)
    del angles 
    del distances 
    nChunkFrames = computeAndWriteHBondAllFrames(f, beg_ind, top, mask, angle_triplets)
    toc = time.clock()
    chunkComputingTime = toc - tic
    print("Time to extract and write all hbFramePairs for beg_ind " +str(beg_ind) + " is: " + str(chunkComputingTime))
    return nChunkFrames, chunkComputingTime


if __name__ == "__main__":
    output_filename = sys.argv[1]
    TrajectoryPath = sys.argv[2] #trajectory fragment
    TopologyPath = sys.argv[3] #pdb
    if(sys.argv[4] == "-w"):
        exclude_water = False
    elif(sys.argv[4] == "-nw"):
        exclude_water = True
    else:
        print("Improper format of arguments")
        exit(0)
    # stride = 1 #default 
    global stride
    solvent = "water" #default
    if("-stride" in sys.argv):
        strideIndex = sys.argv.index("-stride")
    	stride = int(sys.argv[strideIndex + 1])
    if("-solv" in sys.argv):
        solvIndex = sys.argv.index("-solv")
        solvent = "resname " + sys.argv[solvIndex+1]
    if(TrajectoryPath == "-d"): TrajectoryPath = TRAJ
    if(TopologyPath == "-d"): TopologyPath = TOP
    t = md.load(TrajectoryPath, top = TopologyPath)
    traj = t[::stride]
    tic = time.clock()

    # filetype = 'netcdf'
    # trajid = molecule.load('pdb', TOP)
    # molecule.read(trajid, filetype, TRAJ, beg=start, end=stop, skip=stride, waitfor=-1)
    #~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
    f = open(DESTPATH + "/" + output_filename, 'w')
    print("Output_Filename:" + str(output_filename))
    print("solvent: " + solvent)
    if(exclude_water == True):
        f.write("Hydrogen Bond Calculation Exclude Water\n")
    else:
        f.write("Hydrogen Bond Calculation Include Water\n")
    f.write("Stride:" + str(stride) + "\n")
    f.write(TrajectoryPath + "\n")
    f.write(TopologyPath + "\n\n")
    
    totalFrames = chunk_baker_hubbard(f, traj, solvent, freq=0.55, exclude_water=exclude_water, periodic=True)
    # totalFrames = optimized_baker_hubbard(f, traj, freq=0.55, exclude_water=exclude_water, periodic=True)
    #~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
    toc = time.clock()
    totalComputeTime = toc - tic
    f.write("nFrames:" + str(totalFrames) + "\n")
    f.write("Computing Time:" +str(totalComputeTime) +"\n")
    print("\nTime for computing hbond: " + str(totalComputeTime) + " seconds for " + str(totalFrames) + " frames.")





