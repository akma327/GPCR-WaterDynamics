# Converting .mae to .pdb file and placing in the output experimental condition path

cd /scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicInteractions/tools
MAE_PATH="/scratch/PI/rondror/DesRes-Simulations/ordered-from-DesRes/nature2011/DESRES-Trajectory_nature2011-B-all.1/nature2011-B-all/nature2011-B-all.mae"
OUTPUT_PDB_PATH="/scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-inactive-carazalol-nature2011/condition-B/step5_assembly.pdb"
python maeToPdb.py $MAE_PATH $OUTPUT_PDB_PATH

# Copy and rename .mae file to the output experimental condition path
cp /scratch/PI/rondror/DesRes-Simulations/ordered-from-DesRes/nature2011/DESRES-Trajectory_nature2011-B-all.1/nature2011-B-all/nature2011-B-all.mae /scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-inactive-carazalol-nature2011/condition-B/step5_assembly.mae

# Stripping waters from original pdb

TOPOLOGY_PATH="/scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-inactive-carazalol-nature2011/condition-B/step5_assembly.pdb"
OUTPUT_FILE_PATH="/scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-inactive-carazalol-nature2011/condition-B/step5_assembly_strip_waters.pdb"
cd /scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicInteractions/tools
python stripWaters.py -top $TOPOLOGY_PATH $OUTPUT_FILE_PATH


# Rewrapping original .dcd files and placing copy in output experiment fragment folder path
cd /scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-inactive-carazalol-nature2011/condition-B/rep_1
mkdir Prod_0
cd /scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicInteractions/tools
TOP_FILE="/scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-inactive-carazalol-nature2011/condition-B/step5_assembly.pdb"
TRAJ_FILE="/scratch/PI/rondror/DesRes-Simulations/ordered-from-DesRes/nature2011/DESRES-Trajectory_nature2011-B-all.1/nature2011-B-all/nature2011-B-all-000.dcd"
OUTPUT_FILE="/scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-inactive-carazalol-nature2011/condition-B/rep_1/Prod_0/Prod_0_rewrapped.dcd"
python wrapAlign.py $TOP_FILE $TRAJ_FILE $OUTPUT_FILE -crys

# Stripping water from rewrapped .dcd file and placing output file in same experiment fragment folder path
TRAJ_FILE="/scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-inactive-carazalol-nature2011/condition-B/rep_1/Prod_0/Prod_0_rewrapped.dcd"
OUTPUT_FILE_PATH="/scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-inactive-carazalol-nature2011/condition-B/rep_1/Prod_0/Prod_0_rewrapped_strip_waters.dcd"
python stripWaters.py -top $TOP_FILE -traj $TRAJ_FILE $OUTPUT_FILE_PATH


# Rewrapping original .dcd files and placing copy in output experiment fragment folder path
cd /scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-inactive-carazalol-nature2011/condition-B/rep_1
mkdir Prod_1
cd /scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicInteractions/tools
TOP_FILE="/scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-inactive-carazalol-nature2011/condition-B/step5_assembly.pdb"
TRAJ_FILE="/scratch/PI/rondror/DesRes-Simulations/ordered-from-DesRes/nature2011/DESRES-Trajectory_nature2011-B-all.1/nature2011-B-all/nature2011-B-all-001.dcd"
OUTPUT_FILE="/scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-inactive-carazalol-nature2011/condition-B/rep_1/Prod_1/Prod_1_rewrapped.dcd"
python wrapAlign.py $TOP_FILE $TRAJ_FILE $OUTPUT_FILE

# Stripping water from rewrapped .dcd file and placing output file in same experiment fragment folder path
TRAJ_FILE="/scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-inactive-carazalol-nature2011/condition-B/rep_1/Prod_1/Prod_1_rewrapped.dcd"
OUTPUT_FILE_PATH="/scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-inactive-carazalol-nature2011/condition-B/rep_1/Prod_1/Prod_1_rewrapped_strip_waters.dcd"
python stripWaters.py -top $TOP_FILE -traj $TRAJ_FILE $OUTPUT_FILE_PATH


# Rewrapping original .dcd files and placing copy in output experiment fragment folder path
cd /scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-inactive-carazalol-nature2011/condition-B/rep_1
mkdir Prod_2
cd /scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicInteractions/tools
TOP_FILE="/scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-inactive-carazalol-nature2011/condition-B/step5_assembly.pdb"
TRAJ_FILE="/scratch/PI/rondror/DesRes-Simulations/ordered-from-DesRes/nature2011/DESRES-Trajectory_nature2011-B-all.1/nature2011-B-all/nature2011-B-all-002.dcd"
OUTPUT_FILE="/scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-inactive-carazalol-nature2011/condition-B/rep_1/Prod_2/Prod_2_rewrapped.dcd"
python wrapAlign.py $TOP_FILE $TRAJ_FILE $OUTPUT_FILE

