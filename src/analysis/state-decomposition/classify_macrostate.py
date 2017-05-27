# Author: Naomi Latorraca
# Edited by: Anthony Kai Kwang Ma
# Email: akma327@stanford.edu
# classify_macrostate.py

#!/share/PI/rondror/software/miniconda/bin/python
from state_decomposition_utils import *


USAGE_STR = """
# Purpose 
# Script takes in input path to trajectory fragments and outputs a classification of 
# every frame conformation to active, intermediate, and inactive state. 

# Usage
# python classify_macrostate.py <PDB> <SIM_TOOL> <TOP_DIR> <TRAJ_DIR> <STRIP_WATER_FLAG> <CHAIN_ID> <OUTPUT_FILE> 

# Arguments
# <PDB> PDB Code of the gpcr for simulation
# <SIM_TOOL> Simulation environment "anton" for .dcd or "amber for .nc
# <TOP_DIR> Absolute path to topology file directory
# <TRAJ_DIR> Absolute path to folder containing simulation directory 
# <STRIP_WATER_FLAG> "yes" or "no" to indicate whether to use stripped water files 
# <CHAIN_ID> Chain Identification (ie "A", or "A,B" for both chain A and B)
# <OUTPUT_FILE> Absolute path to output file containing the frame by frame classification 

# Example
PDB="3P0G"
SIM_TOOL="anton"
TOP="/scratch/PI/rondror/DesRes-Simulations/ordered-from-DesRes/pnas2011b/DESRES-Trajectory_pnas2011b-I-all.1/DESRES-Trajectory_pnas2011b-I-03-all/pnas2011b-I-03-all/pnas2011b-I-03-all.mae"
TRAJ_DIR="/scratch/PI/rondror/DesRes-Simulations/ordered-from-DesRes/pnas2011b/DESRES-Trajectory_pnas2011b-I-all.1/DESRES-Trajectory_pnas2011b-I-03-all/pnas2011b-I-03-all"
OUTPUT_FILE="test.txt"
python classify_macrostate.py $PDB $SIM_TOOL $TOP $TRAJ_DIR $OUTPUT_FILE

PDB="5C1M"
SIM_TOOL="amber"
TOP_DIR="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/MOR-active-noNb-BU72-nature2015/condition-nb-interface-restrained-BU72"
TRAJ_DIR="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/MOR-active-noNb-BU72-nature2015/condition-nb-interface-restrained-BU72/rep_1"
STRIP_WATER_FLAG="no"
OUTPUT_FILE="mor-active-skip200.txt"
python classify_macrostate.py $PDB $SIM_TOOL $TOP_DIR $TRAJ_DIR $STRIP_WATER_FLAG $OUTPUT_FILE

"""

K_MIN_ARG = 8

start=0
stop=-1
stride=1
smoothing=0

def get_chain_query(CHAIN_ID):
    """
        Convert chain ID to query
    """
    chain_parts = CHAIN_ID.strip().split(",")
    chain_query = "("
    for index, p in enumerate(chain_parts):
        if(index == 0):
            chain_query += "chain " + p 
        else:
            chain_query += " or chain " + p 
    chain_query += ")"
    return chain_query

def detect_state_per_fragment(molid, CHAIN_ID, classification_resid):
    chain_query = get_chain_query(CHAIN_ID)
    print("BLAH", chain_query)
    TM3_residue, TM6_residue, Tyr7_53_residue = classification_resid

    TM3_TM6_dist = np.zeros((molecule.numframes(molid),1))
    tyr_chi1 = np.zeros((molecule.numframes(molid),1)) # n-c-ca-cb
    tyr_chi2 = np.zeros((molecule.numframes(molid),1)) # ca-cb-cg-cd1
    tyr_omg = np.zeros((molecule.numframes(molid),1)) # omega dihedral o-c-ca-cb
    macrostate_array = np.zeros((molecule.numframes(molid),1)) # numpy array to keep track of macrostate
    for t in range(0, molecule.numframes(molid)):
        animate.goto(t)

        # first, compute TM3--TM6 distance 
        TM3_intracellular_marker = atomsel.atomsel("protein and " + chain_query + " and name CA and resid %d" % (TM3_residue))
        TM6_intracellular_marker = atomsel.atomsel("protein and " + chain_query + " and name CA and resid %d" % (TM6_residue))
        TM3_TM6_dist[t] = calcdist(TM3_intracellular_marker, TM6_intracellular_marker)
        # print TM3_TM6_dist[t]

        # second, compute chi-1 dihedral angle, which can distinguish metastable from inactive/active
        r = Tyr7_53_residue
        o = atomsel.atomsel("protein and " + chain_query + " and name O and resid %d" % (r))
        c = atomsel.atomsel("protein and " + chain_query + " and name C and resid %d" % (r))
        n = atomsel.atomsel("protein and " + chain_query + " and name N and resid %d" % (r))
        ca = atomsel.atomsel("protein and " + chain_query + " and name CA and resid %d" % (r))
        cb = atomsel.atomsel("protein and " + chain_query + " and name CB and resid %d" % (r))
        cg = atomsel.atomsel("protein and " + chain_query + " and name CG and resid %d" % (r))
        cd1 = atomsel.atomsel("protein and " + chain_query + " and name CD1 and resid %d" % (r))

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
        # print("Molid: " + str(molid) + " Frame: " + str(t) + str(TM3_TM6_dist[t]) + ", " + str(tyr_chi1[t]) + ", " + str(tyr_chi2[t]))

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
                # print("Molid: " + str(molid) + " Frame: " + str(i) + " State 4: " + str(smoothed_TM3_TM6_dist[i]) + ", " + str(smoothed_chi1[i]) + ", " + str(smoothed_chi2[i]))
                macrostate_array[i] = 4 # Intermediate A: inactive like conformation for TM7 even while TM6 is in active like position

            else:
                # print("Molid: " + str(molid) + " Frame: " + str(i) + " State 5: " + str(smoothed_TM3_TM6_dist[i]) + ", " + str(smoothed_chi1[i]) + ", " + str(smoothed_chi2[i]))
                macrostate_array[i] = 5 # Fully active: chi1 angle is between -25 and -75 (or between 285 and 340 when wrapped)

        else: # TM6 is inward

            if ((smoothed_chi1[i] >= 150) & (smoothed_chi1[i] <= 215)): 

            # characteristics of meta states (noncanonical active or inactive)

                macrostate_array[i] = 2 # Intermediate C

            else: 

                macrostate_array[i] = 1 # inactive

        # print macrostate_array[i], " chi1: ", smoothed_chi1[i], " chi2: ", smoothed_chi2[i], " TM3_TM6: ", smoothed_TM3_TM6_dist[i]
    return macrostate_array

