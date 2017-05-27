from __future__ import division

import vmd
from vmd import *
import os
import sys 
from os import listdir
from os.path import isfile, join
import subprocess
import numpy as np
import glob
import re

import matplotlib.pyplot as plt
import matplotlib.mlab as mlab

PDB_TO_UNIPROT_TABLE_PATH = "/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/simulation-analysis/gpcrdb-freq-config/GPCR_PDB_List.txt"
GPCRDB_TABLE_PATH="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/simulation-analysis/gpcrdb-freq-config/All_species_gpcrdb_numbers_strOnly.txt"


### Uniprot and GPCRDB Numbering

# Retrieves the residue id corresponding to TM3_residue, TM6_residue, Tyr7_53_residue
def getCrucialResidueId(PDB):
    GPCRDB_DICT = genResidueToGpcrdbTable(PDB)
    GPCRDB_TO_RESID = {GPCRDB_DICT[k]:k for k in GPCRDB_DICT}
    TM3_residue, TM6_residue, Tyr7_53_residue = (int(GPCRDB_TO_RESID["3x50"][3:]), int(GPCRDB_TO_RESID["6x34"][3:]), int(GPCRDB_TO_RESID["7x53"][3:]))
    return TM3_residue, TM6_residue, Tyr7_53_residue

# Retrieve Uniprot Code for the PDB_CODE from pdb_to_uniprot_table_path
def getUniprotCode(PDB_CODE):
    f = open(PDB_TO_UNIPROT_TABLE_PATH, 'r')
    for line in f:
        if(line == "\n"): continue 
        l_info = line.split("\t")
        uniprot_code, pdb = l_info[0].strip(), l_info[2].strip()
        if(PDB_CODE.upper() == pdb.upper()): return uniprot_code.upper()
    print("PDB_CODE Not Found in PDB To Uniprot Table")
    exit(1)


# Given uniprot code reads through GPCRDB_TABLE_PATH to generate the amino acid
# to gpcrdb number table. 
def genGpcrdbDict(UNIPROT_CODE):
    GPCRDB_DICT = {}
    f = open(GPCRDB_TABLE_PATH, 'r')
    for line in f: 
        l_info = line.split("\t")
        uniprot, resnum, resname, gpcrdb = l_info[0].strip(), l_info[1].strip(), l_info[2].strip(), l_info[4].strip()
        if(uniprot.upper() == UNIPROT_CODE.upper()):
            key = resname.upper() + resnum 
            GPCRDB_DICT[key] = gpcrdb
    return GPCRDB_DICT


# Generates the residue to gpcrdb table for given pdb
def genResidueToGpcrdbTable(PDB_CODE):
    UNIPROT_CODE = getUniprotCode(PDB_CODE)
    GPCRDB_DICT = genGpcrdbDict(UNIPROT_CODE)
    return GPCRDB_DICT



### FILE IO

# Create directory if not exist
def createDirectory(OUTPUT_FILE):
    directory = os.path.dirname(OUTPUT_FILE)
    if not os.path.exists(directory):
        os.makedirs(directory)

# Generate write file descriptor 
def genWriteDescriptor(OUTPUT_FILE):
    createDirectory(OUTPUT_FILE)
    return open(OUTPUT_FILE, 'w')
    

### Glob sorting

def atoi(text):
    return int(text) if text.isdigit() else text

def natural_keys(text):
    return [ atoi(c) for c in re.split('(\d+)', text) ]


### VMD Loading

def getFileType(top_file_path):
    fileType = top_file_path.split("/")[-1].split(".")[1].strip()
    if(fileType == 'nc'): fileType = 'netcdf'
    return fileType

def init():
    # Set window size
    display.set(size=[1024,768])
    # Set view to othographic:
    display.set(projection='Perspective')
    # Set bg color:
    #print color.categories()
    color.set_colormap('Display',{'Background': 'black'})
    # turn axes off:
    axes.set_location('OFF')
    # turn off depth cueing:
    display.set(depthcue=False)
    # set near clipping plane:
    display.set(nearclip=0.01)
    # delete existing molecules:
    for m in molecule.listall():
        molecule.delete(m)

    def ssrecalcu(molid, frame):
        molecule.ssrecalc(molid) 

def load_traj(struct_file_name, traj_file_name):

    filetype='netcdf'
    trajid = molecule.load('psf', struct_file_name)
    molecule.read(trajid, filetype, traj_file_name, beg=start, end=stop, skip=stride, waitfor=-1)
    animate.goto(0)

