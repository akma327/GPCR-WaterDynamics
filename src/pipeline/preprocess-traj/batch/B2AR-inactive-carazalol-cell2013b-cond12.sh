# Converting .mae to .pdb file and placing in the output experimental condition path

cd /scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicInteractions/tools
MAE_PATH="/scratch/PI/rondror/DesRes-Simulations/ordered-from-DesRes/cell2013b/DESRES-Trajectory_cell2013b-sim12-all.1/cell2013b-sim12-all/cell2013b-sim12-all.mae"
OUTPUT_PDB_PATH="/scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-inactive-carazalol-cell2013b/condition-12/step5_assembly.pdb"
python maeToPdb.py $MAE_PATH $OUTPUT_PDB_PATH

# Copy and rename .mae file to the output experimental condition path
cp /scratch/PI/rondror/DesRes-Simulations/ordered-from-DesRes/cell2013b/DESRES-Trajectory_cell2013b-sim12-all.1/cell2013b-sim12-all/cell2013b-sim12-all.mae /scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-inactive-carazalol-cell2013b/condition-12/step5_assembly.mae

# Stripping waters from original pdb

TOPOLOGY_PATH="/scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-inactive-carazalol-cell2013b/condition-12/step5_assembly.pdb"
OUTPUT_FILE_PATH="/scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-inactive-carazalol-cell2013b/condition-12/step5_assembly_strip_waters.pdb"
cd /scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicInteractions/tools
python stripWaters.py -top $TOPOLOGY_PATH $OUTPUT_FILE_PATH


# Rewrapping original .dcd files and placing copy in output experiment fragment folder path
cd /scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-inactive-carazalol-cell2013b/condition-12/rep_1
mkdir Prod_0
cd /scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicInteractions/tools
TOP_FILE="/scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-inactive-carazalol-cell2013b/condition-12/step5_assembly.pdb"
TRAJ_FILE="/scratch/PI/rondror/DesRes-Simulations/ordered-from-DesRes/cell2013b/DESRES-Trajectory_cell2013b-sim12-all.1/cell2013b-sim12-all/cell2013b-sim12-all-000.dcd"
OUTPUT_FILE="/scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-inactive-carazalol-cell2013b/condition-12/rep_1/Prod_0/Prod_0_rewrapped.dcd"
python wrapAlign.py $TOP_FILE $TRAJ_FILE $OUTPUT_FILE -crys

# Stripping water from rewrapped .dcd file and placing output file in same experiment fragment folder path
TRAJ_FILE="/scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-inactive-carazalol-cell2013b/condition-12/rep_1/Prod_0/Prod_0_rewrapped.dcd"
OUTPUT_FILE_PATH="/scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-inactive-carazalol-cell2013b/condition-12/rep_1/Prod_0/Prod_0_rewrapped_strip_waters.dcd"
python stripWaters.py -top $TOP_FILE -traj $TRAJ_FILE $OUTPUT_FILE_PATH


# Rewrapping original .dcd files and placing copy in output experiment fragment folder path
cd /scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-inactive-carazalol-cell2013b/condition-12/rep_1
mkdir Prod_1
cd /scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicInteractions/tools
TOP_FILE="/scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-inactive-carazalol-cell2013b/condition-12/step5_assembly.pdb"
TRAJ_FILE="/scratch/PI/rondror/DesRes-Simulations/ordered-from-DesRes/cell2013b/DESRES-Trajectory_cell2013b-sim12-all.1/cell2013b-sim12-all/cell2013b-sim12-all-001.dcd"
OUTPUT_FILE="/scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-inactive-carazalol-cell2013b/condition-12/rep_1/Prod_1/Prod_1_rewrapped.dcd"
python wrapAlign.py $TOP_FILE $TRAJ_FILE $OUTPUT_FILE

# Stripping water from rewrapped .dcd file and placing output file in same experiment fragment folder path
TRAJ_FILE="/scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-inactive-carazalol-cell2013b/condition-12/rep_1/Prod_1/Prod_1_rewrapped.dcd"
OUTPUT_FILE_PATH="/scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-inactive-carazalol-cell2013b/condition-12/rep_1/Prod_1/Prod_1_rewrapped_strip_waters.dcd"
python stripWaters.py -top $TOP_FILE -traj $TRAJ_FILE $OUTPUT_FILE_PATH


# Rewrapping original .dcd files and placing copy in output experiment fragment folder path
cd /scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-inactive-carazalol-cell2013b/condition-12/rep_1
mkdir Prod_2
cd /scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicInteractions/tools
TOP_FILE="/scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-inactive-carazalol-cell2013b/condition-12/step5_assembly.pdb"
TRAJ_FILE="/scratch/PI/rondror/DesRes-Simulations/ordered-from-DesRes/cell2013b/DESRES-Trajectory_cell2013b-sim12-all.1/cell2013b-sim12-all/cell2013b-sim12-all-002.dcd"
OUTPUT_FILE="/scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-inactive-carazalol-cell2013b/condition-12/rep_1/Prod_2/Prod_2_rewrapped.dcd"
python wrapAlign.py $TOP_FILE $TRAJ_FILE $OUTPUT_FILE

# Stripping water from rewrapped .dcd file and placing output file in same experiment fragment folder path
TRAJ_FILE="/scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-inactive-carazalol-cell2013b/condition-12/rep_1/Prod_2/Prod_2_rewrapped.dcd"
OUTPUT_FILE_PATH="/scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-inactive-carazalol-cell2013b/condition-12/rep_1/Prod_2/Prod_2_rewrapped_strip_waters.dcd"
python stripWaters.py -top $TOP_FILE -traj $TRAJ_FILE $OUTPUT_FILE_PATH


# Rewrapping original .dcd files and placing copy in output experiment fragment folder path
cd /scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-inactive-carazalol-cell2013b/condition-12/rep_1
mkdir Prod_3
cd /scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicInteractions/tools
TOP_FILE="/scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-inactive-carazalol-cell2013b/condition-12/step5_assembly.pdb"
TRAJ_FILE="/scratch/PI/rondror/DesRes-Simulations/ordered-from-DesRes/cell2013b/DESRES-Trajectory_cell2013b-sim12-all.1/cell2013b-sim12-all/cell2013b-sim12-all-003.dcd"
OUTPUT_FILE="/scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-inactive-carazalol-cell2013b/condition-12/rep_1/Prod_3/Prod_3_rewrapped.dcd"
python wrapAlign.py $TOP_FILE $TRAJ_FILE $OUTPUT_FILE

# Stripping water from rewrapped .dcd file and placing output file in same experiment fragment folder path
TRAJ_FILE="/scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-inactive-carazalol-cell2013b/condition-12/rep_1/Prod_3/Prod_3_rewrapped.dcd"
OUTPUT_FILE_PATH="/scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-inactive-carazalol-cell2013b/condition-12/rep_1/Prod_3/Prod_3_rewrapped_strip_waters.dcd"
python stripWaters.py -top $TOP_FILE -traj $TRAJ_FILE $OUTPUT_FILE_PATH


# Rewrapping original .dcd files and placing copy in output experiment fragment folder path
cd /scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-inactive-carazalol-cell2013b/condition-12/rep_1
mkdir Prod_4
cd /scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicInteractions/tools
TOP_FILE="/scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-inactive-carazalol-cell2013b/condition-12/step5_assembly.pdb"
TRAJ_FILE="/scratch/PI/rondror/DesRes-Simulations/ordered-from-DesRes/cell2013b/DESRES-Trajectory_cell2013b-sim12-all.1/cell2013b-sim12-all/cell2013b-sim12-all-004.dcd"
OUTPUT_FILE="/scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-inactive-carazalol-cell2013b/condition-12/rep_1/Prod_4/Prod_4_rewrapped.dcd"
python wrapAlign.py $TOP_FILE $TRAJ_FILE $OUTPUT_FILE

# Stripping water from rewrapped .dcd file and placing output file in same experiment fragment folder path
TRAJ_FILE="/scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-inactive-carazalol-cell2013b/condition-12/rep_1/Prod_4/Prod_4_rewrapped.dcd"
OUTPUT_FILE_PATH="/scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-inactive-carazalol-cell2013b/condition-12/rep_1/Prod_4/Prod_4_rewrapped_strip_waters.dcd"
python stripWaters.py -top $TOP_FILE -traj $TRAJ_FILE $OUTPUT_FILE_PATH


# Rewrapping original .dcd files and placing copy in output experiment fragment folder path
cd /scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-inactive-carazalol-cell2013b/condition-12/rep_1
mkdir Prod_5
cd /scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicInteractions/tools
TOP_FILE="/scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-inactive-carazalol-cell2013b/condition-12/step5_assembly.pdb"
TRAJ_FILE="/scratch/PI/rondror/DesRes-Simulations/ordered-from-DesRes/cell2013b/DESRES-Trajectory_cell2013b-sim12-all.1/cell2013b-sim12-all/cell2013b-sim12-all-005.dcd"
OUTPUT_FILE="/scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-inactive-carazalol-cell2013b/condition-12/rep_1/Prod_5/Prod_5_rewrapped.dcd"
python wrapAlign.py $TOP_FILE $TRAJ_FILE $OUTPUT_FILE

# Stripping water from rewrapped .dcd file and placing output file in same experiment fragment folder path
TRAJ_FILE="/scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-inactive-carazalol-cell2013b/condition-12/rep_1/Prod_5/Prod_5_rewrapped.dcd"
OUTPUT_FILE_PATH="/scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-inactive-carazalol-cell2013b/condition-12/rep_1/Prod_5/Prod_5_rewrapped_strip_waters.dcd"
python stripWaters.py -top $TOP_FILE -traj $TRAJ_FILE $OUTPUT_FILE_PATH


