# tempWaterMediatedHBondsGeometric.py
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
import datetime
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
filetype = 'netcdf'

TRAJ_CHUNK_SIZE = 1
crystal_mode = False
crystal_list = []

TRAJ = "/scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/mOR-InteractionOutput/MOR_active_waters/mor_active_refine150_agonist_noNanobody/rep_1/Prod_1/Prod_1_reimaged.nc"
TOP = "/scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/mOR-InteractionOutput/MOR_active_waters/mor_active_refine150_agonist_noNanobody/step5_assembly.pdb"
DESTPATH = "/scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/mOR-WaterMediatedHBonds"

exclude_water_flag = False 


def computeHBondSingleFrame(f, top, frame_mask, angle_triplets):
    global crystal_list
    tic = time.clock()
    singleFrameHbPairs = []
    cand_indices = np.where(frame_mask)[0]
    for cand_index in cand_indices:
        donor, hydrogen, acceptor = angle_triplets[cand_index]
        crystal_list.append((top.atom(donor), top.atom(acceptor)))
        if(crystal_mode == False):
            f.write(str(top.atom(donor)) + " -- " + str(top.atom(acceptor)) + "\n")
        else:
            print(str(top.atom(donor)) + " -- " + str(top.atom(acceptor)))
    toc = time.clock()
    print("Extract from mask time: " + str(toc - tic))


def computeAndWriteHBondAllFrames(f, beg_ind, top, mask, angle_triplets):
    print("computeAndWriteHBondAllFrames() ", exclude_water_flag)
    for frame_index in range(mask.shape[0]):
        if(exclude_water_flag == False):
            if(crystal_mode == False):
                f.write("Hydrogen Bond Water Frame: " + str(beg_ind + frame_index) + "\n")
            else:
                print("Hydrogen Bond Water Frame: " + str(beg_ind + frame_index))
        else:
            if(crystal_mode == False):
                f.write("Hydrogen Bond Frame: " + str(beg_ind + frame_index) + "\n")
            else:
                print("Hydrogen Bond Frame: " + str(beg_ind + frame_index))
        frame_mask = mask[frame_index]
        computeHBondSingleFrame(f, top, mask[frame_index], angle_triplets)
    return frame_index+1



def genCandidateProduct(donors, acceptors):
    print("genCandidateProduct()")
    return [(e[0][0], e[0][1], e[1]) for e in product(donors, acceptors)]


def proteinDonorsAcceptors(top, xh_donors, acceptors):
    proteinAtoms = top.select("protein")
    xh_donors_p = [p for p in xh_donors if p[0] in proteinAtoms]
    acceptors_p = [p for p in acceptors if p in proteinAtoms]
    dpap_triplets = genCandidateProduct(xh_donors_p, acceptors_p)
    return xh_donors_p, acceptors_p, dpap_triplets


# Computation expense is all from here 
# This version use mdtraj compute_neighbors()
def calcAngleTriplets(top, traj_chunk, frameIndex, solvent, xh_donors, acceptors, xh_donors_p, acceptors_p, dpap_triplets):
    print("calcAngleTriplets() for frame Index: " + str(frameIndex))
    tic = time.clock()
    counter = 0
    numTotalCandidates = len(xh_donors)*len(acceptors)
    proteinAtoms = top.select("protein")

    allWaterAtoms = top.select(solvent)
    solventNearProtein = md.compute_neighbors(traj_chunk, 0.35, proteinAtoms, haystack_indices=allWaterAtoms)[0]
    waterAtoms = np.array([a for a in solventNearProtein]) #might optimize here 

    toc1 = time.clock()
    print("Pooptime1: " + str(toc1 -tic))
    print("Length of water atom array for frameIndex: " + str(frameIndex) + " is: " + str(len(waterAtoms)))

    xh_donors_w = [d for d in xh_donors if d[0] in waterAtoms] # check if d[0] is a water atom
    acceptors_w = sorted(list(set(acceptors) & set(waterAtoms)))

    toc2 = time.clock()
    print("Pooptime2: " + str(toc2-tic))
    dwap_triplets = genCandidateProduct(xh_donors_w, acceptors_p)
    dpaw_triplets = genCandidateProduct(xh_donors_p, acceptors_w)
    angle_triplets = dwap_triplets + dpaw_triplets + dpap_triplets
    num_explicit_filter = numTotalCandidates - len(angle_triplets)
    toc = time.clock()
    print("Num Explicit Filtered: " + str(num_explicit_filter) + " Total Candidates: " + str(len(angle_triplets)))
    print("Time to calcAngleTriplets: " + str(toc-tic) + " seconds for xh_donors len " + str(len(xh_donors)) + " and acceptors len " + str(len(acceptors)))
    return np.array(angle_triplets)