# Stripping water from rewrapped .dcd file and placing output file in same experiment fragment folder path
TRAJ_FILE="/scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-inactive-carazalol-nature2011/condition-B/rep_1/Prod_2/Prod_2_rewrapped.dcd"
OUTPUT_FILE_PATH="/scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-inactive-carazalol-nature2011/condition-B/rep_1/Prod_2/Prod_2_rewrapped_strip_waters.dcd"
python stripWaters.py -top $TOP_FILE -traj $TRAJ_FILE $OUTPUT_FILE_PATH


# Rewrapping original .dcd files and placing copy in output experiment fragment folder path
cd /scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-inactive-carazalol-nature2011/condition-B/rep_1
mkdir Prod_3
cd /scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicInteractions/tools
TOP_FILE="/scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-inactive-carazalol-nature2011/condition-B/step5_assembly.pdb"
TRAJ_FILE="/scratch/PI/rondror/DesRes-Simulations/ordered-from-DesRes/nature2011/DESRES-Trajectory_nature2011-B-all.1/nature2011-B-all/nature2011-B-all-003.dcd"
OUTPUT_FILE="/scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-inactive-carazalol-nature2011/condition-B/rep_1/Prod_3/Prod_3_rewrapped.dcd"
python wrapAlign.py $TOP_FILE $TRAJ_FILE $OUTPUT_FILE

# Stripping water from rewrapped .dcd file and placing output file in same experiment fragment folder path
TRAJ_FILE="/scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-inactive-carazalol-nature2011/condition-B/rep_1/Prod_3/Prod_3_rewrapped.dcd"
OUTPUT_FILE_PATH="/scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-inactive-carazalol-nature2011/condition-B/rep_1/Prod_3/Prod_3_rewrapped_strip_waters.dcd"
python stripWaters.py -top $TOP_FILE -traj $TRAJ_FILE $OUTPUT_FILE_PATH


# Rewrapping original .dcd files and placing copy in output experiment fragment folder path
cd /scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-inactive-carazalol-nature2011/condition-B/rep_1
mkdir Prod_4
cd /scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicInteractions/tools
TOP_FILE="/scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-inactive-carazalol-nature2011/condition-B/step5_assembly.pdb"
TRAJ_FILE="/scratch/PI/rondror/DesRes-Simulations/ordered-from-DesRes/nature2011/DESRES-Trajectory_nature2011-B-all.1/nature2011-B-all/nature2011-B-all-004.dcd"
OUTPUT_FILE="/scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-inactive-carazalol-nature2011/condition-B/rep_1/Prod_4/Prod_4_rewrapped.dcd"
python wrapAlign.py $TOP_FILE $TRAJ_FILE $OUTPUT_FILE

# Stripping water from rewrapped .dcd file and placing output file in same experiment fragment folder path
TRAJ_FILE="/scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-inactive-carazalol-nature2011/condition-B/rep_1/Prod_4/Prod_4_rewrapped.dcd"
OUTPUT_FILE_PATH="/scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-inactive-carazalol-nature2011/condition-B/rep_1/Prod_4/Prod_4_rewrapped_strip_waters.dcd"
python stripWaters.py -top $TOP_FILE -traj $TRAJ_FILE $OUTPUT_FILE_PATH


# Rewrapping original .dcd files and placing copy in output experiment fragment folder path
cd /scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-inactive-carazalol-nature2011/condition-B/rep_1
mkdir Prod_5
cd /scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicInteractions/tools
TOP_FILE="/scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-inactive-carazalol-nature2011/condition-B/step5_assembly.pdb"
TRAJ_FILE="/scratch/PI/rondror/DesRes-Simulations/ordered-from-DesRes/nature2011/DESRES-Trajectory_nature2011-B-all.1/nature2011-B-all/nature2011-B-all-005.dcd"
OUTPUT_FILE="/scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-inactive-carazalol-nature2011/condition-B/rep_1/Prod_5/Prod_5_rewrapped.dcd"
python wrapAlign.py $TOP_FILE $TRAJ_FILE $OUTPUT_FILE

# Stripping water from rewrapped .dcd file and placing output file in same experiment fragment folder path
TRAJ_FILE="/scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-inactive-carazalol-nature2011/condition-B/rep_1/Prod_5/Prod_5_rewrapped.dcd"
OUTPUT_FILE_PATH="/scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-inactive-carazalol-nature2011/condition-B/rep_1/Prod_5/Prod_5_rewrapped_strip_waters.dcd"
python stripWaters.py -top $TOP_FILE -traj $TRAJ_FILE $OUTPUT_FILE_PATH