def load_anton_traj(struct_file_name, traj_file_name):

    filetype='dcd'
    trajid = molecule.load('mae', struct_file_name)
    molecule.read(trajid, filetype, traj_file_name, beg=start, end=stop, skip=stride, waitfor=-1)
    animate.goto(0)

def load_anton_traj_from_dir(TRAJ_DIR, TOP):

    """
    loads simulations from anton trajectory folders. input is just path to directory and struct file name
    """

    filetype='dcd'
    trajid = molecule.load('mae', TOP)

    os.chdir(TRAJ_DIR)

    file_list = []
    for file in glob.glob("*.dcd"):
        file_list.append(file)

    sorted_files = sorted(file_list, key=lambda x: int(x.strip('.dcd').split('-')[4]))

    for file in sorted_files:
        print file
        molecule.read(trajid, filetype, file, beg=0, end=-1, skip=5000, waitfor=-1) # NEED TO CHANGE THIS TO NOT SKIP 100
        animate.goto(0)




def load_prod_traj(struct_file_name, traj_file_name): # loads frames to include xtal structure, 2 frames for last 2 ns of unrestrained equil, and all prod frames

    #specifically applies to skip 10 trajectories

    filetype='netcdf'
    trajid = molecule.load('psf', struct_file_name)
    molecule.read(trajid, filetype, traj_file_name, beg=0, end=0, waitfor=-1)
    molecule.read(trajid, filetype, traj_file_name, beg=51, end=51, waitfor=-1)
    molecule.read(trajid, filetype, traj_file_name, beg=55, end=55, waitfor=-1)
    molecule.read(trajid, filetype, traj_file_name, beg=59, end=stop, skip=stride, waitfor=-1)
    animate.goto(0)

def align_traj_frames():
    for molid in molecule.listall():
        refsel = atomsel.atomsel("protein and name CA",molid=molid,frame=0)
        for t in range(0,molecule.numframes(molid)):
            trajsel = atomsel.atomsel("protein and name CA",molid=molid,frame=t)
            M = trajsel.fit(refsel)
            atomsel.atomsel('all', molid=molid, frame=t).move(M)

def align_to_xtal(xtal):
    refsel = atomsel.atomsel("protein and name CA and (resid 30 to 60 or resid 67 to 96 or resid 103 to 136 or resid 147 to 171)",molid=xtal)
    for molid in molecule.listall():
        for t in range(0,molecule.numframes(molid)):
            trajsel = atomsel.atomsel("protein and name CA and (resid 30 to 60 or resid 67 to 96 or resid 103 to 136 or resid 147 to 171)",molid=molid,frame=t)
            M = trajsel.fit(refsel)
            atomsel.atomsel('all',molid=molid, frame=t).move(M)

def set_representation():
    for molid in molecule.listall():
        molrep.delrep(molid,0) # why needed?
        # molrep.addrep(molid, style='NewRibbons 0.450000 12.000000 3.000000 0', color='ColorID 6', selection="protein", material='Opaque')
        # molrep.set_smoothing(molid, 0, smoothing)
        # evaltcl("mol drawframes %d 0 {0}" % molid)
        print molecule.name(molid)
        if molecule.name(molid) == "4QNC.pdb":
            molrep.addrep(molid, style='NewRibbons 0.450000 12.000000 3.000000 0', color='ColorID 3', selection="protein", material='Opaque')
            # molrep.set_smoothing(molid, 2, smoothing)
            molrep.set_visible(molid, 0, 1) 
        else:
            molrep.addrep(molid, style='NewRibbons 0.450000 12.000000 3.000000 0', color='ColorID 13', selection="protein", material='Opaque')
            # molrep.set_smoothing(molid, 2, smoothing)
            molrep.set_visible(molid, 0, 1)     
        evaltcl('mol off %d' %molid)    

def sliding_mean(data_array, window=20):
    """Robin's smoothing function"""
    data_array = np.array(data_array)
    new_list = []
    for i in range(len(data_array)):
        indices = range(max(i - window + 1, 0),
                        min(i + window + 1, len(data_array)))
        avg = 0
        for j in indices:
            avg += data_array[j]
        avg /= float(len(indices))
        new_list.append(avg)
    return np.array(new_list)


def calcdist(atomsel1, atomsel2):
    """
    Calculates the distance between two atoms
    """
    import numpy as np
    v = np.array((atomsel2.get('x')[0]-atomsel1.get('x')[0],atomsel2.get('y')[0]-atomsel1.get('y')[0],atomsel2.get('z')[0]-atomsel1.get('z')[0]))
    return np.linalg.norm(v)   

def calcdist_tuple(tup1, tup2):
    
    import numpy as np
    v = np.array((tup2[0]-tup1[0],tup2[1]-tup1[1],tup2[2]-tup1[2]))
    return np.linalg.norm(v)    