# def calcAngleTriplets(top, traj_chunk, frameIndex, solvent, xh_donors, acceptors, xh_donors_p, acceptors_p, dpap_triplets):
#     print("calcAngleTriplets() for frame Index: " + str(frameIndex))
#     tic = time.clock()
#     counter = 0
#     numTotalCandidates = len(xh_donors)*len(acceptors)
#     proteinAtoms = top.select("protein")
#     solventNearProtein = atomsel.atomsel(solvent + ' and within 3.5 of protein', molid=0, frame = frameIndex+1)
#     waterAtoms = np.array([a for a in solventNearProtein]) #might optimize here 
#     toc1 = time.clock()
#     print("Pooptime1: " + str(toc1 -tic))
#     print("Length of water atom array for frameIndex: " + str(frameIndex) + " is: " + str(len(waterAtoms)))

#     xh_donors_w = [d for d in xh_donors if d[0] in waterAtoms] # check if d[0] is a water atom
#     acceptors_w = sorted(list(set(acceptors) & set(waterAtoms)))

#     toc2 = time.clock()
#     print("Pooptime2: " + str(toc2-tic))
#     dwap_triplets = genCandidateProduct(xh_donors_w, acceptors_p)
#     dpaw_triplets = genCandidateProduct(xh_donors_p, acceptors_w)
#     angle_triplets = dwap_triplets + dpaw_triplets + dpap_triplets
#     num_explicit_filter = numTotalCandidates - len(angle_triplets)
#     toc = time.clock()
#     print("Num Explicit Filtered: " + str(num_explicit_filter) + " Total Candidates: " + str(len(angle_triplets)))
#     print("Time to calcAngleTriplets: " + str(toc-tic) + " seconds for xh_donors len " + str(len(xh_donors)) + " and acceptors len " + str(len(acceptors)))
#     return np.array(angle_triplets)

def get_donors(top, e0, e1, exclude_water, residName):
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

# Computes all the possible atom index pairs. This is where the optimization can be done to minimize
# Size of angle_triplets. Having fewer elements in this array means lower dimensionality space
# for candidate hydrogen bond pairs. 
def genDonorsAcceptors(top, solvent, exclude_water=True):
    # Start of program: 
    print("getDonorsAcceptors()")
    if(solvent == "water"): 
        residName = 'HOH'
    else:
        residName = solvent.split(" ")[1].strip()
    print("Blah: " + residName)
    tic = time.clock()
    nh_donors = get_donors(top, 'N', 'H', exclude_water, residName)
    oh_donors = get_donors(top, 'O', 'H', exclude_water, residName)
    xh_donors = np.concatenate((nh_donors, oh_donors))
    if(len(xh_donors) == 0):
        return None, None
    if len(xh_donors) == 0:
        # if there are no hydrogens or protein in the trajectory, we get
        # no possible pairs and return nothing
        return np.zeros((0, 3), dtype=int)
    if not exclude_water:
        acceptors = [a.index for a in top.atoms if a.element.symbol == 'O' or a.element.symbol == 'N']
    else:
        acceptors = [a.index for a in top.atoms if (a.element.symbol == 'O' and a.residue.name != residName) or a.element.symbol == 'N'] #residName used to be 'HOH'
    return (xh_donors, acceptors)

def precomputationCandidates(top, traj_chunk, frameIndex, solvent, xh_donors, acceptors, xh_donors_p, acceptors_p, dpap_triplets):
    print("precomputationCandidates()")
    tic = time.clock()
    angle_triplets = calcAngleTriplets(top, traj_chunk, frameIndex, solvent, xh_donors, acceptors, xh_donors_p, acceptors_p, dpap_triplets) # Feed into this function 
    distance_pairs = angle_triplets[:, [1,2]]
    print("angle_triplets", angle_triplets, "dimension ", len(angle_triplets), len(angle_triplets[0]))
    print("distance_pairs", distance_pairs, "dimension ", len(distance_pairs), len(distance_pairs[0]))
    toc = time.clock()
    precomputationTime = toc - tic
    print("precomputation time: " + str(precomputationTime))
    return (angle_triplets, distance_pairs)