# Rewrapping original .dcd files and placing copy in output experiment fragment folder path
cd /scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-inactive-carazalol-nature2011/condition-B/rep_1
mkdir Prod_6
cd /scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicInteractions/tools
TOP_FILE="/scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-inactive-carazalol-nature2011/condition-B/step5_assembly.pdb"
TRAJ_FILE="/scratch/PI/rondror/DesRes-Simulations/ordered-from-DesRes/nature2011/DESRES-Trajectory_nature2011-B-all.1/nature2011-B-all/nature2011-B-all-006.dcd"
OUTPUT_FILE="/scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-inactive-carazalol-nature2011/condition-B/rep_1/Prod_6/Prod_6_rewrapped.dcd"
python wrapAlign.py $TOP_FILE $TRAJ_FILE $OUTPUT_FILE

# Stripping water from rewrapped .dcd file and placing output file in same experiment fragment folder path
TRAJ_FILE="/scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-inactive-carazalol-nature2011/condition-B/rep_1/Prod_6/Prod_6_rewrapped.dcd"
OUTPUT_FILE_PATH="/scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-inactive-carazalol-nature2011/condition-B/rep_1/Prod_6/Prod_6_rewrapped_strip_waters.dcd"
python stripWaters.py -top $TOP_FILE -traj $TRAJ_FILE $OUTPUT_FILE_PATH


# Rewrapping original .dcd files and placing copy in output experiment fragment folder path
cd /scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-inactive-carazalol-nature2011/condition-B/rep_1
mkdir Prod_7
cd /scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicInteractions/tools
TOP_FILE="/scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-inactive-carazalol-nature2011/condition-B/step5_assembly.pdb"
TRAJ_FILE="/scratch/PI/rondror/DesRes-Simulations/ordered-from-DesRes/nature2011/DESRES-Trajectory_nature2011-B-all.1/nature2011-B-all/nature2011-B-all-007.dcd"
OUTPUT_FILE="/scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-inactive-carazalol-nature2011/condition-B/rep_1/Prod_7/Prod_7_rewrapped.dcd"
python wrapAlign.py $TOP_FILE $TRAJ_FILE $OUTPUT_FILE

# Stripping water from rewrapped .dcd file and placing output file in same experiment fragment folder path
TRAJ_FILE="/scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-inactive-carazalol-nature2011/condition-B/rep_1/Prod_7/Prod_7_rewrapped.dcd"
OUTPUT_FILE_PATH="/scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-inactive-carazalol-nature2011/condition-B/rep_1/Prod_7/Prod_7_rewrapped_strip_waters.dcd"
python stripWaters.py -top $TOP_FILE -traj $TRAJ_FILE $OUTPUT_FILE_PATH


# Rewrapping original .dcd files and placing copy in output experiment fragment folder path
cd /scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-inactive-carazalol-nature2011/condition-B/rep_1
mkdir Prod_8
cd /scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicInteractions/tools
TOP_FILE="/scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-inactive-carazalol-nature2011/condition-B/step5_assembly.pdb"
TRAJ_FILE="/scratch/PI/rondror/DesRes-Simulations/ordered-from-DesRes/nature2011/DESRES-Trajectory_nature2011-B-all.1/nature2011-B-all/nature2011-B-all-008.dcd"
OUTPUT_FILE="/scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-inactive-carazalol-nature2011/condition-B/rep_1/Prod_8/Prod_8_rewrapped.dcd"
python wrapAlign.py $TOP_FILE $TRAJ_FILE $OUTPUT_FILE

# Stripping water from rewrapped .dcd file and placing output file in same experiment fragment folder path
TRAJ_FILE="/scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-inactive-carazalol-nature2011/condition-B/rep_1/Prod_8/Prod_8_rewrapped.dcd"
OUTPUT_FILE_PATH="/scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-inactive-carazalol-nature2011/condition-B/rep_1/Prod_8/Prod_8_rewrapped_strip_waters.dcd"
python stripWaters.py -top $TOP_FILE -traj $TRAJ_FILE $OUTPUT_FILE_PATH


# Rewrapping original .dcd files and placing copy in output experiment fragment folder path
cd /scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-inactive-carazalol-nature2011/condition-B/rep_1
mkdir Prod_9
cd /scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicInteractions/tools
TOP_FILE="/scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-inactive-carazalol-nature2011/condition-B/step5_assembly.pdb"
TRAJ_FILE="/scratch/PI/rondror/DesRes-Simulations/ordered-from-DesRes/nature2011/DESRES-Trajectory_nature2011-B-all.1/nature2011-B-all/nature2011-B-all-009.dcd"
OUTPUT_FILE="/scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-inactive-carazalol-nature2011/condition-B/rep_1/Prod_9/Prod_9_rewrapped.dcd"
python wrapAlign.py $TOP_FILE $TRAJ_FILE $OUTPUT_FILE

# Stripping water from rewrapped .dcd file and placing output file in same experiment fragment folder path
TRAJ_FILE="/scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-inactive-carazalol-nature2011/condition-B/rep_1/Prod_9/Prod_9_rewrapped.dcd"
OUTPUT_FILE_PATH="/scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-inactive-carazalol-nature2011/condition-B/rep_1/Prod_9/Prod_9_rewrapped_strip_waters.dcd"
python stripWaters.py -top $TOP_FILE -traj $TRAJ_FILE $OUTPUT_FILE_PATH