# Rewrapping original .dcd files and placing copy in output experiment fragment folder path
cd /scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-inactive-carazalol-cell2013b/condition-12/rep_1
mkdir Prod_6
cd /scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicInteractions/tools
TOP_FILE="/scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-inactive-carazalol-cell2013b/condition-12/step5_assembly.pdb"
TRAJ_FILE="/scratch/PI/rondror/DesRes-Simulations/ordered-from-DesRes/cell2013b/DESRES-Trajectory_cell2013b-sim12-all.1/cell2013b-sim12-all/cell2013b-sim12-all-006.dcd"
OUTPUT_FILE="/scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-inactive-carazalol-cell2013b/condition-12/rep_1/Prod_6/Prod_6_rewrapped.dcd"
python wrapAlign.py $TOP_FILE $TRAJ_FILE $OUTPUT_FILE

# Stripping water from rewrapped .dcd file and placing output file in same experiment fragment folder path
TRAJ_FILE="/scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-inactive-carazalol-cell2013b/condition-12/rep_1/Prod_6/Prod_6_rewrapped.dcd"
OUTPUT_FILE_PATH="/scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-inactive-carazalol-cell2013b/condition-12/rep_1/Prod_6/Prod_6_rewrapped_strip_waters.dcd"
python stripWaters.py -top $TOP_FILE -traj $TRAJ_FILE $OUTPUT_FILE_PATH


# Rewrapping original .dcd files and placing copy in output experiment fragment folder path
cd /scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-inactive-carazalol-cell2013b/condition-12/rep_1
mkdir Prod_7
cd /scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicInteractions/tools
TOP_FILE="/scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-inactive-carazalol-cell2013b/condition-12/step5_assembly.pdb"
TRAJ_FILE="/scratch/PI/rondror/DesRes-Simulations/ordered-from-DesRes/cell2013b/DESRES-Trajectory_cell2013b-sim12-all.1/cell2013b-sim12-all/cell2013b-sim12-all-007.dcd"
OUTPUT_FILE="/scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-inactive-carazalol-cell2013b/condition-12/rep_1/Prod_7/Prod_7_rewrapped.dcd"
python wrapAlign.py $TOP_FILE $TRAJ_FILE $OUTPUT_FILE

# Stripping water from rewrapped .dcd file and placing output file in same experiment fragment folder path
TRAJ_FILE="/scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-inactive-carazalol-cell2013b/condition-12/rep_1/Prod_7/Prod_7_rewrapped.dcd"
OUTPUT_FILE_PATH="/scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-inactive-carazalol-cell2013b/condition-12/rep_1/Prod_7/Prod_7_rewrapped_strip_waters.dcd"
python stripWaters.py -top $TOP_FILE -traj $TRAJ_FILE $OUTPUT_FILE_PATH


# Rewrapping original .dcd files and placing copy in output experiment fragment folder path
cd /scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-inactive-carazalol-cell2013b/condition-12/rep_1
mkdir Prod_8
cd /scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicInteractions/tools
TOP_FILE="/scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-inactive-carazalol-cell2013b/condition-12/step5_assembly.pdb"
TRAJ_FILE="/scratch/PI/rondror/DesRes-Simulations/ordered-from-DesRes/cell2013b/DESRES-Trajectory_cell2013b-sim12-all.1/cell2013b-sim12-all/cell2013b-sim12-all-008.dcd"
OUTPUT_FILE="/scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-inactive-carazalol-cell2013b/condition-12/rep_1/Prod_8/Prod_8_rewrapped.dcd"
python wrapAlign.py $TOP_FILE $TRAJ_FILE $OUTPUT_FILE

# Stripping water from rewrapped .dcd file and placing output file in same experiment fragment folder path
TRAJ_FILE="/scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-inactive-carazalol-cell2013b/condition-12/rep_1/Prod_8/Prod_8_rewrapped.dcd"
OUTPUT_FILE_PATH="/scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-inactive-carazalol-cell2013b/condition-12/rep_1/Prod_8/Prod_8_rewrapped_strip_waters.dcd"
python stripWaters.py -top $TOP_FILE -traj $TRAJ_FILE $OUTPUT_FILE_PATH


# Rewrapping original .dcd files and placing copy in output experiment fragment folder path
cd /scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-inactive-carazalol-cell2013b/condition-12/rep_1
mkdir Prod_9
cd /scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicInteractions/tools
TOP_FILE="/scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-inactive-carazalol-cell2013b/condition-12/step5_assembly.pdb"
TRAJ_FILE="/scratch/PI/rondror/DesRes-Simulations/ordered-from-DesRes/cell2013b/DESRES-Trajectory_cell2013b-sim12-all.1/cell2013b-sim12-all/cell2013b-sim12-all-009.dcd"
OUTPUT_FILE="/scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-inactive-carazalol-cell2013b/condition-12/rep_1/Prod_9/Prod_9_rewrapped.dcd"
python wrapAlign.py $TOP_FILE $TRAJ_FILE $OUTPUT_FILE

# Stripping water from rewrapped .dcd file and placing output file in same experiment fragment folder path
TRAJ_FILE="/scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-inactive-carazalol-cell2013b/condition-12/rep_1/Prod_9/Prod_9_rewrapped.dcd"
OUTPUT_FILE_PATH="/scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-inactive-carazalol-cell2013b/condition-12/rep_1/Prod_9/Prod_9_rewrapped_strip_waters.dcd"
python stripWaters.py -top $TOP_FILE -traj $TRAJ_FILE $OUTPUT_FILE_PATH


# Rewrapping original .dcd files and placing copy in output experiment fragment folder path
cd /scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-inactive-carazalol-cell2013b/condition-12/rep_1
mkdir Prod_10
cd /scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicInteractions/tools
TOP_FILE="/scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-inactive-carazalol-cell2013b/condition-12/step5_assembly.pdb"
TRAJ_FILE="/scratch/PI/rondror/DesRes-Simulations/ordered-from-DesRes/cell2013b/DESRES-Trajectory_cell2013b-sim12-all.1/cell2013b-sim12-all/cell2013b-sim12-all-010.dcd"
OUTPUT_FILE="/scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-inactive-carazalol-cell2013b/condition-12/rep_1/Prod_10/Prod_10_rewrapped.dcd"
python wrapAlign.py $TOP_FILE $TRAJ_FILE $OUTPUT_FILE

# Stripping water from rewrapped .dcd file and placing output file in same experiment fragment folder path
TRAJ_FILE="/scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-inactive-carazalol-cell2013b/condition-12/rep_1/Prod_10/Prod_10_rewrapped.dcd"
OUTPUT_FILE_PATH="/scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-inactive-carazalol-cell2013b/condition-12/rep_1/Prod_10/Prod_10_rewrapped_strip_waters.dcd"
python stripWaters.py -top $TOP_FILE -traj $TRAJ_FILE $OUTPUT_FILE_PATH


# Rewrapping original .dcd files and placing copy in output experiment fragment folder path
cd /scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-inactive-carazalol-cell2013b/condition-12/rep_1
mkdir Prod_11
cd /scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicInteractions/tools
TOP_FILE="/scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-inactive-carazalol-cell2013b/condition-12/step5_assembly.pdb"
TRAJ_FILE="/scratch/PI/rondror/DesRes-Simulations/ordered-from-DesRes/cell2013b/DESRES-Trajectory_cell2013b-sim12-all.1/cell2013b-sim12-all/cell2013b-sim12-all-011.dcd"
OUTPUT_FILE="/scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-inactive-carazalol-cell2013b/condition-12/rep_1/Prod_11/Prod_11_rewrapped.dcd"
python wrapAlign.py $TOP_FILE $TRAJ_FILE $OUTPUT_FILE

# Stripping water from rewrapped .dcd file and placing output file in same experiment fragment folder path
TRAJ_FILE="/scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-inactive-carazalol-cell2013b/condition-12/rep_1/Prod_11/Prod_11_rewrapped.dcd"
OUTPUT_FILE_PATH="/scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-inactive-carazalol-cell2013b/condition-12/rep_1/Prod_11/Prod_11_rewrapped_strip_waters.dcd"
python stripWaters.py -top $TOP_FILE -traj $TRAJ_FILE $OUTPUT_FILE_PATH


# Rewrapping original .dcd files and placing copy in output experiment fragment folder path
cd /scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-inactive-carazalol-cell2013b/condition-12/rep_1
mkdir Prod_12
cd /scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicInteractions/tools
TOP_FILE="/scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-inactive-carazalol-cell2013b/condition-12/step5_assembly.pdb"
TRAJ_FILE="/scratch/PI/rondror/DesRes-Simulations/ordered-from-DesRes/cell2013b/DESRES-Trajectory_cell2013b-sim12-all.1/cell2013b-sim12-all/cell2013b-sim12-all-012.dcd"
OUTPUT_FILE="/scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-inactive-carazalol-cell2013b/condition-12/rep_1/Prod_12/Prod_12_rewrapped.dcd"
python wrapAlign.py $TOP_FILE $TRAJ_FILE $OUTPUT_FILE

# Stripping water from rewrapped .dcd file and placing output file in same experiment fragment folder path
TRAJ_FILE="/scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-inactive-carazalol-cell2013b/condition-12/rep_1/Prod_12/Prod_12_rewrapped.dcd"
OUTPUT_FILE_PATH="/scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-inactive-carazalol-cell2013b/condition-12/rep_1/Prod_12/Prod_12_rewrapped_strip_waters.dcd"
python stripWaters.py -top $TOP_FILE -traj $TRAJ_FILE $OUTPUT_FILE_PATH


