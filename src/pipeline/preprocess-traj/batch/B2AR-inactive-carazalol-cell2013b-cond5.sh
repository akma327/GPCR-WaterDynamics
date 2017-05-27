# Converting .mae to .pdb file and placing in the output experimental condition path

cd /scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicInteractions/tools
MAE_PATH="/scratch/PI/rondror/DesRes-Simulations/ordered-from-DesRes/cell2013b/DESRES-Trajectory_cell2013b-sim5-all.1/cell2013b-sim5-all/cell2013b-sim5-all.mae"
OUTPUT_PDB_PATH="/scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-inactive-carazalol-cell2013b/condition-5/step5_assembly.pdb"
python maeToPdb.py $MAE_PATH $OUTPUT_PDB_PATH

# Copy and rename .mae file to the output experimental condition path
cp /scratch/PI/rondror/DesRes-Simulations/ordered-from-DesRes/cell2013b/DESRES-Trajectory_cell2013b-sim5-all.1/cell2013b-sim5-all/cell2013b-sim5-all.mae /scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-inactive-carazalol-cell2013b/condition-5/step5_assembly.mae

# Stripping waters from original pdb

TOPOLOGY_PATH="/scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-inactive-carazalol-cell2013b/condition-5/step5_assembly.pdb"
OUTPUT_FILE_PATH="/scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-inactive-carazalol-cell2013b/condition-5/step5_assembly_strip_waters.pdb"
cd /scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicInteractions/tools
python stripWaters.py -top $TOPOLOGY_PATH $OUTPUT_FILE_PATH


# Rewrapping original .dcd files and placing copy in output experiment fragment folder path
cd /scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-inactive-carazalol-cell2013b/condition-5/rep_1
mkdir Prod_0
cd /scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicInteractions/tools
TOP_FILE="/scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-inactive-carazalol-cell2013b/condition-5/step5_assembly.pdb"
TRAJ_FILE="/scratch/PI/rondror/DesRes-Simulations/ordered-from-DesRes/cell2013b/DESRES-Trajectory_cell2013b-sim5-all.1/cell2013b-sim5-all/cell2013b-sim5-all-000.dcd"
OUTPUT_FILE="/scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-inactive-carazalol-cell2013b/condition-5/rep_1/Prod_0/Prod_0_rewrapped.dcd"
python wrapAlign.py $TOP_FILE $TRAJ_FILE $OUTPUT_FILE -crys

# Stripping water from rewrapped .dcd file and placing output file in same experiment fragment folder path
TRAJ_FILE="/scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-inactive-carazalol-cell2013b/condition-5/rep_1/Prod_0/Prod_0_rewrapped.dcd"
OUTPUT_FILE_PATH="/scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-inactive-carazalol-cell2013b/condition-5/rep_1/Prod_0/Prod_0_rewrapped_strip_waters.dcd"
python stripWaters.py -top $TOP_FILE -traj $TRAJ_FILE $OUTPUT_FILE_PATH


# Rewrapping original .dcd files and placing copy in output experiment fragment folder path
cd /scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-inactive-carazalol-cell2013b/condition-5/rep_1
mkdir Prod_1
cd /scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicInteractions/tools
TOP_FILE="/scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-inactive-carazalol-cell2013b/condition-5/step5_assembly.pdb"
TRAJ_FILE="/scratch/PI/rondror/DesRes-Simulations/ordered-from-DesRes/cell2013b/DESRES-Trajectory_cell2013b-sim5-all.1/cell2013b-sim5-all/cell2013b-sim5-all-001.dcd"
OUTPUT_FILE="/scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-inactive-carazalol-cell2013b/condition-5/rep_1/Prod_1/Prod_1_rewrapped.dcd"
python wrapAlign.py $TOP_FILE $TRAJ_FILE $OUTPUT_FILE

# Stripping water from rewrapped .dcd file and placing output file in same experiment fragment folder path
TRAJ_FILE="/scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-inactive-carazalol-cell2013b/condition-5/rep_1/Prod_1/Prod_1_rewrapped.dcd"
OUTPUT_FILE_PATH="/scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-inactive-carazalol-cell2013b/condition-5/rep_1/Prod_1/Prod_1_rewrapped_strip_waters.dcd"
python stripWaters.py -top $TOP_FILE -traj $TRAJ_FILE $OUTPUT_FILE_PATH