# Rewrapping original .dcd files and placing copy in output experiment fragment folder path
cd /scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-inactive-carazalol-nature2011/condition-B/rep_1
mkdir Prod_10
cd /scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicInteractions/tools
TOP_FILE="/scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-inactive-carazalol-nature2011/condition-B/step5_assembly.pdb"
TRAJ_FILE="/scratch/PI/rondror/DesRes-Simulations/ordered-from-DesRes/nature2011/DESRES-Trajectory_nature2011-B-all.1/nature2011-B-all/nature2011-B-all-010.dcd"
OUTPUT_FILE="/scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-inactive-carazalol-nature2011/condition-B/rep_1/Prod_10/Prod_10_rewrapped.dcd"
python wrapAlign.py $TOP_FILE $TRAJ_FILE $OUTPUT_FILE

# Stripping water from rewrapped .dcd file and placing output file in same experiment fragment folder path
TRAJ_FILE="/scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-inactive-carazalol-nature2011/condition-B/rep_1/Prod_10/Prod_10_rewrapped.dcd"
OUTPUT_FILE_PATH="/scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-inactive-carazalol-nature2011/condition-B/rep_1/Prod_10/Prod_10_rewrapped_strip_waters.dcd"
python stripWaters.py -top $TOP_FILE -traj $TRAJ_FILE $OUTPUT_FILE_PATH


# Rewrapping original .dcd files and placing copy in output experiment fragment folder path
cd /scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-inactive-carazalol-nature2011/condition-B/rep_1
mkdir Prod_11
cd /scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicInteractions/tools
TOP_FILE="/scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-inactive-carazalol-nature2011/condition-B/step5_assembly.pdb"
TRAJ_FILE="/scratch/PI/rondror/DesRes-Simulations/ordered-from-DesRes/nature2011/DESRES-Trajectory_nature2011-B-all.1/nature2011-B-all/nature2011-B-all-011.dcd"
OUTPUT_FILE="/scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-inactive-carazalol-nature2011/condition-B/rep_1/Prod_11/Prod_11_rewrapped.dcd"
python wrapAlign.py $TOP_FILE $TRAJ_FILE $OUTPUT_FILE

# Stripping water from rewrapped .dcd file and placing output file in same experiment fragment folder path
TRAJ_FILE="/scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-inactive-carazalol-nature2011/condition-B/rep_1/Prod_11/Prod_11_rewrapped.dcd"
OUTPUT_FILE_PATH="/scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-inactive-carazalol-nature2011/condition-B/rep_1/Prod_11/Prod_11_rewrapped_strip_waters.dcd"
python stripWaters.py -top $TOP_FILE -traj $TRAJ_FILE $OUTPUT_FILE_PATH


# Rewrapping original .dcd files and placing copy in output experiment fragment folder path
cd /scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-inactive-carazalol-nature2011/condition-B/rep_1
mkdir Prod_12
cd /scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicInteractions/tools
TOP_FILE="/scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-inactive-carazalol-nature2011/condition-B/step5_assembly.pdb"
TRAJ_FILE="/scratch/PI/rondror/DesRes-Simulations/ordered-from-DesRes/nature2011/DESRES-Trajectory_nature2011-B-all.1/nature2011-B-all/nature2011-B-all-012.dcd"
OUTPUT_FILE="/scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-inactive-carazalol-nature2011/condition-B/rep_1/Prod_12/Prod_12_rewrapped.dcd"
python wrapAlign.py $TOP_FILE $TRAJ_FILE $OUTPUT_FILE

# Stripping water from rewrapped .dcd file and placing output file in same experiment fragment folder path
TRAJ_FILE="/scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-inactive-carazalol-nature2011/condition-B/rep_1/Prod_12/Prod_12_rewrapped.dcd"
OUTPUT_FILE_PATH="/scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-inactive-carazalol-nature2011/condition-B/rep_1/Prod_12/Prod_12_rewrapped_strip_waters.dcd"
python stripWaters.py -top $TOP_FILE -traj $TRAJ_FILE $OUTPUT_FILE_PATH


# Rewrapping original .dcd files and placing copy in output experiment fragment folder path
cd /scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-inactive-carazalol-nature2011/condition-B/rep_1
mkdir Prod_13
cd /scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicInteractions/tools
TOP_FILE="/scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-inactive-carazalol-nature2011/condition-B/step5_assembly.pdb"
TRAJ_FILE="/scratch/PI/rondror/DesRes-Simulations/ordered-from-DesRes/nature2011/DESRES-Trajectory_nature2011-B-all.1/nature2011-B-all/nature2011-B-all-013.dcd"
OUTPUT_FILE="/scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-inactive-carazalol-nature2011/condition-B/rep_1/Prod_13/Prod_13_rewrapped.dcd"
python wrapAlign.py $TOP_FILE $TRAJ_FILE $OUTPUT_FILE