# Rewrapping original .dcd files and placing copy in output experiment fragment folder path
cd /scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-inactive-carazalol-cell2013b/condition-12/rep_1
mkdir Prod_13
cd /scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicInteractions/tools
TOP_FILE="/scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-inactive-carazalol-cell2013b/condition-12/step5_assembly.pdb"
TRAJ_FILE="/scratch/PI/rondror/DesRes-Simulations/ordered-from-DesRes/cell2013b/DESRES-Trajectory_cell2013b-sim12-all.1/cell2013b-sim12-all/cell2013b-sim12-all-013.dcd"
OUTPUT_FILE="/scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-inactive-carazalol-cell2013b/condition-12/rep_1/Prod_13/Prod_13_rewrapped.dcd"
python wrapAlign.py $TOP_FILE $TRAJ_FILE $OUTPUT_FILE

# Stripping water from rewrapped .dcd file and placing output file in same experiment fragment folder path
TRAJ_FILE="/scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-inactive-carazalol-cell2013b/condition-12/rep_1/Prod_13/Prod_13_rewrapped.dcd"
OUTPUT_FILE_PATH="/scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-inactive-carazalol-cell2013b/condition-12/rep_1/Prod_13/Prod_13_rewrapped_strip_waters.dcd"
python stripWaters.py -top $TOP_FILE -traj $TRAJ_FILE $OUTPUT_FILE_PATH


# Rewrapping original .dcd files and placing copy in output experiment fragment folder path
cd /scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-inactive-carazalol-cell2013b/condition-12/rep_1
mkdir Prod_14
cd /scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicInteractions/tools
TOP_FILE="/scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-inactive-carazalol-cell2013b/condition-12/step5_assembly.pdb"
TRAJ_FILE="/scratch/PI/rondror/DesRes-Simulations/ordered-from-DesRes/cell2013b/DESRES-Trajectory_cell2013b-sim12-all.1/cell2013b-sim12-all/cell2013b-sim12-all-014.dcd"
OUTPUT_FILE="/scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-inactive-carazalol-cell2013b/condition-12/rep_1/Prod_14/Prod_14_rewrapped.dcd"
python wrapAlign.py $TOP_FILE $TRAJ_FILE $OUTPUT_FILE

# Stripping water from rewrapped .dcd file and placing output file in same experiment fragment folder path
TRAJ_FILE="/scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-inactive-carazalol-cell2013b/condition-12/rep_1/Prod_14/Prod_14_rewrapped.dcd"
OUTPUT_FILE_PATH="/scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-inactive-carazalol-cell2013b/condition-12/rep_1/Prod_14/Prod_14_rewrapped_strip_waters.dcd"
python stripWaters.py -top $TOP_FILE -traj $TRAJ_FILE $OUTPUT_FILE_PATH


# Rewrapping original .dcd files and placing copy in output experiment fragment folder path
cd /scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-inactive-carazalol-cell2013b/condition-12/rep_1
mkdir Prod_15
cd /scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicInteractions/tools
TOP_FILE="/scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-inactive-carazalol-cell2013b/condition-12/step5_assembly.pdb"
TRAJ_FILE="/scratch/PI/rondror/DesRes-Simulations/ordered-from-DesRes/cell2013b/DESRES-Trajectory_cell2013b-sim12-all.1/cell2013b-sim12-all/cell2013b-sim12-all-015.dcd"
OUTPUT_FILE="/scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-inactive-carazalol-cell2013b/condition-12/rep_1/Prod_15/Prod_15_rewrapped.dcd"
python wrapAlign.py $TOP_FILE $TRAJ_FILE $OUTPUT_FILE

# Stripping water from rewrapped .dcd file and placing output file in same experiment fragment folder path
TRAJ_FILE="/scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-inactive-carazalol-cell2013b/condition-12/rep_1/Prod_15/Prod_15_rewrapped.dcd"
OUTPUT_FILE_PATH="/scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-inactive-carazalol-cell2013b/condition-12/rep_1/Prod_15/Prod_15_rewrapped_strip_waters.dcd"
python stripWaters.py -top $TOP_FILE -traj $TRAJ_FILE $OUTPUT_FILE_PATH


# Rewrapping original .dcd files and placing copy in output experiment fragment folder path
cd /scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-inactive-carazalol-cell2013b/condition-12/rep_1
mkdir Prod_16
cd /scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicInteractions/tools
TOP_FILE="/scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-inactive-carazalol-cell2013b/condition-12/step5_assembly.pdb"
TRAJ_FILE="/scratch/PI/rondror/DesRes-Simulations/ordered-from-DesRes/cell2013b/DESRES-Trajectory_cell2013b-sim12-all.1/cell2013b-sim12-all/cell2013b-sim12-all-016.dcd"
OUTPUT_FILE="/scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-inactive-carazalol-cell2013b/condition-12/rep_1/Prod_16/Prod_16_rewrapped.dcd"
python wrapAlign.py $TOP_FILE $TRAJ_FILE $OUTPUT_FILE

# Stripping water from rewrapped .dcd file and placing output file in same experiment fragment folder path
TRAJ_FILE="/scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-inactive-carazalol-cell2013b/condition-12/rep_1/Prod_16/Prod_16_rewrapped.dcd"
OUTPUT_FILE_PATH="/scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-inactive-carazalol-cell2013b/condition-12/rep_1/Prod_16/Prod_16_rewrapped_strip_waters.dcd"
python stripWaters.py -top $TOP_FILE -traj $TRAJ_FILE $OUTPUT_FILE_PATH


# Rewrapping original .dcd files and placing copy in output experiment fragment folder path
cd /scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-inactive-carazalol-cell2013b/condition-12/rep_1
mkdir Prod_17
cd /scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicInteractions/tools
TOP_FILE="/scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-inactive-carazalol-cell2013b/condition-12/step5_assembly.pdb"
TRAJ_FILE="/scratch/PI/rondror/DesRes-Simulations/ordered-from-DesRes/cell2013b/DESRES-Trajectory_cell2013b-sim12-all.1/cell2013b-sim12-all/cell2013b-sim12-all-017.dcd"
OUTPUT_FILE="/scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-inactive-carazalol-cell2013b/condition-12/rep_1/Prod_17/Prod_17_rewrapped.dcd"
python wrapAlign.py $TOP_FILE $TRAJ_FILE $OUTPUT_FILE

# Stripping water from rewrapped .dcd file and placing output file in same experiment fragment folder path
TRAJ_FILE="/scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-inactive-carazalol-cell2013b/condition-12/rep_1/Prod_17/Prod_17_rewrapped.dcd"
OUTPUT_FILE_PATH="/scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-inactive-carazalol-cell2013b/condition-12/rep_1/Prod_17/Prod_17_rewrapped_strip_waters.dcd"
python stripWaters.py -top $TOP_FILE -traj $TRAJ_FILE $OUTPUT_FILE_PATH


# Rewrapping original .dcd files and placing copy in output experiment fragment folder path
cd /scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-inactive-carazalol-cell2013b/condition-12/rep_1
mkdir Prod_18
cd /scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicInteractions/tools
TOP_FILE="/scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-inactive-carazalol-cell2013b/condition-12/step5_assembly.pdb"
TRAJ_FILE="/scratch/PI/rondror/DesRes-Simulations/ordered-from-DesRes/cell2013b/DESRES-Trajectory_cell2013b-sim12-all.1/cell2013b-sim12-all/cell2013b-sim12-all-018.dcd"
OUTPUT_FILE="/scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-inactive-carazalol-cell2013b/condition-12/rep_1/Prod_18/Prod_18_rewrapped.dcd"
python wrapAlign.py $TOP_FILE $TRAJ_FILE $OUTPUT_FILE

# Stripping water from rewrapped .dcd file and placing output file in same experiment fragment folder path
TRAJ_FILE="/scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-inactive-carazalol-cell2013b/condition-12/rep_1/Prod_18/Prod_18_rewrapped.dcd"
OUTPUT_FILE_PATH="/scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-inactive-carazalol-cell2013b/condition-12/rep_1/Prod_18/Prod_18_rewrapped_strip_waters.dcd"
python stripWaters.py -top $TOP_FILE -traj $TRAJ_FILE $OUTPUT_FILE_PATH


# Rewrapping original .dcd files and placing copy in output experiment fragment folder path
cd /scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-inactive-carazalol-cell2013b/condition-12/rep_1
mkdir Prod_19
cd /scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicInteractions/tools
TOP_FILE="/scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-inactive-carazalol-cell2013b/condition-12/step5_assembly.pdb"
TRAJ_FILE="/scratch/PI/rondror/DesRes-Simulations/ordered-from-DesRes/cell2013b/DESRES-Trajectory_cell2013b-sim12-all.1/cell2013b-sim12-all/cell2013b-sim12-all-019.dcd"
OUTPUT_FILE="/scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-inactive-carazalol-cell2013b/condition-12/rep_1/Prod_19/Prod_19_rewrapped.dcd"
python wrapAlign.py $TOP_FILE $TRAJ_FILE $OUTPUT_FILE

# Stripping water from rewrapped .dcd file and placing output file in same experiment fragment folder path
TRAJ_FILE="/scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-inactive-carazalol-cell2013b/condition-12/rep_1/Prod_19/Prod_19_rewrapped.dcd"
OUTPUT_FILE_PATH="/scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-inactive-carazalol-cell2013b/condition-12/rep_1/Prod_19/Prod_19_rewrapped_strip_waters.dcd"
python stripWaters.py -top $TOP_FILE -traj $TRAJ_FILE $OUTPUT_FILE_PATH


# Rewrapping original .dcd files and placing copy in output experiment fragment folder path
cd /scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-inactive-carazalol-cell2013b/condition-12/rep_1
mkdir Prod_20
cd /scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicInteractions/tools
TOP_FILE="/scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-inactive-carazalol-cell2013b/condition-12/step5_assembly.pdb"
TRAJ_FILE="/scratch/PI/rondror/DesRes-Simulations/ordered-from-DesRes/cell2013b/DESRES-Trajectory_cell2013b-sim12-all.1/cell2013b-sim12-all/cell2013b-sim12-all-020.dcd"
OUTPUT_FILE="/scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-inactive-carazalol-cell2013b/condition-12/rep_1/Prod_20/Prod_20_rewrapped.dcd"
python wrapAlign.py $TOP_FILE $TRAJ_FILE $OUTPUT_FILE