# Rewrapping original .dcd files and placing copy in output experiment fragment folder path
cd /scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-inactive-carazalol-cell2013b/condition-5/rep_1
mkdir Prod_2
cd /scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicInteractions/tools
TOP_FILE="/scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-inactive-carazalol-cell2013b/condition-5/step5_assembly.pdb"
TRAJ_FILE="/scratch/PI/rondror/DesRes-Simulations/ordered-from-DesRes/cell2013b/DESRES-Trajectory_cell2013b-sim5-all.1/cell2013b-sim5-all/cell2013b-sim5-all-002.dcd"
OUTPUT_FILE="/scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-inactive-carazalol-cell2013b/condition-5/rep_1/Prod_2/Prod_2_rewrapped.dcd"
python wrapAlign.py $TOP_FILE $TRAJ_FILE $OUTPUT_FILE

# Stripping water from rewrapped .dcd file and placing output file in same experiment fragment folder path
TRAJ_FILE="/scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-inactive-carazalol-cell2013b/condition-5/rep_1/Prod_2/Prod_2_rewrapped.dcd"
OUTPUT_FILE_PATH="/scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-inactive-carazalol-cell2013b/condition-5/rep_1/Prod_2/Prod_2_rewrapped_strip_waters.dcd"
python stripWaters.py -top $TOP_FILE -traj $TRAJ_FILE $OUTPUT_FILE_PATH


# Rewrapping original .dcd files and placing copy in output experiment fragment folder path
cd /scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-inactive-carazalol-cell2013b/condition-5/rep_1
mkdir Prod_3
cd /scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicInteractions/tools
TOP_FILE="/scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-inactive-carazalol-cell2013b/condition-5/step5_assembly.pdb"
TRAJ_FILE="/scratch/PI/rondror/DesRes-Simulations/ordered-from-DesRes/cell2013b/DESRES-Trajectory_cell2013b-sim5-all.1/cell2013b-sim5-all/cell2013b-sim5-all-003.dcd"
OUTPUT_FILE="/scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-inactive-carazalol-cell2013b/condition-5/rep_1/Prod_3/Prod_3_rewrapped.dcd"
python wrapAlign.py $TOP_FILE $TRAJ_FILE $OUTPUT_FILE

# Stripping water from rewrapped .dcd file and placing output file in same experiment fragment folder path
TRAJ_FILE="/scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-inactive-carazalol-cell2013b/condition-5/rep_1/Prod_3/Prod_3_rewrapped.dcd"
OUTPUT_FILE_PATH="/scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-inactive-carazalol-cell2013b/condition-5/rep_1/Prod_3/Prod_3_rewrapped_strip_waters.dcd"
python stripWaters.py -top $TOP_FILE -traj $TRAJ_FILE $OUTPUT_FILE_PATH


# Rewrapping original .dcd files and placing copy in output experiment fragment folder path
cd /scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-inactive-carazalol-cell2013b/condition-5/rep_1
mkdir Prod_4
cd /scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicInteractions/tools
TOP_FILE="/scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-inactive-carazalol-cell2013b/condition-5/step5_assembly.pdb"
TRAJ_FILE="/scratch/PI/rondror/DesRes-Simulations/ordered-from-DesRes/cell2013b/DESRES-Trajectory_cell2013b-sim5-all.1/cell2013b-sim5-all/cell2013b-sim5-all-004.dcd"
OUTPUT_FILE="/scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-inactive-carazalol-cell2013b/condition-5/rep_1/Prod_4/Prod_4_rewrapped.dcd"
python wrapAlign.py $TOP_FILE $TRAJ_FILE $OUTPUT_FILE

# Stripping water from rewrapped .dcd file and placing output file in same experiment fragment folder path
TRAJ_FILE="/scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-inactive-carazalol-cell2013b/condition-5/rep_1/Prod_4/Prod_4_rewrapped.dcd"
OUTPUT_FILE_PATH="/scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-inactive-carazalol-cell2013b/condition-5/rep_1/Prod_4/Prod_4_rewrapped_strip_waters.dcd"
python stripWaters.py -top $TOP_FILE -traj $TRAJ_FILE $OUTPUT_FILE_PATH


# Rewrapping original .dcd files and placing copy in output experiment fragment folder path
cd /scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-inactive-carazalol-cell2013b/condition-5/rep_1
mkdir Prod_5
cd /scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicInteractions/tools
TOP_FILE="/scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-inactive-carazalol-cell2013b/condition-5/step5_assembly.pdb"
TRAJ_FILE="/scratch/PI/rondror/DesRes-Simulations/ordered-from-DesRes/cell2013b/DESRES-Trajectory_cell2013b-sim5-all.1/cell2013b-sim5-all/cell2013b-sim5-all-005.dcd"
OUTPUT_FILE="/scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-inactive-carazalol-cell2013b/condition-5/rep_1/Prod_5/Prod_5_rewrapped.dcd"
python wrapAlign.py $TOP_FILE $TRAJ_FILE $OUTPUT_FILE