# Stripping water from rewrapped .dcd file and placing output file in same experiment fragment folder path
TRAJ_FILE="/scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-inactive-carazalol-nature2011/condition-B/rep_1/Prod_13/Prod_13_rewrapped.dcd"
OUTPUT_FILE_PATH="/scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-inactive-carazalol-nature2011/condition-B/rep_1/Prod_13/Prod_13_rewrapped_strip_waters.dcd"
python stripWaters.py -top $TOP_FILE -traj $TRAJ_FILE $OUTPUT_FILE_PATH


# Rewrapping original .dcd files and placing copy in output experiment fragment folder path
cd /scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-inactive-carazalol-nature2011/condition-B/rep_1
mkdir Prod_14
cd /scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicInteractions/tools
TOP_FILE="/scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-inactive-carazalol-nature2011/condition-B/step5_assembly.pdb"
TRAJ_FILE="/scratch/PI/rondror/DesRes-Simulations/ordered-from-DesRes/nature2011/DESRES-Trajectory_nature2011-B-all.1/nature2011-B-all/nature2011-B-all-014.dcd"
OUTPUT_FILE="/scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-inactive-carazalol-nature2011/condition-B/rep_1/Prod_14/Prod_14_rewrapped.dcd"
python wrapAlign.py $TOP_FILE $TRAJ_FILE $OUTPUT_FILE

# Stripping water from rewrapped .dcd file and placing output file in same experiment fragment folder path
TRAJ_FILE="/scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-inactive-carazalol-nature2011/condition-B/rep_1/Prod_14/Prod_14_rewrapped.dcd"
OUTPUT_FILE_PATH="/scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-inactive-carazalol-nature2011/condition-B/rep_1/Prod_14/Prod_14_rewrapped_strip_waters.dcd"
python stripWaters.py -top $TOP_FILE -traj $TRAJ_FILE $OUTPUT_FILE_PATH


# Rewrapping original .dcd files and placing copy in output experiment fragment folder path
cd /scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-inactive-carazalol-nature2011/condition-B/rep_1
mkdir Prod_15
cd /scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicInteractions/tools
TOP_FILE="/scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-inactive-carazalol-nature2011/condition-B/step5_assembly.pdb"
TRAJ_FILE="/scratch/PI/rondror/DesRes-Simulations/ordered-from-DesRes/nature2011/DESRES-Trajectory_nature2011-B-all.1/nature2011-B-all/nature2011-B-all-015.dcd"
OUTPUT_FILE="/scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-inactive-carazalol-nature2011/condition-B/rep_1/Prod_15/Prod_15_rewrapped.dcd"
python wrapAlign.py $TOP_FILE $TRAJ_FILE $OUTPUT_FILE

# Stripping water from rewrapped .dcd file and placing output file in same experiment fragment folder path
TRAJ_FILE="/scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-inactive-carazalol-nature2011/condition-B/rep_1/Prod_15/Prod_15_rewrapped.dcd"
OUTPUT_FILE_PATH="/scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-inactive-carazalol-nature2011/condition-B/rep_1/Prod_15/Prod_15_rewrapped_strip_waters.dcd"
python stripWaters.py -top $TOP_FILE -traj $TRAJ_FILE $OUTPUT_FILE_PATH


# Rewrapping original .dcd files and placing copy in output experiment fragment folder path
cd /scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-inactive-carazalol-nature2011/condition-B/rep_1
mkdir Prod_16
cd /scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicInteractions/tools
TOP_FILE="/scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-inactive-carazalol-nature2011/condition-B/step5_assembly.pdb"
TRAJ_FILE="/scratch/PI/rondror/DesRes-Simulations/ordered-from-DesRes/nature2011/DESRES-Trajectory_nature2011-B-all.1/nature2011-B-all/nature2011-B-all-016.dcd"
OUTPUT_FILE="/scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-inactive-carazalol-nature2011/condition-B/rep_1/Prod_16/Prod_16_rewrapped.dcd"
python wrapAlign.py $TOP_FILE $TRAJ_FILE $OUTPUT_FILE

# Stripping water from rewrapped .dcd file and placing output file in same experiment fragment folder path
TRAJ_FILE="/scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-inactive-carazalol-nature2011/condition-B/rep_1/Prod_16/Prod_16_rewrapped.dcd"
OUTPUT_FILE_PATH="/scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-inactive-carazalol-nature2011/condition-B/rep_1/Prod_16/Prod_16_rewrapped_strip_waters.dcd"
python stripWaters.py -top $TOP_FILE -traj $TRAJ_FILE $OUTPUT_FILE_PATH