# Stripping water from rewrapped .dcd file and placing output file in same experiment fragment folder path
TRAJ_FILE="/scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-inactive-carazalol-cell2013b/condition-12/rep_1/Prod_20/Prod_20_rewrapped.dcd"
OUTPUT_FILE_PATH="/scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-inactive-carazalol-cell2013b/condition-12/rep_1/Prod_20/Prod_20_rewrapped_strip_waters.dcd"
python stripWaters.py -top $TOP_FILE -traj $TRAJ_FILE $OUTPUT_FILE_PATH


# Rewrapping original .dcd files and placing copy in output experiment fragment folder path
cd /scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-inactive-carazalol-cell2013b/condition-12/rep_1
mkdir Prod_21
cd /scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicInteractions/tools
TOP_FILE="/scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-inactive-carazalol-cell2013b/condition-12/step5_assembly.pdb"
TRAJ_FILE="/scratch/PI/rondror/DesRes-Simulations/ordered-from-DesRes/cell2013b/DESRES-Trajectory_cell2013b-sim12-all.1/cell2013b-sim12-all/cell2013b-sim12-all-021.dcd"
OUTPUT_FILE="/scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-inactive-carazalol-cell2013b/condition-12/rep_1/Prod_21/Prod_21_rewrapped.dcd"
python wrapAlign.py $TOP_FILE $TRAJ_FILE $OUTPUT_FILE

# Stripping water from rewrapped .dcd file and placing output file in same experiment fragment folder path
TRAJ_FILE="/scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-inactive-carazalol-cell2013b/condition-12/rep_1/Prod_21/Prod_21_rewrapped.dcd"
OUTPUT_FILE_PATH="/scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-inactive-carazalol-cell2013b/condition-12/rep_1/Prod_21/Prod_21_rewrapped_strip_waters.dcd"
python stripWaters.py -top $TOP_FILE -traj $TRAJ_FILE $OUTPUT_FILE_PATH


# Rewrapping original .dcd files and placing copy in output experiment fragment folder path
cd /scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-inactive-carazalol-cell2013b/condition-12/rep_1
mkdir Prod_22
cd /scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicInteractions/tools
TOP_FILE="/scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-inactive-carazalol-cell2013b/condition-12/step5_assembly.pdb"
TRAJ_FILE="/scratch/PI/rondror/DesRes-Simulations/ordered-from-DesRes/cell2013b/DESRES-Trajectory_cell2013b-sim12-all.1/cell2013b-sim12-all/cell2013b-sim12-all-022.dcd"
OUTPUT_FILE="/scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-inactive-carazalol-cell2013b/condition-12/rep_1/Prod_22/Prod_22_rewrapped.dcd"
python wrapAlign.py $TOP_FILE $TRAJ_FILE $OUTPUT_FILE

# Stripping water from rewrapped .dcd file and placing output file in same experiment fragment folder path
TRAJ_FILE="/scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-inactive-carazalol-cell2013b/condition-12/rep_1/Prod_22/Prod_22_rewrapped.dcd"
OUTPUT_FILE_PATH="/scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-inactive-carazalol-cell2013b/condition-12/rep_1/Prod_22/Prod_22_rewrapped_strip_waters.dcd"
python stripWaters.py -top $TOP_FILE -traj $TRAJ_FILE $OUTPUT_FILE_PATH


# Rewrapping original .dcd files and placing copy in output experiment fragment folder path
cd /scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-inactive-carazalol-cell2013b/condition-12/rep_1
mkdir Prod_23
cd /scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicInteractions/tools
TOP_FILE="/scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-inactive-carazalol-cell2013b/condition-12/step5_assembly.pdb"
TRAJ_FILE="/scratch/PI/rondror/DesRes-Simulations/ordered-from-DesRes/cell2013b/DESRES-Trajectory_cell2013b-sim12-all.1/cell2013b-sim12-all/cell2013b-sim12-all-023.dcd"
OUTPUT_FILE="/scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-inactive-carazalol-cell2013b/condition-12/rep_1/Prod_23/Prod_23_rewrapped.dcd"
python wrapAlign.py $TOP_FILE $TRAJ_FILE $OUTPUT_FILE

# Stripping water from rewrapped .dcd file and placing output file in same experiment fragment folder path
TRAJ_FILE="/scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-inactive-carazalol-cell2013b/condition-12/rep_1/Prod_23/Prod_23_rewrapped.dcd"
OUTPUT_FILE_PATH="/scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-inactive-carazalol-cell2013b/condition-12/rep_1/Prod_23/Prod_23_rewrapped_strip_waters.dcd"
python stripWaters.py -top $TOP_FILE -traj $TRAJ_FILE $OUTPUT_FILE_PATH


# Rewrapping original .dcd files and placing copy in output experiment fragment folder path
cd /scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-inactive-carazalol-cell2013b/condition-12/rep_1
mkdir Prod_24
cd /scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicInteractions/tools
TOP_FILE="/scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-inactive-carazalol-cell2013b/condition-12/step5_assembly.pdb"
TRAJ_FILE="/scratch/PI/rondror/DesRes-Simulations/ordered-from-DesRes/cell2013b/DESRES-Trajectory_cell2013b-sim12-all.1/cell2013b-sim12-all/cell2013b-sim12-all-024.dcd"
OUTPUT_FILE="/scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-inactive-carazalol-cell2013b/condition-12/rep_1/Prod_24/Prod_24_rewrapped.dcd"
python wrapAlign.py $TOP_FILE $TRAJ_FILE $OUTPUT_FILE

# Stripping water from rewrapped .dcd file and placing output file in same experiment fragment folder path
TRAJ_FILE="/scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-inactive-carazalol-cell2013b/condition-12/rep_1/Prod_24/Prod_24_rewrapped.dcd"
OUTPUT_FILE_PATH="/scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-inactive-carazalol-cell2013b/condition-12/rep_1/Prod_24/Prod_24_rewrapped_strip_waters.dcd"
python stripWaters.py -top $TOP_FILE -traj $TRAJ_FILE $OUTPUT_FILE_PATH


# Rewrapping original .dcd files and placing copy in output experiment fragment folder path
cd /scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-inactive-carazalol-cell2013b/condition-12/rep_1
mkdir Prod_25
cd /scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicInteractions/tools
TOP_FILE="/scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-inactive-carazalol-cell2013b/condition-12/step5_assembly.pdb"
TRAJ_FILE="/scratch/PI/rondror/DesRes-Simulations/ordered-from-DesRes/cell2013b/DESRES-Trajectory_cell2013b-sim12-all.1/cell2013b-sim12-all/cell2013b-sim12-all-025.dcd"
OUTPUT_FILE="/scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-inactive-carazalol-cell2013b/condition-12/rep_1/Prod_25/Prod_25_rewrapped.dcd"
python wrapAlign.py $TOP_FILE $TRAJ_FILE $OUTPUT_FILE

# Stripping water from rewrapped .dcd file and placing output file in same experiment fragment folder path
TRAJ_FILE="/scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-inactive-carazalol-cell2013b/condition-12/rep_1/Prod_25/Prod_25_rewrapped.dcd"
OUTPUT_FILE_PATH="/scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-inactive-carazalol-cell2013b/condition-12/rep_1/Prod_25/Prod_25_rewrapped_strip_waters.dcd"
python stripWaters.py -top $TOP_FILE -traj $TRAJ_FILE $OUTPUT_FILE_PATH


# Rewrapping original .dcd files and placing copy in output experiment fragment folder path
cd /scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-inactive-carazalol-cell2013b/condition-12/rep_1
mkdir Prod_26
cd /scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicInteractions/tools
TOP_FILE="/scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-inactive-carazalol-cell2013b/condition-12/step5_assembly.pdb"
TRAJ_FILE="/scratch/PI/rondror/DesRes-Simulations/ordered-from-DesRes/cell2013b/DESRES-Trajectory_cell2013b-sim12-all.1/cell2013b-sim12-all/cell2013b-sim12-all-026.dcd"
OUTPUT_FILE="/scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-inactive-carazalol-cell2013b/condition-12/rep_1/Prod_26/Prod_26_rewrapped.dcd"
python wrapAlign.py $TOP_FILE $TRAJ_FILE $OUTPUT_FILE

# Stripping water from rewrapped .dcd file and placing output file in same experiment fragment folder path
TRAJ_FILE="/scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-inactive-carazalol-cell2013b/condition-12/rep_1/Prod_26/Prod_26_rewrapped.dcd"
OUTPUT_FILE_PATH="/scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-inactive-carazalol-cell2013b/condition-12/rep_1/Prod_26/Prod_26_rewrapped_strip_waters.dcd"
python stripWaters.py -top $TOP_FILE -traj $TRAJ_FILE $OUTPUT_FILE_PATH


# Rewrapping original .dcd files and placing copy in output experiment fragment folder path
cd /scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-inactive-carazalol-cell2013b/condition-12/rep_1
mkdir Prod_27
cd /scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicInteractions/tools
TOP_FILE="/scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-inactive-carazalol-cell2013b/condition-12/step5_assembly.pdb"
TRAJ_FILE="/scratch/PI/rondror/DesRes-Simulations/ordered-from-DesRes/cell2013b/DESRES-Trajectory_cell2013b-sim12-all.1/cell2013b-sim12-all/cell2013b-sim12-all-027.dcd"
OUTPUT_FILE="/scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-inactive-carazalol-cell2013b/condition-12/rep_1/Prod_27/Prod_27_rewrapped.dcd"
python wrapAlign.py $TOP_FILE $TRAJ_FILE $OUTPUT_FILE