# Takes in the angle_triplets array and distance_pairs array, compute the mask and then write to file the interactions
# That are valid hydrogen bonds. 
def optimized_baker_hubbard(f, top, angle_triplets, distance_pairs, beg_ind, traj, freq=0.1, exclude_water=True, periodic=True):
    print("Start optimized_baker_hubbard()")
    # Cutoff criteria: these could be exposed as function arguments, or
    # modified if there are better definitions than the this one based only
    # on distances and angles
    # distance_cutoff = 0.25            # nanometers
    # angle_cutoff = 2.0*np.pi/3.0   # radians
    distance_cutoff = 0.30            # nanometers
    angle_cutoff = 11.0*np.pi/18.0   # radians

    if top is None:
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


# This version will perform a reduced precomputation on a more restricted set via 3 angstrom cutoff from 
# protein surface for waters for every single frame. 
def chunk_baker_hubbard(f, traj, solvent, freq=0.1, exclude_water=True, periodic=True):
    print("Start chunk_baker_hubbard()")
    totalFrames = 0
    totalComputeTime = 0
    top = traj.topology
    xh_donors, acceptors = genDonorsAcceptors(top, solvent, exclude_water = exclude_water)
    if(xh_donors == None or acceptors == None): return 
    xh_donors_p, acceptors_p, dpap_triplets = proteinDonorsAcceptors(top, xh_donors, acceptors)
    beg_ind = 0
    for frame_index in range(0, traj.n_frames, TRAJ_CHUNK_SIZE):
        traj_chunk = traj[frame_index:frame_index + TRAJ_CHUNK_SIZE]
        angle_triplets, distance_pairs = precomputationCandidates(top, traj_chunk, frame_index, solvent, xh_donors, acceptors, xh_donors_p, acceptors_p, dpap_triplets)
        nFrames, compTime = optimized_baker_hubbard(f, top, angle_triplets, distance_pairs, beg_ind, traj_chunk, freq=freq, exclude_water=exclude_water, periodic=periodic)
        print("Optimized_baker_hubbard for Traj Chunk: " + str(frame_index) + " : nFrames = " + str(nFrames) + " Compute Time: " + str(compTime))
        totalFrames += nFrames
        totalComputeTime += compTime
        beg_ind += TRAJ_CHUNK_SIZE
    print("Total baker_hubbard time: " + str(totalComputeTime) + " : nFrames = " + str(totalFrames))
    return totalFrames
 


def calcHydrogenBondWaterFramePairs(traj, f, stride, TOP_PATH, TRAJ_PATH, solvent, exclude_water=False, crystal=False):
    print("exclude_water: ", exclude_water)
    global exclude_water_flag
    exclude_water_flag = exclude_water
    global crystal_mode
    crystal_mode = crystal
    print ("START TIME: " + datetime.datetime.now().strftime("%A, %d. %B %Y %I:%M%p"))
    tic = time.clock()
    totalFrames = chunk_baker_hubbard(f, traj, solvent, freq=0.55, exclude_water = exclude_water, periodic = True)
    toc = time.clock()
    computingTime = toc - tic
    print ("END TIME: " + datetime.datetime.now().strftime("%A, %d. %B %Y %I:%M%p"))
    if(crystal == False):
        return totalFrames, computingTime
    else:
        return crystal_list



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
    print ("START TIME: " + datetime.datetime.now().strftime("%A, %d. %B %Y %I:%M%p"))
    t = md.load(TrajectoryPath, top = TopologyPath)
    traj = t[::stride] #stride for mdtraj
    tic = time.clock()
    # VMD Upload
    print("VMD Upload:")
    filetype = 'netcdf'
    trajid = molecule.load('pdb', TOP)
    molecule.read(trajid, filetype, TRAJ, beg=start, end=stop, skip=stride, waitfor=-1) #stride for VMD
    #~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
    f = open(DESTPATH + "/" + output_filename, 'w')
    print("Output_Filename:" + str(output_filename))
    print("solvent: " + solvent)
    if(exclude_water == True):
        f.write("Hydrogen Bonds: \n")
    else:
        f.write("Hydrogen Bonds Water Mediated: \n")
    f.write("Stride:" + str(stride) + "\n")
    f.write(TrajectoryPath + "\n")
    f.write(TopologyPath + "\n\n")
    totalFrames = chunk_baker_hubbard(f, traj, solvent, freq=0.55, exclude_water=exclude_water, periodic=True)
    #~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
    toc = time.clock()
    totalComputeTime = toc - tic
    f.write("nFrames:" + str(totalFrames) + "\n")
    f.write("Computing Time:" +str(totalComputeTime) +"\n")
    print("\nTime for computing hbond: " + str(totalComputeTime) + " seconds for " + str(totalFrames) + " frames.")
    print ("END TIME: " + datetime.datetime.now().strftime("%A, %d. %B %Y %I:%M%p"))