# Rewrapping original .dcd files and placing copy in output experiment fragment folder path
cd /scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-inactive-carazalol-nature2011/condition-B/rep_1
mkdir Prod_17
cd /scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicInteractions/tools
TOP_FILE="/scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-inactive-carazalol-nature2011/condition-B/step5_assembly.pdb"
TRAJ_FILE="/scratch/PI/rondror/DesRes-Simulations/ordered-from-DesRes/nature2011/DESRES-Trajectory_nature2011-B-all.1/nature2011-B-all/nature2011-B-all-017.dcd"
OUTPUT_FILE="/scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-inactive-carazalol-nature2011/condition-B/rep_1/Prod_17/Prod_17_rewrapped.dcd"
python wrapAlign.py $TOP_FILE $TRAJ_FILE $OUTPUT_FILE

# Stripping water from rewrapped .dcd file and placing output file in same experiment fragment folder path
TRAJ_FILE="/scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-inactive-carazalol-nature2011/condition-B/rep_1/Prod_17/Prod_17_rewrapped.dcd"
OUTPUT_FILE_PATH="/scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-inactive-carazalol-nature2011/condition-B/rep_1/Prod_17/Prod_17_rewrapped_strip_waters.dcd"
python stripWaters.py -top $TOP_FILE -traj $TRAJ_FILE $OUTPUT_FILE_PATH


# Rewrapping original .dcd files and placing copy in output experiment fragment folder path
cd /scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-inactive-carazalol-nature2011/condition-B/rep_1
mkdir Prod_18
cd /scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicInteractions/tools
TOP_FILE="/scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-inactive-carazalol-nature2011/condition-B/step5_assembly.pdb"
TRAJ_FILE="/scratch/PI/rondror/DesRes-Simulations/ordered-from-DesRes/nature2011/DESRES-Trajectory_nature2011-B-all.1/nature2011-B-all/nature2011-B-all-018.dcd"
OUTPUT_FILE="/scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-inactive-carazalol-nature2011/condition-B/rep_1/Prod_18/Prod_18_rewrapped.dcd"
python wrapAlign.py $TOP_FILE $TRAJ_FILE $OUTPUT_FILE

# Stripping water from rewrapped .dcd file and placing output file in same experiment fragment folder path
TRAJ_FILE="/scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-inactive-carazalol-nature2011/condition-B/rep_1/Prod_18/Prod_18_rewrapped.dcd"
OUTPUT_FILE_PATH="/scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-inactive-carazalol-nature2011/condition-B/rep_1/Prod_18/Prod_18_rewrapped_strip_waters.dcd"
python stripWaters.py -top $TOP_FILE -traj $TRAJ_FILE $OUTPUT_FILE_PATH


# Rewrapping original .dcd files and placing copy in output experiment fragment folder path
cd /scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-inactive-carazalol-nature2011/condition-B/rep_1
mkdir Prod_19
cd /scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicInteractions/tools
TOP_FILE="/scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-inactive-carazalol-nature2011/condition-B/step5_assembly.pdb"
TRAJ_FILE="/scratch/PI/rondror/DesRes-Simulations/ordered-from-DesRes/nature2011/DESRES-Trajectory_nature2011-B-all.1/nature2011-B-all/nature2011-B-all-019.dcd"
OUTPUT_FILE="/scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-inactive-carazalol-nature2011/condition-B/rep_1/Prod_19/Prod_19_rewrapped.dcd"
python wrapAlign.py $TOP_FILE $TRAJ_FILE $OUTPUT_FILE

# Stripping water from rewrapped .dcd file and placing output file in same experiment fragment folder path
TRAJ_FILE="/scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-inactive-carazalol-nature2011/condition-B/rep_1/Prod_19/Prod_19_rewrapped.dcd"
OUTPUT_FILE_PATH="/scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-inactive-carazalol-nature2011/condition-B/rep_1/Prod_19/Prod_19_rewrapped_strip_waters.dcd"
python stripWaters.py -top $TOP_FILE -traj $TRAJ_FILE $OUTPUT_FILE_PATH


# Rewrapping original .dcd files and placing copy in output experiment fragment folder path
cd /scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-inactive-carazalol-nature2011/condition-B/rep_1
mkdir Prod_20
cd /scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicInteractions/tools
TOP_FILE="/scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-inactive-carazalol-nature2011/condition-B/step5_assembly.pdb"
TRAJ_FILE="/scratch/PI/rondror/DesRes-Simulations/ordered-from-DesRes/nature2011/DESRES-Trajectory_nature2011-B-all.1/nature2011-B-all/nature2011-B-all-020.dcd"
OUTPUT_FILE="/scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-inactive-carazalol-nature2011/condition-B/rep_1/Prod_20/Prod_20_rewrapped.dcd"
python wrapAlign.py $TOP_FILE $TRAJ_FILE $OUTPUT_FILE