# Stripping water from rewrapped .dcd file and placing output file in same experiment fragment folder path
TRAJ_FILE="/scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-inactive-carazalol-cell2013b/condition-12/rep_1/Prod_27/Prod_27_rewrapped.dcd"
OUTPUT_FILE_PATH="/scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-inactive-carazalol-cell2013b/condition-12/rep_1/Prod_27/Prod_27_rewrapped_strip_waters.dcd"
python stripWaters.py -top $TOP_FILE -traj $TRAJ_FILE $OUTPUT_FILE_PATH


# Rewrapping original .dcd files and placing copy in output experiment fragment folder path
cd /scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-inactive-carazalol-cell2013b/condition-12/rep_1
mkdir Prod_28
cd /scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicInteractions/tools
TOP_FILE="/scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-inactive-carazalol-cell2013b/condition-12/step5_assembly.pdb"
TRAJ_FILE="/scratch/PI/rondror/DesRes-Simulations/ordered-from-DesRes/cell2013b/DESRES-Trajectory_cell2013b-sim12-all.1/cell2013b-sim12-all/cell2013b-sim12-all-028.dcd"
OUTPUT_FILE="/scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-inactive-carazalol-cell2013b/condition-12/rep_1/Prod_28/Prod_28_rewrapped.dcd"
python wrapAlign.py $TOP_FILE $TRAJ_FILE $OUTPUT_FILE

# Stripping water from rewrapped .dcd file and placing output file in same experiment fragment folder path
TRAJ_FILE="/scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-inactive-carazalol-cell2013b/condition-12/rep_1/Prod_28/Prod_28_rewrapped.dcd"
OUTPUT_FILE_PATH="/scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-inactive-carazalol-cell2013b/condition-12/rep_1/Prod_28/Prod_28_rewrapped_strip_waters.dcd"
python stripWaters.py -top $TOP_FILE -traj $TRAJ_FILE $OUTPUT_FILE_PATH


# Rewrapping original .dcd files and placing copy in output experiment fragment folder path
cd /scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-inactive-carazalol-cell2013b/condition-12/rep_1
mkdir Prod_29
cd /scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicInteractions/tools
TOP_FILE="/scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-inactive-carazalol-cell2013b/condition-12/step5_assembly.pdb"
TRAJ_FILE="/scratch/PI/rondror/DesRes-Simulations/ordered-from-DesRes/cell2013b/DESRES-Trajectory_cell2013b-sim12-all.1/cell2013b-sim12-all/cell2013b-sim12-all-029.dcd"
OUTPUT_FILE="/scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-inactive-carazalol-cell2013b/condition-12/rep_1/Prod_29/Prod_29_rewrapped.dcd"
python wrapAlign.py $TOP_FILE $TRAJ_FILE $OUTPUT_FILE

# Stripping water from rewrapped .dcd file and placing output file in same experiment fragment folder path
TRAJ_FILE="/scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-inactive-carazalol-cell2013b/condition-12/rep_1/Prod_29/Prod_29_rewrapped.dcd"
OUTPUT_FILE_PATH="/scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-inactive-carazalol-cell2013b/condition-12/rep_1/Prod_29/Prod_29_rewrapped_strip_waters.dcd"
python stripWaters.py -top $TOP_FILE -traj $TRAJ_FILE $OUTPUT_FILE_PATH


# Rewrapping original .dcd files and placing copy in output experiment fragment folder path
cd /scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-inactive-carazalol-cell2013b/condition-12/rep_1
mkdir Prod_30
cd /scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicInteractions/tools
TOP_FILE="/scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-inactive-carazalol-cell2013b/condition-12/step5_assembly.pdb"
TRAJ_FILE="/scratch/PI/rondror/DesRes-Simulations/ordered-from-DesRes/cell2013b/DESRES-Trajectory_cell2013b-sim12-all.1/cell2013b-sim12-all/cell2013b-sim12-all-030.dcd"
OUTPUT_FILE="/scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-inactive-carazalol-cell2013b/condition-12/rep_1/Prod_30/Prod_30_rewrapped.dcd"
python wrapAlign.py $TOP_FILE $TRAJ_FILE $OUTPUT_FILE

# Stripping water from rewrapped .dcd file and placing output file in same experiment fragment folder path
TRAJ_FILE="/scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-inactive-carazalol-cell2013b/condition-12/rep_1/Prod_30/Prod_30_rewrapped.dcd"
OUTPUT_FILE_PATH="/scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-inactive-carazalol-cell2013b/condition-12/rep_1/Prod_30/Prod_30_rewrapped_strip_waters.dcd"
python stripWaters.py -top $TOP_FILE -traj $TRAJ_FILE $OUTPUT_FILE_PATH


# Rewrapping original .dcd files and placing copy in output experiment fragment folder path
cd /scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-inactive-carazalol-cell2013b/condition-12/rep_1
mkdir Prod_31
cd /scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicInteractions/tools
TOP_FILE="/scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-inactive-carazalol-cell2013b/condition-12/step5_assembly.pdb"
TRAJ_FILE="/scratch/PI/rondror/DesRes-Simulations/ordered-from-DesRes/cell2013b/DESRES-Trajectory_cell2013b-sim12-all.1/cell2013b-sim12-all/cell2013b-sim12-all-031.dcd"
OUTPUT_FILE="/scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-inactive-carazalol-cell2013b/condition-12/rep_1/Prod_31/Prod_31_rewrapped.dcd"
python wrapAlign.py $TOP_FILE $TRAJ_FILE $OUTPUT_FILE

# Stripping water from rewrapped .dcd file and placing output file in same experiment fragment folder path
TRAJ_FILE="/scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-inactive-carazalol-cell2013b/condition-12/rep_1/Prod_31/Prod_31_rewrapped.dcd"
OUTPUT_FILE_PATH="/scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-inactive-carazalol-cell2013b/condition-12/rep_1/Prod_31/Prod_31_rewrapped_strip_waters.dcd"
python stripWaters.py -top $TOP_FILE -traj $TRAJ_FILE $OUTPUT_FILE_PATH


# Rewrapping original .dcd files and placing copy in output experiment fragment folder path
cd /scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-inactive-carazalol-cell2013b/condition-12/rep_1
mkdir Prod_32
cd /scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicInteractions/tools
TOP_FILE="/scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-inactive-carazalol-cell2013b/condition-12/step5_assembly.pdb"
TRAJ_FILE="/scratch/PI/rondror/DesRes-Simulations/ordered-from-DesRes/cell2013b/DESRES-Trajectory_cell2013b-sim12-all.1/cell2013b-sim12-all/cell2013b-sim12-all-032.dcd"
OUTPUT_FILE="/scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-inactive-carazalol-cell2013b/condition-12/rep_1/Prod_32/Prod_32_rewrapped.dcd"
python wrapAlign.py $TOP_FILE $TRAJ_FILE $OUTPUT_FILE

# Stripping water from rewrapped .dcd file and placing output file in same experiment fragment folder path
TRAJ_FILE="/scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-inactive-carazalol-cell2013b/condition-12/rep_1/Prod_32/Prod_32_rewrapped.dcd"
OUTPUT_FILE_PATH="/scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-inactive-carazalol-cell2013b/condition-12/rep_1/Prod_32/Prod_32_rewrapped_strip_waters.dcd"
python stripWaters.py -top $TOP_FILE -traj $TRAJ_FILE $OUTPUT_FILE_PATH


# Rewrapping original .dcd files and placing copy in output experiment fragment folder path
cd /scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-inactive-carazalol-cell2013b/condition-12/rep_1
mkdir Prod_33
cd /scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicInteractions/tools
TOP_FILE="/scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-inactive-carazalol-cell2013b/condition-12/step5_assembly.pdb"
TRAJ_FILE="/scratch/PI/rondror/DesRes-Simulations/ordered-from-DesRes/cell2013b/DESRES-Trajectory_cell2013b-sim12-all.1/cell2013b-sim12-all/cell2013b-sim12-all-033.dcd"
OUTPUT_FILE="/scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-inactive-carazalol-cell2013b/condition-12/rep_1/Prod_33/Prod_33_rewrapped.dcd"
python wrapAlign.py $TOP_FILE $TRAJ_FILE $OUTPUT_FILE

# Stripping water from rewrapped .dcd file and placing output file in same experiment fragment folder path
TRAJ_FILE="/scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-inactive-carazalol-cell2013b/condition-12/rep_1/Prod_33/Prod_33_rewrapped.dcd"
OUTPUT_FILE_PATH="/scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-inactive-carazalol-cell2013b/condition-12/rep_1/Prod_33/Prod_33_rewrapped_strip_waters.dcd"
python stripWaters.py -top $TOP_FILE -traj $TRAJ_FILE $OUTPUT_FILE_PATH


# Rewrapping original .dcd files and placing copy in output experiment fragment folder path
cd /scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-inactive-carazalol-cell2013b/condition-12/rep_1
mkdir Prod_34
cd /scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicInteractions/tools
TOP_FILE="/scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-inactive-carazalol-cell2013b/condition-12/step5_assembly.pdb"
TRAJ_FILE="/scratch/PI/rondror/DesRes-Simulations/ordered-from-DesRes/cell2013b/DESRES-Trajectory_cell2013b-sim12-all.1/cell2013b-sim12-all/cell2013b-sim12-all-034.dcd"
OUTPUT_FILE="/scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-inactive-carazalol-cell2013b/condition-12/rep_1/Prod_34/Prod_34_rewrapped.dcd"
python wrapAlign.py $TOP_FILE $TRAJ_FILE $OUTPUT_FILE