# Stripping water from rewrapped .dcd file and placing output file in same experiment fragment folder path
TRAJ_FILE="/scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-inactive-carazalol-cell2013b/condition-5/rep_1/Prod_5/Prod_5_rewrapped.dcd"
OUTPUT_FILE_PATH="/scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-inactive-carazalol-cell2013b/condition-5/rep_1/Prod_5/Prod_5_rewrapped_strip_waters.dcd"
python stripWaters.py -top $TOP_FILE -traj $TRAJ_FILE $OUTPUT_FILE_PATH


# Rewrapping original .dcd files and placing copy in output experiment fragment folder path
cd /scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-inactive-carazalol-cell2013b/condition-5/rep_1
mkdir Prod_6
cd /scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicInteractions/tools
TOP_FILE="/scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-inactive-carazalol-cell2013b/condition-5/step5_assembly.pdb"
TRAJ_FILE="/scratch/PI/rondror/DesRes-Simulations/ordered-from-DesRes/cell2013b/DESRES-Trajectory_cell2013b-sim5-all.1/cell2013b-sim5-all/cell2013b-sim5-all-006.dcd"
OUTPUT_FILE="/scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-inactive-carazalol-cell2013b/condition-5/rep_1/Prod_6/Prod_6_rewrapped.dcd"
python wrapAlign.py $TOP_FILE $TRAJ_FILE $OUTPUT_FILE

# Stripping water from rewrapped .dcd file and placing output file in same experiment fragment folder path
TRAJ_FILE="/scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-inactive-carazalol-cell2013b/condition-5/rep_1/Prod_6/Prod_6_rewrapped.dcd"
OUTPUT_FILE_PATH="/scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-inactive-carazalol-cell2013b/condition-5/rep_1/Prod_6/Prod_6_rewrapped_strip_waters.dcd"
python stripWaters.py -top $TOP_FILE -traj $TRAJ_FILE $OUTPUT_FILE_PATH


# Rewrapping original .dcd files and placing copy in output experiment fragment folder path
cd /scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-inactive-carazalol-cell2013b/condition-5/rep_1
mkdir Prod_7
cd /scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicInteractions/tools
TOP_FILE="/scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-inactive-carazalol-cell2013b/condition-5/step5_assembly.pdb"
TRAJ_FILE="/scratch/PI/rondror/DesRes-Simulations/ordered-from-DesRes/cell2013b/DESRES-Trajectory_cell2013b-sim5-all.1/cell2013b-sim5-all/cell2013b-sim5-all-007.dcd"
OUTPUT_FILE="/scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-inactive-carazalol-cell2013b/condition-5/rep_1/Prod_7/Prod_7_rewrapped.dcd"
python wrapAlign.py $TOP_FILE $TRAJ_FILE $OUTPUT_FILE

# Stripping water from rewrapped .dcd file and placing output file in same experiment fragment folder path
TRAJ_FILE="/scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-inactive-carazalol-cell2013b/condition-5/rep_1/Prod_7/Prod_7_rewrapped.dcd"
OUTPUT_FILE_PATH="/scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-inactive-carazalol-cell2013b/condition-5/rep_1/Prod_7/Prod_7_rewrapped_strip_waters.dcd"
python stripWaters.py -top $TOP_FILE -traj $TRAJ_FILE $OUTPUT_FILE_PATH


# Rewrapping original .dcd files and placing copy in output experiment fragment folder path
cd /scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-inactive-carazalol-cell2013b/condition-5/rep_1
mkdir Prod_8
cd /scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicInteractions/tools
TOP_FILE="/scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-inactive-carazalol-cell2013b/condition-5/step5_assembly.pdb"
TRAJ_FILE="/scratch/PI/rondror/DesRes-Simulations/ordered-from-DesRes/cell2013b/DESRES-Trajectory_cell2013b-sim5-all.1/cell2013b-sim5-all/cell2013b-sim5-all-008.dcd"
OUTPUT_FILE="/scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-inactive-carazalol-cell2013b/condition-5/rep_1/Prod_8/Prod_8_rewrapped.dcd"
python wrapAlign.py $TOP_FILE $TRAJ_FILE $OUTPUT_FILE