# Stripping water from rewrapped .dcd file and placing output file in same experiment fragment folder path
TRAJ_FILE="/scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-inactive-carazalol-nature2011/condition-B/rep_1/Prod_20/Prod_20_rewrapped.dcd"
OUTPUT_FILE_PATH="/scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-inactive-carazalol-nature2011/condition-B/rep_1/Prod_20/Prod_20_rewrapped_strip_waters.dcd"
python stripWaters.py -top $TOP_FILE -traj $TRAJ_FILE $OUTPUT_FILE_PATH


# Rewrapping original .dcd files and placing copy in output experiment fragment folder path
cd /scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-inactive-carazalol-nature2011/condition-B/rep_1
mkdir Prod_21
cd /scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicInteractions/tools
TOP_FILE="/scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-inactive-carazalol-nature2011/condition-B/step5_assembly.pdb"
TRAJ_FILE="/scratch/PI/rondror/DesRes-Simulations/ordered-from-DesRes/nature2011/DESRES-Trajectory_nature2011-B-all.1/nature2011-B-all/nature2011-B-all-021.dcd"
OUTPUT_FILE="/scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-inactive-carazalol-nature2011/condition-B/rep_1/Prod_21/Prod_21_rewrapped.dcd"
python wrapAlign.py $TOP_FILE $TRAJ_FILE $OUTPUT_FILE

# Stripping water from rewrapped .dcd file and placing output file in same experiment fragment folder path
TRAJ_FILE="/scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-inactive-carazalol-nature2011/condition-B/rep_1/Prod_21/Prod_21_rewrapped.dcd"
OUTPUT_FILE_PATH="/scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-inactive-carazalol-nature2011/condition-B/rep_1/Prod_21/Prod_21_rewrapped_strip_waters.dcd"
python stripWaters.py -top $TOP_FILE -traj $TRAJ_FILE $OUTPUT_FILE_PATH


# Rewrapping original .dcd files and placing copy in output experiment fragment folder path
cd /scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-inactive-carazalol-nature2011/condition-B/rep_1
mkdir Prod_22
cd /scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicInteractions/tools
TOP_FILE="/scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-inactive-carazalol-nature2011/condition-B/step5_assembly.pdb"
TRAJ_FILE="/scratch/PI/rondror/DesRes-Simulations/ordered-from-DesRes/nature2011/DESRES-Trajectory_nature2011-B-all.1/nature2011-B-all/nature2011-B-all-022.dcd"
OUTPUT_FILE="/scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-inactive-carazalol-nature2011/condition-B/rep_1/Prod_22/Prod_22_rewrapped.dcd"
python wrapAlign.py $TOP_FILE $TRAJ_FILE $OUTPUT_FILE

# Stripping water from rewrapped .dcd file and placing output file in same experiment fragment folder path
TRAJ_FILE="/scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-inactive-carazalol-nature2011/condition-B/rep_1/Prod_22/Prod_22_rewrapped.dcd"
OUTPUT_FILE_PATH="/scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-inactive-carazalol-nature2011/condition-B/rep_1/Prod_22/Prod_22_rewrapped_strip_waters.dcd"
python stripWaters.py -top $TOP_FILE -traj $TRAJ_FILE $OUTPUT_FILE_PATH


# Rewrapping original .dcd files and placing copy in output experiment fragment folder path
cd /scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-inactive-carazalol-nature2011/condition-B/rep_1
mkdir Prod_23
cd /scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicInteractions/tools
TOP_FILE="/scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-inactive-carazalol-nature2011/condition-B/step5_assembly.pdb"
TRAJ_FILE="/scratch/PI/rondror/DesRes-Simulations/ordered-from-DesRes/nature2011/DESRES-Trajectory_nature2011-B-all.1/nature2011-B-all/nature2011-B-all-023.dcd"
OUTPUT_FILE="/scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-inactive-carazalol-nature2011/condition-B/rep_1/Prod_23/Prod_23_rewrapped.dcd"
python wrapAlign.py $TOP_FILE $TRAJ_FILE $OUTPUT_FILE

# Stripping water from rewrapped .dcd file and placing output file in same experiment fragment folder path
TRAJ_FILE="/scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-inactive-carazalol-nature2011/condition-B/rep_1/Prod_23/Prod_23_rewrapped.dcd"
OUTPUT_FILE_PATH="/scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-inactive-carazalol-nature2011/condition-B/rep_1/Prod_23/Prod_23_rewrapped_strip_waters.dcd"
python stripWaters.py -top $TOP_FILE -traj $TRAJ_FILE $OUTPUT_FILE_PATH


# Rewrapping original .dcd files and placing copy in output experiment fragment folder path
cd /scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-inactive-carazalol-nature2011/condition-B/rep_1
mkdir Prod_24
cd /scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicInteractions/tools
TOP_FILE="/scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-inactive-carazalol-nature2011/condition-B/step5_assembly.pdb"
TRAJ_FILE="/scratch/PI/rondror/DesRes-Simulations/ordered-from-DesRes/nature2011/DESRES-Trajectory_nature2011-B-all.1/nature2011-B-all/nature2011-B-all-024.dcd"
OUTPUT_FILE="/scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-inactive-carazalol-nature2011/condition-B/rep_1/Prod_24/Prod_24_rewrapped.dcd"
python wrapAlign.py $TOP_FILE $TRAJ_FILE $OUTPUT_FILE