# Stripping water from rewrapped .dcd file and placing output file in same experiment fragment folder path
TRAJ_FILE="/scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-inactive-carazalol-cell2013b/condition-12/rep_1/Prod_34/Prod_34_rewrapped.dcd"
OUTPUT_FILE_PATH="/scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-inactive-carazalol-cell2013b/condition-12/rep_1/Prod_34/Prod_34_rewrapped_strip_waters.dcd"
python stripWaters.py -top $TOP_FILE -traj $TRAJ_FILE $OUTPUT_FILE_PATH


# Rewrapping original .dcd files and placing copy in output experiment fragment folder path
cd /scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-inactive-carazalol-cell2013b/condition-12/rep_1
mkdir Prod_35
cd /scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicInteractions/tools
TOP_FILE="/scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-inactive-carazalol-cell2013b/condition-12/step5_assembly.pdb"
TRAJ_FILE="/scratch/PI/rondror/DesRes-Simulations/ordered-from-DesRes/cell2013b/DESRES-Trajectory_cell2013b-sim12-all.1/cell2013b-sim12-all/cell2013b-sim12-all-035.dcd"
OUTPUT_FILE="/scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-inactive-carazalol-cell2013b/condition-12/rep_1/Prod_35/Prod_35_rewrapped.dcd"
python wrapAlign.py $TOP_FILE $TRAJ_FILE $OUTPUT_FILE

# Stripping water from rewrapped .dcd file and placing output file in same experiment fragment folder path
TRAJ_FILE="/scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-inactive-carazalol-cell2013b/condition-12/rep_1/Prod_35/Prod_35_rewrapped.dcd"
OUTPUT_FILE_PATH="/scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-inactive-carazalol-cell2013b/condition-12/rep_1/Prod_35/Prod_35_rewrapped_strip_waters.dcd"
python stripWaters.py -top $TOP_FILE -traj $TRAJ_FILE $OUTPUT_FILE_PATH


# Rewrapping original .dcd files and placing copy in output experiment fragment folder path
cd /scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-inactive-carazalol-cell2013b/condition-12/rep_1
mkdir Prod_36
cd /scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicInteractions/tools
TOP_FILE="/scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-inactive-carazalol-cell2013b/condition-12/step5_assembly.pdb"
TRAJ_FILE="/scratch/PI/rondror/DesRes-Simulations/ordered-from-DesRes/cell2013b/DESRES-Trajectory_cell2013b-sim12-all.1/cell2013b-sim12-all/cell2013b-sim12-all-036.dcd"
OUTPUT_FILE="/scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-inactive-carazalol-cell2013b/condition-12/rep_1/Prod_36/Prod_36_rewrapped.dcd"
python wrapAlign.py $TOP_FILE $TRAJ_FILE $OUTPUT_FILE

# Stripping water from rewrapped .dcd file and placing output file in same experiment fragment folder path
TRAJ_FILE="/scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-inactive-carazalol-cell2013b/condition-12/rep_1/Prod_36/Prod_36_rewrapped.dcd"
OUTPUT_FILE_PATH="/scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-inactive-carazalol-cell2013b/condition-12/rep_1/Prod_36/Prod_36_rewrapped_strip_waters.dcd"
python stripWaters.py -top $TOP_FILE -traj $TRAJ_FILE $OUTPUT_FILE_PATH


# Rewrapping original .dcd files and placing copy in output experiment fragment folder path
cd /scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-inactive-carazalol-cell2013b/condition-12/rep_1
mkdir Prod_37
cd /scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicInteractions/tools
TOP_FILE="/scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-inactive-carazalol-cell2013b/condition-12/step5_assembly.pdb"
TRAJ_FILE="/scratch/PI/rondror/DesRes-Simulations/ordered-from-DesRes/cell2013b/DESRES-Trajectory_cell2013b-sim12-all.1/cell2013b-sim12-all/cell2013b-sim12-all-037.dcd"
OUTPUT_FILE="/scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-inactive-carazalol-cell2013b/condition-12/rep_1/Prod_37/Prod_37_rewrapped.dcd"
python wrapAlign.py $TOP_FILE $TRAJ_FILE $OUTPUT_FILE

# Stripping water from rewrapped .dcd file and placing output file in same experiment fragment folder path
TRAJ_FILE="/scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-inactive-carazalol-cell2013b/condition-12/rep_1/Prod_37/Prod_37_rewrapped.dcd"
OUTPUT_FILE_PATH="/scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-inactive-carazalol-cell2013b/condition-12/rep_1/Prod_37/Prod_37_rewrapped_strip_waters.dcd"
python stripWaters.py -top $TOP_FILE -traj $TRAJ_FILE $OUTPUT_FILE_PATH


# Rewrapping original .dcd files and placing copy in output experiment fragment folder path
cd /scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-inactive-carazalol-cell2013b/condition-12/rep_1
mkdir Prod_38
cd /scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicInteractions/tools
TOP_FILE="/scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-inactive-carazalol-cell2013b/condition-12/step5_assembly.pdb"
TRAJ_FILE="/scratch/PI/rondror/DesRes-Simulations/ordered-from-DesRes/cell2013b/DESRES-Trajectory_cell2013b-sim12-all.1/cell2013b-sim12-all/cell2013b-sim12-all-038.dcd"
OUTPUT_FILE="/scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-inactive-carazalol-cell2013b/condition-12/rep_1/Prod_38/Prod_38_rewrapped.dcd"
python wrapAlign.py $TOP_FILE $TRAJ_FILE $OUTPUT_FILE

# Stripping water from rewrapped .dcd file and placing output file in same experiment fragment folder path
TRAJ_FILE="/scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-inactive-carazalol-cell2013b/condition-12/rep_1/Prod_38/Prod_38_rewrapped.dcd"
OUTPUT_FILE_PATH="/scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-inactive-carazalol-cell2013b/condition-12/rep_1/Prod_38/Prod_38_rewrapped_strip_waters.dcd"
python stripWaters.py -top $TOP_FILE -traj $TRAJ_FILE $OUTPUT_FILE_PATH


# Rewrapping original .dcd files and placing copy in output experiment fragment folder path
cd /scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-inactive-carazalol-cell2013b/condition-12/rep_1
mkdir Prod_39
cd /scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicInteractions/tools
TOP_FILE="/scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-inactive-carazalol-cell2013b/condition-12/step5_assembly.pdb"
TRAJ_FILE="/scratch/PI/rondror/DesRes-Simulations/ordered-from-DesRes/cell2013b/DESRES-Trajectory_cell2013b-sim12-all.1/cell2013b-sim12-all/cell2013b-sim12-all-039.dcd"
OUTPUT_FILE="/scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-inactive-carazalol-cell2013b/condition-12/rep_1/Prod_39/Prod_39_rewrapped.dcd"
python wrapAlign.py $TOP_FILE $TRAJ_FILE $OUTPUT_FILE

# Stripping water from rewrapped .dcd file and placing output file in same experiment fragment folder path
TRAJ_FILE="/scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-inactive-carazalol-cell2013b/condition-12/rep_1/Prod_39/Prod_39_rewrapped.dcd"
OUTPUT_FILE_PATH="/scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-inactive-carazalol-cell2013b/condition-12/rep_1/Prod_39/Prod_39_rewrapped_strip_waters.dcd"
python stripWaters.py -top $TOP_FILE -traj $TRAJ_FILE $OUTPUT_FILE_PATH


# Rewrapping original .dcd files and placing copy in output experiment fragment folder path
cd /scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-inactive-carazalol-cell2013b/condition-12/rep_1
mkdir Prod_40
cd /scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicInteractions/tools
TOP_FILE="/scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-inactive-carazalol-cell2013b/condition-12/step5_assembly.pdb"
TRAJ_FILE="/scratch/PI/rondror/DesRes-Simulations/ordered-from-DesRes/cell2013b/DESRES-Trajectory_cell2013b-sim12-all.1/cell2013b-sim12-all/cell2013b-sim12-all-040.dcd"
OUTPUT_FILE="/scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-inactive-carazalol-cell2013b/condition-12/rep_1/Prod_40/Prod_40_rewrapped.dcd"
python wrapAlign.py $TOP_FILE $TRAJ_FILE $OUTPUT_FILE

# Stripping water from rewrapped .dcd file and placing output file in same experiment fragment folder path
TRAJ_FILE="/scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-inactive-carazalol-cell2013b/condition-12/rep_1/Prod_40/Prod_40_rewrapped.dcd"
OUTPUT_FILE_PATH="/scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-inactive-carazalol-cell2013b/condition-12/rep_1/Prod_40/Prod_40_rewrapped_strip_waters.dcd"
python stripWaters.py -top $TOP_FILE -traj $TRAJ_FILE $OUTPUT_FILE_PATH


# Rewrapping original .dcd files and placing copy in output experiment fragment folder path
cd /scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-inactive-carazalol-cell2013b/condition-12/rep_1
mkdir Prod_41
cd /scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicInteractions/tools
TOP_FILE="/scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-inactive-carazalol-cell2013b/condition-12/step5_assembly.pdb"
TRAJ_FILE="/scratch/PI/rondror/DesRes-Simulations/ordered-from-DesRes/cell2013b/DESRES-Trajectory_cell2013b-sim12-all.1/cell2013b-sim12-all/cell2013b-sim12-all-041.dcd"
OUTPUT_FILE="/scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-inactive-carazalol-cell2013b/condition-12/rep_1/Prod_41/Prod_41_rewrapped.dcd"
python wrapAlign.py $TOP_FILE $TRAJ_FILE $OUTPUT_FILE