def calc_angle(tup1, tup2, tup3):

    dist_b = calcdist_tuple(tup1, tup2)
    dist_c = calcdist_tuple(tup2, tup3)
    dist_a = calcdist_tuple(tup1, tup3)

    angle = np.arccos((dist_b*dist_b + dist_c*dist_c - dist_a*dist_a) / (2*dist_b*dist_c)) # degrees in radians

    return 180 - np.degrees(angle)

def plot_states(inactive_xtal):

    outfile = "/media/sf_dror_lab/Writing/chemical_reviews/figures/macrostates/SimA04_clusters.png"

    plt.figure(1)

    inactive_NPxxY_sel = atomsel.atomsel("protein and resid 322 to 327 and backbone",molid=inactive_xtal)

    for i,molid in enumerate(molecule.listall()):
        if i == 0:
            continue
        else:
            # plotting RMSDs to the inactive 2RH1 crystal structure
            # NPxxY_sel = atomsel.atomsel("protein and name N C O CA and resid 322 to 327",molid=molid,frame=-1)
            RMSD_NPxxY_array = []

            # plotting TM3-TM6 distance 
            atomsel1 = atomsel.atomsel("protein and resid 131 and name CA",molid=molid,frame=-1)
            atomsel2 = atomsel.atomsel("protein and resid 272 and name CA",molid=molid,frame=-1)
            TM3_TM6_array = []

            for t in range(0,molecule.numframes(molid)):
                animate.goto(t)

                TM3_TM6_dist = calcdist(atomsel1,atomsel2)
                if TM3_TM6_dist < 20:
                    print t
                    TM3_TM6_array.append(TM3_TM6_dist)
                    print "TM3-TM6 distance: ", TM3_TM6_dist        

                    NPxxY_sel = atomsel.atomsel("protein and resid 322 to 327 and backbone",molid=molid,frame=t)
                    NPxxY_val = inactive_NPxxY_sel.rmsd(NPxxY_sel)
                    RMSD_NPxxY_array.append(NPxxY_val)
                    print "NPxxY: ", NPxxY_val
                # Distance arrays


            plt.figure(1)
            plt.plot(TM3_TM6_array, RMSD_NPxxY_array, 'bo')
            plt.savefig(outfile,transparent=True)