# Stripping water from rewrapped .dcd file and placing output file in same experiment fragment folder path
TRAJ_FILE="/scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-inactive-carazalol-cell2013b/condition-5/rep_1/Prod_8/Prod_8_rewrapped.dcd"
OUTPUT_FILE_PATH="/scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-inactive-carazalol-cell2013b/condition-5/rep_1/Prod_8/Prod_8_rewrapped_strip_waters.dcd"
python stripWaters.py -top $TOP_FILE -traj $TRAJ_FILE $OUTPUT_FILE_PATH


# Rewrapping original .dcd files and placing copy in output experiment fragment folder path
cd /scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-inactive-carazalol-cell2013b/condition-5/rep_1
mkdir Prod_9
cd /scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicInteractions/tools
TOP_FILE="/scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-inactive-carazalol-cell2013b/condition-5/step5_assembly.pdb"
TRAJ_FILE="/scratch/PI/rondror/DesRes-Simulations/ordered-from-DesRes/cell2013b/DESRES-Trajectory_cell2013b-sim5-all.1/cell2013b-sim5-all/cell2013b-sim5-all-009.dcd"
OUTPUT_FILE="/scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-inactive-carazalol-cell2013b/condition-5/rep_1/Prod_9/Prod_9_rewrapped.dcd"
python wrapAlign.py $TOP_FILE $TRAJ_FILE $OUTPUT_FILE

# Stripping water from rewrapped .dcd file and placing output file in same experiment fragment folder path
TRAJ_FILE="/scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-inactive-carazalol-cell2013b/condition-5/rep_1/Prod_9/Prod_9_rewrapped.dcd"
OUTPUT_FILE_PATH="/scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-inactive-carazalol-cell2013b/condition-5/rep_1/Prod_9/Prod_9_rewrapped_strip_waters.dcd"
python stripWaters.py -top $TOP_FILE -traj $TRAJ_FILE $OUTPUT_FILE_PATH


# Rewrapping original .dcd files and placing copy in output experiment fragment folder path
cd /scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-inactive-carazalol-cell2013b/condition-5/rep_1
mkdir Prod_10
cd /scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicInteractions/tools
TOP_FILE="/scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-inactive-carazalol-cell2013b/condition-5/step5_assembly.pdb"
TRAJ_FILE="/scratch/PI/rondror/DesRes-Simulations/ordered-from-DesRes/cell2013b/DESRES-Trajectory_cell2013b-sim5-all.1/cell2013b-sim5-all/cell2013b-sim5-all-010.dcd"
OUTPUT_FILE="/scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-inactive-carazalol-cell2013b/condition-5/rep_1/Prod_10/Prod_10_rewrapped.dcd"
python wrapAlign.py $TOP_FILE $TRAJ_FILE $OUTPUT_FILE

# Stripping water from rewrapped .dcd file and placing output file in same experiment fragment folder path
TRAJ_FILE="/scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-inactive-carazalol-cell2013b/condition-5/rep_1/Prod_10/Prod_10_rewrapped.dcd"
OUTPUT_FILE_PATH="/scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-inactive-carazalol-cell2013b/condition-5/rep_1/Prod_10/Prod_10_rewrapped_strip_waters.dcd"
python stripWaters.py -top $TOP_FILE -traj $TRAJ_FILE $OUTPUT_FILE_PATH


# Rewrapping original .dcd files and placing copy in output experiment fragment folder path
cd /scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-inactive-carazalol-cell2013b/condition-5/rep_1
mkdir Prod_11
cd /scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicInteractions/tools
TOP_FILE="/scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-inactive-carazalol-cell2013b/condition-5/step5_assembly.pdb"
TRAJ_FILE="/scratch/PI/rondror/DesRes-Simulations/ordered-from-DesRes/cell2013b/DESRES-Trajectory_cell2013b-sim5-all.1/cell2013b-sim5-all/cell2013b-sim5-all-011.dcd"
OUTPUT_FILE="/scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-inactive-carazalol-cell2013b/condition-5/rep_1/Prod_11/Prod_11_rewrapped.dcd"
python wrapAlign.py $TOP_FILE $TRAJ_FILE $OUTPUT_FILE

# Stripping water from rewrapped .dcd file and placing output file in same experiment fragment folder path
TRAJ_FILE="/scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-inactive-carazalol-cell2013b/condition-5/rep_1/Prod_11/Prod_11_rewrapped.dcd"
OUTPUT_FILE_PATH="/scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-inactive-carazalol-cell2013b/condition-5/rep_1/Prod_11/Prod_11_rewrapped_strip_waters.dcd"
python stripWaters.py -top $TOP_FILE -traj $TRAJ_FILE $OUTPUT_FILE_PATH