# Stripping water from rewrapped .dcd file and placing output file in same experiment fragment folder path
TRAJ_FILE="/scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-inactive-carazalol-nature2011/condition-B/rep_1/Prod_24/Prod_24_rewrapped.dcd"
OUTPUT_FILE_PATH="/scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-inactive-carazalol-nature2011/condition-B/rep_1/Prod_24/Prod_24_rewrapped_strip_waters.dcd"
python stripWaters.py -top $TOP_FILE -traj $TRAJ_FILE $OUTPUT_FILE_PATH


# Rewrapping original .dcd files and placing copy in output experiment fragment folder path
cd /scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-inactive-carazalol-nature2011/condition-B/rep_1
mkdir Prod_25
cd /scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicInteractions/tools
TOP_FILE="/scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-inactive-carazalol-nature2011/condition-B/step5_assembly.pdb"
TRAJ_FILE="/scratch/PI/rondror/DesRes-Simulations/ordered-from-DesRes/nature2011/DESRES-Trajectory_nature2011-B-all.1/nature2011-B-all/nature2011-B-all-025.dcd"
OUTPUT_FILE="/scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-inactive-carazalol-nature2011/condition-B/rep_1/Prod_25/Prod_25_rewrapped.dcd"
python wrapAlign.py $TOP_FILE $TRAJ_FILE $OUTPUT_FILE

# Stripping water from rewrapped .dcd file and placing output file in same experiment fragment folder path
TRAJ_FILE="/scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-inactive-carazalol-nature2011/condition-B/rep_1/Prod_25/Prod_25_rewrapped.dcd"
OUTPUT_FILE_PATH="/scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-inactive-carazalol-nature2011/condition-B/rep_1/Prod_25/Prod_25_rewrapped_strip_waters.dcd"
python stripWaters.py -top $TOP_FILE -traj $TRAJ_FILE $OUTPUT_FILE_PATH


# Rewrapping original .dcd files and placing copy in output experiment fragment folder path
cd /scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-inactive-carazalol-nature2011/condition-B/rep_1
mkdir Prod_26
cd /scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicInteractions/tools
TOP_FILE="/scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-inactive-carazalol-nature2011/condition-B/step5_assembly.pdb"
TRAJ_FILE="/scratch/PI/rondror/DesRes-Simulations/ordered-from-DesRes/nature2011/DESRES-Trajectory_nature2011-B-all.1/nature2011-B-all/nature2011-B-all-026.dcd"
OUTPUT_FILE="/scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-inactive-carazalol-nature2011/condition-B/rep_1/Prod_26/Prod_26_rewrapped.dcd"
python wrapAlign.py $TOP_FILE $TRAJ_FILE $OUTPUT_FILE

# Stripping water from rewrapped .dcd file and placing output file in same experiment fragment folder path
TRAJ_FILE="/scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-inactive-carazalol-nature2011/condition-B/rep_1/Prod_26/Prod_26_rewrapped.dcd"
OUTPUT_FILE_PATH="/scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-inactive-carazalol-nature2011/condition-B/rep_1/Prod_26/Prod_26_rewrapped_strip_waters.dcd"
python stripWaters.py -top $TOP_FILE -traj $TRAJ_FILE $OUTPUT_FILE_PATH


# Rewrapping original .dcd files and placing copy in output experiment fragment folder path
cd /scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-inactive-carazalol-nature2011/condition-B/rep_1
mkdir Prod_27
cd /scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicInteractions/tools
TOP_FILE="/scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-inactive-carazalol-nature2011/condition-B/step5_assembly.pdb"
TRAJ_FILE="/scratch/PI/rondror/DesRes-Simulations/ordered-from-DesRes/nature2011/DESRES-Trajectory_nature2011-B-all.1/nature2011-B-all/nature2011-B-all-027.dcd"
OUTPUT_FILE="/scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-inactive-carazalol-nature2011/condition-B/rep_1/Prod_27/Prod_27_rewrapped.dcd"
python wrapAlign.py $TOP_FILE $TRAJ_FILE $OUTPUT_FILE

# Stripping water from rewrapped .dcd file and placing output file in same experiment fragment folder path
TRAJ_FILE="/scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-inactive-carazalol-nature2011/condition-B/rep_1/Prod_27/Prod_27_rewrapped.dcd"
OUTPUT_FILE_PATH="/scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-inactive-carazalol-nature2011/condition-B/rep_1/Prod_27/Prod_27_rewrapped_strip_waters.dcd"
python stripWaters.py -top $TOP_FILE -traj $TRAJ_FILE $OUTPUT_FILE_PATH