# Stripping water from rewrapped .dcd file and placing output file in same experiment fragment folder path
TRAJ_FILE="/scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-inactive-carazalol-cell2013b/condition-12/rep_1/Prod_41/Prod_41_rewrapped.dcd"
OUTPUT_FILE_PATH="/scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-inactive-carazalol-cell2013b/condition-12/rep_1/Prod_41/Prod_41_rewrapped_strip_waters.dcd"
python stripWaters.py -top $TOP_FILE -traj $TRAJ_FILE $OUTPUT_FILE_PATH


# Rewrapping original .dcd files and placing copy in output experiment fragment folder path
cd /scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-inactive-carazalol-cell2013b/condition-12/rep_1
mkdir Prod_42
cd /scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicInteractions/tools
TOP_FILE="/scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-inactive-carazalol-cell2013b/condition-12/step5_assembly.pdb"
TRAJ_FILE="/scratch/PI/rondror/DesRes-Simulations/ordered-from-DesRes/cell2013b/DESRES-Trajectory_cell2013b-sim12-all.1/cell2013b-sim12-all/cell2013b-sim12-all-042.dcd"
OUTPUT_FILE="/scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-inactive-carazalol-cell2013b/condition-12/rep_1/Prod_42/Prod_42_rewrapped.dcd"
python wrapAlign.py $TOP_FILE $TRAJ_FILE $OUTPUT_FILE

# Stripping water from rewrapped .dcd file and placing output file in same experiment fragment folder path
TRAJ_FILE="/scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-inactive-carazalol-cell2013b/condition-12/rep_1/Prod_42/Prod_42_rewrapped.dcd"
OUTPUT_FILE_PATH="/scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-inactive-carazalol-cell2013b/condition-12/rep_1/Prod_42/Prod_42_rewrapped_strip_waters.dcd"
python stripWaters.py -top $TOP_FILE -traj $TRAJ_FILE $OUTPUT_FILE_PATH


# Rewrapping original .dcd files and placing copy in output experiment fragment folder path
cd /scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-inactive-carazalol-cell2013b/condition-12/rep_1
mkdir Prod_43
cd /scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicInteractions/tools
TOP_FILE="/scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-inactive-carazalol-cell2013b/condition-12/step5_assembly.pdb"
TRAJ_FILE="/scratch/PI/rondror/DesRes-Simulations/ordered-from-DesRes/cell2013b/DESRES-Trajectory_cell2013b-sim12-all.1/cell2013b-sim12-all/cell2013b-sim12-all-043.dcd"
OUTPUT_FILE="/scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-inactive-carazalol-cell2013b/condition-12/rep_1/Prod_43/Prod_43_rewrapped.dcd"
python wrapAlign.py $TOP_FILE $TRAJ_FILE $OUTPUT_FILE

# Stripping water from rewrapped .dcd file and placing output file in same experiment fragment folder path
TRAJ_FILE="/scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-inactive-carazalol-cell2013b/condition-12/rep_1/Prod_43/Prod_43_rewrapped.dcd"
OUTPUT_FILE_PATH="/scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-inactive-carazalol-cell2013b/condition-12/rep_1/Prod_43/Prod_43_rewrapped_strip_waters.dcd"
python stripWaters.py -top $TOP_FILE -traj $TRAJ_FILE $OUTPUT_FILE_PATH


# Rewrapping original .dcd files and placing copy in output experiment fragment folder path
cd /scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-inactive-carazalol-cell2013b/condition-12/rep_1
mkdir Prod_44
cd /scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicInteractions/tools
TOP_FILE="/scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-inactive-carazalol-cell2013b/condition-12/step5_assembly.pdb"
TRAJ_FILE="/scratch/PI/rondror/DesRes-Simulations/ordered-from-DesRes/cell2013b/DESRES-Trajectory_cell2013b-sim12-all.1/cell2013b-sim12-all/cell2013b-sim12-all-044.dcd"
OUTPUT_FILE="/scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-inactive-carazalol-cell2013b/condition-12/rep_1/Prod_44/Prod_44_rewrapped.dcd"
python wrapAlign.py $TOP_FILE $TRAJ_FILE $OUTPUT_FILE

# Stripping water from rewrapped .dcd file and placing output file in same experiment fragment folder path
TRAJ_FILE="/scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-inactive-carazalol-cell2013b/condition-12/rep_1/Prod_44/Prod_44_rewrapped.dcd"
OUTPUT_FILE_PATH="/scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-inactive-carazalol-cell2013b/condition-12/rep_1/Prod_44/Prod_44_rewrapped_strip_waters.dcd"
python stripWaters.py -top $TOP_FILE -traj $TRAJ_FILE $OUTPUT_FILE_PATH


# Rewrapping original .dcd files and placing copy in output experiment fragment folder path
cd /scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-inactive-carazalol-cell2013b/condition-12/rep_1
mkdir Prod_45
cd /scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicInteractions/tools
TOP_FILE="/scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-inactive-carazalol-cell2013b/condition-12/step5_assembly.pdb"
TRAJ_FILE="/scratch/PI/rondror/DesRes-Simulations/ordered-from-DesRes/cell2013b/DESRES-Trajectory_cell2013b-sim12-all.1/cell2013b-sim12-all/cell2013b-sim12-all-045.dcd"
OUTPUT_FILE="/scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-inactive-carazalol-cell2013b/condition-12/rep_1/Prod_45/Prod_45_rewrapped.dcd"
python wrapAlign.py $TOP_FILE $TRAJ_FILE $OUTPUT_FILE

# Stripping water from rewrapped .dcd file and placing output file in same experiment fragment folder path
TRAJ_FILE="/scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-inactive-carazalol-cell2013b/condition-12/rep_1/Prod_45/Prod_45_rewrapped.dcd"
OUTPUT_FILE_PATH="/scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-inactive-carazalol-cell2013b/condition-12/rep_1/Prod_45/Prod_45_rewrapped_strip_waters.dcd"
python stripWaters.py -top $TOP_FILE -traj $TRAJ_FILE $OUTPUT_FILE_PATH


# Rewrapping original .dcd files and placing copy in output experiment fragment folder path
cd /scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-inactive-carazalol-cell2013b/condition-12/rep_1
mkdir Prod_46
cd /scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicInteractions/tools
TOP_FILE="/scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-inactive-carazalol-cell2013b/condition-12/step5_assembly.pdb"
TRAJ_FILE="/scratch/PI/rondror/DesRes-Simulations/ordered-from-DesRes/cell2013b/DESRES-Trajectory_cell2013b-sim12-all.1/cell2013b-sim12-all/cell2013b-sim12-all-046.dcd"
OUTPUT_FILE="/scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-inactive-carazalol-cell2013b/condition-12/rep_1/Prod_46/Prod_46_rewrapped.dcd"
python wrapAlign.py $TOP_FILE $TRAJ_FILE $OUTPUT_FILE

# Stripping water from rewrapped .dcd file and placing output file in same experiment fragment folder path
TRAJ_FILE="/scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-inactive-carazalol-cell2013b/condition-12/rep_1/Prod_46/Prod_46_rewrapped.dcd"
OUTPUT_FILE_PATH="/scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-inactive-carazalol-cell2013b/condition-12/rep_1/Prod_46/Prod_46_rewrapped_strip_waters.dcd"
python stripWaters.py -top $TOP_FILE -traj $TRAJ_FILE $OUTPUT_FILE_PATH


# Rewrapping original .dcd files and placing copy in output experiment fragment folder path
cd /scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-inactive-carazalol-cell2013b/condition-12/rep_1
mkdir Prod_47
cd /scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicInteractions/tools
TOP_FILE="/scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-inactive-carazalol-cell2013b/condition-12/step5_assembly.pdb"
TRAJ_FILE="/scratch/PI/rondror/DesRes-Simulations/ordered-from-DesRes/cell2013b/DESRES-Trajectory_cell2013b-sim12-all.1/cell2013b-sim12-all/cell2013b-sim12-all-047.dcd"
OUTPUT_FILE="/scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-inactive-carazalol-cell2013b/condition-12/rep_1/Prod_47/Prod_47_rewrapped.dcd"
python wrapAlign.py $TOP_FILE $TRAJ_FILE $OUTPUT_FILE

# Stripping water from rewrapped .dcd file and placing output file in same experiment fragment folder path
TRAJ_FILE="/scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-inactive-carazalol-cell2013b/condition-12/rep_1/Prod_47/Prod_47_rewrapped.dcd"
OUTPUT_FILE_PATH="/scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-inactive-carazalol-cell2013b/condition-12/rep_1/Prod_47/Prod_47_rewrapped_strip_waters.dcd"
python stripWaters.py -top $TOP_FILE -traj $TRAJ_FILE $OUTPUT_FILE_PATH


# Rewrapping original .dcd files and placing copy in output experiment fragment folder path
cd /scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-inactive-carazalol-cell2013b/condition-12/rep_1
mkdir Prod_48
cd /scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicInteractions/tools
TOP_FILE="/scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-inactive-carazalol-cell2013b/condition-12/step5_assembly.pdb"
TRAJ_FILE="/scratch/PI/rondror/DesRes-Simulations/ordered-from-DesRes/cell2013b/DESRES-Trajectory_cell2013b-sim12-all.1/cell2013b-sim12-all/cell2013b-sim12-all-048.dcd"
OUTPUT_FILE="/scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-inactive-carazalol-cell2013b/condition-12/rep_1/Prod_48/Prod_48_rewrapped.dcd"
python wrapAlign.py $TOP_FILE $TRAJ_FILE $OUTPUT_FILE

# Stripping water from rewrapped .dcd file and placing output file in same experiment fragment folder path
TRAJ_FILE="/scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-inactive-carazalol-cell2013b/condition-12/rep_1/Prod_48/Prod_48_rewrapped.dcd"
OUTPUT_FILE_PATH="/scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-inactive-carazalol-cell2013b/condition-12/rep_1/Prod_48/Prod_48_rewrapped_strip_waters.dcd"
python stripWaters.py -top $TOP_FILE -traj $TRAJ_FILE $OUTPUT_FILE_PATH