def detect_state(SIM_TOOL, TOP_DIR, TRAJ_DIR, STRIP_WATER_FLAG, CHAIN_ID, classification_resid):

    def find_top(top_files, replicate):
        for tf in top_files:
            if(replicate in tf): return tf 
        exit(1)

    def find_top_file(TOP_DIR, TRAJ_DIR, search_string):
        print(TOP_DIR, TRAJ_DIR, search_string)
        top_files = glob.glob(TOP_DIR + search_string)
        if(len(top_files) == 1):
            TOP = top_files[0]
        elif(len(top_files) > 1):
            replicate = TRAJ_DIR.split("/")[-1]
            print("long", replicate)
            TOP = find_top(top_files, replicate)
        return TOP

    

    ### macrostate_array populates with classifcation for every frame
    macrostate_array = np.array([])

    ### Retrieve all trajectory fragment paths

    ## Amber Trajectories
    if(SIM_TOOL == "amber"):
        if(STRIP_WATER_FLAG == "yes"):
            TOP = find_top_file(TOP_DIR, TRAJ_DIR, "/*strip_waters*.pdb")
            traj_fragments = glob.glob(TRAJ_DIR + "/Prod*/*strip_waters*.nc")
        else:
            TOP = find_top_file(TOP_DIR, TRAJ_DIR, "/step5_assembly*.pdb")
            traj_fragments = glob.glob(TRAJ_DIR + "/Prod*/*.nc")

    ## Desmon Trajectories
    elif(SIM_TOOL == "anton"):
        if(STRIP_WATER_FLAG == "yes"):
            TOP = find_top_file(TOP_DIR, TRAJ_DIR, "/*strip_waters*.pdb")
            traj_fragments = glob.glob(TRAJ_DIR + "/Prod*/*strip_waters*.dcd")
        else:
            TOP = find_top_file(TOP_DIR, TRAJ_DIR, "/step5_assembly-*.pdb")
            traj_fragments = glob.glob(TRAJ_DIR + "/Prod*/*.dcd")
    
    traj_fragments.sort(key=natural_keys)

    for tf in traj_fragments:
        print(tf)

    ### Load and classify every frame of trajectory fragment
    for index, traj_frag in enumerate(traj_fragments):
        molid = molecule.load(getFileType(TOP), TOP)
        molecule.read(molid, getFileType(traj_frag), traj_frag, beg=1, end=-1, skip=1, waitfor=-1)
        print(traj_frag)
        frag_macrostate_array = detect_state_per_fragment(molid, CHAIN_ID, classification_resid)
        print(frag_macrostate_array[0:20])
        macrostate_array = np.append(macrostate_array, frag_macrostate_array)
        print(len(frag_macrostate_array), len(frag_macrostate_array[0]))
        molecule.delete(index)
    return list(macrostate_array.astype(int))


def classify_macrostate_driver(PDB, SIM_TOOL, TOP_DIR, TRAJ_DIR, STRIP_WATER_FLAG, CHAIN_ID, OUTPUT_FILE):
    classification_resid = getCrucialResidueId(PDB)
    print("hello", classification_resid)
    print("classification_resid: ", classification_resid)
    macrostate_array = detect_state(SIM_TOOL, TOP_DIR, TRAJ_DIR, STRIP_WATER_FLAG, CHAIN_ID, classification_resid)
    print("Length of Macrostate Array: ", len(macrostate_array))
    f = open(OUTPUT_FILE, 'w')
    for index in range(len(macrostate_array)):
        f.write(str(index) + "\t" + str(macrostate_array[index]) + "\n")
    print("done : " + OUTPUT_FILE)


if __name__=="__main__":
    if(len(sys.argv) < K_MIN_ARG):
        print(USAGE_STR)
        exit(1)
    (PDB, SIM_TOOL, TOP_DIR, TRAJ_DIR, STRIP_WATER_FLAG, CHAIN_ID, OUTPUT_FILE) = (sys.argv[1], sys.argv[2], sys.argv[3], sys.argv[4], sys.argv[5], sys.argv[6], sys.argv[7])
    classify_macrostate_driver(PDB, SIM_TOOL, TOP_DIR, TRAJ_DIR, STRIP_WATER_FLAG, CHAIN_ID, OUTPUT_FILE)