def detect_states_deprecated(OUTPUT_FILE):

    """
    In this function, we classify each frame of a simulation as populating a state within the GPCR conformational landscape.

    We use two geometric parameters: 
        (1) TM3 - TM6 distance, as defined by the distance between the C-alpha atoms of Arg131(3.50)-Leu272(6.34) < 9.7 ang (Dror et al., PNAS 2011b)
            NOTE: depending on the receptor type, another way to do this would be to compare inactive and active states; decide if TM6 position is closer to that of inactive or active
        (2) Conformation of Tyr7.53 residue, where chi1 = n, ca, cb, cg; chi2 = ca, cb, cg, cd1 atom types for Tyr
            YI  [inactive like] chi1 = [270, 320] and chi2 = [> 120]
            YII [active like]   chi1 = [270, 320] and chi2 = [< 120]
            YIII    [meta]      chi1 = [155, 215]
            
    The states are then classified as follows:  
        (5) active - TM3-TM6 > 9.7, NPxxY active (YII)
        (4) intermediate A - TM3-TM6 > 9.7, NPxxY inactive (YI)
        (3) intermediate B - TM3-TM6 > 9.7, NPxxY meta (YIII)
        (2) intermediate C - TM3-TM6 < 9.7, NPxxY meta (YIII)
        (1) inactive - TM3-TM6 < 9.7, NPxxY inactive (YI)
        # (0) currently not classified (because we are going to use hard cutoffs for angles) - not including this for now but could. What do you think AJ? 

    outputs a text file containing a number corresponding the state of each frame - Anthony, for some reason these keep printing to the file as floats instead of ints. Can you fix this?
    """
    for molid in molecule.listall():
        # you can get these residues from GPCRdb
        

        # create numpy arrays of length of frames in simulation to fill with calculated values
        TM3_TM6_dist = np.empty((molecule.numframes(molid),1)) # distance between Arg3.50 and Leu6.34
        tyr_chi1 = np.empty((molecule.numframes(molid),1)) # n-c-ca-cb
        tyr_chi2 = np.empty((molecule.numframes(molid),1)) # c-ca-cb-cd1
        tyr_omg = np.empty((molecule.numframes(molid),1)) # omega dihedral o-c-ca-cb

        macrostate_array = np.empty((molecule.numframes(molid),1)) # numpy array to keep track of macrostate

        for t in range(0,molecule.numframes(molid)):

            animate.goto(t)

            # first, compute TM3--TM6 distance 
            TM3_intracellular_marker = atomsel.atomsel("protein and name CA and resid %d" % (TM3_residue))
            TM6_intracellular_marker = atomsel.atomsel("protein and name CA and resid %d" % (TM6_residue))
            TM3_TM6_dist[t] = calcdist(TM3_intracellular_marker, TM6_intracellular_marker)
            # print TM3_TM6_dist[t]

            # second, compute chi-1 dihedral angle, which can distinguish metastable from inactive/active
            r = Tyr7_53_residue
            o = atomsel.atomsel("protein and name O and resid %d" % (r))
            c = atomsel.atomsel("protein and name C and resid %d" % (r))
            n = atomsel.atomsel("protein and name N and resid %d" % (r))
            ca = atomsel.atomsel("protein and name CA and resid %d" % (r))
            cb = atomsel.atomsel("protein and name CB and resid %d" % (r))
            cg = atomsel.atomsel("protein and name CG and resid %d" % (r))
            cd1 = atomsel.atomsel("protein and name CD1 and resid %d" % (r))

            tyr_chi1[t] = evaltcl("measure dihed {%d %d %d %d} molid %d " % (n.get('index')[0], ca.get('index')[0], cb.get('index')[0], cg.get('index')[0], molid))
            tyr_chi2[t] = evaltcl("measure dihed {%d %d %d %d} molid %d " % (ca.get('index')[0], cb.get('index')[0], cg.get('index')[0], cd1.get('index')[0], molid))
            # tyr_omg[t] = evaltcl("measure dihed {%d %d %d %d} molid %d " % (o.get('index')[0], c.get('index')[0], ca.get('index')[0], cb.get('index')[0], molid))

            # account for periodicity of dihedral angles (formally between -180 and 180) by adding 360 to values < 0
            if tyr_chi1[t] < 0:
                tyr_chi1[t] = tyr_chi1[t] + 360

            if tyr_chi2[t] < 0:
                tyr_chi2[t] = tyr_chi2[t] + 180 # periodicity of 180 because Tyrosine is symmetric

            # if tyr_omg[t] < 0:
            #   tyr_omg[t] = tyr_omg[t] + 360

            # print "chi 1: ", tyr_chi1[t]
            # print "chi 2: ", tyr_chi2[t]

        # after going through all of the frames in a single simulation, we now assign each frame to a particular conformational state

        # using smoothed arrays but could easily just use the raw arrays
        smoothing = 10

        # use a sliding mean function to get the average value at each point, thereby enabling easier classification
        # smoothed_TM3_TM6_dist = sliding_mean(TM3_TM6_dist,smoothing)
        # smoothed_chi1 = sliding_mean(tyr_chi1,smoothing)
        # smoothed_chi2 = sliding_mean(tyr_chi2,smoothing)

        # uncomment the next three lines (and recomment the previous three) to do classification on the raw arrays instead of on the smoothed arrays
        smoothed_TM3_TM6_dist = TM3_TM6_dist
        smoothed_chi1 = tyr_chi1
        smoothed_chi2 = tyr_chi2

        for i in range(molecule.numframes(molid)):

            if smoothed_TM3_TM6_dist[i] >= 9.7: # TM6 is displaced outward

                # either classify as active or as intermediate C 
                if ((smoothed_chi1[i] >= 155) & (smoothed_chi1[i] <= 215)): 

                    # characteristics of meta states (noncanonical active or inactive) is that chi1 is in this range
                    macrostate_array[i] = 3 # Intermediate B

                elif (smoothed_chi2[i] > 130) : 

                    macrostate_array[i] = 4 # Intermediate A: inactive like conformation for TM7 even while TM6 is in active like position

                else:

                    macrostate_array[i] = 5 # Fully active: chi1 angle is between -25 and -75 (or between 285 and 340 when wrapped)

            else: # TM6 is inward

                if ((smoothed_chi1[i] >= 150) & (smoothed_chi1[i] <= 215)): 

                # characteristics of meta states (noncanonical active or inactive)

                    macrostate_array[i] = 2 # Intermediate C

                else: 

                    macrostate_array[i] = 1 # inactive

            print macrostate_array[i], " chi1: ", smoothed_chi1[i], " chi2: ", smoothed_chi2[i], " TM3_TM6: ", smoothed_TM3_TM6_dist[i]

        np.savetxt(OUTPUT_FILE, macrostate_array.astype(int)) # finish and write to file