# Rewrapping original .dcd files and placing copy in output experiment fragment folder path
cd /scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-inactive-carazalol-cell2013b/condition-12/rep_1
mkdir Prod_49
cd /scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicInteractions/tools
TOP_FILE="/scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-inactive-carazalol-cell2013b/condition-12/step5_assembly.pdb"
TRAJ_FILE="/scratch/PI/rondror/DesRes-Simulations/ordered-from-DesRes/cell2013b/DESRES-Trajectory_cell2013b-sim12-all.1/cell2013b-sim12-all/cell2013b-sim12-all-049.dcd"
OUTPUT_FILE="/scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-inactive-carazalol-cell2013b/condition-12/rep_1/Prod_49/Prod_49_rewrapped.dcd"
python wrapAlign.py $TOP_FILE $TRAJ_FILE $OUTPUT_FILE

# Stripping water from rewrapped .dcd file and placing output file in same experiment fragment folder path
TRAJ_FILE="/scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-inactive-carazalol-cell2013b/condition-12/rep_1/Prod_49/Prod_49_rewrapped.dcd"
OUTPUT_FILE_PATH="/scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-inactive-carazalol-cell2013b/condition-12/rep_1/Prod_49/Prod_49_rewrapped_strip_waters.dcd"
python stripWaters.py -top $TOP_FILE -traj $TRAJ_FILE $OUTPUT_FILE_PATH


# Rewrapping original .dcd files and placing copy in output experiment fragment folder path
cd /scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-inactive-carazalol-cell2013b/condition-12/rep_1
mkdir Prod_50
cd /scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicInteractions/tools
TOP_FILE="/scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-inactive-carazalol-cell2013b/condition-12/step5_assembly.pdb"
TRAJ_FILE="/scratch/PI/rondror/DesRes-Simulations/ordered-from-DesRes/cell2013b/DESRES-Trajectory_cell2013b-sim12-all.1/cell2013b-sim12-all/cell2013b-sim12-all-050.dcd"
OUTPUT_FILE="/scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-inactive-carazalol-cell2013b/condition-12/rep_1/Prod_50/Prod_50_rewrapped.dcd"
python wrapAlign.py $TOP_FILE $TRAJ_FILE $OUTPUT_FILE

# Stripping water from rewrapped .dcd file and placing output file in same experiment fragment folder path
TRAJ_FILE="/scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-inactive-carazalol-cell2013b/condition-12/rep_1/Prod_50/Prod_50_rewrapped.dcd"
OUTPUT_FILE_PATH="/scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-inactive-carazalol-cell2013b/condition-12/rep_1/Prod_50/Prod_50_rewrapped_strip_waters.dcd"
python stripWaters.py -top $TOP_FILE -traj $TRAJ_FILE $OUTPUT_FILE_PATH


# Rewrapping original .dcd files and placing copy in output experiment fragment folder path
cd /scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-inactive-carazalol-cell2013b/condition-12/rep_1
mkdir Prod_51
cd /scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicInteractions/tools
TOP_FILE="/scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-inactive-carazalol-cell2013b/condition-12/step5_assembly.pdb"
TRAJ_FILE="/scratch/PI/rondror/DesRes-Simulations/ordered-from-DesRes/cell2013b/DESRES-Trajectory_cell2013b-sim12-all.1/cell2013b-sim12-all/cell2013b-sim12-all-051.dcd"
OUTPUT_FILE="/scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-inactive-carazalol-cell2013b/condition-12/rep_1/Prod_51/Prod_51_rewrapped.dcd"
python wrapAlign.py $TOP_FILE $TRAJ_FILE $OUTPUT_FILE

# Stripping water from rewrapped .dcd file and placing output file in same experiment fragment folder path
TRAJ_FILE="/scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-inactive-carazalol-cell2013b/condition-12/rep_1/Prod_51/Prod_51_rewrapped.dcd"
OUTPUT_FILE_PATH="/scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-inactive-carazalol-cell2013b/condition-12/rep_1/Prod_51/Prod_51_rewrapped_strip_waters.dcd"
python stripWaters.py -top $TOP_FILE -traj $TRAJ_FILE $OUTPUT_FILE_PATH


# Rewrapping original .dcd files and placing copy in output experiment fragment folder path
cd /scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-inactive-carazalol-cell2013b/condition-12/rep_1
mkdir Prod_52
cd /scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicInteractions/tools
TOP_FILE="/scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-inactive-carazalol-cell2013b/condition-12/step5_assembly.pdb"
TRAJ_FILE="/scratch/PI/rondror/DesRes-Simulations/ordered-from-DesRes/cell2013b/DESRES-Trajectory_cell2013b-sim12-all.1/cell2013b-sim12-all/cell2013b-sim12-all-052.dcd"
OUTPUT_FILE="/scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-inactive-carazalol-cell2013b/condition-12/rep_1/Prod_52/Prod_52_rewrapped.dcd"
python wrapAlign.py $TOP_FILE $TRAJ_FILE $OUTPUT_FILE

# Stripping water from rewrapped .dcd file and placing output file in same experiment fragment folder path
TRAJ_FILE="/scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-inactive-carazalol-cell2013b/condition-12/rep_1/Prod_52/Prod_52_rewrapped.dcd"
OUTPUT_FILE_PATH="/scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-inactive-carazalol-cell2013b/condition-12/rep_1/Prod_52/Prod_52_rewrapped_strip_waters.dcd"
python stripWaters.py -top $TOP_FILE -traj $TRAJ_FILE $OUTPUT_FILE_PATH


# Rewrapping original .dcd files and placing copy in output experiment fragment folder path
cd /scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-inactive-carazalol-cell2013b/condition-12/rep_1
mkdir Prod_53
cd /scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicInteractions/tools
TOP_FILE="/scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-inactive-carazalol-cell2013b/condition-12/step5_assembly.pdb"
TRAJ_FILE="/scratch/PI/rondror/DesRes-Simulations/ordered-from-DesRes/cell2013b/DESRES-Trajectory_cell2013b-sim12-all.1/cell2013b-sim12-all/cell2013b-sim12-all-053.dcd"
OUTPUT_FILE="/scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-inactive-carazalol-cell2013b/condition-12/rep_1/Prod_53/Prod_53_rewrapped.dcd"
python wrapAlign.py $TOP_FILE $TRAJ_FILE $OUTPUT_FILE

# Stripping water from rewrapped .dcd file and placing output file in same experiment fragment folder path
TRAJ_FILE="/scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-inactive-carazalol-cell2013b/condition-12/rep_1/Prod_53/Prod_53_rewrapped.dcd"
OUTPUT_FILE_PATH="/scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-inactive-carazalol-cell2013b/condition-12/rep_1/Prod_53/Prod_53_rewrapped_strip_waters.dcd"
python stripWaters.py -top $TOP_FILE -traj $TRAJ_FILE $OUTPUT_FILE_PATH


# Rewrapping original .dcd files and placing copy in output experiment fragment folder path
cd /scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-inactive-carazalol-cell2013b/condition-12/rep_1
mkdir Prod_54
cd /scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicInteractions/tools
TOP_FILE="/scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-inactive-carazalol-cell2013b/condition-12/step5_assembly.pdb"
TRAJ_FILE="/scratch/PI/rondror/DesRes-Simulations/ordered-from-DesRes/cell2013b/DESRES-Trajectory_cell2013b-sim12-all.1/cell2013b-sim12-all/cell2013b-sim12-all-054.dcd"
OUTPUT_FILE="/scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-inactive-carazalol-cell2013b/condition-12/rep_1/Prod_54/Prod_54_rewrapped.dcd"
python wrapAlign.py $TOP_FILE $TRAJ_FILE $OUTPUT_FILE

# Stripping water from rewrapped .dcd file and placing output file in same experiment fragment folder path
TRAJ_FILE="/scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-inactive-carazalol-cell2013b/condition-12/rep_1/Prod_54/Prod_54_rewrapped.dcd"
OUTPUT_FILE_PATH="/scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-inactive-carazalol-cell2013b/condition-12/rep_1/Prod_54/Prod_54_rewrapped_strip_waters.dcd"
python stripWaters.py -top $TOP_FILE -traj $TRAJ_FILE $OUTPUT_FILE_PATH


# Rewrapping original .dcd files and placing copy in output experiment fragment folder path
cd /scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-inactive-carazalol-cell2013b/condition-12/rep_1
mkdir Prod_55
cd /scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicInteractions/tools
TOP_FILE="/scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-inactive-carazalol-cell2013b/condition-12/step5_assembly.pdb"
TRAJ_FILE="/scratch/PI/rondror/DesRes-Simulations/ordered-from-DesRes/cell2013b/DESRES-Trajectory_cell2013b-sim12-all.1/cell2013b-sim12-all/cell2013b-sim12-all-055.dcd"
OUTPUT_FILE="/scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-inactive-carazalol-cell2013b/condition-12/rep_1/Prod_55/Prod_55_rewrapped.dcd"
python wrapAlign.py $TOP_FILE $TRAJ_FILE $OUTPUT_FILE

# Stripping water from rewrapped .dcd file and placing output file in same experiment fragment folder path
TRAJ_FILE="/scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-inactive-carazalol-cell2013b/condition-12/rep_1/Prod_55/Prod_55_rewrapped.dcd"
OUTPUT_FILE_PATH="/scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-inactive-carazalol-cell2013b/condition-12/rep_1/Prod_55/Prod_55_rewrapped_strip_waters.dcd"
python stripWaters.py -top $TOP_FILE -traj $TRAJ_FILE $OUTPUT_FILE_PATH


