# Converting .mae to .pdb file and placing in the output experimental condition path

cd /scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicInteractions/tools
MAE_PATH="/scratch/PI/rondror/DesRes-Simulations/ordered-from-DesRes/nature2011/DESRES-Trajectory_nature2011-D-all.1/nature2011-D-all/nature2011-D-all.mae"
OUTPUT_PDB_PATH="/scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-active-noNb-BI-nature2011/condition-D/step5_assembly.pdb"
python maeToPdb.py $MAE_PATH $OUTPUT_PDB_PATH

# Copy and rename .mae file to the output experimental condition path
cp /scratch/PI/rondror/DesRes-Simulations/ordered-from-DesRes/nature2011/DESRES-Trajectory_nature2011-D-all.1/nature2011-D-all/nature2011-D-all.mae /scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-active-noNb-BI-nature2011/condition-D/step5_assembly.mae

# Stripping waters from original pdb

TOPOLOGY_PATH="/scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-active-noNb-BI-nature2011/condition-D/step5_assembly.pdb"
OUTPUT_FILE_PATH="/scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-active-noNb-BI-nature2011/condition-D/step5_assembly_strip_waters.pdb"
cd /scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicInteractions/tools
python stripWaters.py -top $TOPOLOGY_PATH $OUTPUT_FILE_PATH


# Rewrapping original .dcd files and placing copy in output experiment fragment folder path
cd /scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-active-noNb-BI-nature2011/condition-D/rep_1
mkdir Prod_0
cd /scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicInteractions/tools
TOP_FILE="/scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-active-noNb-BI-nature2011/condition-D/step5_assembly.pdb"
TRAJ_FILE="/scratch/PI/rondror/DesRes-Simulations/ordered-from-DesRes/nature2011/DESRES-Trajectory_nature2011-D-all.1/nature2011-D-all/nature2011-D-all-000.dcd"
OUTPUT_FILE="/scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-active-noNb-BI-nature2011/condition-D/rep_1/Prod_0/Prod_0_rewrapped.dcd"
python wrapAlign.py $TOP_FILE $TRAJ_FILE $OUTPUT_FILE -crys

# Stripping water from rewrapped .dcd file and placing output file in same experiment fragment folder path
TRAJ_FILE="/scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-active-noNb-BI-nature2011/condition-D/rep_1/Prod_0/Prod_0_rewrapped.dcd"
OUTPUT_FILE_PATH="/scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-active-noNb-BI-nature2011/condition-D/rep_1/Prod_0/Prod_0_rewrapped_strip_waters.dcd"
python stripWaters.py -top $TOP_FILE -traj $TRAJ_FILE $OUTPUT_FILE_PATH


# Rewrapping original .dcd files and placing copy in output experiment fragment folder path
cd /scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-active-noNb-BI-nature2011/condition-D/rep_1
mkdir Prod_1
cd /scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicInteractions/tools
TOP_FILE="/scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-active-noNb-BI-nature2011/condition-D/step5_assembly.pdb"
TRAJ_FILE="/scratch/PI/rondror/DesRes-Simulations/ordered-from-DesRes/nature2011/DESRES-Trajectory_nature2011-D-all.1/nature2011-D-all/nature2011-D-all-001.dcd"
OUTPUT_FILE="/scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-active-noNb-BI-nature2011/condition-D/rep_1/Prod_1/Prod_1_rewrapped.dcd"
python wrapAlign.py $TOP_FILE $TRAJ_FILE $OUTPUT_FILE

# Stripping water from rewrapped .dcd file and placing output file in same experiment fragment folder path
TRAJ_FILE="/scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-active-noNb-BI-nature2011/condition-D/rep_1/Prod_1/Prod_1_rewrapped.dcd"
OUTPUT_FILE_PATH="/scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-active-noNb-BI-nature2011/condition-D/rep_1/Prod_1/Prod_1_rewrapped_strip_waters.dcd"
python stripWaters.py -top $TOP_FILE -traj $TRAJ_FILE $OUTPUT_FILE_PATH


# Rewrapping original .dcd files and placing copy in output experiment fragment folder path
cd /scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-active-noNb-BI-nature2011/condition-D/rep_1
mkdir Prod_2
cd /scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicInteractions/tools
TOP_FILE="/scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-active-noNb-BI-nature2011/condition-D/step5_assembly.pdb"
TRAJ_FILE="/scratch/PI/rondror/DesRes-Simulations/ordered-from-DesRes/nature2011/DESRES-Trajectory_nature2011-D-all.1/nature2011-D-all/nature2011-D-all-002.dcd"
OUTPUT_FILE="/scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-active-noNb-BI-nature2011/condition-D/rep_1/Prod_2/Prod_2_rewrapped.dcd"
python wrapAlign.py $TOP_FILE $TRAJ_FILE $OUTPUT_FILE

# Stripping water from rewrapped .dcd file and placing output file in same experiment fragment folder path
TRAJ_FILE="/scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-active-noNb-BI-nature2011/condition-D/rep_1/Prod_2/Prod_2_rewrapped.dcd"
OUTPUT_FILE_PATH="/scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-active-noNb-BI-nature2011/condition-D/rep_1/Prod_2/Prod_2_rewrapped_strip_waters.dcd"
python stripWaters.py -top $TOP_FILE -traj $TRAJ_FILE $OUTPUT_FILE_PATH


# Rewrapping original .dcd files and placing copy in output experiment fragment folder path
cd /scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-active-noNb-BI-nature2011/condition-D/rep_1
mkdir Prod_3
cd /scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicInteractions/tools
TOP_FILE="/scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-active-noNb-BI-nature2011/condition-D/step5_assembly.pdb"
TRAJ_FILE="/scratch/PI/rondror/DesRes-Simulations/ordered-from-DesRes/nature2011/DESRES-Trajectory_nature2011-D-all.1/nature2011-D-all/nature2011-D-all-003.dcd"
OUTPUT_FILE="/scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-active-noNb-BI-nature2011/condition-D/rep_1/Prod_3/Prod_3_rewrapped.dcd"
python wrapAlign.py $TOP_FILE $TRAJ_FILE $OUTPUT_FILE

# Stripping water from rewrapped .dcd file and placing output file in same experiment fragment folder path
TRAJ_FILE="/scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-active-noNb-BI-nature2011/condition-D/rep_1/Prod_3/Prod_3_rewrapped.dcd"
OUTPUT_FILE_PATH="/scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-active-noNb-BI-nature2011/condition-D/rep_1/Prod_3/Prod_3_rewrapped_strip_waters.dcd"
python stripWaters.py -top $TOP_FILE -traj $TRAJ_FILE $OUTPUT_FILE_PATH


# Rewrapping original .dcd files and placing copy in output experiment fragment folder path
cd /scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-active-noNb-BI-nature2011/condition-D/rep_1
mkdir Prod_4
cd /scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicInteractions/tools
TOP_FILE="/scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-active-noNb-BI-nature2011/condition-D/step5_assembly.pdb"
TRAJ_FILE="/scratch/PI/rondror/DesRes-Simulations/ordered-from-DesRes/nature2011/DESRES-Trajectory_nature2011-D-all.1/nature2011-D-all/nature2011-D-all-004.dcd"
OUTPUT_FILE="/scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-active-noNb-BI-nature2011/condition-D/rep_1/Prod_4/Prod_4_rewrapped.dcd"
python wrapAlign.py $TOP_FILE $TRAJ_FILE $OUTPUT_FILE

# Stripping water from rewrapped .dcd file and placing output file in same experiment fragment folder path
TRAJ_FILE="/scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-active-noNb-BI-nature2011/condition-D/rep_1/Prod_4/Prod_4_rewrapped.dcd"
OUTPUT_FILE_PATH="/scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-active-noNb-BI-nature2011/condition-D/rep_1/Prod_4/Prod_4_rewrapped_strip_waters.dcd"
python stripWaters.py -top $TOP_FILE -traj $TRAJ_FILE $OUTPUT_FILE_PATH


# Rewrapping original .dcd files and placing copy in output experiment fragment folder path
cd /scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-active-noNb-BI-nature2011/condition-D/rep_1
mkdir Prod_5
cd /scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicInteractions/tools
TOP_FILE="/scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-active-noNb-BI-nature2011/condition-D/step5_assembly.pdb"
TRAJ_FILE="/scratch/PI/rondror/DesRes-Simulations/ordered-from-DesRes/nature2011/DESRES-Trajectory_nature2011-D-all.1/nature2011-D-all/nature2011-D-all-005.dcd"
OUTPUT_FILE="/scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-active-noNb-BI-nature2011/condition-D/rep_1/Prod_5/Prod_5_rewrapped.dcd"
python wrapAlign.py $TOP_FILE $TRAJ_FILE $OUTPUT_FILE

# Stripping water from rewrapped .dcd file and placing output file in same experiment fragment folder path
TRAJ_FILE="/scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-active-noNb-BI-nature2011/condition-D/rep_1/Prod_5/Prod_5_rewrapped.dcd"
OUTPUT_FILE_PATH="/scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-active-noNb-BI-nature2011/condition-D/rep_1/Prod_5/Prod_5_rewrapped_strip_waters.dcd"
python stripWaters.py -top $TOP_FILE -traj $TRAJ_FILE $OUTPUT_FILE_PATH


# Rewrapping original .dcd files and placing copy in output experiment fragment folder path
cd /scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-active-noNb-BI-nature2011/condition-D/rep_1
mkdir Prod_6
cd /scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicInteractions/tools
TOP_FILE="/scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-active-noNb-BI-nature2011/condition-D/step5_assembly.pdb"
TRAJ_FILE="/scratch/PI/rondror/DesRes-Simulations/ordered-from-DesRes/nature2011/DESRES-Trajectory_nature2011-D-all.1/nature2011-D-all/nature2011-D-all-006.dcd"
OUTPUT_FILE="/scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-active-noNb-BI-nature2011/condition-D/rep_1/Prod_6/Prod_6_rewrapped.dcd"
python wrapAlign.py $TOP_FILE $TRAJ_FILE $OUTPUT_FILE

# Stripping water from rewrapped .dcd file and placing output file in same experiment fragment folder path
TRAJ_FILE="/scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-active-noNb-BI-nature2011/condition-D/rep_1/Prod_6/Prod_6_rewrapped.dcd"
OUTPUT_FILE_PATH="/scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-active-noNb-BI-nature2011/condition-D/rep_1/Prod_6/Prod_6_rewrapped_strip_waters.dcd"
python stripWaters.py -top $TOP_FILE -traj $TRAJ_FILE $OUTPUT_FILE_PATH


# Rewrapping original .dcd files and placing copy in output experiment fragment folder path
cd /scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-active-noNb-BI-nature2011/condition-D/rep_1
mkdir Prod_7
cd /scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicInteractions/tools
TOP_FILE="/scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-active-noNb-BI-nature2011/condition-D/step5_assembly.pdb"
TRAJ_FILE="/scratch/PI/rondror/DesRes-Simulations/ordered-from-DesRes/nature2011/DESRES-Trajectory_nature2011-D-all.1/nature2011-D-all/nature2011-D-all-007.dcd"
OUTPUT_FILE="/scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-active-noNb-BI-nature2011/condition-D/rep_1/Prod_7/Prod_7_rewrapped.dcd"
python wrapAlign.py $TOP_FILE $TRAJ_FILE $OUTPUT_FILE

# Stripping water from rewrapped .dcd file and placing output file in same experiment fragment folder path
TRAJ_FILE="/scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-active-noNb-BI-nature2011/condition-D/rep_1/Prod_7/Prod_7_rewrapped.dcd"
OUTPUT_FILE_PATH="/scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-active-noNb-BI-nature2011/condition-D/rep_1/Prod_7/Prod_7_rewrapped_strip_waters.dcd"
python stripWaters.py -top $TOP_FILE -traj $TRAJ_FILE $OUTPUT_FILE_PATH


# Rewrapping original .dcd files and placing copy in output experiment fragment folder path
cd /scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-active-noNb-BI-nature2011/condition-D/rep_1
mkdir Prod_8
cd /scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicInteractions/tools
TOP_FILE="/scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-active-noNb-BI-nature2011/condition-D/step5_assembly.pdb"
TRAJ_FILE="/scratch/PI/rondror/DesRes-Simulations/ordered-from-DesRes/nature2011/DESRES-Trajectory_nature2011-D-all.1/nature2011-D-all/nature2011-D-all-008.dcd"
OUTPUT_FILE="/scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-active-noNb-BI-nature2011/condition-D/rep_1/Prod_8/Prod_8_rewrapped.dcd"
python wrapAlign.py $TOP_FILE $TRAJ_FILE $OUTPUT_FILE

# Stripping water from rewrapped .dcd file and placing output file in same experiment fragment folder path
TRAJ_FILE="/scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-active-noNb-BI-nature2011/condition-D/rep_1/Prod_8/Prod_8_rewrapped.dcd"
OUTPUT_FILE_PATH="/scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-active-noNb-BI-nature2011/condition-D/rep_1/Prod_8/Prod_8_rewrapped_strip_waters.dcd"
python stripWaters.py -top $TOP_FILE -traj $TRAJ_FILE $OUTPUT_FILE_PATH


# Rewrapping original .dcd files and placing copy in output experiment fragment folder path
cd /scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-active-noNb-BI-nature2011/condition-D/rep_1
mkdir Prod_9
cd /scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicInteractions/tools
TOP_FILE="/scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-active-noNb-BI-nature2011/condition-D/step5_assembly.pdb"
TRAJ_FILE="/scratch/PI/rondror/DesRes-Simulations/ordered-from-DesRes/nature2011/DESRES-Trajectory_nature2011-D-all.1/nature2011-D-all/nature2011-D-all-009.dcd"
OUTPUT_FILE="/scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-active-noNb-BI-nature2011/condition-D/rep_1/Prod_9/Prod_9_rewrapped.dcd"
python wrapAlign.py $TOP_FILE $TRAJ_FILE $OUTPUT_FILE

# Stripping water from rewrapped .dcd file and placing output file in same experiment fragment folder path
TRAJ_FILE="/scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-active-noNb-BI-nature2011/condition-D/rep_1/Prod_9/Prod_9_rewrapped.dcd"
OUTPUT_FILE_PATH="/scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-active-noNb-BI-nature2011/condition-D/rep_1/Prod_9/Prod_9_rewrapped_strip_waters.dcd"
python stripWaters.py -top $TOP_FILE -traj $TRAJ_FILE $OUTPUT_FILE_PATH


# Rewrapping original .dcd files and placing copy in output experiment fragment folder path
cd /scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-active-noNb-BI-nature2011/condition-D/rep_1
mkdir Prod_10
cd /scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicInteractions/tools
TOP_FILE="/scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-active-noNb-BI-nature2011/condition-D/step5_assembly.pdb"
TRAJ_FILE="/scratch/PI/rondror/DesRes-Simulations/ordered-from-DesRes/nature2011/DESRES-Trajectory_nature2011-D-all.1/nature2011-D-all/nature2011-D-all-010.dcd"
OUTPUT_FILE="/scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-active-noNb-BI-nature2011/condition-D/rep_1/Prod_10/Prod_10_rewrapped.dcd"
python wrapAlign.py $TOP_FILE $TRAJ_FILE $OUTPUT_FILE

# Stripping water from rewrapped .dcd file and placing output file in same experiment fragment folder path
TRAJ_FILE="/scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-active-noNb-BI-nature2011/condition-D/rep_1/Prod_10/Prod_10_rewrapped.dcd"
OUTPUT_FILE_PATH="/scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-active-noNb-BI-nature2011/condition-D/rep_1/Prod_10/Prod_10_rewrapped_strip_waters.dcd"
python stripWaters.py -top $TOP_FILE -traj $TRAJ_FILE $OUTPUT_FILE_PATH


# Rewrapping original .dcd files and placing copy in output experiment fragment folder path
cd /scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-active-noNb-BI-nature2011/condition-D/rep_1
mkdir Prod_11
cd /scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicInteractions/tools
TOP_FILE="/scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-active-noNb-BI-nature2011/condition-D/step5_assembly.pdb"
TRAJ_FILE="/scratch/PI/rondror/DesRes-Simulations/ordered-from-DesRes/nature2011/DESRES-Trajectory_nature2011-D-all.1/nature2011-D-all/nature2011-D-all-011.dcd"
OUTPUT_FILE="/scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-active-noNb-BI-nature2011/condition-D/rep_1/Prod_11/Prod_11_rewrapped.dcd"
python wrapAlign.py $TOP_FILE $TRAJ_FILE $OUTPUT_FILE

# Stripping water from rewrapped .dcd file and placing output file in same experiment fragment folder path
TRAJ_FILE="/scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-active-noNb-BI-nature2011/condition-D/rep_1/Prod_11/Prod_11_rewrapped.dcd"
OUTPUT_FILE_PATH="/scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-active-noNb-BI-nature2011/condition-D/rep_1/Prod_11/Prod_11_rewrapped_strip_waters.dcd"
python stripWaters.py -top $TOP_FILE -traj $TRAJ_FILE $OUTPUT_FILE_PATH


# Rewrapping original .dcd files and placing copy in output experiment fragment folder path
cd /scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-active-noNb-BI-nature2011/condition-D/rep_1
mkdir Prod_12
cd /scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicInteractions/tools
TOP_FILE="/scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-active-noNb-BI-nature2011/condition-D/step5_assembly.pdb"
TRAJ_FILE="/scratch/PI/rondror/DesRes-Simulations/ordered-from-DesRes/nature2011/DESRES-Trajectory_nature2011-D-all.1/nature2011-D-all/nature2011-D-all-012.dcd"
OUTPUT_FILE="/scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-active-noNb-BI-nature2011/condition-D/rep_1/Prod_12/Prod_12_rewrapped.dcd"
python wrapAlign.py $TOP_FILE $TRAJ_FILE $OUTPUT_FILE

# Stripping water from rewrapped .dcd file and placing output file in same experiment fragment folder path
TRAJ_FILE="/scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-active-noNb-BI-nature2011/condition-D/rep_1/Prod_12/Prod_12_rewrapped.dcd"
OUTPUT_FILE_PATH="/scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-active-noNb-BI-nature2011/condition-D/rep_1/Prod_12/Prod_12_rewrapped_strip_waters.dcd"
python stripWaters.py -top $TOP_FILE -traj $TRAJ_FILE $OUTPUT_FILE_PATH


# Rewrapping original .dcd files and placing copy in output experiment fragment folder path
cd /scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-active-noNb-BI-nature2011/condition-D/rep_1
mkdir Prod_13
cd /scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicInteractions/tools
TOP_FILE="/scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-active-noNb-BI-nature2011/condition-D/step5_assembly.pdb"
TRAJ_FILE="/scratch/PI/rondror/DesRes-Simulations/ordered-from-DesRes/nature2011/DESRES-Trajectory_nature2011-D-all.1/nature2011-D-all/nature2011-D-all-013.dcd"
OUTPUT_FILE="/scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-active-noNb-BI-nature2011/condition-D/rep_1/Prod_13/Prod_13_rewrapped.dcd"
python wrapAlign.py $TOP_FILE $TRAJ_FILE $OUTPUT_FILE

# Stripping water from rewrapped .dcd file and placing output file in same experiment fragment folder path
TRAJ_FILE="/scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-active-noNb-BI-nature2011/condition-D/rep_1/Prod_13/Prod_13_rewrapped.dcd"
OUTPUT_FILE_PATH="/scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-active-noNb-BI-nature2011/condition-D/rep_1/Prod_13/Prod_13_rewrapped_strip_waters.dcd"
python stripWaters.py -top $TOP_FILE -traj $TRAJ_FILE $OUTPUT_FILE_PATH


# Rewrapping original .dcd files and placing copy in output experiment fragment folder path
cd /scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-active-noNb-BI-nature2011/condition-D/rep_1
mkdir Prod_14
cd /scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicInteractions/tools
TOP_FILE="/scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-active-noNb-BI-nature2011/condition-D/step5_assembly.pdb"
TRAJ_FILE="/scratch/PI/rondror/DesRes-Simulations/ordered-from-DesRes/nature2011/DESRES-Trajectory_nature2011-D-all.1/nature2011-D-all/nature2011-D-all-014.dcd"
OUTPUT_FILE="/scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-active-noNb-BI-nature2011/condition-D/rep_1/Prod_14/Prod_14_rewrapped.dcd"
python wrapAlign.py $TOP_FILE $TRAJ_FILE $OUTPUT_FILE

# Stripping water from rewrapped .dcd file and placing output file in same experiment fragment folder path
TRAJ_FILE="/scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-active-noNb-BI-nature2011/condition-D/rep_1/Prod_14/Prod_14_rewrapped.dcd"
OUTPUT_FILE_PATH="/scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-active-noNb-BI-nature2011/condition-D/rep_1/Prod_14/Prod_14_rewrapped_strip_waters.dcd"
python stripWaters.py -top $TOP_FILE -traj $TRAJ_FILE $OUTPUT_FILE_PATH


# Rewrapping original .dcd files and placing copy in output experiment fragment folder path
cd /scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-active-noNb-BI-nature2011/condition-D/rep_1
mkdir Prod_15
cd /scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicInteractions/tools
TOP_FILE="/scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-active-noNb-BI-nature2011/condition-D/step5_assembly.pdb"
TRAJ_FILE="/scratch/PI/rondror/DesRes-Simulations/ordered-from-DesRes/nature2011/DESRES-Trajectory_nature2011-D-all.1/nature2011-D-all/nature2011-D-all-015.dcd"
OUTPUT_FILE="/scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-active-noNb-BI-nature2011/condition-D/rep_1/Prod_15/Prod_15_rewrapped.dcd"
python wrapAlign.py $TOP_FILE $TRAJ_FILE $OUTPUT_FILE

# Stripping water from rewrapped .dcd file and placing output file in same experiment fragment folder path
TRAJ_FILE="/scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-active-noNb-BI-nature2011/condition-D/rep_1/Prod_15/Prod_15_rewrapped.dcd"
OUTPUT_FILE_PATH="/scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-active-noNb-BI-nature2011/condition-D/rep_1/Prod_15/Prod_15_rewrapped_strip_waters.dcd"
python stripWaters.py -top $TOP_FILE -traj $TRAJ_FILE $OUTPUT_FILE_PATH


# Rewrapping original .dcd files and placing copy in output experiment fragment folder path
cd /scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-active-noNb-BI-nature2011/condition-D/rep_1
mkdir Prod_16
cd /scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicInteractions/tools
TOP_FILE="/scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-active-noNb-BI-nature2011/condition-D/step5_assembly.pdb"
TRAJ_FILE="/scratch/PI/rondror/DesRes-Simulations/ordered-from-DesRes/nature2011/DESRES-Trajectory_nature2011-D-all.1/nature2011-D-all/nature2011-D-all-016.dcd"
OUTPUT_FILE="/scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-active-noNb-BI-nature2011/condition-D/rep_1/Prod_16/Prod_16_rewrapped.dcd"
python wrapAlign.py $TOP_FILE $TRAJ_FILE $OUTPUT_FILE

# Stripping water from rewrapped .dcd file and placing output file in same experiment fragment folder path
TRAJ_FILE="/scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-active-noNb-BI-nature2011/condition-D/rep_1/Prod_16/Prod_16_rewrapped.dcd"
OUTPUT_FILE_PATH="/scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-active-noNb-BI-nature2011/condition-D/rep_1/Prod_16/Prod_16_rewrapped_strip_waters.dcd"
python stripWaters.py -top $TOP_FILE -traj $TRAJ_FILE $OUTPUT_FILE_PATH


# Rewrapping original .dcd files and placing copy in output experiment fragment folder path
cd /scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-active-noNb-BI-nature2011/condition-D/rep_1
mkdir Prod_17
cd /scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicInteractions/tools
TOP_FILE="/scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-active-noNb-BI-nature2011/condition-D/step5_assembly.pdb"
TRAJ_FILE="/scratch/PI/rondror/DesRes-Simulations/ordered-from-DesRes/nature2011/DESRES-Trajectory_nature2011-D-all.1/nature2011-D-all/nature2011-D-all-017.dcd"
OUTPUT_FILE="/scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-active-noNb-BI-nature2011/condition-D/rep_1/Prod_17/Prod_17_rewrapped.dcd"
python wrapAlign.py $TOP_FILE $TRAJ_FILE $OUTPUT_FILE

# Stripping water from rewrapped .dcd file and placing output file in same experiment fragment folder path
TRAJ_FILE="/scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-active-noNb-BI-nature2011/condition-D/rep_1/Prod_17/Prod_17_rewrapped.dcd"
OUTPUT_FILE_PATH="/scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-active-noNb-BI-nature2011/condition-D/rep_1/Prod_17/Prod_17_rewrapped_strip_waters.dcd"
python stripWaters.py -top $TOP_FILE -traj $TRAJ_FILE $OUTPUT_FILE_PATH


# Rewrapping original .dcd files and placing copy in output experiment fragment folder path
cd /scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-active-noNb-BI-nature2011/condition-D/rep_1
mkdir Prod_18
cd /scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicInteractions/tools
TOP_FILE="/scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-active-noNb-BI-nature2011/condition-D/step5_assembly.pdb"
TRAJ_FILE="/scratch/PI/rondror/DesRes-Simulations/ordered-from-DesRes/nature2011/DESRES-Trajectory_nature2011-D-all.1/nature2011-D-all/nature2011-D-all-018.dcd"
OUTPUT_FILE="/scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-active-noNb-BI-nature2011/condition-D/rep_1/Prod_18/Prod_18_rewrapped.dcd"
python wrapAlign.py $TOP_FILE $TRAJ_FILE $OUTPUT_FILE

# Stripping water from rewrapped .dcd file and placing output file in same experiment fragment folder path
TRAJ_FILE="/scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-active-noNb-BI-nature2011/condition-D/rep_1/Prod_18/Prod_18_rewrapped.dcd"
OUTPUT_FILE_PATH="/scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-active-noNb-BI-nature2011/condition-D/rep_1/Prod_18/Prod_18_rewrapped_strip_waters.dcd"
python stripWaters.py -top $TOP_FILE -traj $TRAJ_FILE $OUTPUT_FILE_PATH


# Rewrapping original .dcd files and placing copy in output experiment fragment folder path
cd /scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-active-noNb-BI-nature2011/condition-D/rep_1
mkdir Prod_19
cd /scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicInteractions/tools
TOP_FILE="/scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-active-noNb-BI-nature2011/condition-D/step5_assembly.pdb"
TRAJ_FILE="/scratch/PI/rondror/DesRes-Simulations/ordered-from-DesRes/nature2011/DESRES-Trajectory_nature2011-D-all.1/nature2011-D-all/nature2011-D-all-019.dcd"
OUTPUT_FILE="/scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-active-noNb-BI-nature2011/condition-D/rep_1/Prod_19/Prod_19_rewrapped.dcd"
python wrapAlign.py $TOP_FILE $TRAJ_FILE $OUTPUT_FILE

# Stripping water from rewrapped .dcd file and placing output file in same experiment fragment folder path
TRAJ_FILE="/scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-active-noNb-BI-nature2011/condition-D/rep_1/Prod_19/Prod_19_rewrapped.dcd"
OUTPUT_FILE_PATH="/scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-active-noNb-BI-nature2011/condition-D/rep_1/Prod_19/Prod_19_rewrapped_strip_waters.dcd"
python stripWaters.py -top $TOP_FILE -traj $TRAJ_FILE $OUTPUT_FILE_PATH


# Rewrapping original .dcd files and placing copy in output experiment fragment folder path
cd /scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-active-noNb-BI-nature2011/condition-D/rep_1
mkdir Prod_20
cd /scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicInteractions/tools
TOP_FILE="/scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-active-noNb-BI-nature2011/condition-D/step5_assembly.pdb"
TRAJ_FILE="/scratch/PI/rondror/DesRes-Simulations/ordered-from-DesRes/nature2011/DESRES-Trajectory_nature2011-D-all.1/nature2011-D-all/nature2011-D-all-020.dcd"
OUTPUT_FILE="/scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-active-noNb-BI-nature2011/condition-D/rep_1/Prod_20/Prod_20_rewrapped.dcd"
python wrapAlign.py $TOP_FILE $TRAJ_FILE $OUTPUT_FILE

# Stripping water from rewrapped .dcd file and placing output file in same experiment fragment folder path
TRAJ_FILE="/scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-active-noNb-BI-nature2011/condition-D/rep_1/Prod_20/Prod_20_rewrapped.dcd"
OUTPUT_FILE_PATH="/scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-active-noNb-BI-nature2011/condition-D/rep_1/Prod_20/Prod_20_rewrapped_strip_waters.dcd"
python stripWaters.py -top $TOP_FILE -traj $TRAJ_FILE $OUTPUT_FILE_PATH


# Rewrapping original .dcd files and placing copy in output experiment fragment folder path
cd /scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-active-noNb-BI-nature2011/condition-D/rep_1
mkdir Prod_21
cd /scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicInteractions/tools
TOP_FILE="/scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-active-noNb-BI-nature2011/condition-D/step5_assembly.pdb"
TRAJ_FILE="/scratch/PI/rondror/DesRes-Simulations/ordered-from-DesRes/nature2011/DESRES-Trajectory_nature2011-D-all.1/nature2011-D-all/nature2011-D-all-021.dcd"
OUTPUT_FILE="/scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-active-noNb-BI-nature2011/condition-D/rep_1/Prod_21/Prod_21_rewrapped.dcd"
python wrapAlign.py $TOP_FILE $TRAJ_FILE $OUTPUT_FILE

# Stripping water from rewrapped .dcd file and placing output file in same experiment fragment folder path
TRAJ_FILE="/scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-active-noNb-BI-nature2011/condition-D/rep_1/Prod_21/Prod_21_rewrapped.dcd"
OUTPUT_FILE_PATH="/scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-active-noNb-BI-nature2011/condition-D/rep_1/Prod_21/Prod_21_rewrapped_strip_waters.dcd"
python stripWaters.py -top $TOP_FILE -traj $TRAJ_FILE $OUTPUT_FILE_PATH


# Rewrapping original .dcd files and placing copy in output experiment fragment folder path
cd /scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-active-noNb-BI-nature2011/condition-D/rep_1
mkdir Prod_22
cd /scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicInteractions/tools
TOP_FILE="/scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-active-noNb-BI-nature2011/condition-D/step5_assembly.pdb"
TRAJ_FILE="/scratch/PI/rondror/DesRes-Simulations/ordered-from-DesRes/nature2011/DESRES-Trajectory_nature2011-D-all.1/nature2011-D-all/nature2011-D-all-022.dcd"
OUTPUT_FILE="/scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-active-noNb-BI-nature2011/condition-D/rep_1/Prod_22/Prod_22_rewrapped.dcd"
python wrapAlign.py $TOP_FILE $TRAJ_FILE $OUTPUT_FILE

# Stripping water from rewrapped .dcd file and placing output file in same experiment fragment folder path
TRAJ_FILE="/scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-active-noNb-BI-nature2011/condition-D/rep_1/Prod_22/Prod_22_rewrapped.dcd"
OUTPUT_FILE_PATH="/scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-active-noNb-BI-nature2011/condition-D/rep_1/Prod_22/Prod_22_rewrapped_strip_waters.dcd"
python stripWaters.py -top $TOP_FILE -traj $TRAJ_FILE $OUTPUT_FILE_PATH


# Rewrapping original .dcd files and placing copy in output experiment fragment folder path
cd /scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-active-noNb-BI-nature2011/condition-D/rep_1
mkdir Prod_23
cd /scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicInteractions/tools
TOP_FILE="/scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-active-noNb-BI-nature2011/condition-D/step5_assembly.pdb"
TRAJ_FILE="/scratch/PI/rondror/DesRes-Simulations/ordered-from-DesRes/nature2011/DESRES-Trajectory_nature2011-D-all.1/nature2011-D-all/nature2011-D-all-023.dcd"
OUTPUT_FILE="/scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-active-noNb-BI-nature2011/condition-D/rep_1/Prod_23/Prod_23_rewrapped.dcd"
python wrapAlign.py $TOP_FILE $TRAJ_FILE $OUTPUT_FILE

# Stripping water from rewrapped .dcd file and placing output file in same experiment fragment folder path
TRAJ_FILE="/scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-active-noNb-BI-nature2011/condition-D/rep_1/Prod_23/Prod_23_rewrapped.dcd"
OUTPUT_FILE_PATH="/scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-active-noNb-BI-nature2011/condition-D/rep_1/Prod_23/Prod_23_rewrapped_strip_waters.dcd"
python stripWaters.py -top $TOP_FILE -traj $TRAJ_FILE $OUTPUT_FILE_PATH


# Rewrapping original .dcd files and placing copy in output experiment fragment folder path
cd /scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-active-noNb-BI-nature2011/condition-D/rep_1
mkdir Prod_24
cd /scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicInteractions/tools
TOP_FILE="/scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-active-noNb-BI-nature2011/condition-D/step5_assembly.pdb"
TRAJ_FILE="/scratch/PI/rondror/DesRes-Simulations/ordered-from-DesRes/nature2011/DESRES-Trajectory_nature2011-D-all.1/nature2011-D-all/nature2011-D-all-024.dcd"
OUTPUT_FILE="/scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-active-noNb-BI-nature2011/condition-D/rep_1/Prod_24/Prod_24_rewrapped.dcd"
python wrapAlign.py $TOP_FILE $TRAJ_FILE $OUTPUT_FILE

# Stripping water from rewrapped .dcd file and placing output file in same experiment fragment folder path
TRAJ_FILE="/scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-active-noNb-BI-nature2011/condition-D/rep_1/Prod_24/Prod_24_rewrapped.dcd"
OUTPUT_FILE_PATH="/scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-active-noNb-BI-nature2011/condition-D/rep_1/Prod_24/Prod_24_rewrapped_strip_waters.dcd"
python stripWaters.py -top $TOP_FILE -traj $TRAJ_FILE $OUTPUT_FILE_PATH


# Rewrapping original .dcd files and placing copy in output experiment fragment folder path
cd /scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-active-noNb-BI-nature2011/condition-D/rep_1
mkdir Prod_25
cd /scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicInteractions/tools
TOP_FILE="/scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-active-noNb-BI-nature2011/condition-D/step5_assembly.pdb"
TRAJ_FILE="/scratch/PI/rondror/DesRes-Simulations/ordered-from-DesRes/nature2011/DESRES-Trajectory_nature2011-D-all.1/nature2011-D-all/nature2011-D-all-025.dcd"
OUTPUT_FILE="/scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-active-noNb-BI-nature2011/condition-D/rep_1/Prod_25/Prod_25_rewrapped.dcd"
python wrapAlign.py $TOP_FILE $TRAJ_FILE $OUTPUT_FILE

# Stripping water from rewrapped .dcd file and placing output file in same experiment fragment folder path
TRAJ_FILE="/scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-active-noNb-BI-nature2011/condition-D/rep_1/Prod_25/Prod_25_rewrapped.dcd"
OUTPUT_FILE_PATH="/scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-active-noNb-BI-nature2011/condition-D/rep_1/Prod_25/Prod_25_rewrapped_strip_waters.dcd"
python stripWaters.py -top $TOP_FILE -traj $TRAJ_FILE $OUTPUT_FILE_PATH


# Rewrapping original .dcd files and placing copy in output experiment fragment folder path
cd /scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-active-noNb-BI-nature2011/condition-D/rep_1
mkdir Prod_26
cd /scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicInteractions/tools
TOP_FILE="/scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-active-noNb-BI-nature2011/condition-D/step5_assembly.pdb"
TRAJ_FILE="/scratch/PI/rondror/DesRes-Simulations/ordered-from-DesRes/nature2011/DESRES-Trajectory_nature2011-D-all.1/nature2011-D-all/nature2011-D-all-026.dcd"
OUTPUT_FILE="/scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-active-noNb-BI-nature2011/condition-D/rep_1/Prod_26/Prod_26_rewrapped.dcd"
python wrapAlign.py $TOP_FILE $TRAJ_FILE $OUTPUT_FILE

# Stripping water from rewrapped .dcd file and placing output file in same experiment fragment folder path
TRAJ_FILE="/scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-active-noNb-BI-nature2011/condition-D/rep_1/Prod_26/Prod_26_rewrapped.dcd"
OUTPUT_FILE_PATH="/scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-active-noNb-BI-nature2011/condition-D/rep_1/Prod_26/Prod_26_rewrapped_strip_waters.dcd"
python stripWaters.py -top $TOP_FILE -traj $TRAJ_FILE $OUTPUT_FILE_PATH


# Rewrapping original .dcd files and placing copy in output experiment fragment folder path
cd /scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-active-noNb-BI-nature2011/condition-D/rep_1
mkdir Prod_27
cd /scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicInteractions/tools
TOP_FILE="/scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-active-noNb-BI-nature2011/condition-D/step5_assembly.pdb"
TRAJ_FILE="/scratch/PI/rondror/DesRes-Simulations/ordered-from-DesRes/nature2011/DESRES-Trajectory_nature2011-D-all.1/nature2011-D-all/nature2011-D-all-027.dcd"
OUTPUT_FILE="/scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-active-noNb-BI-nature2011/condition-D/rep_1/Prod_27/Prod_27_rewrapped.dcd"
python wrapAlign.py $TOP_FILE $TRAJ_FILE $OUTPUT_FILE

# Stripping water from rewrapped .dcd file and placing output file in same experiment fragment folder path
TRAJ_FILE="/scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-active-noNb-BI-nature2011/condition-D/rep_1/Prod_27/Prod_27_rewrapped.dcd"
OUTPUT_FILE_PATH="/scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-active-noNb-BI-nature2011/condition-D/rep_1/Prod_27/Prod_27_rewrapped_strip_waters.dcd"
python stripWaters.py -top $TOP_FILE -traj $TRAJ_FILE $OUTPUT_FILE_PATH


# Rewrapping original .dcd files and placing copy in output experiment fragment folder path
cd /scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-active-noNb-BI-nature2011/condition-D/rep_1
mkdir Prod_28
cd /scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicInteractions/tools
TOP_FILE="/scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-active-noNb-BI-nature2011/condition-D/step5_assembly.pdb"
TRAJ_FILE="/scratch/PI/rondror/DesRes-Simulations/ordered-from-DesRes/nature2011/DESRES-Trajectory_nature2011-D-all.1/nature2011-D-all/nature2011-D-all-028.dcd"
OUTPUT_FILE="/scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-active-noNb-BI-nature2011/condition-D/rep_1/Prod_28/Prod_28_rewrapped.dcd"
python wrapAlign.py $TOP_FILE $TRAJ_FILE $OUTPUT_FILE

# Stripping water from rewrapped .dcd file and placing output file in same experiment fragment folder path
TRAJ_FILE="/scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-active-noNb-BI-nature2011/condition-D/rep_1/Prod_28/Prod_28_rewrapped.dcd"
OUTPUT_FILE_PATH="/scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-active-noNb-BI-nature2011/condition-D/rep_1/Prod_28/Prod_28_rewrapped_strip_waters.dcd"
python stripWaters.py -top $TOP_FILE -traj $TRAJ_FILE $OUTPUT_FILE_PATH


# Rewrapping original .dcd files and placing copy in output experiment fragment folder path
cd /scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-active-noNb-BI-nature2011/condition-D/rep_1
mkdir Prod_29
cd /scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicInteractions/tools
TOP_FILE="/scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-active-noNb-BI-nature2011/condition-D/step5_assembly.pdb"
TRAJ_FILE="/scratch/PI/rondror/DesRes-Simulations/ordered-from-DesRes/nature2011/DESRES-Trajectory_nature2011-D-all.1/nature2011-D-all/nature2011-D-all-029.dcd"
OUTPUT_FILE="/scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-active-noNb-BI-nature2011/condition-D/rep_1/Prod_29/Prod_29_rewrapped.dcd"
python wrapAlign.py $TOP_FILE $TRAJ_FILE $OUTPUT_FILE

# Stripping water from rewrapped .dcd file and placing output file in same experiment fragment folder path
TRAJ_FILE="/scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-active-noNb-BI-nature2011/condition-D/rep_1/Prod_29/Prod_29_rewrapped.dcd"
OUTPUT_FILE_PATH="/scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-active-noNb-BI-nature2011/condition-D/rep_1/Prod_29/Prod_29_rewrapped_strip_waters.dcd"
python stripWaters.py -top $TOP_FILE -traj $TRAJ_FILE $OUTPUT_FILE_PATH


# Rewrapping original .dcd files and placing copy in output experiment fragment folder path
cd /scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-active-noNb-BI-nature2011/condition-D/rep_1
mkdir Prod_30
cd /scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicInteractions/tools
TOP_FILE="/scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-active-noNb-BI-nature2011/condition-D/step5_assembly.pdb"
TRAJ_FILE="/scratch/PI/rondror/DesRes-Simulations/ordered-from-DesRes/nature2011/DESRES-Trajectory_nature2011-D-all.1/nature2011-D-all/nature2011-D-all-030.dcd"
OUTPUT_FILE="/scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-active-noNb-BI-nature2011/condition-D/rep_1/Prod_30/Prod_30_rewrapped.dcd"
python wrapAlign.py $TOP_FILE $TRAJ_FILE $OUTPUT_FILE

# Stripping water from rewrapped .dcd file and placing output file in same experiment fragment folder path
TRAJ_FILE="/scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-active-noNb-BI-nature2011/condition-D/rep_1/Prod_30/Prod_30_rewrapped.dcd"
OUTPUT_FILE_PATH="/scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-active-noNb-BI-nature2011/condition-D/rep_1/Prod_30/Prod_30_rewrapped_strip_waters.dcd"
python stripWaters.py -top $TOP_FILE -traj $TRAJ_FILE $OUTPUT_FILE_PATH


# Rewrapping original .dcd files and placing copy in output experiment fragment folder path
cd /scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-active-noNb-BI-nature2011/condition-D/rep_1
mkdir Prod_31
cd /scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicInteractions/tools
TOP_FILE="/scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-active-noNb-BI-nature2011/condition-D/step5_assembly.pdb"
TRAJ_FILE="/scratch/PI/rondror/DesRes-Simulations/ordered-from-DesRes/nature2011/DESRES-Trajectory_nature2011-D-all.1/nature2011-D-all/nature2011-D-all-031.dcd"
OUTPUT_FILE="/scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-active-noNb-BI-nature2011/condition-D/rep_1/Prod_31/Prod_31_rewrapped.dcd"
python wrapAlign.py $TOP_FILE $TRAJ_FILE $OUTPUT_FILE

# Stripping water from rewrapped .dcd file and placing output file in same experiment fragment folder path
TRAJ_FILE="/scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-active-noNb-BI-nature2011/condition-D/rep_1/Prod_31/Prod_31_rewrapped.dcd"
OUTPUT_FILE_PATH="/scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-active-noNb-BI-nature2011/condition-D/rep_1/Prod_31/Prod_31_rewrapped_strip_waters.dcd"
python stripWaters.py -top $TOP_FILE -traj $TRAJ_FILE $OUTPUT_FILE_PATH


# Rewrapping original .dcd files and placing copy in output experiment fragment folder path
cd /scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-active-noNb-BI-nature2011/condition-D/rep_1
mkdir Prod_32
cd /scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicInteractions/tools
TOP_FILE="/scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-active-noNb-BI-nature2011/condition-D/step5_assembly.pdb"
TRAJ_FILE="/scratch/PI/rondror/DesRes-Simulations/ordered-from-DesRes/nature2011/DESRES-Trajectory_nature2011-D-all.1/nature2011-D-all/nature2011-D-all-032.dcd"
OUTPUT_FILE="/scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-active-noNb-BI-nature2011/condition-D/rep_1/Prod_32/Prod_32_rewrapped.dcd"
python wrapAlign.py $TOP_FILE $TRAJ_FILE $OUTPUT_FILE

# Stripping water from rewrapped .dcd file and placing output file in same experiment fragment folder path
TRAJ_FILE="/scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-active-noNb-BI-nature2011/condition-D/rep_1/Prod_32/Prod_32_rewrapped.dcd"
OUTPUT_FILE_PATH="/scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-active-noNb-BI-nature2011/condition-D/rep_1/Prod_32/Prod_32_rewrapped_strip_waters.dcd"
python stripWaters.py -top $TOP_FILE -traj $TRAJ_FILE $OUTPUT_FILE_PATH


# Rewrapping original .dcd files and placing copy in output experiment fragment folder path
cd /scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-active-noNb-BI-nature2011/condition-D/rep_1
mkdir Prod_33
cd /scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicInteractions/tools
TOP_FILE="/scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-active-noNb-BI-nature2011/condition-D/step5_assembly.pdb"
TRAJ_FILE="/scratch/PI/rondror/DesRes-Simulations/ordered-from-DesRes/nature2011/DESRES-Trajectory_nature2011-D-all.1/nature2011-D-all/nature2011-D-all-033.dcd"
OUTPUT_FILE="/scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-active-noNb-BI-nature2011/condition-D/rep_1/Prod_33/Prod_33_rewrapped.dcd"
python wrapAlign.py $TOP_FILE $TRAJ_FILE $OUTPUT_FILE

# Stripping water from rewrapped .dcd file and placing output file in same experiment fragment folder path
TRAJ_FILE="/scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-active-noNb-BI-nature2011/condition-D/rep_1/Prod_33/Prod_33_rewrapped.dcd"
OUTPUT_FILE_PATH="/scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-active-noNb-BI-nature2011/condition-D/rep_1/Prod_33/Prod_33_rewrapped_strip_waters.dcd"
python stripWaters.py -top $TOP_FILE -traj $TRAJ_FILE $OUTPUT_FILE_PATH


# Rewrapping original .dcd files and placing copy in output experiment fragment folder path
cd /scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-active-noNb-BI-nature2011/condition-D/rep_1
mkdir Prod_34
cd /scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicInteractions/tools
TOP_FILE="/scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-active-noNb-BI-nature2011/condition-D/step5_assembly.pdb"
TRAJ_FILE="/scratch/PI/rondror/DesRes-Simulations/ordered-from-DesRes/nature2011/DESRES-Trajectory_nature2011-D-all.1/nature2011-D-all/nature2011-D-all-034.dcd"
OUTPUT_FILE="/scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-active-noNb-BI-nature2011/condition-D/rep_1/Prod_34/Prod_34_rewrapped.dcd"
python wrapAlign.py $TOP_FILE $TRAJ_FILE $OUTPUT_FILE

# Stripping water from rewrapped .dcd file and placing output file in same experiment fragment folder path
TRAJ_FILE="/scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-active-noNb-BI-nature2011/condition-D/rep_1/Prod_34/Prod_34_rewrapped.dcd"
OUTPUT_FILE_PATH="/scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-active-noNb-BI-nature2011/condition-D/rep_1/Prod_34/Prod_34_rewrapped_strip_waters.dcd"
python stripWaters.py -top $TOP_FILE -traj $TRAJ_FILE $OUTPUT_FILE_PATH


# Rewrapping original .dcd files and placing copy in output experiment fragment folder path
cd /scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-active-noNb-BI-nature2011/condition-D/rep_1
mkdir Prod_35
cd /scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicInteractions/tools
TOP_FILE="/scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-active-noNb-BI-nature2011/condition-D/step5_assembly.pdb"
TRAJ_FILE="/scratch/PI/rondror/DesRes-Simulations/ordered-from-DesRes/nature2011/DESRES-Trajectory_nature2011-D-all.1/nature2011-D-all/nature2011-D-all-035.dcd"
OUTPUT_FILE="/scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-active-noNb-BI-nature2011/condition-D/rep_1/Prod_35/Prod_35_rewrapped.dcd"
python wrapAlign.py $TOP_FILE $TRAJ_FILE $OUTPUT_FILE

# Stripping water from rewrapped .dcd file and placing output file in same experiment fragment folder path
TRAJ_FILE="/scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-active-noNb-BI-nature2011/condition-D/rep_1/Prod_35/Prod_35_rewrapped.dcd"
OUTPUT_FILE_PATH="/scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-active-noNb-BI-nature2011/condition-D/rep_1/Prod_35/Prod_35_rewrapped_strip_waters.dcd"
python stripWaters.py -top $TOP_FILE -traj $TRAJ_FILE $OUTPUT_FILE_PATH


# Rewrapping original .dcd files and placing copy in output experiment fragment folder path
cd /scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-active-noNb-BI-nature2011/condition-D/rep_1
mkdir Prod_36
cd /scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicInteractions/tools
TOP_FILE="/scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-active-noNb-BI-nature2011/condition-D/step5_assembly.pdb"
TRAJ_FILE="/scratch/PI/rondror/DesRes-Simulations/ordered-from-DesRes/nature2011/DESRES-Trajectory_nature2011-D-all.1/nature2011-D-all/nature2011-D-all-036.dcd"
OUTPUT_FILE="/scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-active-noNb-BI-nature2011/condition-D/rep_1/Prod_36/Prod_36_rewrapped.dcd"
python wrapAlign.py $TOP_FILE $TRAJ_FILE $OUTPUT_FILE

# Stripping water from rewrapped .dcd file and placing output file in same experiment fragment folder path
TRAJ_FILE="/scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-active-noNb-BI-nature2011/condition-D/rep_1/Prod_36/Prod_36_rewrapped.dcd"
OUTPUT_FILE_PATH="/scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-active-noNb-BI-nature2011/condition-D/rep_1/Prod_36/Prod_36_rewrapped_strip_waters.dcd"
python stripWaters.py -top $TOP_FILE -traj $TRAJ_FILE $OUTPUT_FILE_PATH


# Rewrapping original .dcd files and placing copy in output experiment fragment folder path
cd /scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-active-noNb-BI-nature2011/condition-D/rep_1
mkdir Prod_37
cd /scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicInteractions/tools
TOP_FILE="/scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-active-noNb-BI-nature2011/condition-D/step5_assembly.pdb"
TRAJ_FILE="/scratch/PI/rondror/DesRes-Simulations/ordered-from-DesRes/nature2011/DESRES-Trajectory_nature2011-D-all.1/nature2011-D-all/nature2011-D-all-037.dcd"
OUTPUT_FILE="/scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-active-noNb-BI-nature2011/condition-D/rep_1/Prod_37/Prod_37_rewrapped.dcd"
python wrapAlign.py $TOP_FILE $TRAJ_FILE $OUTPUT_FILE

# Stripping water from rewrapped .dcd file and placing output file in same experiment fragment folder path
TRAJ_FILE="/scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-active-noNb-BI-nature2011/condition-D/rep_1/Prod_37/Prod_37_rewrapped.dcd"
OUTPUT_FILE_PATH="/scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-active-noNb-BI-nature2011/condition-D/rep_1/Prod_37/Prod_37_rewrapped_strip_waters.dcd"
python stripWaters.py -top $TOP_FILE -traj $TRAJ_FILE $OUTPUT_FILE_PATH


# Rewrapping original .dcd files and placing copy in output experiment fragment folder path
cd /scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-active-noNb-BI-nature2011/condition-D/rep_1
mkdir Prod_38
cd /scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicInteractions/tools
TOP_FILE="/scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-active-noNb-BI-nature2011/condition-D/step5_assembly.pdb"
TRAJ_FILE="/scratch/PI/rondror/DesRes-Simulations/ordered-from-DesRes/nature2011/DESRES-Trajectory_nature2011-D-all.1/nature2011-D-all/nature2011-D-all-038.dcd"
OUTPUT_FILE="/scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-active-noNb-BI-nature2011/condition-D/rep_1/Prod_38/Prod_38_rewrapped.dcd"
python wrapAlign.py $TOP_FILE $TRAJ_FILE $OUTPUT_FILE

# Stripping water from rewrapped .dcd file and placing output file in same experiment fragment folder path
TRAJ_FILE="/scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-active-noNb-BI-nature2011/condition-D/rep_1/Prod_38/Prod_38_rewrapped.dcd"
OUTPUT_FILE_PATH="/scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-active-noNb-BI-nature2011/condition-D/rep_1/Prod_38/Prod_38_rewrapped_strip_waters.dcd"
python stripWaters.py -top $TOP_FILE -traj $TRAJ_FILE $OUTPUT_FILE_PATH


# Rewrapping original .dcd files and placing copy in output experiment fragment folder path
cd /scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-active-noNb-BI-nature2011/condition-D/rep_1
mkdir Prod_39
cd /scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicInteractions/tools
TOP_FILE="/scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-active-noNb-BI-nature2011/condition-D/step5_assembly.pdb"
TRAJ_FILE="/scratch/PI/rondror/DesRes-Simulations/ordered-from-DesRes/nature2011/DESRES-Trajectory_nature2011-D-all.1/nature2011-D-all/nature2011-D-all-039.dcd"
OUTPUT_FILE="/scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-active-noNb-BI-nature2011/condition-D/rep_1/Prod_39/Prod_39_rewrapped.dcd"
python wrapAlign.py $TOP_FILE $TRAJ_FILE $OUTPUT_FILE

# Stripping water from rewrapped .dcd file and placing output file in same experiment fragment folder path
TRAJ_FILE="/scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-active-noNb-BI-nature2011/condition-D/rep_1/Prod_39/Prod_39_rewrapped.dcd"
OUTPUT_FILE_PATH="/scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-active-noNb-BI-nature2011/condition-D/rep_1/Prod_39/Prod_39_rewrapped_strip_waters.dcd"
python stripWaters.py -top $TOP_FILE -traj $TRAJ_FILE $OUTPUT_FILE_PATH


# Rewrapping original .dcd files and placing copy in output experiment fragment folder path
cd /scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-active-noNb-BI-nature2011/condition-D/rep_1
mkdir Prod_40
cd /scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicInteractions/tools
TOP_FILE="/scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-active-noNb-BI-nature2011/condition-D/step5_assembly.pdb"
TRAJ_FILE="/scratch/PI/rondror/DesRes-Simulations/ordered-from-DesRes/nature2011/DESRES-Trajectory_nature2011-D-all.1/nature2011-D-all/nature2011-D-all-040.dcd"
OUTPUT_FILE="/scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-active-noNb-BI-nature2011/condition-D/rep_1/Prod_40/Prod_40_rewrapped.dcd"
python wrapAlign.py $TOP_FILE $TRAJ_FILE $OUTPUT_FILE

# Stripping water from rewrapped .dcd file and placing output file in same experiment fragment folder path
TRAJ_FILE="/scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-active-noNb-BI-nature2011/condition-D/rep_1/Prod_40/Prod_40_rewrapped.dcd"
OUTPUT_FILE_PATH="/scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-active-noNb-BI-nature2011/condition-D/rep_1/Prod_40/Prod_40_rewrapped_strip_waters.dcd"
python stripWaters.py -top $TOP_FILE -traj $TRAJ_FILE $OUTPUT_FILE_PATH


# Rewrapping original .dcd files and placing copy in output experiment fragment folder path
cd /scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-active-noNb-BI-nature2011/condition-D/rep_1
mkdir Prod_41
cd /scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicInteractions/tools
TOP_FILE="/scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-active-noNb-BI-nature2011/condition-D/step5_assembly.pdb"
TRAJ_FILE="/scratch/PI/rondror/DesRes-Simulations/ordered-from-DesRes/nature2011/DESRES-Trajectory_nature2011-D-all.1/nature2011-D-all/nature2011-D-all-041.dcd"
OUTPUT_FILE="/scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-active-noNb-BI-nature2011/condition-D/rep_1/Prod_41/Prod_41_rewrapped.dcd"
python wrapAlign.py $TOP_FILE $TRAJ_FILE $OUTPUT_FILE

# Stripping water from rewrapped .dcd file and placing output file in same experiment fragment folder path
TRAJ_FILE="/scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-active-noNb-BI-nature2011/condition-D/rep_1/Prod_41/Prod_41_rewrapped.dcd"
OUTPUT_FILE_PATH="/scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-active-noNb-BI-nature2011/condition-D/rep_1/Prod_41/Prod_41_rewrapped_strip_waters.dcd"
python stripWaters.py -top $TOP_FILE -traj $TRAJ_FILE $OUTPUT_FILE_PATH


# Rewrapping original .dcd files and placing copy in output experiment fragment folder path
cd /scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-active-noNb-BI-nature2011/condition-D/rep_1
mkdir Prod_42
cd /scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicInteractions/tools
TOP_FILE="/scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-active-noNb-BI-nature2011/condition-D/step5_assembly.pdb"
TRAJ_FILE="/scratch/PI/rondror/DesRes-Simulations/ordered-from-DesRes/nature2011/DESRES-Trajectory_nature2011-D-all.1/nature2011-D-all/nature2011-D-all-042.dcd"
OUTPUT_FILE="/scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-active-noNb-BI-nature2011/condition-D/rep_1/Prod_42/Prod_42_rewrapped.dcd"
python wrapAlign.py $TOP_FILE $TRAJ_FILE $OUTPUT_FILE

# Stripping water from rewrapped .dcd file and placing output file in same experiment fragment folder path
TRAJ_FILE="/scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-active-noNb-BI-nature2011/condition-D/rep_1/Prod_42/Prod_42_rewrapped.dcd"
OUTPUT_FILE_PATH="/scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-active-noNb-BI-nature2011/condition-D/rep_1/Prod_42/Prod_42_rewrapped_strip_waters.dcd"
python stripWaters.py -top $TOP_FILE -traj $TRAJ_FILE $OUTPUT_FILE_PATH


# Rewrapping original .dcd files and placing copy in output experiment fragment folder path
cd /scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-active-noNb-BI-nature2011/condition-D/rep_1
mkdir Prod_43
cd /scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicInteractions/tools
TOP_FILE="/scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-active-noNb-BI-nature2011/condition-D/step5_assembly.pdb"
TRAJ_FILE="/scratch/PI/rondror/DesRes-Simulations/ordered-from-DesRes/nature2011/DESRES-Trajectory_nature2011-D-all.1/nature2011-D-all/nature2011-D-all-043.dcd"
OUTPUT_FILE="/scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-active-noNb-BI-nature2011/condition-D/rep_1/Prod_43/Prod_43_rewrapped.dcd"
python wrapAlign.py $TOP_FILE $TRAJ_FILE $OUTPUT_FILE

# Stripping water from rewrapped .dcd file and placing output file in same experiment fragment folder path
TRAJ_FILE="/scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-active-noNb-BI-nature2011/condition-D/rep_1/Prod_43/Prod_43_rewrapped.dcd"
OUTPUT_FILE_PATH="/scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-active-noNb-BI-nature2011/condition-D/rep_1/Prod_43/Prod_43_rewrapped_strip_waters.dcd"
python stripWaters.py -top $TOP_FILE -traj $TRAJ_FILE $OUTPUT_FILE_PATH


# Rewrapping original .dcd files and placing copy in output experiment fragment folder path
cd /scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-active-noNb-BI-nature2011/condition-D/rep_1
mkdir Prod_44
cd /scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicInteractions/tools
TOP_FILE="/scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-active-noNb-BI-nature2011/condition-D/step5_assembly.pdb"
TRAJ_FILE="/scratch/PI/rondror/DesRes-Simulations/ordered-from-DesRes/nature2011/DESRES-Trajectory_nature2011-D-all.1/nature2011-D-all/nature2011-D-all-044.dcd"
OUTPUT_FILE="/scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-active-noNb-BI-nature2011/condition-D/rep_1/Prod_44/Prod_44_rewrapped.dcd"
python wrapAlign.py $TOP_FILE $TRAJ_FILE $OUTPUT_FILE

# Stripping water from rewrapped .dcd file and placing output file in same experiment fragment folder path
TRAJ_FILE="/scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-active-noNb-BI-nature2011/condition-D/rep_1/Prod_44/Prod_44_rewrapped.dcd"
OUTPUT_FILE_PATH="/scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-active-noNb-BI-nature2011/condition-D/rep_1/Prod_44/Prod_44_rewrapped_strip_waters.dcd"
python stripWaters.py -top $TOP_FILE -traj $TRAJ_FILE $OUTPUT_FILE_PATH


# Rewrapping original .dcd files and placing copy in output experiment fragment folder path
cd /scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-active-noNb-BI-nature2011/condition-D/rep_1
mkdir Prod_45
cd /scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicInteractions/tools
TOP_FILE="/scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-active-noNb-BI-nature2011/condition-D/step5_assembly.pdb"
TRAJ_FILE="/scratch/PI/rondror/DesRes-Simulations/ordered-from-DesRes/nature2011/DESRES-Trajectory_nature2011-D-all.1/nature2011-D-all/nature2011-D-all-045.dcd"
OUTPUT_FILE="/scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-active-noNb-BI-nature2011/condition-D/rep_1/Prod_45/Prod_45_rewrapped.dcd"
python wrapAlign.py $TOP_FILE $TRAJ_FILE $OUTPUT_FILE

# Stripping water from rewrapped .dcd file and placing output file in same experiment fragment folder path
TRAJ_FILE="/scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-active-noNb-BI-nature2011/condition-D/rep_1/Prod_45/Prod_45_rewrapped.dcd"
OUTPUT_FILE_PATH="/scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-active-noNb-BI-nature2011/condition-D/rep_1/Prod_45/Prod_45_rewrapped_strip_waters.dcd"
python stripWaters.py -top $TOP_FILE -traj $TRAJ_FILE $OUTPUT_FILE_PATH


# Rewrapping original .dcd files and placing copy in output experiment fragment folder path
cd /scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-active-noNb-BI-nature2011/condition-D/rep_1
mkdir Prod_46
cd /scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicInteractions/tools
TOP_FILE="/scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-active-noNb-BI-nature2011/condition-D/step5_assembly.pdb"
TRAJ_FILE="/scratch/PI/rondror/DesRes-Simulations/ordered-from-DesRes/nature2011/DESRES-Trajectory_nature2011-D-all.1/nature2011-D-all/nature2011-D-all-046.dcd"
OUTPUT_FILE="/scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-active-noNb-BI-nature2011/condition-D/rep_1/Prod_46/Prod_46_rewrapped.dcd"
python wrapAlign.py $TOP_FILE $TRAJ_FILE $OUTPUT_FILE

# Stripping water from rewrapped .dcd file and placing output file in same experiment fragment folder path
TRAJ_FILE="/scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-active-noNb-BI-nature2011/condition-D/rep_1/Prod_46/Prod_46_rewrapped.dcd"
OUTPUT_FILE_PATH="/scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-active-noNb-BI-nature2011/condition-D/rep_1/Prod_46/Prod_46_rewrapped_strip_waters.dcd"
python stripWaters.py -top $TOP_FILE -traj $TRAJ_FILE $OUTPUT_FILE_PATH


# Rewrapping original .dcd files and placing copy in output experiment fragment folder path
cd /scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-active-noNb-BI-nature2011/condition-D/rep_1
mkdir Prod_47
cd /scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicInteractions/tools
TOP_FILE="/scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-active-noNb-BI-nature2011/condition-D/step5_assembly.pdb"
TRAJ_FILE="/scratch/PI/rondror/DesRes-Simulations/ordered-from-DesRes/nature2011/DESRES-Trajectory_nature2011-D-all.1/nature2011-D-all/nature2011-D-all-047.dcd"
OUTPUT_FILE="/scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-active-noNb-BI-nature2011/condition-D/rep_1/Prod_47/Prod_47_rewrapped.dcd"
python wrapAlign.py $TOP_FILE $TRAJ_FILE $OUTPUT_FILE

# Stripping water from rewrapped .dcd file and placing output file in same experiment fragment folder path
TRAJ_FILE="/scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-active-noNb-BI-nature2011/condition-D/rep_1/Prod_47/Prod_47_rewrapped.dcd"
OUTPUT_FILE_PATH="/scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-active-noNb-BI-nature2011/condition-D/rep_1/Prod_47/Prod_47_rewrapped_strip_waters.dcd"
python stripWaters.py -top $TOP_FILE -traj $TRAJ_FILE $OUTPUT_FILE_PATH


# Rewrapping original .dcd files and placing copy in output experiment fragment folder path
cd /scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-active-noNb-BI-nature2011/condition-D/rep_1
mkdir Prod_48
cd /scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicInteractions/tools
TOP_FILE="/scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-active-noNb-BI-nature2011/condition-D/step5_assembly.pdb"
TRAJ_FILE="/scratch/PI/rondror/DesRes-Simulations/ordered-from-DesRes/nature2011/DESRES-Trajectory_nature2011-D-all.1/nature2011-D-all/nature2011-D-all-048.dcd"
OUTPUT_FILE="/scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-active-noNb-BI-nature2011/condition-D/rep_1/Prod_48/Prod_48_rewrapped.dcd"
python wrapAlign.py $TOP_FILE $TRAJ_FILE $OUTPUT_FILE

# Stripping water from rewrapped .dcd file and placing output file in same experiment fragment folder path
TRAJ_FILE="/scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-active-noNb-BI-nature2011/condition-D/rep_1/Prod_48/Prod_48_rewrapped.dcd"
OUTPUT_FILE_PATH="/scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-active-noNb-BI-nature2011/condition-D/rep_1/Prod_48/Prod_48_rewrapped_strip_waters.dcd"
python stripWaters.py -top $TOP_FILE -traj $TRAJ_FILE $OUTPUT_FILE_PATH


# Rewrapping original .dcd files and placing copy in output experiment fragment folder path
cd /scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-active-noNb-BI-nature2011/condition-D/rep_1
mkdir Prod_49
cd /scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicInteractions/tools
TOP_FILE="/scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-active-noNb-BI-nature2011/condition-D/step5_assembly.pdb"
TRAJ_FILE="/scratch/PI/rondror/DesRes-Simulations/ordered-from-DesRes/nature2011/DESRES-Trajectory_nature2011-D-all.1/nature2011-D-all/nature2011-D-all-049.dcd"
OUTPUT_FILE="/scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-active-noNb-BI-nature2011/condition-D/rep_1/Prod_49/Prod_49_rewrapped.dcd"
python wrapAlign.py $TOP_FILE $TRAJ_FILE $OUTPUT_FILE

# Stripping water from rewrapped .dcd file and placing output file in same experiment fragment folder path
TRAJ_FILE="/scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-active-noNb-BI-nature2011/condition-D/rep_1/Prod_49/Prod_49_rewrapped.dcd"
OUTPUT_FILE_PATH="/scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-active-noNb-BI-nature2011/condition-D/rep_1/Prod_49/Prod_49_rewrapped_strip_waters.dcd"
python stripWaters.py -top $TOP_FILE -traj $TRAJ_FILE $OUTPUT_FILE_PATH


# Rewrapping original .dcd files and placing copy in output experiment fragment folder path
cd /scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-active-noNb-BI-nature2011/condition-D/rep_1
mkdir Prod_50
cd /scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicInteractions/tools
TOP_FILE="/scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-active-noNb-BI-nature2011/condition-D/step5_assembly.pdb"
TRAJ_FILE="/scratch/PI/rondror/DesRes-Simulations/ordered-from-DesRes/nature2011/DESRES-Trajectory_nature2011-D-all.1/nature2011-D-all/nature2011-D-all-050.dcd"
OUTPUT_FILE="/scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-active-noNb-BI-nature2011/condition-D/rep_1/Prod_50/Prod_50_rewrapped.dcd"
python wrapAlign.py $TOP_FILE $TRAJ_FILE $OUTPUT_FILE

# Stripping water from rewrapped .dcd file and placing output file in same experiment fragment folder path
TRAJ_FILE="/scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-active-noNb-BI-nature2011/condition-D/rep_1/Prod_50/Prod_50_rewrapped.dcd"
OUTPUT_FILE_PATH="/scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-active-noNb-BI-nature2011/condition-D/rep_1/Prod_50/Prod_50_rewrapped_strip_waters.dcd"
python stripWaters.py -top $TOP_FILE -traj $TRAJ_FILE $OUTPUT_FILE_PATH


# Rewrapping original .dcd files and placing copy in output experiment fragment folder path
cd /scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-active-noNb-BI-nature2011/condition-D/rep_1
mkdir Prod_51
cd /scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicInteractions/tools
TOP_FILE="/scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-active-noNb-BI-nature2011/condition-D/step5_assembly.pdb"
TRAJ_FILE="/scratch/PI/rondror/DesRes-Simulations/ordered-from-DesRes/nature2011/DESRES-Trajectory_nature2011-D-all.1/nature2011-D-all/nature2011-D-all-051.dcd"
OUTPUT_FILE="/scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-active-noNb-BI-nature2011/condition-D/rep_1/Prod_51/Prod_51_rewrapped.dcd"
python wrapAlign.py $TOP_FILE $TRAJ_FILE $OUTPUT_FILE

# Stripping water from rewrapped .dcd file and placing output file in same experiment fragment folder path
TRAJ_FILE="/scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-active-noNb-BI-nature2011/condition-D/rep_1/Prod_51/Prod_51_rewrapped.dcd"
OUTPUT_FILE_PATH="/scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-active-noNb-BI-nature2011/condition-D/rep_1/Prod_51/Prod_51_rewrapped_strip_waters.dcd"
python stripWaters.py -top $TOP_FILE -traj $TRAJ_FILE $OUTPUT_FILE_PATH


# Rewrapping original .dcd files and placing copy in output experiment fragment folder path
cd /scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-active-noNb-BI-nature2011/condition-D/rep_1
mkdir Prod_52
cd /scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicInteractions/tools
TOP_FILE="/scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-active-noNb-BI-nature2011/condition-D/step5_assembly.pdb"
TRAJ_FILE="/scratch/PI/rondror/DesRes-Simulations/ordered-from-DesRes/nature2011/DESRES-Trajectory_nature2011-D-all.1/nature2011-D-all/nature2011-D-all-052.dcd"
OUTPUT_FILE="/scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-active-noNb-BI-nature2011/condition-D/rep_1/Prod_52/Prod_52_rewrapped.dcd"
python wrapAlign.py $TOP_FILE $TRAJ_FILE $OUTPUT_FILE

# Stripping water from rewrapped .dcd file and placing output file in same experiment fragment folder path
TRAJ_FILE="/scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-active-noNb-BI-nature2011/condition-D/rep_1/Prod_52/Prod_52_rewrapped.dcd"
OUTPUT_FILE_PATH="/scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-active-noNb-BI-nature2011/condition-D/rep_1/Prod_52/Prod_52_rewrapped_strip_waters.dcd"
python stripWaters.py -top $TOP_FILE -traj $TRAJ_FILE $OUTPUT_FILE_PATH


# Rewrapping original .dcd files and placing copy in output experiment fragment folder path
cd /scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-active-noNb-BI-nature2011/condition-D/rep_1
mkdir Prod_53
cd /scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicInteractions/tools
TOP_FILE="/scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-active-noNb-BI-nature2011/condition-D/step5_assembly.pdb"
TRAJ_FILE="/scratch/PI/rondror/DesRes-Simulations/ordered-from-DesRes/nature2011/DESRES-Trajectory_nature2011-D-all.1/nature2011-D-all/nature2011-D-all-053.dcd"
OUTPUT_FILE="/scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-active-noNb-BI-nature2011/condition-D/rep_1/Prod_53/Prod_53_rewrapped.dcd"
python wrapAlign.py $TOP_FILE $TRAJ_FILE $OUTPUT_FILE

# Stripping water from rewrapped .dcd file and placing output file in same experiment fragment folder path
TRAJ_FILE="/scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-active-noNb-BI-nature2011/condition-D/rep_1/Prod_53/Prod_53_rewrapped.dcd"
OUTPUT_FILE_PATH="/scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-active-noNb-BI-nature2011/condition-D/rep_1/Prod_53/Prod_53_rewrapped_strip_waters.dcd"
python stripWaters.py -top $TOP_FILE -traj $TRAJ_FILE $OUTPUT_FILE_PATH


# Rewrapping original .dcd files and placing copy in output experiment fragment folder path
cd /scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-active-noNb-BI-nature2011/condition-D/rep_1
mkdir Prod_54
cd /scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicInteractions/tools
TOP_FILE="/scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-active-noNb-BI-nature2011/condition-D/step5_assembly.pdb"
TRAJ_FILE="/scratch/PI/rondror/DesRes-Simulations/ordered-from-DesRes/nature2011/DESRES-Trajectory_nature2011-D-all.1/nature2011-D-all/nature2011-D-all-054.dcd"
OUTPUT_FILE="/scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-active-noNb-BI-nature2011/condition-D/rep_1/Prod_54/Prod_54_rewrapped.dcd"
python wrapAlign.py $TOP_FILE $TRAJ_FILE $OUTPUT_FILE

# Stripping water from rewrapped .dcd file and placing output file in same experiment fragment folder path
TRAJ_FILE="/scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-active-noNb-BI-nature2011/condition-D/rep_1/Prod_54/Prod_54_rewrapped.dcd"
OUTPUT_FILE_PATH="/scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-active-noNb-BI-nature2011/condition-D/rep_1/Prod_54/Prod_54_rewrapped_strip_waters.dcd"
python stripWaters.py -top $TOP_FILE -traj $TRAJ_FILE $OUTPUT_FILE_PATH


# Rewrapping original .dcd files and placing copy in output experiment fragment folder path
cd /scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-active-noNb-BI-nature2011/condition-D/rep_1
mkdir Prod_55
cd /scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicInteractions/tools
TOP_FILE="/scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-active-noNb-BI-nature2011/condition-D/step5_assembly.pdb"
TRAJ_FILE="/scratch/PI/rondror/DesRes-Simulations/ordered-from-DesRes/nature2011/DESRES-Trajectory_nature2011-D-all.1/nature2011-D-all/nature2011-D-all-055.dcd"
OUTPUT_FILE="/scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-active-noNb-BI-nature2011/condition-D/rep_1/Prod_55/Prod_55_rewrapped.dcd"
python wrapAlign.py $TOP_FILE $TRAJ_FILE $OUTPUT_FILE

# Stripping water from rewrapped .dcd file and placing output file in same experiment fragment folder path
TRAJ_FILE="/scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-active-noNb-BI-nature2011/condition-D/rep_1/Prod_55/Prod_55_rewrapped.dcd"
OUTPUT_FILE_PATH="/scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-active-noNb-BI-nature2011/condition-D/rep_1/Prod_55/Prod_55_rewrapped_strip_waters.dcd"
python stripWaters.py -top $TOP_FILE -traj $TRAJ_FILE $OUTPUT_FILE_PATH


# Rewrapping original .dcd files and placing copy in output experiment fragment folder path
cd /scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-active-noNb-BI-nature2011/condition-D/rep_1
mkdir Prod_56
cd /scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicInteractions/tools
TOP_FILE="/scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-active-noNb-BI-nature2011/condition-D/step5_assembly.pdb"
TRAJ_FILE="/scratch/PI/rondror/DesRes-Simulations/ordered-from-DesRes/nature2011/DESRES-Trajectory_nature2011-D-all.1/nature2011-D-all/nature2011-D-all-056.dcd"
OUTPUT_FILE="/scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-active-noNb-BI-nature2011/condition-D/rep_1/Prod_56/Prod_56_rewrapped.dcd"
python wrapAlign.py $TOP_FILE $TRAJ_FILE $OUTPUT_FILE

# Stripping water from rewrapped .dcd file and placing output file in same experiment fragment folder path
TRAJ_FILE="/scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-active-noNb-BI-nature2011/condition-D/rep_1/Prod_56/Prod_56_rewrapped.dcd"
OUTPUT_FILE_PATH="/scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-active-noNb-BI-nature2011/condition-D/rep_1/Prod_56/Prod_56_rewrapped_strip_waters.dcd"
python stripWaters.py -top $TOP_FILE -traj $TRAJ_FILE $OUTPUT_FILE_PATH


# Rewrapping original .dcd files and placing copy in output experiment fragment folder path
cd /scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-active-noNb-BI-nature2011/condition-D/rep_1
mkdir Prod_57
cd /scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicInteractions/tools
TOP_FILE="/scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-active-noNb-BI-nature2011/condition-D/step5_assembly.pdb"
TRAJ_FILE="/scratch/PI/rondror/DesRes-Simulations/ordered-from-DesRes/nature2011/DESRES-Trajectory_nature2011-D-all.1/nature2011-D-all/nature2011-D-all-057.dcd"
OUTPUT_FILE="/scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-active-noNb-BI-nature2011/condition-D/rep_1/Prod_57/Prod_57_rewrapped.dcd"
python wrapAlign.py $TOP_FILE $TRAJ_FILE $OUTPUT_FILE

# Stripping water from rewrapped .dcd file and placing output file in same experiment fragment folder path
TRAJ_FILE="/scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-active-noNb-BI-nature2011/condition-D/rep_1/Prod_57/Prod_57_rewrapped.dcd"
OUTPUT_FILE_PATH="/scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-active-noNb-BI-nature2011/condition-D/rep_1/Prod_57/Prod_57_rewrapped_strip_waters.dcd"
python stripWaters.py -top $TOP_FILE -traj $TRAJ_FILE $OUTPUT_FILE_PATH


# Rewrapping original .dcd files and placing copy in output experiment fragment folder path
cd /scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-active-noNb-BI-nature2011/condition-D/rep_1
mkdir Prod_58
cd /scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicInteractions/tools
TOP_FILE="/scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-active-noNb-BI-nature2011/condition-D/step5_assembly.pdb"
TRAJ_FILE="/scratch/PI/rondror/DesRes-Simulations/ordered-from-DesRes/nature2011/DESRES-Trajectory_nature2011-D-all.1/nature2011-D-all/nature2011-D-all-058.dcd"
OUTPUT_FILE="/scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-active-noNb-BI-nature2011/condition-D/rep_1/Prod_58/Prod_58_rewrapped.dcd"
python wrapAlign.py $TOP_FILE $TRAJ_FILE $OUTPUT_FILE

# Stripping water from rewrapped .dcd file and placing output file in same experiment fragment folder path
TRAJ_FILE="/scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-active-noNb-BI-nature2011/condition-D/rep_1/Prod_58/Prod_58_rewrapped.dcd"
OUTPUT_FILE_PATH="/scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-active-noNb-BI-nature2011/condition-D/rep_1/Prod_58/Prod_58_rewrapped_strip_waters.dcd"
python stripWaters.py -top $TOP_FILE -traj $TRAJ_FILE $OUTPUT_FILE_PATH


# Rewrapping original .dcd files and placing copy in output experiment fragment folder path
cd /scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-active-noNb-BI-nature2011/condition-D/rep_1
mkdir Prod_59
cd /scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicInteractions/tools
TOP_FILE="/scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-active-noNb-BI-nature2011/condition-D/step5_assembly.pdb"
TRAJ_FILE="/scratch/PI/rondror/DesRes-Simulations/ordered-from-DesRes/nature2011/DESRES-Trajectory_nature2011-D-all.1/nature2011-D-all/nature2011-D-all-059.dcd"
OUTPUT_FILE="/scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-active-noNb-BI-nature2011/condition-D/rep_1/Prod_59/Prod_59_rewrapped.dcd"
python wrapAlign.py $TOP_FILE $TRAJ_FILE $OUTPUT_FILE

# Stripping water from rewrapped .dcd file and placing output file in same experiment fragment folder path
TRAJ_FILE="/scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-active-noNb-BI-nature2011/condition-D/rep_1/Prod_59/Prod_59_rewrapped.dcd"
OUTPUT_FILE_PATH="/scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-active-noNb-BI-nature2011/condition-D/rep_1/Prod_59/Prod_59_rewrapped_strip_waters.dcd"
python stripWaters.py -top $TOP_FILE -traj $TRAJ_FILE $OUTPUT_FILE_PATH


# Rewrapping original .dcd files and placing copy in output experiment fragment folder path
cd /scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-active-noNb-BI-nature2011/condition-D/rep_1
mkdir Prod_60
cd /scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicInteractions/tools
TOP_FILE="/scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-active-noNb-BI-nature2011/condition-D/step5_assembly.pdb"
TRAJ_FILE="/scratch/PI/rondror/DesRes-Simulations/ordered-from-DesRes/nature2011/DESRES-Trajectory_nature2011-D-all.1/nature2011-D-all/nature2011-D-all-060.dcd"
OUTPUT_FILE="/scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-active-noNb-BI-nature2011/condition-D/rep_1/Prod_60/Prod_60_rewrapped.dcd"
python wrapAlign.py $TOP_FILE $TRAJ_FILE $OUTPUT_FILE

# Stripping water from rewrapped .dcd file and placing output file in same experiment fragment folder path
TRAJ_FILE="/scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-active-noNb-BI-nature2011/condition-D/rep_1/Prod_60/Prod_60_rewrapped.dcd"
OUTPUT_FILE_PATH="/scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-active-noNb-BI-nature2011/condition-D/rep_1/Prod_60/Prod_60_rewrapped_strip_waters.dcd"
python stripWaters.py -top $TOP_FILE -traj $TRAJ_FILE $OUTPUT_FILE_PATH


# Rewrapping original .dcd files and placing copy in output experiment fragment folder path
cd /scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-active-noNb-BI-nature2011/condition-D/rep_1
mkdir Prod_61
cd /scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicInteractions/tools
TOP_FILE="/scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-active-noNb-BI-nature2011/condition-D/step5_assembly.pdb"
TRAJ_FILE="/scratch/PI/rondror/DesRes-Simulations/ordered-from-DesRes/nature2011/DESRES-Trajectory_nature2011-D-all.1/nature2011-D-all/nature2011-D-all-061.dcd"
OUTPUT_FILE="/scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-active-noNb-BI-nature2011/condition-D/rep_1/Prod_61/Prod_61_rewrapped.dcd"
python wrapAlign.py $TOP_FILE $TRAJ_FILE $OUTPUT_FILE

# Stripping water from rewrapped .dcd file and placing output file in same experiment fragment folder path
TRAJ_FILE="/scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-active-noNb-BI-nature2011/condition-D/rep_1/Prod_61/Prod_61_rewrapped.dcd"
OUTPUT_FILE_PATH="/scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-active-noNb-BI-nature2011/condition-D/rep_1/Prod_61/Prod_61_rewrapped_strip_waters.dcd"
python stripWaters.py -top $TOP_FILE -traj $TRAJ_FILE $OUTPUT_FILE_PATH


# Rewrapping original .dcd files and placing copy in output experiment fragment folder path
cd /scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-active-noNb-BI-nature2011/condition-D/rep_1
mkdir Prod_62
cd /scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicInteractions/tools
TOP_FILE="/scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-active-noNb-BI-nature2011/condition-D/step5_assembly.pdb"
TRAJ_FILE="/scratch/PI/rondror/DesRes-Simulations/ordered-from-DesRes/nature2011/DESRES-Trajectory_nature2011-D-all.1/nature2011-D-all/nature2011-D-all-062.dcd"
OUTPUT_FILE="/scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-active-noNb-BI-nature2011/condition-D/rep_1/Prod_62/Prod_62_rewrapped.dcd"
python wrapAlign.py $TOP_FILE $TRAJ_FILE $OUTPUT_FILE

# Stripping water from rewrapped .dcd file and placing output file in same experiment fragment folder path
TRAJ_FILE="/scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-active-noNb-BI-nature2011/condition-D/rep_1/Prod_62/Prod_62_rewrapped.dcd"
OUTPUT_FILE_PATH="/scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-active-noNb-BI-nature2011/condition-D/rep_1/Prod_62/Prod_62_rewrapped_strip_waters.dcd"
python stripWaters.py -top $TOP_FILE -traj $TRAJ_FILE $OUTPUT_FILE_PATH


# Rewrapping original .dcd files and placing copy in output experiment fragment folder path
cd /scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-active-noNb-BI-nature2011/condition-D/rep_1
mkdir Prod_63
cd /scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicInteractions/tools
TOP_FILE="/scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-active-noNb-BI-nature2011/condition-D/step5_assembly.pdb"
TRAJ_FILE="/scratch/PI/rondror/DesRes-Simulations/ordered-from-DesRes/nature2011/DESRES-Trajectory_nature2011-D-all.1/nature2011-D-all/nature2011-D-all-063.dcd"
OUTPUT_FILE="/scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-active-noNb-BI-nature2011/condition-D/rep_1/Prod_63/Prod_63_rewrapped.dcd"
python wrapAlign.py $TOP_FILE $TRAJ_FILE $OUTPUT_FILE

# Stripping water from rewrapped .dcd file and placing output file in same experiment fragment folder path
TRAJ_FILE="/scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-active-noNb-BI-nature2011/condition-D/rep_1/Prod_63/Prod_63_rewrapped.dcd"
OUTPUT_FILE_PATH="/scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-active-noNb-BI-nature2011/condition-D/rep_1/Prod_63/Prod_63_rewrapped_strip_waters.dcd"
python stripWaters.py -top $TOP_FILE -traj $TRAJ_FILE $OUTPUT_FILE_PATH


# Rewrapping original .dcd files and placing copy in output experiment fragment folder path
cd /scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-active-noNb-BI-nature2011/condition-D/rep_1
mkdir Prod_64
cd /scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicInteractions/tools
TOP_FILE="/scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-active-noNb-BI-nature2011/condition-D/step5_assembly.pdb"
TRAJ_FILE="/scratch/PI/rondror/DesRes-Simulations/ordered-from-DesRes/nature2011/DESRES-Trajectory_nature2011-D-all.1/nature2011-D-all/nature2011-D-all-064.dcd"
OUTPUT_FILE="/scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-active-noNb-BI-nature2011/condition-D/rep_1/Prod_64/Prod_64_rewrapped.dcd"
python wrapAlign.py $TOP_FILE $TRAJ_FILE $OUTPUT_FILE

# Stripping water from rewrapped .dcd file and placing output file in same experiment fragment folder path
TRAJ_FILE="/scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-active-noNb-BI-nature2011/condition-D/rep_1/Prod_64/Prod_64_rewrapped.dcd"
OUTPUT_FILE_PATH="/scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-active-noNb-BI-nature2011/condition-D/rep_1/Prod_64/Prod_64_rewrapped_strip_waters.dcd"
python stripWaters.py -top $TOP_FILE -traj $TRAJ_FILE $OUTPUT_FILE_PATH


# Rewrapping original .dcd files and placing copy in output experiment fragment folder path
cd /scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-active-noNb-BI-nature2011/condition-D/rep_1
mkdir Prod_65
cd /scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicInteractions/tools
TOP_FILE="/scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-active-noNb-BI-nature2011/condition-D/step5_assembly.pdb"
TRAJ_FILE="/scratch/PI/rondror/DesRes-Simulations/ordered-from-DesRes/nature2011/DESRES-Trajectory_nature2011-D-all.1/nature2011-D-all/nature2011-D-all-065.dcd"
OUTPUT_FILE="/scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-active-noNb-BI-nature2011/condition-D/rep_1/Prod_65/Prod_65_rewrapped.dcd"
python wrapAlign.py $TOP_FILE $TRAJ_FILE $OUTPUT_FILE

# Stripping water from rewrapped .dcd file and placing output file in same experiment fragment folder path
TRAJ_FILE="/scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-active-noNb-BI-nature2011/condition-D/rep_1/Prod_65/Prod_65_rewrapped.dcd"
OUTPUT_FILE_PATH="/scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-active-noNb-BI-nature2011/condition-D/rep_1/Prod_65/Prod_65_rewrapped_strip_waters.dcd"
python stripWaters.py -top $TOP_FILE -traj $TRAJ_FILE $OUTPUT_FILE_PATH


# Rewrapping original .dcd files and placing copy in output experiment fragment folder path
cd /scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-active-noNb-BI-nature2011/condition-D/rep_1
mkdir Prod_66
cd /scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicInteractions/tools
TOP_FILE="/scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-active-noNb-BI-nature2011/condition-D/step5_assembly.pdb"
TRAJ_FILE="/scratch/PI/rondror/DesRes-Simulations/ordered-from-DesRes/nature2011/DESRES-Trajectory_nature2011-D-all.1/nature2011-D-all/nature2011-D-all-066.dcd"
OUTPUT_FILE="/scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-active-noNb-BI-nature2011/condition-D/rep_1/Prod_66/Prod_66_rewrapped.dcd"
python wrapAlign.py $TOP_FILE $TRAJ_FILE $OUTPUT_FILE

# Stripping water from rewrapped .dcd file and placing output file in same experiment fragment folder path
TRAJ_FILE="/scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-active-noNb-BI-nature2011/condition-D/rep_1/Prod_66/Prod_66_rewrapped.dcd"
OUTPUT_FILE_PATH="/scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-active-noNb-BI-nature2011/condition-D/rep_1/Prod_66/Prod_66_rewrapped_strip_waters.dcd"
python stripWaters.py -top $TOP_FILE -traj $TRAJ_FILE $OUTPUT_FILE_PATH


# Rewrapping original .dcd files and placing copy in output experiment fragment folder path
cd /scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-active-noNb-BI-nature2011/condition-D/rep_1
mkdir Prod_67
cd /scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicInteractions/tools
TOP_FILE="/scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-active-noNb-BI-nature2011/condition-D/step5_assembly.pdb"
TRAJ_FILE="/scratch/PI/rondror/DesRes-Simulations/ordered-from-DesRes/nature2011/DESRES-Trajectory_nature2011-D-all.1/nature2011-D-all/nature2011-D-all-067.dcd"
OUTPUT_FILE="/scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-active-noNb-BI-nature2011/condition-D/rep_1/Prod_67/Prod_67_rewrapped.dcd"
python wrapAlign.py $TOP_FILE $TRAJ_FILE $OUTPUT_FILE

# Stripping water from rewrapped .dcd file and placing output file in same experiment fragment folder path
TRAJ_FILE="/scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-active-noNb-BI-nature2011/condition-D/rep_1/Prod_67/Prod_67_rewrapped.dcd"
OUTPUT_FILE_PATH="/scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-active-noNb-BI-nature2011/condition-D/rep_1/Prod_67/Prod_67_rewrapped_strip_waters.dcd"
python stripWaters.py -top $TOP_FILE -traj $TRAJ_FILE $OUTPUT_FILE_PATH


# Rewrapping original .dcd files and placing copy in output experiment fragment folder path
cd /scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-active-noNb-BI-nature2011/condition-D/rep_1
mkdir Prod_68
cd /scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicInteractions/tools
TOP_FILE="/scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-active-noNb-BI-nature2011/condition-D/step5_assembly.pdb"
TRAJ_FILE="/scratch/PI/rondror/DesRes-Simulations/ordered-from-DesRes/nature2011/DESRES-Trajectory_nature2011-D-all.1/nature2011-D-all/nature2011-D-all-068.dcd"
OUTPUT_FILE="/scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-active-noNb-BI-nature2011/condition-D/rep_1/Prod_68/Prod_68_rewrapped.dcd"
python wrapAlign.py $TOP_FILE $TRAJ_FILE $OUTPUT_FILE

# Stripping water from rewrapped .dcd file and placing output file in same experiment fragment folder path
TRAJ_FILE="/scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-active-noNb-BI-nature2011/condition-D/rep_1/Prod_68/Prod_68_rewrapped.dcd"
OUTPUT_FILE_PATH="/scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-active-noNb-BI-nature2011/condition-D/rep_1/Prod_68/Prod_68_rewrapped_strip_waters.dcd"
python stripWaters.py -top $TOP_FILE -traj $TRAJ_FILE $OUTPUT_FILE_PATH


# Rewrapping original .dcd files and placing copy in output experiment fragment folder path
cd /scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-active-noNb-BI-nature2011/condition-D/rep_1
mkdir Prod_69
cd /scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicInteractions/tools
TOP_FILE="/scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-active-noNb-BI-nature2011/condition-D/step5_assembly.pdb"
TRAJ_FILE="/scratch/PI/rondror/DesRes-Simulations/ordered-from-DesRes/nature2011/DESRES-Trajectory_nature2011-D-all.1/nature2011-D-all/nature2011-D-all-069.dcd"
OUTPUT_FILE="/scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-active-noNb-BI-nature2011/condition-D/rep_1/Prod_69/Prod_69_rewrapped.dcd"
python wrapAlign.py $TOP_FILE $TRAJ_FILE $OUTPUT_FILE

# Stripping water from rewrapped .dcd file and placing output file in same experiment fragment folder path
TRAJ_FILE="/scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-active-noNb-BI-nature2011/condition-D/rep_1/Prod_69/Prod_69_rewrapped.dcd"
OUTPUT_FILE_PATH="/scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-active-noNb-BI-nature2011/condition-D/rep_1/Prod_69/Prod_69_rewrapped_strip_waters.dcd"
python stripWaters.py -top $TOP_FILE -traj $TRAJ_FILE $OUTPUT_FILE_PATH


# Rewrapping original .dcd files and placing copy in output experiment fragment folder path
cd /scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-active-noNb-BI-nature2011/condition-D/rep_1
mkdir Prod_70
cd /scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicInteractions/tools
TOP_FILE="/scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-active-noNb-BI-nature2011/condition-D/step5_assembly.pdb"
TRAJ_FILE="/scratch/PI/rondror/DesRes-Simulations/ordered-from-DesRes/nature2011/DESRES-Trajectory_nature2011-D-all.1/nature2011-D-all/nature2011-D-all-070.dcd"
OUTPUT_FILE="/scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-active-noNb-BI-nature2011/condition-D/rep_1/Prod_70/Prod_70_rewrapped.dcd"
python wrapAlign.py $TOP_FILE $TRAJ_FILE $OUTPUT_FILE

# Stripping water from rewrapped .dcd file and placing output file in same experiment fragment folder path
TRAJ_FILE="/scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-active-noNb-BI-nature2011/condition-D/rep_1/Prod_70/Prod_70_rewrapped.dcd"
OUTPUT_FILE_PATH="/scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-active-noNb-BI-nature2011/condition-D/rep_1/Prod_70/Prod_70_rewrapped_strip_waters.dcd"
python stripWaters.py -top $TOP_FILE -traj $TRAJ_FILE $OUTPUT_FILE_PATH


# Rewrapping original .dcd files and placing copy in output experiment fragment folder path
cd /scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-active-noNb-BI-nature2011/condition-D/rep_1
mkdir Prod_71
cd /scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicInteractions/tools
TOP_FILE="/scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-active-noNb-BI-nature2011/condition-D/step5_assembly.pdb"
TRAJ_FILE="/scratch/PI/rondror/DesRes-Simulations/ordered-from-DesRes/nature2011/DESRES-Trajectory_nature2011-D-all.1/nature2011-D-all/nature2011-D-all-071.dcd"
OUTPUT_FILE="/scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-active-noNb-BI-nature2011/condition-D/rep_1/Prod_71/Prod_71_rewrapped.dcd"
python wrapAlign.py $TOP_FILE $TRAJ_FILE $OUTPUT_FILE

# Stripping water from rewrapped .dcd file and placing output file in same experiment fragment folder path
TRAJ_FILE="/scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-active-noNb-BI-nature2011/condition-D/rep_1/Prod_71/Prod_71_rewrapped.dcd"
OUTPUT_FILE_PATH="/scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-active-noNb-BI-nature2011/condition-D/rep_1/Prod_71/Prod_71_rewrapped_strip_waters.dcd"
python stripWaters.py -top $TOP_FILE -traj $TRAJ_FILE $OUTPUT_FILE_PATH


# Rewrapping original .dcd files and placing copy in output experiment fragment folder path
cd /scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-active-noNb-BI-nature2011/condition-D/rep_1
mkdir Prod_72
cd /scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicInteractions/tools
TOP_FILE="/scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-active-noNb-BI-nature2011/condition-D/step5_assembly.pdb"
TRAJ_FILE="/scratch/PI/rondror/DesRes-Simulations/ordered-from-DesRes/nature2011/DESRES-Trajectory_nature2011-D-all.1/nature2011-D-all/nature2011-D-all-072.dcd"
OUTPUT_FILE="/scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-active-noNb-BI-nature2011/condition-D/rep_1/Prod_72/Prod_72_rewrapped.dcd"
python wrapAlign.py $TOP_FILE $TRAJ_FILE $OUTPUT_FILE

# Stripping water from rewrapped .dcd file and placing output file in same experiment fragment folder path
TRAJ_FILE="/scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-active-noNb-BI-nature2011/condition-D/rep_1/Prod_72/Prod_72_rewrapped.dcd"
OUTPUT_FILE_PATH="/scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-active-noNb-BI-nature2011/condition-D/rep_1/Prod_72/Prod_72_rewrapped_strip_waters.dcd"
python stripWaters.py -top $TOP_FILE -traj $TRAJ_FILE $OUTPUT_FILE_PATH


# Rewrapping original .dcd files and placing copy in output experiment fragment folder path
cd /scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-active-noNb-BI-nature2011/condition-D/rep_1
mkdir Prod_73
cd /scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicInteractions/tools
TOP_FILE="/scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-active-noNb-BI-nature2011/condition-D/step5_assembly.pdb"
TRAJ_FILE="/scratch/PI/rondror/DesRes-Simulations/ordered-from-DesRes/nature2011/DESRES-Trajectory_nature2011-D-all.1/nature2011-D-all/nature2011-D-all-073.dcd"
OUTPUT_FILE="/scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-active-noNb-BI-nature2011/condition-D/rep_1/Prod_73/Prod_73_rewrapped.dcd"
python wrapAlign.py $TOP_FILE $TRAJ_FILE $OUTPUT_FILE

# Stripping water from rewrapped .dcd file and placing output file in same experiment fragment folder path
TRAJ_FILE="/scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-active-noNb-BI-nature2011/condition-D/rep_1/Prod_73/Prod_73_rewrapped.dcd"
OUTPUT_FILE_PATH="/scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-active-noNb-BI-nature2011/condition-D/rep_1/Prod_73/Prod_73_rewrapped_strip_waters.dcd"
python stripWaters.py -top $TOP_FILE -traj $TRAJ_FILE $OUTPUT_FILE_PATH


# Rewrapping original .dcd files and placing copy in output experiment fragment folder path
cd /scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-active-noNb-BI-nature2011/condition-D/rep_1
mkdir Prod_74
cd /scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicInteractions/tools
TOP_FILE="/scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-active-noNb-BI-nature2011/condition-D/step5_assembly.pdb"
TRAJ_FILE="/scratch/PI/rondror/DesRes-Simulations/ordered-from-DesRes/nature2011/DESRES-Trajectory_nature2011-D-all.1/nature2011-D-all/nature2011-D-all-074.dcd"
OUTPUT_FILE="/scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-active-noNb-BI-nature2011/condition-D/rep_1/Prod_74/Prod_74_rewrapped.dcd"
python wrapAlign.py $TOP_FILE $TRAJ_FILE $OUTPUT_FILE

# Stripping water from rewrapped .dcd file and placing output file in same experiment fragment folder path
TRAJ_FILE="/scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-active-noNb-BI-nature2011/condition-D/rep_1/Prod_74/Prod_74_rewrapped.dcd"
OUTPUT_FILE_PATH="/scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-active-noNb-BI-nature2011/condition-D/rep_1/Prod_74/Prod_74_rewrapped_strip_waters.dcd"
python stripWaters.py -top $TOP_FILE -traj $TRAJ_FILE $OUTPUT_FILE_PATH


# Rewrapping original .dcd files and placing copy in output experiment fragment folder path
cd /scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-active-noNb-BI-nature2011/condition-D/rep_1
mkdir Prod_75
cd /scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicInteractions/tools
TOP_FILE="/scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-active-noNb-BI-nature2011/condition-D/step5_assembly.pdb"
TRAJ_FILE="/scratch/PI/rondror/DesRes-Simulations/ordered-from-DesRes/nature2011/DESRES-Trajectory_nature2011-D-all.1/nature2011-D-all/nature2011-D-all-075.dcd"
OUTPUT_FILE="/scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-active-noNb-BI-nature2011/condition-D/rep_1/Prod_75/Prod_75_rewrapped.dcd"
python wrapAlign.py $TOP_FILE $TRAJ_FILE $OUTPUT_FILE

# Stripping water from rewrapped .dcd file and placing output file in same experiment fragment folder path
TRAJ_FILE="/scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-active-noNb-BI-nature2011/condition-D/rep_1/Prod_75/Prod_75_rewrapped.dcd"
OUTPUT_FILE_PATH="/scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-active-noNb-BI-nature2011/condition-D/rep_1/Prod_75/Prod_75_rewrapped_strip_waters.dcd"
python stripWaters.py -top $TOP_FILE -traj $TRAJ_FILE $OUTPUT_FILE_PATH


# Rewrapping original .dcd files and placing copy in output experiment fragment folder path
cd /scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-active-noNb-BI-nature2011/condition-D/rep_1
mkdir Prod_76
cd /scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicInteractions/tools
TOP_FILE="/scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-active-noNb-BI-nature2011/condition-D/step5_assembly.pdb"
TRAJ_FILE="/scratch/PI/rondror/DesRes-Simulations/ordered-from-DesRes/nature2011/DESRES-Trajectory_nature2011-D-all.1/nature2011-D-all/nature2011-D-all-076.dcd"
OUTPUT_FILE="/scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-active-noNb-BI-nature2011/condition-D/rep_1/Prod_76/Prod_76_rewrapped.dcd"
python wrapAlign.py $TOP_FILE $TRAJ_FILE $OUTPUT_FILE

# Stripping water from rewrapped .dcd file and placing output file in same experiment fragment folder path
TRAJ_FILE="/scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-active-noNb-BI-nature2011/condition-D/rep_1/Prod_76/Prod_76_rewrapped.dcd"
OUTPUT_FILE_PATH="/scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-active-noNb-BI-nature2011/condition-D/rep_1/Prod_76/Prod_76_rewrapped_strip_waters.dcd"
python stripWaters.py -top $TOP_FILE -traj $TRAJ_FILE $OUTPUT_FILE_PATH


# Rewrapping original .dcd files and placing copy in output experiment fragment folder path
cd /scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-active-noNb-BI-nature2011/condition-D/rep_1
mkdir Prod_77
cd /scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicInteractions/tools
TOP_FILE="/scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-active-noNb-BI-nature2011/condition-D/step5_assembly.pdb"
TRAJ_FILE="/scratch/PI/rondror/DesRes-Simulations/ordered-from-DesRes/nature2011/DESRES-Trajectory_nature2011-D-all.1/nature2011-D-all/nature2011-D-all-077.dcd"
OUTPUT_FILE="/scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-active-noNb-BI-nature2011/condition-D/rep_1/Prod_77/Prod_77_rewrapped.dcd"
python wrapAlign.py $TOP_FILE $TRAJ_FILE $OUTPUT_FILE

# Stripping water from rewrapped .dcd file and placing output file in same experiment fragment folder path
TRAJ_FILE="/scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-active-noNb-BI-nature2011/condition-D/rep_1/Prod_77/Prod_77_rewrapped.dcd"
OUTPUT_FILE_PATH="/scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-active-noNb-BI-nature2011/condition-D/rep_1/Prod_77/Prod_77_rewrapped_strip_waters.dcd"
python stripWaters.py -top $TOP_FILE -traj $TRAJ_FILE $OUTPUT_FILE_PATH


# Rewrapping original .dcd files and placing copy in output experiment fragment folder path
cd /scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-active-noNb-BI-nature2011/condition-D/rep_1
mkdir Prod_78
cd /scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicInteractions/tools
TOP_FILE="/scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-active-noNb-BI-nature2011/condition-D/step5_assembly.pdb"
TRAJ_FILE="/scratch/PI/rondror/DesRes-Simulations/ordered-from-DesRes/nature2011/DESRES-Trajectory_nature2011-D-all.1/nature2011-D-all/nature2011-D-all-078.dcd"
OUTPUT_FILE="/scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-active-noNb-BI-nature2011/condition-D/rep_1/Prod_78/Prod_78_rewrapped.dcd"
python wrapAlign.py $TOP_FILE $TRAJ_FILE $OUTPUT_FILE

# Stripping water from rewrapped .dcd file and placing output file in same experiment fragment folder path
TRAJ_FILE="/scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-active-noNb-BI-nature2011/condition-D/rep_1/Prod_78/Prod_78_rewrapped.dcd"
OUTPUT_FILE_PATH="/scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-active-noNb-BI-nature2011/condition-D/rep_1/Prod_78/Prod_78_rewrapped_strip_waters.dcd"
python stripWaters.py -top $TOP_FILE -traj $TRAJ_FILE $OUTPUT_FILE_PATH


# Rewrapping original .dcd files and placing copy in output experiment fragment folder path
cd /scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-active-noNb-BI-nature2011/condition-D/rep_1
mkdir Prod_79
cd /scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicInteractions/tools
TOP_FILE="/scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-active-noNb-BI-nature2011/condition-D/step5_assembly.pdb"
TRAJ_FILE="/scratch/PI/rondror/DesRes-Simulations/ordered-from-DesRes/nature2011/DESRES-Trajectory_nature2011-D-all.1/nature2011-D-all/nature2011-D-all-079.dcd"
OUTPUT_FILE="/scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-active-noNb-BI-nature2011/condition-D/rep_1/Prod_79/Prod_79_rewrapped.dcd"
python wrapAlign.py $TOP_FILE $TRAJ_FILE $OUTPUT_FILE

# Stripping water from rewrapped .dcd file and placing output file in same experiment fragment folder path
TRAJ_FILE="/scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-active-noNb-BI-nature2011/condition-D/rep_1/Prod_79/Prod_79_rewrapped.dcd"
OUTPUT_FILE_PATH="/scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-active-noNb-BI-nature2011/condition-D/rep_1/Prod_79/Prod_79_rewrapped_strip_waters.dcd"
python stripWaters.py -top $TOP_FILE -traj $TRAJ_FILE $OUTPUT_FILE_PATH


# Rewrapping original .dcd files and placing copy in output experiment fragment folder path
cd /scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-active-noNb-BI-nature2011/condition-D/rep_1
mkdir Prod_80
cd /scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicInteractions/tools
TOP_FILE="/scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-active-noNb-BI-nature2011/condition-D/step5_assembly.pdb"
TRAJ_FILE="/scratch/PI/rondror/DesRes-Simulations/ordered-from-DesRes/nature2011/DESRES-Trajectory_nature2011-D-all.1/nature2011-D-all/nature2011-D-all-080.dcd"
OUTPUT_FILE="/scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-active-noNb-BI-nature2011/condition-D/rep_1/Prod_80/Prod_80_rewrapped.dcd"
python wrapAlign.py $TOP_FILE $TRAJ_FILE $OUTPUT_FILE

# Stripping water from rewrapped .dcd file and placing output file in same experiment fragment folder path
TRAJ_FILE="/scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-active-noNb-BI-nature2011/condition-D/rep_1/Prod_80/Prod_80_rewrapped.dcd"
OUTPUT_FILE_PATH="/scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-active-noNb-BI-nature2011/condition-D/rep_1/Prod_80/Prod_80_rewrapped_strip_waters.dcd"
python stripWaters.py -top $TOP_FILE -traj $TRAJ_FILE $OUTPUT_FILE_PATH


# Rewrapping original .dcd files and placing copy in output experiment fragment folder path
cd /scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-active-noNb-BI-nature2011/condition-D/rep_1
mkdir Prod_81
cd /scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicInteractions/tools
TOP_FILE="/scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-active-noNb-BI-nature2011/condition-D/step5_assembly.pdb"
TRAJ_FILE="/scratch/PI/rondror/DesRes-Simulations/ordered-from-DesRes/nature2011/DESRES-Trajectory_nature2011-D-all.1/nature2011-D-all/nature2011-D-all-081.dcd"
OUTPUT_FILE="/scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-active-noNb-BI-nature2011/condition-D/rep_1/Prod_81/Prod_81_rewrapped.dcd"
python wrapAlign.py $TOP_FILE $TRAJ_FILE $OUTPUT_FILE

# Stripping water from rewrapped .dcd file and placing output file in same experiment fragment folder path
TRAJ_FILE="/scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-active-noNb-BI-nature2011/condition-D/rep_1/Prod_81/Prod_81_rewrapped.dcd"
OUTPUT_FILE_PATH="/scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-active-noNb-BI-nature2011/condition-D/rep_1/Prod_81/Prod_81_rewrapped_strip_waters.dcd"
python stripWaters.py -top $TOP_FILE -traj $TRAJ_FILE $OUTPUT_FILE_PATH


# Rewrapping original .dcd files and placing copy in output experiment fragment folder path
cd /scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-active-noNb-BI-nature2011/condition-D/rep_1
mkdir Prod_82
cd /scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicInteractions/tools
TOP_FILE="/scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-active-noNb-BI-nature2011/condition-D/step5_assembly.pdb"
TRAJ_FILE="/scratch/PI/rondror/DesRes-Simulations/ordered-from-DesRes/nature2011/DESRES-Trajectory_nature2011-D-all.1/nature2011-D-all/nature2011-D-all-082.dcd"
OUTPUT_FILE="/scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-active-noNb-BI-nature2011/condition-D/rep_1/Prod_82/Prod_82_rewrapped.dcd"
python wrapAlign.py $TOP_FILE $TRAJ_FILE $OUTPUT_FILE

# Stripping water from rewrapped .dcd file and placing output file in same experiment fragment folder path
TRAJ_FILE="/scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-active-noNb-BI-nature2011/condition-D/rep_1/Prod_82/Prod_82_rewrapped.dcd"
OUTPUT_FILE_PATH="/scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-active-noNb-BI-nature2011/condition-D/rep_1/Prod_82/Prod_82_rewrapped_strip_waters.dcd"
python stripWaters.py -top $TOP_FILE -traj $TRAJ_FILE $OUTPUT_FILE_PATH


# Rewrapping original .dcd files and placing copy in output experiment fragment folder path
cd /scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-active-noNb-BI-nature2011/condition-D/rep_1
mkdir Prod_83
cd /scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicInteractions/tools
TOP_FILE="/scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-active-noNb-BI-nature2011/condition-D/step5_assembly.pdb"
TRAJ_FILE="/scratch/PI/rondror/DesRes-Simulations/ordered-from-DesRes/nature2011/DESRES-Trajectory_nature2011-D-all.1/nature2011-D-all/nature2011-D-all-083.dcd"
OUTPUT_FILE="/scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-active-noNb-BI-nature2011/condition-D/rep_1/Prod_83/Prod_83_rewrapped.dcd"
python wrapAlign.py $TOP_FILE $TRAJ_FILE $OUTPUT_FILE

# Stripping water from rewrapped .dcd file and placing output file in same experiment fragment folder path
TRAJ_FILE="/scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-active-noNb-BI-nature2011/condition-D/rep_1/Prod_83/Prod_83_rewrapped.dcd"
OUTPUT_FILE_PATH="/scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-active-noNb-BI-nature2011/condition-D/rep_1/Prod_83/Prod_83_rewrapped_strip_waters.dcd"
python stripWaters.py -top $TOP_FILE -traj $TRAJ_FILE $OUTPUT_FILE_PATH


# Rewrapping original .dcd files and placing copy in output experiment fragment folder path
cd /scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-active-noNb-BI-nature2011/condition-D/rep_1
mkdir Prod_84
cd /scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicInteractions/tools
TOP_FILE="/scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-active-noNb-BI-nature2011/condition-D/step5_assembly.pdb"
TRAJ_FILE="/scratch/PI/rondror/DesRes-Simulations/ordered-from-DesRes/nature2011/DESRES-Trajectory_nature2011-D-all.1/nature2011-D-all/nature2011-D-all-084.dcd"
OUTPUT_FILE="/scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-active-noNb-BI-nature2011/condition-D/rep_1/Prod_84/Prod_84_rewrapped.dcd"
python wrapAlign.py $TOP_FILE $TRAJ_FILE $OUTPUT_FILE

# Stripping water from rewrapped .dcd file and placing output file in same experiment fragment folder path
TRAJ_FILE="/scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-active-noNb-BI-nature2011/condition-D/rep_1/Prod_84/Prod_84_rewrapped.dcd"
OUTPUT_FILE_PATH="/scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-active-noNb-BI-nature2011/condition-D/rep_1/Prod_84/Prod_84_rewrapped_strip_waters.dcd"
python stripWaters.py -top $TOP_FILE -traj $TRAJ_FILE $OUTPUT_FILE_PATH


# Rewrapping original .dcd files and placing copy in output experiment fragment folder path
cd /scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-active-noNb-BI-nature2011/condition-D/rep_1
mkdir Prod_85
cd /scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicInteractions/tools
TOP_FILE="/scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-active-noNb-BI-nature2011/condition-D/step5_assembly.pdb"
TRAJ_FILE="/scratch/PI/rondror/DesRes-Simulations/ordered-from-DesRes/nature2011/DESRES-Trajectory_nature2011-D-all.1/nature2011-D-all/nature2011-D-all-085.dcd"
OUTPUT_FILE="/scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-active-noNb-BI-nature2011/condition-D/rep_1/Prod_85/Prod_85_rewrapped.dcd"
python wrapAlign.py $TOP_FILE $TRAJ_FILE $OUTPUT_FILE

# Stripping water from rewrapped .dcd file and placing output file in same experiment fragment folder path
TRAJ_FILE="/scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-active-noNb-BI-nature2011/condition-D/rep_1/Prod_85/Prod_85_rewrapped.dcd"
OUTPUT_FILE_PATH="/scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-active-noNb-BI-nature2011/condition-D/rep_1/Prod_85/Prod_85_rewrapped_strip_waters.dcd"
python stripWaters.py -top $TOP_FILE -traj $TRAJ_FILE $OUTPUT_FILE_PATH


# Rewrapping original .dcd files and placing copy in output experiment fragment folder path
cd /scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-active-noNb-BI-nature2011/condition-D/rep_1
mkdir Prod_86
cd /scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicInteractions/tools
TOP_FILE="/scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-active-noNb-BI-nature2011/condition-D/step5_assembly.pdb"
TRAJ_FILE="/scratch/PI/rondror/DesRes-Simulations/ordered-from-DesRes/nature2011/DESRES-Trajectory_nature2011-D-all.1/nature2011-D-all/nature2011-D-all-086.dcd"
OUTPUT_FILE="/scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-active-noNb-BI-nature2011/condition-D/rep_1/Prod_86/Prod_86_rewrapped.dcd"
python wrapAlign.py $TOP_FILE $TRAJ_FILE $OUTPUT_FILE

# Stripping water from rewrapped .dcd file and placing output file in same experiment fragment folder path
TRAJ_FILE="/scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-active-noNb-BI-nature2011/condition-D/rep_1/Prod_86/Prod_86_rewrapped.dcd"
OUTPUT_FILE_PATH="/scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-active-noNb-BI-nature2011/condition-D/rep_1/Prod_86/Prod_86_rewrapped_strip_waters.dcd"
python stripWaters.py -top $TOP_FILE -traj $TRAJ_FILE $OUTPUT_FILE_PATH


# Rewrapping original .dcd files and placing copy in output experiment fragment folder path
cd /scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-active-noNb-BI-nature2011/condition-D/rep_1
mkdir Prod_87
cd /scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicInteractions/tools
TOP_FILE="/scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-active-noNb-BI-nature2011/condition-D/step5_assembly.pdb"
TRAJ_FILE="/scratch/PI/rondror/DesRes-Simulations/ordered-from-DesRes/nature2011/DESRES-Trajectory_nature2011-D-all.1/nature2011-D-all/nature2011-D-all-087.dcd"
OUTPUT_FILE="/scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-active-noNb-BI-nature2011/condition-D/rep_1/Prod_87/Prod_87_rewrapped.dcd"
python wrapAlign.py $TOP_FILE $TRAJ_FILE $OUTPUT_FILE

# Stripping water from rewrapped .dcd file and placing output file in same experiment fragment folder path
TRAJ_FILE="/scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-active-noNb-BI-nature2011/condition-D/rep_1/Prod_87/Prod_87_rewrapped.dcd"
OUTPUT_FILE_PATH="/scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-active-noNb-BI-nature2011/condition-D/rep_1/Prod_87/Prod_87_rewrapped_strip_waters.dcd"
python stripWaters.py -top $TOP_FILE -traj $TRAJ_FILE $OUTPUT_FILE_PATH


# Rewrapping original .dcd files and placing copy in output experiment fragment folder path
cd /scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-active-noNb-BI-nature2011/condition-D/rep_1
mkdir Prod_88
cd /scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicInteractions/tools
TOP_FILE="/scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-active-noNb-BI-nature2011/condition-D/step5_assembly.pdb"
TRAJ_FILE="/scratch/PI/rondror/DesRes-Simulations/ordered-from-DesRes/nature2011/DESRES-Trajectory_nature2011-D-all.1/nature2011-D-all/nature2011-D-all-088.dcd"
OUTPUT_FILE="/scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-active-noNb-BI-nature2011/condition-D/rep_1/Prod_88/Prod_88_rewrapped.dcd"
python wrapAlign.py $TOP_FILE $TRAJ_FILE $OUTPUT_FILE

# Stripping water from rewrapped .dcd file and placing output file in same experiment fragment folder path
TRAJ_FILE="/scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-active-noNb-BI-nature2011/condition-D/rep_1/Prod_88/Prod_88_rewrapped.dcd"
OUTPUT_FILE_PATH="/scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-active-noNb-BI-nature2011/condition-D/rep_1/Prod_88/Prod_88_rewrapped_strip_waters.dcd"
python stripWaters.py -top $TOP_FILE -traj $TRAJ_FILE $OUTPUT_FILE_PATH


# Rewrapping original .dcd files and placing copy in output experiment fragment folder path
cd /scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-active-noNb-BI-nature2011/condition-D/rep_1
mkdir Prod_89
cd /scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicInteractions/tools
TOP_FILE="/scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-active-noNb-BI-nature2011/condition-D/step5_assembly.pdb"
TRAJ_FILE="/scratch/PI/rondror/DesRes-Simulations/ordered-from-DesRes/nature2011/DESRES-Trajectory_nature2011-D-all.1/nature2011-D-all/nature2011-D-all-089.dcd"
OUTPUT_FILE="/scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-active-noNb-BI-nature2011/condition-D/rep_1/Prod_89/Prod_89_rewrapped.dcd"
python wrapAlign.py $TOP_FILE $TRAJ_FILE $OUTPUT_FILE

# Stripping water from rewrapped .dcd file and placing output file in same experiment fragment folder path
TRAJ_FILE="/scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-active-noNb-BI-nature2011/condition-D/rep_1/Prod_89/Prod_89_rewrapped.dcd"
OUTPUT_FILE_PATH="/scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-active-noNb-BI-nature2011/condition-D/rep_1/Prod_89/Prod_89_rewrapped_strip_waters.dcd"
python stripWaters.py -top $TOP_FILE -traj $TRAJ_FILE $OUTPUT_FILE_PATH


# Rewrapping original .dcd files and placing copy in output experiment fragment folder path
cd /scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-active-noNb-BI-nature2011/condition-D/rep_1
mkdir Prod_90
cd /scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicInteractions/tools
TOP_FILE="/scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-active-noNb-BI-nature2011/condition-D/step5_assembly.pdb"
TRAJ_FILE="/scratch/PI/rondror/DesRes-Simulations/ordered-from-DesRes/nature2011/DESRES-Trajectory_nature2011-D-all.1/nature2011-D-all/nature2011-D-all-090.dcd"
OUTPUT_FILE="/scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-active-noNb-BI-nature2011/condition-D/rep_1/Prod_90/Prod_90_rewrapped.dcd"
python wrapAlign.py $TOP_FILE $TRAJ_FILE $OUTPUT_FILE

# Stripping water from rewrapped .dcd file and placing output file in same experiment fragment folder path
TRAJ_FILE="/scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-active-noNb-BI-nature2011/condition-D/rep_1/Prod_90/Prod_90_rewrapped.dcd"
OUTPUT_FILE_PATH="/scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-active-noNb-BI-nature2011/condition-D/rep_1/Prod_90/Prod_90_rewrapped_strip_waters.dcd"
python stripWaters.py -top $TOP_FILE -traj $TRAJ_FILE $OUTPUT_FILE_PATH


# Rewrapping original .dcd files and placing copy in output experiment fragment folder path
cd /scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-active-noNb-BI-nature2011/condition-D/rep_1
mkdir Prod_91
cd /scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicInteractions/tools
TOP_FILE="/scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-active-noNb-BI-nature2011/condition-D/step5_assembly.pdb"
TRAJ_FILE="/scratch/PI/rondror/DesRes-Simulations/ordered-from-DesRes/nature2011/DESRES-Trajectory_nature2011-D-all.1/nature2011-D-all/nature2011-D-all-091.dcd"
OUTPUT_FILE="/scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-active-noNb-BI-nature2011/condition-D/rep_1/Prod_91/Prod_91_rewrapped.dcd"
python wrapAlign.py $TOP_FILE $TRAJ_FILE $OUTPUT_FILE

# Stripping water from rewrapped .dcd file and placing output file in same experiment fragment folder path
TRAJ_FILE="/scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-active-noNb-BI-nature2011/condition-D/rep_1/Prod_91/Prod_91_rewrapped.dcd"
OUTPUT_FILE_PATH="/scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-active-noNb-BI-nature2011/condition-D/rep_1/Prod_91/Prod_91_rewrapped_strip_waters.dcd"
python stripWaters.py -top $TOP_FILE -traj $TRAJ_FILE $OUTPUT_FILE_PATH


# Rewrapping original .dcd files and placing copy in output experiment fragment folder path
cd /scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-active-noNb-BI-nature2011/condition-D/rep_1
mkdir Prod_92
cd /scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicInteractions/tools
TOP_FILE="/scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-active-noNb-BI-nature2011/condition-D/step5_assembly.pdb"
TRAJ_FILE="/scratch/PI/rondror/DesRes-Simulations/ordered-from-DesRes/nature2011/DESRES-Trajectory_nature2011-D-all.1/nature2011-D-all/nature2011-D-all-092.dcd"
OUTPUT_FILE="/scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-active-noNb-BI-nature2011/condition-D/rep_1/Prod_92/Prod_92_rewrapped.dcd"
python wrapAlign.py $TOP_FILE $TRAJ_FILE $OUTPUT_FILE

# Stripping water from rewrapped .dcd file and placing output file in same experiment fragment folder path
TRAJ_FILE="/scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-active-noNb-BI-nature2011/condition-D/rep_1/Prod_92/Prod_92_rewrapped.dcd"
OUTPUT_FILE_PATH="/scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-active-noNb-BI-nature2011/condition-D/rep_1/Prod_92/Prod_92_rewrapped_strip_waters.dcd"
python stripWaters.py -top $TOP_FILE -traj $TRAJ_FILE $OUTPUT_FILE_PATH


# Rewrapping original .dcd files and placing copy in output experiment fragment folder path
cd /scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-active-noNb-BI-nature2011/condition-D/rep_1
mkdir Prod_93
cd /scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicInteractions/tools
TOP_FILE="/scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-active-noNb-BI-nature2011/condition-D/step5_assembly.pdb"
TRAJ_FILE="/scratch/PI/rondror/DesRes-Simulations/ordered-from-DesRes/nature2011/DESRES-Trajectory_nature2011-D-all.1/nature2011-D-all/nature2011-D-all-093.dcd"
OUTPUT_FILE="/scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-active-noNb-BI-nature2011/condition-D/rep_1/Prod_93/Prod_93_rewrapped.dcd"
python wrapAlign.py $TOP_FILE $TRAJ_FILE $OUTPUT_FILE

# Stripping water from rewrapped .dcd file and placing output file in same experiment fragment folder path
TRAJ_FILE="/scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-active-noNb-BI-nature2011/condition-D/rep_1/Prod_93/Prod_93_rewrapped.dcd"
OUTPUT_FILE_PATH="/scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-active-noNb-BI-nature2011/condition-D/rep_1/Prod_93/Prod_93_rewrapped_strip_waters.dcd"
python stripWaters.py -top $TOP_FILE -traj $TRAJ_FILE $OUTPUT_FILE_PATH


# Rewrapping original .dcd files and placing copy in output experiment fragment folder path
cd /scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-active-noNb-BI-nature2011/condition-D/rep_1
mkdir Prod_94
cd /scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicInteractions/tools
TOP_FILE="/scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-active-noNb-BI-nature2011/condition-D/step5_assembly.pdb"
TRAJ_FILE="/scratch/PI/rondror/DesRes-Simulations/ordered-from-DesRes/nature2011/DESRES-Trajectory_nature2011-D-all.1/nature2011-D-all/nature2011-D-all-094.dcd"
OUTPUT_FILE="/scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-active-noNb-BI-nature2011/condition-D/rep_1/Prod_94/Prod_94_rewrapped.dcd"
python wrapAlign.py $TOP_FILE $TRAJ_FILE $OUTPUT_FILE

# Stripping water from rewrapped .dcd file and placing output file in same experiment fragment folder path
TRAJ_FILE="/scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-active-noNb-BI-nature2011/condition-D/rep_1/Prod_94/Prod_94_rewrapped.dcd"
OUTPUT_FILE_PATH="/scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-active-noNb-BI-nature2011/condition-D/rep_1/Prod_94/Prod_94_rewrapped_strip_waters.dcd"
python stripWaters.py -top $TOP_FILE -traj $TRAJ_FILE $OUTPUT_FILE_PATH


# Rewrapping original .dcd files and placing copy in output experiment fragment folder path
cd /scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-active-noNb-BI-nature2011/condition-D/rep_1
mkdir Prod_95
cd /scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicInteractions/tools
TOP_FILE="/scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-active-noNb-BI-nature2011/condition-D/step5_assembly.pdb"
TRAJ_FILE="/scratch/PI/rondror/DesRes-Simulations/ordered-from-DesRes/nature2011/DESRES-Trajectory_nature2011-D-all.1/nature2011-D-all/nature2011-D-all-095.dcd"
OUTPUT_FILE="/scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-active-noNb-BI-nature2011/condition-D/rep_1/Prod_95/Prod_95_rewrapped.dcd"
python wrapAlign.py $TOP_FILE $TRAJ_FILE $OUTPUT_FILE

# Stripping water from rewrapped .dcd file and placing output file in same experiment fragment folder path
TRAJ_FILE="/scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-active-noNb-BI-nature2011/condition-D/rep_1/Prod_95/Prod_95_rewrapped.dcd"
OUTPUT_FILE_PATH="/scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-active-noNb-BI-nature2011/condition-D/rep_1/Prod_95/Prod_95_rewrapped_strip_waters.dcd"
python stripWaters.py -top $TOP_FILE -traj $TRAJ_FILE $OUTPUT_FILE_PATH


# Rewrapping original .dcd files and placing copy in output experiment fragment folder path
cd /scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-active-noNb-BI-nature2011/condition-D/rep_1
mkdir Prod_96
cd /scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicInteractions/tools
TOP_FILE="/scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-active-noNb-BI-nature2011/condition-D/step5_assembly.pdb"
TRAJ_FILE="/scratch/PI/rondror/DesRes-Simulations/ordered-from-DesRes/nature2011/DESRES-Trajectory_nature2011-D-all.1/nature2011-D-all/nature2011-D-all-096.dcd"
OUTPUT_FILE="/scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-active-noNb-BI-nature2011/condition-D/rep_1/Prod_96/Prod_96_rewrapped.dcd"
python wrapAlign.py $TOP_FILE $TRAJ_FILE $OUTPUT_FILE

# Stripping water from rewrapped .dcd file and placing output file in same experiment fragment folder path
TRAJ_FILE="/scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-active-noNb-BI-nature2011/condition-D/rep_1/Prod_96/Prod_96_rewrapped.dcd"
OUTPUT_FILE_PATH="/scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-active-noNb-BI-nature2011/condition-D/rep_1/Prod_96/Prod_96_rewrapped_strip_waters.dcd"
python stripWaters.py -top $TOP_FILE -traj $TRAJ_FILE $OUTPUT_FILE_PATH


# Rewrapping original .dcd files and placing copy in output experiment fragment folder path
cd /scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-active-noNb-BI-nature2011/condition-D/rep_1
mkdir Prod_97
cd /scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicInteractions/tools
TOP_FILE="/scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-active-noNb-BI-nature2011/condition-D/step5_assembly.pdb"
TRAJ_FILE="/scratch/PI/rondror/DesRes-Simulations/ordered-from-DesRes/nature2011/DESRES-Trajectory_nature2011-D-all.1/nature2011-D-all/nature2011-D-all-097.dcd"
OUTPUT_FILE="/scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-active-noNb-BI-nature2011/condition-D/rep_1/Prod_97/Prod_97_rewrapped.dcd"
python wrapAlign.py $TOP_FILE $TRAJ_FILE $OUTPUT_FILE

# Stripping water from rewrapped .dcd file and placing output file in same experiment fragment folder path
TRAJ_FILE="/scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-active-noNb-BI-nature2011/condition-D/rep_1/Prod_97/Prod_97_rewrapped.dcd"
OUTPUT_FILE_PATH="/scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-active-noNb-BI-nature2011/condition-D/rep_1/Prod_97/Prod_97_rewrapped_strip_waters.dcd"
python stripWaters.py -top $TOP_FILE -traj $TRAJ_FILE $OUTPUT_FILE_PATH


# Rewrapping original .dcd files and placing copy in output experiment fragment folder path
cd /scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-active-noNb-BI-nature2011/condition-D/rep_1
mkdir Prod_98
cd /scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicInteractions/tools
TOP_FILE="/scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-active-noNb-BI-nature2011/condition-D/step5_assembly.pdb"
TRAJ_FILE="/scratch/PI/rondror/DesRes-Simulations/ordered-from-DesRes/nature2011/DESRES-Trajectory_nature2011-D-all.1/nature2011-D-all/nature2011-D-all-098.dcd"
OUTPUT_FILE="/scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-active-noNb-BI-nature2011/condition-D/rep_1/Prod_98/Prod_98_rewrapped.dcd"
python wrapAlign.py $TOP_FILE $TRAJ_FILE $OUTPUT_FILE

# Stripping water from rewrapped .dcd file and placing output file in same experiment fragment folder path
TRAJ_FILE="/scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-active-noNb-BI-nature2011/condition-D/rep_1/Prod_98/Prod_98_rewrapped.dcd"
OUTPUT_FILE_PATH="/scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-active-noNb-BI-nature2011/condition-D/rep_1/Prod_98/Prod_98_rewrapped_strip_waters.dcd"
python stripWaters.py -top $TOP_FILE -traj $TRAJ_FILE $OUTPUT_FILE_PATH


# Rewrapping original .dcd files and placing copy in output experiment fragment folder path
cd /scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-active-noNb-BI-nature2011/condition-D/rep_1
mkdir Prod_99
cd /scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicInteractions/tools
TOP_FILE="/scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-active-noNb-BI-nature2011/condition-D/step5_assembly.pdb"
TRAJ_FILE="/scratch/PI/rondror/DesRes-Simulations/ordered-from-DesRes/nature2011/DESRES-Trajectory_nature2011-D-all.1/nature2011-D-all/nature2011-D-all-099.dcd"
OUTPUT_FILE="/scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-active-noNb-BI-nature2011/condition-D/rep_1/Prod_99/Prod_99_rewrapped.dcd"
python wrapAlign.py $TOP_FILE $TRAJ_FILE $OUTPUT_FILE

# Stripping water from rewrapped .dcd file and placing output file in same experiment fragment folder path
TRAJ_FILE="/scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-active-noNb-BI-nature2011/condition-D/rep_1/Prod_99/Prod_99_rewrapped.dcd"
OUTPUT_FILE_PATH="/scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-active-noNb-BI-nature2011/condition-D/rep_1/Prod_99/Prod_99_rewrapped_strip_waters.dcd"
python stripWaters.py -top $TOP_FILE -traj $TRAJ_FILE $OUTPUT_FILE_PATH


# Rewrapping original .dcd files and placing copy in output experiment fragment folder path
cd /scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-active-noNb-BI-nature2011/condition-D/rep_1
mkdir Prod_100
cd /scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicInteractions/tools
TOP_FILE="/scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-active-noNb-BI-nature2011/condition-D/step5_assembly.pdb"
TRAJ_FILE="/scratch/PI/rondror/DesRes-Simulations/ordered-from-DesRes/nature2011/DESRES-Trajectory_nature2011-D-all.1/nature2011-D-all/nature2011-D-all-100.dcd"
OUTPUT_FILE="/scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-active-noNb-BI-nature2011/condition-D/rep_1/Prod_100/Prod_100_rewrapped.dcd"
python wrapAlign.py $TOP_FILE $TRAJ_FILE $OUTPUT_FILE

# Stripping water from rewrapped .dcd file and placing output file in same experiment fragment folder path
TRAJ_FILE="/scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-active-noNb-BI-nature2011/condition-D/rep_1/Prod_100/Prod_100_rewrapped.dcd"
OUTPUT_FILE_PATH="/scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-active-noNb-BI-nature2011/condition-D/rep_1/Prod_100/Prod_100_rewrapped_strip_waters.dcd"
python stripWaters.py -top $TOP_FILE -traj $TRAJ_FILE $OUTPUT_FILE_PATH


# Rewrapping original .dcd files and placing copy in output experiment fragment folder path
cd /scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-active-noNb-BI-nature2011/condition-D/rep_1
mkdir Prod_101
cd /scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicInteractions/tools
TOP_FILE="/scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-active-noNb-BI-nature2011/condition-D/step5_assembly.pdb"
TRAJ_FILE="/scratch/PI/rondror/DesRes-Simulations/ordered-from-DesRes/nature2011/DESRES-Trajectory_nature2011-D-all.1/nature2011-D-all/nature2011-D-all-101.dcd"
OUTPUT_FILE="/scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-active-noNb-BI-nature2011/condition-D/rep_1/Prod_101/Prod_101_rewrapped.dcd"
python wrapAlign.py $TOP_FILE $TRAJ_FILE $OUTPUT_FILE

# Stripping water from rewrapped .dcd file and placing output file in same experiment fragment folder path
TRAJ_FILE="/scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-active-noNb-BI-nature2011/condition-D/rep_1/Prod_101/Prod_101_rewrapped.dcd"
OUTPUT_FILE_PATH="/scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-active-noNb-BI-nature2011/condition-D/rep_1/Prod_101/Prod_101_rewrapped_strip_waters.dcd"
python stripWaters.py -top $TOP_FILE -traj $TRAJ_FILE $OUTPUT_FILE_PATH


# Rewrapping original .dcd files and placing copy in output experiment fragment folder path
cd /scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-active-noNb-BI-nature2011/condition-D/rep_1
mkdir Prod_102
cd /scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicInteractions/tools
TOP_FILE="/scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-active-noNb-BI-nature2011/condition-D/step5_assembly.pdb"
TRAJ_FILE="/scratch/PI/rondror/DesRes-Simulations/ordered-from-DesRes/nature2011/DESRES-Trajectory_nature2011-D-all.1/nature2011-D-all/nature2011-D-all-102.dcd"
OUTPUT_FILE="/scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-active-noNb-BI-nature2011/condition-D/rep_1/Prod_102/Prod_102_rewrapped.dcd"
python wrapAlign.py $TOP_FILE $TRAJ_FILE $OUTPUT_FILE

# Stripping water from rewrapped .dcd file and placing output file in same experiment fragment folder path
TRAJ_FILE="/scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-active-noNb-BI-nature2011/condition-D/rep_1/Prod_102/Prod_102_rewrapped.dcd"
OUTPUT_FILE_PATH="/scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-active-noNb-BI-nature2011/condition-D/rep_1/Prod_102/Prod_102_rewrapped_strip_waters.dcd"
python stripWaters.py -top $TOP_FILE -traj $TRAJ_FILE $OUTPUT_FILE_PATH


# Rewrapping original .dcd files and placing copy in output experiment fragment folder path
cd /scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-active-noNb-BI-nature2011/condition-D/rep_1
mkdir Prod_103
cd /scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicInteractions/tools
TOP_FILE="/scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-active-noNb-BI-nature2011/condition-D/step5_assembly.pdb"
TRAJ_FILE="/scratch/PI/rondror/DesRes-Simulations/ordered-from-DesRes/nature2011/DESRES-Trajectory_nature2011-D-all.1/nature2011-D-all/nature2011-D-all-103.dcd"
OUTPUT_FILE="/scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-active-noNb-BI-nature2011/condition-D/rep_1/Prod_103/Prod_103_rewrapped.dcd"
python wrapAlign.py $TOP_FILE $TRAJ_FILE $OUTPUT_FILE

# Stripping water from rewrapped .dcd file and placing output file in same experiment fragment folder path
TRAJ_FILE="/scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-active-noNb-BI-nature2011/condition-D/rep_1/Prod_103/Prod_103_rewrapped.dcd"
OUTPUT_FILE_PATH="/scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-active-noNb-BI-nature2011/condition-D/rep_1/Prod_103/Prod_103_rewrapped_strip_waters.dcd"
python stripWaters.py -top $TOP_FILE -traj $TRAJ_FILE $OUTPUT_FILE_PATH


# Rewrapping original .dcd files and placing copy in output experiment fragment folder path
cd /scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-active-noNb-BI-nature2011/condition-D/rep_1
mkdir Prod_104
cd /scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicInteractions/tools
TOP_FILE="/scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-active-noNb-BI-nature2011/condition-D/step5_assembly.pdb"
TRAJ_FILE="/scratch/PI/rondror/DesRes-Simulations/ordered-from-DesRes/nature2011/DESRES-Trajectory_nature2011-D-all.1/nature2011-D-all/nature2011-D-all-104.dcd"
OUTPUT_FILE="/scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-active-noNb-BI-nature2011/condition-D/rep_1/Prod_104/Prod_104_rewrapped.dcd"
python wrapAlign.py $TOP_FILE $TRAJ_FILE $OUTPUT_FILE

# Stripping water from rewrapped .dcd file and placing output file in same experiment fragment folder path
TRAJ_FILE="/scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-active-noNb-BI-nature2011/condition-D/rep_1/Prod_104/Prod_104_rewrapped.dcd"
OUTPUT_FILE_PATH="/scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-active-noNb-BI-nature2011/condition-D/rep_1/Prod_104/Prod_104_rewrapped_strip_waters.dcd"
python stripWaters.py -top $TOP_FILE -traj $TRAJ_FILE $OUTPUT_FILE_PATH


# Rewrapping original .dcd files and placing copy in output experiment fragment folder path
cd /scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-active-noNb-BI-nature2011/condition-D/rep_1
mkdir Prod_105
cd /scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicInteractions/tools
TOP_FILE="/scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-active-noNb-BI-nature2011/condition-D/step5_assembly.pdb"
TRAJ_FILE="/scratch/PI/rondror/DesRes-Simulations/ordered-from-DesRes/nature2011/DESRES-Trajectory_nature2011-D-all.1/nature2011-D-all/nature2011-D-all-105.dcd"
OUTPUT_FILE="/scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-active-noNb-BI-nature2011/condition-D/rep_1/Prod_105/Prod_105_rewrapped.dcd"
python wrapAlign.py $TOP_FILE $TRAJ_FILE $OUTPUT_FILE

# Stripping water from rewrapped .dcd file and placing output file in same experiment fragment folder path
TRAJ_FILE="/scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-active-noNb-BI-nature2011/condition-D/rep_1/Prod_105/Prod_105_rewrapped.dcd"
OUTPUT_FILE_PATH="/scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-active-noNb-BI-nature2011/condition-D/rep_1/Prod_105/Prod_105_rewrapped_strip_waters.dcd"
python stripWaters.py -top $TOP_FILE -traj $TRAJ_FILE $OUTPUT_FILE_PATH


# Rewrapping original .dcd files and placing copy in output experiment fragment folder path
cd /scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-active-noNb-BI-nature2011/condition-D/rep_1
mkdir Prod_106
cd /scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicInteractions/tools
TOP_FILE="/scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-active-noNb-BI-nature2011/condition-D/step5_assembly.pdb"
TRAJ_FILE="/scratch/PI/rondror/DesRes-Simulations/ordered-from-DesRes/nature2011/DESRES-Trajectory_nature2011-D-all.1/nature2011-D-all/nature2011-D-all-106.dcd"
OUTPUT_FILE="/scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-active-noNb-BI-nature2011/condition-D/rep_1/Prod_106/Prod_106_rewrapped.dcd"
python wrapAlign.py $TOP_FILE $TRAJ_FILE $OUTPUT_FILE

# Stripping water from rewrapped .dcd file and placing output file in same experiment fragment folder path
TRAJ_FILE="/scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-active-noNb-BI-nature2011/condition-D/rep_1/Prod_106/Prod_106_rewrapped.dcd"
OUTPUT_FILE_PATH="/scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-active-noNb-BI-nature2011/condition-D/rep_1/Prod_106/Prod_106_rewrapped_strip_waters.dcd"
python stripWaters.py -top $TOP_FILE -traj $TRAJ_FILE $OUTPUT_FILE_PATH


# Rewrapping original .dcd files and placing copy in output experiment fragment folder path
cd /scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-active-noNb-BI-nature2011/condition-D/rep_1
mkdir Prod_107
cd /scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicInteractions/tools
TOP_FILE="/scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-active-noNb-BI-nature2011/condition-D/step5_assembly.pdb"
TRAJ_FILE="/scratch/PI/rondror/DesRes-Simulations/ordered-from-DesRes/nature2011/DESRES-Trajectory_nature2011-D-all.1/nature2011-D-all/nature2011-D-all-107.dcd"
OUTPUT_FILE="/scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-active-noNb-BI-nature2011/condition-D/rep_1/Prod_107/Prod_107_rewrapped.dcd"
python wrapAlign.py $TOP_FILE $TRAJ_FILE $OUTPUT_FILE

# Stripping water from rewrapped .dcd file and placing output file in same experiment fragment folder path
TRAJ_FILE="/scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-active-noNb-BI-nature2011/condition-D/rep_1/Prod_107/Prod_107_rewrapped.dcd"
OUTPUT_FILE_PATH="/scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-active-noNb-BI-nature2011/condition-D/rep_1/Prod_107/Prod_107_rewrapped_strip_waters.dcd"
python stripWaters.py -top $TOP_FILE -traj $TRAJ_FILE $OUTPUT_FILE_PATH


# Rewrapping original .dcd files and placing copy in output experiment fragment folder path
cd /scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-active-noNb-BI-nature2011/condition-D/rep_1
mkdir Prod_108
cd /scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicInteractions/tools
TOP_FILE="/scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-active-noNb-BI-nature2011/condition-D/step5_assembly.pdb"
TRAJ_FILE="/scratch/PI/rondror/DesRes-Simulations/ordered-from-DesRes/nature2011/DESRES-Trajectory_nature2011-D-all.1/nature2011-D-all/nature2011-D-all-108.dcd"
OUTPUT_FILE="/scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-active-noNb-BI-nature2011/condition-D/rep_1/Prod_108/Prod_108_rewrapped.dcd"
python wrapAlign.py $TOP_FILE $TRAJ_FILE $OUTPUT_FILE

# Stripping water from rewrapped .dcd file and placing output file in same experiment fragment folder path
TRAJ_FILE="/scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-active-noNb-BI-nature2011/condition-D/rep_1/Prod_108/Prod_108_rewrapped.dcd"
OUTPUT_FILE_PATH="/scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-active-noNb-BI-nature2011/condition-D/rep_1/Prod_108/Prod_108_rewrapped_strip_waters.dcd"
python stripWaters.py -top $TOP_FILE -traj $TRAJ_FILE $OUTPUT_FILE_PATH


# Rewrapping original .dcd files and placing copy in output experiment fragment folder path
cd /scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-active-noNb-BI-nature2011/condition-D/rep_1
mkdir Prod_109
cd /scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicInteractions/tools
TOP_FILE="/scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-active-noNb-BI-nature2011/condition-D/step5_assembly.pdb"
TRAJ_FILE="/scratch/PI/rondror/DesRes-Simulations/ordered-from-DesRes/nature2011/DESRES-Trajectory_nature2011-D-all.1/nature2011-D-all/nature2011-D-all-109.dcd"
OUTPUT_FILE="/scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-active-noNb-BI-nature2011/condition-D/rep_1/Prod_109/Prod_109_rewrapped.dcd"
python wrapAlign.py $TOP_FILE $TRAJ_FILE $OUTPUT_FILE

# Stripping water from rewrapped .dcd file and placing output file in same experiment fragment folder path
TRAJ_FILE="/scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-active-noNb-BI-nature2011/condition-D/rep_1/Prod_109/Prod_109_rewrapped.dcd"
OUTPUT_FILE_PATH="/scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-active-noNb-BI-nature2011/condition-D/rep_1/Prod_109/Prod_109_rewrapped_strip_waters.dcd"
python stripWaters.py -top $TOP_FILE -traj $TRAJ_FILE $OUTPUT_FILE_PATH


# Rewrapping original .dcd files and placing copy in output experiment fragment folder path
cd /scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-active-noNb-BI-nature2011/condition-D/rep_1
mkdir Prod_110
cd /scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicInteractions/tools
TOP_FILE="/scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-active-noNb-BI-nature2011/condition-D/step5_assembly.pdb"
TRAJ_FILE="/scratch/PI/rondror/DesRes-Simulations/ordered-from-DesRes/nature2011/DESRES-Trajectory_nature2011-D-all.1/nature2011-D-all/nature2011-D-all-110.dcd"
OUTPUT_FILE="/scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-active-noNb-BI-nature2011/condition-D/rep_1/Prod_110/Prod_110_rewrapped.dcd"
python wrapAlign.py $TOP_FILE $TRAJ_FILE $OUTPUT_FILE

# Stripping water from rewrapped .dcd file and placing output file in same experiment fragment folder path
TRAJ_FILE="/scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-active-noNb-BI-nature2011/condition-D/rep_1/Prod_110/Prod_110_rewrapped.dcd"
OUTPUT_FILE_PATH="/scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-active-noNb-BI-nature2011/condition-D/rep_1/Prod_110/Prod_110_rewrapped_strip_waters.dcd"
python stripWaters.py -top $TOP_FILE -traj $TRAJ_FILE $OUTPUT_FILE_PATH


# Rewrapping original .dcd files and placing copy in output experiment fragment folder path
cd /scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-active-noNb-BI-nature2011/condition-D/rep_1
mkdir Prod_111
cd /scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicInteractions/tools
TOP_FILE="/scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-active-noNb-BI-nature2011/condition-D/step5_assembly.pdb"
TRAJ_FILE="/scratch/PI/rondror/DesRes-Simulations/ordered-from-DesRes/nature2011/DESRES-Trajectory_nature2011-D-all.1/nature2011-D-all/nature2011-D-all-111.dcd"
OUTPUT_FILE="/scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-active-noNb-BI-nature2011/condition-D/rep_1/Prod_111/Prod_111_rewrapped.dcd"
python wrapAlign.py $TOP_FILE $TRAJ_FILE $OUTPUT_FILE

# Stripping water from rewrapped .dcd file and placing output file in same experiment fragment folder path
TRAJ_FILE="/scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-active-noNb-BI-nature2011/condition-D/rep_1/Prod_111/Prod_111_rewrapped.dcd"
OUTPUT_FILE_PATH="/scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-active-noNb-BI-nature2011/condition-D/rep_1/Prod_111/Prod_111_rewrapped_strip_waters.dcd"
python stripWaters.py -top $TOP_FILE -traj $TRAJ_FILE $OUTPUT_FILE_PATH


# Rewrapping original .dcd files and placing copy in output experiment fragment folder path
cd /scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-active-noNb-BI-nature2011/condition-D/rep_1
mkdir Prod_112
cd /scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicInteractions/tools
TOP_FILE="/scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-active-noNb-BI-nature2011/condition-D/step5_assembly.pdb"
TRAJ_FILE="/scratch/PI/rondror/DesRes-Simulations/ordered-from-DesRes/nature2011/DESRES-Trajectory_nature2011-D-all.1/nature2011-D-all/nature2011-D-all-112.dcd"
OUTPUT_FILE="/scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-active-noNb-BI-nature2011/condition-D/rep_1/Prod_112/Prod_112_rewrapped.dcd"
python wrapAlign.py $TOP_FILE $TRAJ_FILE $OUTPUT_FILE

# Stripping water from rewrapped .dcd file and placing output file in same experiment fragment folder path
TRAJ_FILE="/scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-active-noNb-BI-nature2011/condition-D/rep_1/Prod_112/Prod_112_rewrapped.dcd"
OUTPUT_FILE_PATH="/scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-active-noNb-BI-nature2011/condition-D/rep_1/Prod_112/Prod_112_rewrapped_strip_waters.dcd"
python stripWaters.py -top $TOP_FILE -traj $TRAJ_FILE $OUTPUT_FILE_PATH


# Rewrapping original .dcd files and placing copy in output experiment fragment folder path
cd /scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-active-noNb-BI-nature2011/condition-D/rep_1
mkdir Prod_113
cd /scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicInteractions/tools
TOP_FILE="/scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-active-noNb-BI-nature2011/condition-D/step5_assembly.pdb"
TRAJ_FILE="/scratch/PI/rondror/DesRes-Simulations/ordered-from-DesRes/nature2011/DESRES-Trajectory_nature2011-D-all.1/nature2011-D-all/nature2011-D-all-113.dcd"
OUTPUT_FILE="/scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-active-noNb-BI-nature2011/condition-D/rep_1/Prod_113/Prod_113_rewrapped.dcd"
python wrapAlign.py $TOP_FILE $TRAJ_FILE $OUTPUT_FILE

# Stripping water from rewrapped .dcd file and placing output file in same experiment fragment folder path
TRAJ_FILE="/scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-active-noNb-BI-nature2011/condition-D/rep_1/Prod_113/Prod_113_rewrapped.dcd"
OUTPUT_FILE_PATH="/scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-active-noNb-BI-nature2011/condition-D/rep_1/Prod_113/Prod_113_rewrapped_strip_waters.dcd"
python stripWaters.py -top $TOP_FILE -traj $TRAJ_FILE $OUTPUT_FILE_PATH


# Rewrapping original .dcd files and placing copy in output experiment fragment folder path
cd /scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-active-noNb-BI-nature2011/condition-D/rep_1
mkdir Prod_114
cd /scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicInteractions/tools
TOP_FILE="/scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-active-noNb-BI-nature2011/condition-D/step5_assembly.pdb"
TRAJ_FILE="/scratch/PI/rondror/DesRes-Simulations/ordered-from-DesRes/nature2011/DESRES-Trajectory_nature2011-D-all.1/nature2011-D-all/nature2011-D-all-114.dcd"
OUTPUT_FILE="/scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-active-noNb-BI-nature2011/condition-D/rep_1/Prod_114/Prod_114_rewrapped.dcd"
python wrapAlign.py $TOP_FILE $TRAJ_FILE $OUTPUT_FILE

# Stripping water from rewrapped .dcd file and placing output file in same experiment fragment folder path
TRAJ_FILE="/scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-active-noNb-BI-nature2011/condition-D/rep_1/Prod_114/Prod_114_rewrapped.dcd"
OUTPUT_FILE_PATH="/scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-active-noNb-BI-nature2011/condition-D/rep_1/Prod_114/Prod_114_rewrapped_strip_waters.dcd"
python stripWaters.py -top $TOP_FILE -traj $TRAJ_FILE $OUTPUT_FILE_PATH


# Rewrapping original .dcd files and placing copy in output experiment fragment folder path
cd /scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-active-noNb-BI-nature2011/condition-D/rep_1
mkdir Prod_115
cd /scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicInteractions/tools
TOP_FILE="/scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-active-noNb-BI-nature2011/condition-D/step5_assembly.pdb"
TRAJ_FILE="/scratch/PI/rondror/DesRes-Simulations/ordered-from-DesRes/nature2011/DESRES-Trajectory_nature2011-D-all.1/nature2011-D-all/nature2011-D-all-115.dcd"
OUTPUT_FILE="/scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-active-noNb-BI-nature2011/condition-D/rep_1/Prod_115/Prod_115_rewrapped.dcd"
python wrapAlign.py $TOP_FILE $TRAJ_FILE $OUTPUT_FILE

# Stripping water from rewrapped .dcd file and placing output file in same experiment fragment folder path
TRAJ_FILE="/scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-active-noNb-BI-nature2011/condition-D/rep_1/Prod_115/Prod_115_rewrapped.dcd"
OUTPUT_FILE_PATH="/scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-active-noNb-BI-nature2011/condition-D/rep_1/Prod_115/Prod_115_rewrapped_strip_waters.dcd"
python stripWaters.py -top $TOP_FILE -traj $TRAJ_FILE $OUTPUT_FILE_PATH


# Rewrapping original .dcd files and placing copy in output experiment fragment folder path
cd /scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-active-noNb-BI-nature2011/condition-D/rep_1
mkdir Prod_116
cd /scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicInteractions/tools
TOP_FILE="/scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-active-noNb-BI-nature2011/condition-D/step5_assembly.pdb"
TRAJ_FILE="/scratch/PI/rondror/DesRes-Simulations/ordered-from-DesRes/nature2011/DESRES-Trajectory_nature2011-D-all.1/nature2011-D-all/nature2011-D-all-116.dcd"
OUTPUT_FILE="/scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-active-noNb-BI-nature2011/condition-D/rep_1/Prod_116/Prod_116_rewrapped.dcd"
python wrapAlign.py $TOP_FILE $TRAJ_FILE $OUTPUT_FILE

# Stripping water from rewrapped .dcd file and placing output file in same experiment fragment folder path
TRAJ_FILE="/scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-active-noNb-BI-nature2011/condition-D/rep_1/Prod_116/Prod_116_rewrapped.dcd"
OUTPUT_FILE_PATH="/scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-active-noNb-BI-nature2011/condition-D/rep_1/Prod_116/Prod_116_rewrapped_strip_waters.dcd"
python stripWaters.py -top $TOP_FILE -traj $TRAJ_FILE $OUTPUT_FILE_PATH


# Rewrapping original .dcd files and placing copy in output experiment fragment folder path
cd /scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-active-noNb-BI-nature2011/condition-D/rep_1
mkdir Prod_117
cd /scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicInteractions/tools
TOP_FILE="/scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-active-noNb-BI-nature2011/condition-D/step5_assembly.pdb"
TRAJ_FILE="/scratch/PI/rondror/DesRes-Simulations/ordered-from-DesRes/nature2011/DESRES-Trajectory_nature2011-D-all.1/nature2011-D-all/nature2011-D-all-117.dcd"
OUTPUT_FILE="/scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-active-noNb-BI-nature2011/condition-D/rep_1/Prod_117/Prod_117_rewrapped.dcd"
python wrapAlign.py $TOP_FILE $TRAJ_FILE $OUTPUT_FILE

# Stripping water from rewrapped .dcd file and placing output file in same experiment fragment folder path
TRAJ_FILE="/scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-active-noNb-BI-nature2011/condition-D/rep_1/Prod_117/Prod_117_rewrapped.dcd"
OUTPUT_FILE_PATH="/scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-active-noNb-BI-nature2011/condition-D/rep_1/Prod_117/Prod_117_rewrapped_strip_waters.dcd"
python stripWaters.py -top $TOP_FILE -traj $TRAJ_FILE $OUTPUT_FILE_PATH


# Rewrapping original .dcd files and placing copy in output experiment fragment folder path
cd /scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-active-noNb-BI-nature2011/condition-D/rep_1
mkdir Prod_118
cd /scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicInteractions/tools
TOP_FILE="/scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-active-noNb-BI-nature2011/condition-D/step5_assembly.pdb"
TRAJ_FILE="/scratch/PI/rondror/DesRes-Simulations/ordered-from-DesRes/nature2011/DESRES-Trajectory_nature2011-D-all.1/nature2011-D-all/nature2011-D-all-118.dcd"
OUTPUT_FILE="/scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-active-noNb-BI-nature2011/condition-D/rep_1/Prod_118/Prod_118_rewrapped.dcd"
python wrapAlign.py $TOP_FILE $TRAJ_FILE $OUTPUT_FILE

# Stripping water from rewrapped .dcd file and placing output file in same experiment fragment folder path
TRAJ_FILE="/scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-active-noNb-BI-nature2011/condition-D/rep_1/Prod_118/Prod_118_rewrapped.dcd"
OUTPUT_FILE_PATH="/scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-active-noNb-BI-nature2011/condition-D/rep_1/Prod_118/Prod_118_rewrapped_strip_waters.dcd"
python stripWaters.py -top $TOP_FILE -traj $TRAJ_FILE $OUTPUT_FILE_PATH


# Rewrapping original .dcd files and placing copy in output experiment fragment folder path
cd /scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-active-noNb-BI-nature2011/condition-D/rep_1
mkdir Prod_119
cd /scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicInteractions/tools
TOP_FILE="/scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-active-noNb-BI-nature2011/condition-D/step5_assembly.pdb"
TRAJ_FILE="/scratch/PI/rondror/DesRes-Simulations/ordered-from-DesRes/nature2011/DESRES-Trajectory_nature2011-D-all.1/nature2011-D-all/nature2011-D-all-119.dcd"
OUTPUT_FILE="/scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-active-noNb-BI-nature2011/condition-D/rep_1/Prod_119/Prod_119_rewrapped.dcd"
python wrapAlign.py $TOP_FILE $TRAJ_FILE $OUTPUT_FILE

# Stripping water from rewrapped .dcd file and placing output file in same experiment fragment folder path
TRAJ_FILE="/scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-active-noNb-BI-nature2011/condition-D/rep_1/Prod_119/Prod_119_rewrapped.dcd"
OUTPUT_FILE_PATH="/scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-active-noNb-BI-nature2011/condition-D/rep_1/Prod_119/Prod_119_rewrapped_strip_waters.dcd"
python stripWaters.py -top $TOP_FILE -traj $TRAJ_FILE $OUTPUT_FILE_PATH


# Rewrapping original .dcd files and placing copy in output experiment fragment folder path
cd /scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-active-noNb-BI-nature2011/condition-D/rep_1
mkdir Prod_120
cd /scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicInteractions/tools
TOP_FILE="/scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-active-noNb-BI-nature2011/condition-D/step5_assembly.pdb"
TRAJ_FILE="/scratch/PI/rondror/DesRes-Simulations/ordered-from-DesRes/nature2011/DESRES-Trajectory_nature2011-D-all.1/nature2011-D-all/nature2011-D-all-120.dcd"
OUTPUT_FILE="/scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-active-noNb-BI-nature2011/condition-D/rep_1/Prod_120/Prod_120_rewrapped.dcd"
python wrapAlign.py $TOP_FILE $TRAJ_FILE $OUTPUT_FILE

# Stripping water from rewrapped .dcd file and placing output file in same experiment fragment folder path
TRAJ_FILE="/scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-active-noNb-BI-nature2011/condition-D/rep_1/Prod_120/Prod_120_rewrapped.dcd"
OUTPUT_FILE_PATH="/scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-active-noNb-BI-nature2011/condition-D/rep_1/Prod_120/Prod_120_rewrapped_strip_waters.dcd"
python stripWaters.py -top $TOP_FILE -traj $TRAJ_FILE $OUTPUT_FILE_PATH


# Rewrapping original .dcd files and placing copy in output experiment fragment folder path
cd /scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-active-noNb-BI-nature2011/condition-D/rep_1
mkdir Prod_121
cd /scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicInteractions/tools
TOP_FILE="/scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-active-noNb-BI-nature2011/condition-D/step5_assembly.pdb"
TRAJ_FILE="/scratch/PI/rondror/DesRes-Simulations/ordered-from-DesRes/nature2011/DESRES-Trajectory_nature2011-D-all.1/nature2011-D-all/nature2011-D-all-121.dcd"
OUTPUT_FILE="/scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-active-noNb-BI-nature2011/condition-D/rep_1/Prod_121/Prod_121_rewrapped.dcd"
python wrapAlign.py $TOP_FILE $TRAJ_FILE $OUTPUT_FILE

# Stripping water from rewrapped .dcd file and placing output file in same experiment fragment folder path
TRAJ_FILE="/scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-active-noNb-BI-nature2011/condition-D/rep_1/Prod_121/Prod_121_rewrapped.dcd"
OUTPUT_FILE_PATH="/scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-active-noNb-BI-nature2011/condition-D/rep_1/Prod_121/Prod_121_rewrapped_strip_waters.dcd"
python stripWaters.py -top $TOP_FILE -traj $TRAJ_FILE $OUTPUT_FILE_PATH


# Rewrapping original .dcd files and placing copy in output experiment fragment folder path
cd /scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-active-noNb-BI-nature2011/condition-D/rep_1
mkdir Prod_122
cd /scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicInteractions/tools
TOP_FILE="/scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-active-noNb-BI-nature2011/condition-D/step5_assembly.pdb"
TRAJ_FILE="/scratch/PI/rondror/DesRes-Simulations/ordered-from-DesRes/nature2011/DESRES-Trajectory_nature2011-D-all.1/nature2011-D-all/nature2011-D-all-122.dcd"
OUTPUT_FILE="/scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-active-noNb-BI-nature2011/condition-D/rep_1/Prod_122/Prod_122_rewrapped.dcd"
python wrapAlign.py $TOP_FILE $TRAJ_FILE $OUTPUT_FILE

# Stripping water from rewrapped .dcd file and placing output file in same experiment fragment folder path
TRAJ_FILE="/scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-active-noNb-BI-nature2011/condition-D/rep_1/Prod_122/Prod_122_rewrapped.dcd"
OUTPUT_FILE_PATH="/scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-active-noNb-BI-nature2011/condition-D/rep_1/Prod_122/Prod_122_rewrapped_strip_waters.dcd"
python stripWaters.py -top $TOP_FILE -traj $TRAJ_FILE $OUTPUT_FILE_PATH


# Rewrapping original .dcd files and placing copy in output experiment fragment folder path
cd /scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-active-noNb-BI-nature2011/condition-D/rep_1
mkdir Prod_123
cd /scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicInteractions/tools
TOP_FILE="/scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-active-noNb-BI-nature2011/condition-D/step5_assembly.pdb"
TRAJ_FILE="/scratch/PI/rondror/DesRes-Simulations/ordered-from-DesRes/nature2011/DESRES-Trajectory_nature2011-D-all.1/nature2011-D-all/nature2011-D-all-123.dcd"
OUTPUT_FILE="/scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-active-noNb-BI-nature2011/condition-D/rep_1/Prod_123/Prod_123_rewrapped.dcd"
python wrapAlign.py $TOP_FILE $TRAJ_FILE $OUTPUT_FILE

# Stripping water from rewrapped .dcd file and placing output file in same experiment fragment folder path
TRAJ_FILE="/scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-active-noNb-BI-nature2011/condition-D/rep_1/Prod_123/Prod_123_rewrapped.dcd"
OUTPUT_FILE_PATH="/scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-active-noNb-BI-nature2011/condition-D/rep_1/Prod_123/Prod_123_rewrapped_strip_waters.dcd"
python stripWaters.py -top $TOP_FILE -traj $TRAJ_FILE $OUTPUT_FILE_PATH


# Rewrapping original .dcd files and placing copy in output experiment fragment folder path
cd /scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-active-noNb-BI-nature2011/condition-D/rep_1
mkdir Prod_124
cd /scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicInteractions/tools
TOP_FILE="/scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-active-noNb-BI-nature2011/condition-D/step5_assembly.pdb"
TRAJ_FILE="/scratch/PI/rondror/DesRes-Simulations/ordered-from-DesRes/nature2011/DESRES-Trajectory_nature2011-D-all.1/nature2011-D-all/nature2011-D-all-124.dcd"
OUTPUT_FILE="/scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-active-noNb-BI-nature2011/condition-D/rep_1/Prod_124/Prod_124_rewrapped.dcd"
python wrapAlign.py $TOP_FILE $TRAJ_FILE $OUTPUT_FILE

# Stripping water from rewrapped .dcd file and placing output file in same experiment fragment folder path
TRAJ_FILE="/scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-active-noNb-BI-nature2011/condition-D/rep_1/Prod_124/Prod_124_rewrapped.dcd"
OUTPUT_FILE_PATH="/scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-active-noNb-BI-nature2011/condition-D/rep_1/Prod_124/Prod_124_rewrapped_strip_waters.dcd"
python stripWaters.py -top $TOP_FILE -traj $TRAJ_FILE $OUTPUT_FILE_PATH


# Rewrapping original .dcd files and placing copy in output experiment fragment folder path
cd /scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-active-noNb-BI-nature2011/condition-D/rep_1
mkdir Prod_125
cd /scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicInteractions/tools
TOP_FILE="/scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-active-noNb-BI-nature2011/condition-D/step5_assembly.pdb"
TRAJ_FILE="/scratch/PI/rondror/DesRes-Simulations/ordered-from-DesRes/nature2011/DESRES-Trajectory_nature2011-D-all.1/nature2011-D-all/nature2011-D-all-125.dcd"
OUTPUT_FILE="/scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-active-noNb-BI-nature2011/condition-D/rep_1/Prod_125/Prod_125_rewrapped.dcd"
python wrapAlign.py $TOP_FILE $TRAJ_FILE $OUTPUT_FILE

# Stripping water from rewrapped .dcd file and placing output file in same experiment fragment folder path
TRAJ_FILE="/scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-active-noNb-BI-nature2011/condition-D/rep_1/Prod_125/Prod_125_rewrapped.dcd"
OUTPUT_FILE_PATH="/scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-active-noNb-BI-nature2011/condition-D/rep_1/Prod_125/Prod_125_rewrapped_strip_waters.dcd"
python stripWaters.py -top $TOP_FILE -traj $TRAJ_FILE $OUTPUT_FILE_PATH


# Rewrapping original .dcd files and placing copy in output experiment fragment folder path
cd /scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-active-noNb-BI-nature2011/condition-D/rep_1
mkdir Prod_126
cd /scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicInteractions/tools
TOP_FILE="/scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-active-noNb-BI-nature2011/condition-D/step5_assembly.pdb"
TRAJ_FILE="/scratch/PI/rondror/DesRes-Simulations/ordered-from-DesRes/nature2011/DESRES-Trajectory_nature2011-D-all.1/nature2011-D-all/nature2011-D-all-126.dcd"
OUTPUT_FILE="/scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-active-noNb-BI-nature2011/condition-D/rep_1/Prod_126/Prod_126_rewrapped.dcd"
python wrapAlign.py $TOP_FILE $TRAJ_FILE $OUTPUT_FILE

# Stripping water from rewrapped .dcd file and placing output file in same experiment fragment folder path
TRAJ_FILE="/scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-active-noNb-BI-nature2011/condition-D/rep_1/Prod_126/Prod_126_rewrapped.dcd"
OUTPUT_FILE_PATH="/scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-active-noNb-BI-nature2011/condition-D/rep_1/Prod_126/Prod_126_rewrapped_strip_waters.dcd"
python stripWaters.py -top $TOP_FILE -traj $TRAJ_FILE $OUTPUT_FILE_PATH


# Rewrapping original .dcd files and placing copy in output experiment fragment folder path
cd /scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-active-noNb-BI-nature2011/condition-D/rep_1
mkdir Prod_127
cd /scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicInteractions/tools
TOP_FILE="/scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-active-noNb-BI-nature2011/condition-D/step5_assembly.pdb"
TRAJ_FILE="/scratch/PI/rondror/DesRes-Simulations/ordered-from-DesRes/nature2011/DESRES-Trajectory_nature2011-D-all.1/nature2011-D-all/nature2011-D-all-127.dcd"
OUTPUT_FILE="/scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-active-noNb-BI-nature2011/condition-D/rep_1/Prod_127/Prod_127_rewrapped.dcd"
python wrapAlign.py $TOP_FILE $TRAJ_FILE $OUTPUT_FILE

# Stripping water from rewrapped .dcd file and placing output file in same experiment fragment folder path
TRAJ_FILE="/scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-active-noNb-BI-nature2011/condition-D/rep_1/Prod_127/Prod_127_rewrapped.dcd"
OUTPUT_FILE_PATH="/scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-active-noNb-BI-nature2011/condition-D/rep_1/Prod_127/Prod_127_rewrapped_strip_waters.dcd"
python stripWaters.py -top $TOP_FILE -traj $TRAJ_FILE $OUTPUT_FILE_PATH


# Rewrapping original .dcd files and placing copy in output experiment fragment folder path
cd /scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-active-noNb-BI-nature2011/condition-D/rep_1
mkdir Prod_128
cd /scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicInteractions/tools
TOP_FILE="/scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-active-noNb-BI-nature2011/condition-D/step5_assembly.pdb"
TRAJ_FILE="/scratch/PI/rondror/DesRes-Simulations/ordered-from-DesRes/nature2011/DESRES-Trajectory_nature2011-D-all.1/nature2011-D-all/nature2011-D-all-128.dcd"
OUTPUT_FILE="/scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-active-noNb-BI-nature2011/condition-D/rep_1/Prod_128/Prod_128_rewrapped.dcd"
python wrapAlign.py $TOP_FILE $TRAJ_FILE $OUTPUT_FILE

# Stripping water from rewrapped .dcd file and placing output file in same experiment fragment folder path
TRAJ_FILE="/scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-active-noNb-BI-nature2011/condition-D/rep_1/Prod_128/Prod_128_rewrapped.dcd"
OUTPUT_FILE_PATH="/scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-active-noNb-BI-nature2011/condition-D/rep_1/Prod_128/Prod_128_rewrapped_strip_waters.dcd"
python stripWaters.py -top $TOP_FILE -traj $TRAJ_FILE $OUTPUT_FILE_PATH


# Rewrapping original .dcd files and placing copy in output experiment fragment folder path
cd /scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-active-noNb-BI-nature2011/condition-D/rep_1
mkdir Prod_129
cd /scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicInteractions/tools
TOP_FILE="/scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-active-noNb-BI-nature2011/condition-D/step5_assembly.pdb"
TRAJ_FILE="/scratch/PI/rondror/DesRes-Simulations/ordered-from-DesRes/nature2011/DESRES-Trajectory_nature2011-D-all.1/nature2011-D-all/nature2011-D-all-129.dcd"
OUTPUT_FILE="/scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-active-noNb-BI-nature2011/condition-D/rep_1/Prod_129/Prod_129_rewrapped.dcd"
python wrapAlign.py $TOP_FILE $TRAJ_FILE $OUTPUT_FILE

# Stripping water from rewrapped .dcd file and placing output file in same experiment fragment folder path
TRAJ_FILE="/scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-active-noNb-BI-nature2011/condition-D/rep_1/Prod_129/Prod_129_rewrapped.dcd"
OUTPUT_FILE_PATH="/scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-active-noNb-BI-nature2011/condition-D/rep_1/Prod_129/Prod_129_rewrapped_strip_waters.dcd"
python stripWaters.py -top $TOP_FILE -traj $TRAJ_FILE $OUTPUT_FILE_PATH


# Rewrapping original .dcd files and placing copy in output experiment fragment folder path
cd /scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-active-noNb-BI-nature2011/condition-D/rep_1
mkdir Prod_130
cd /scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicInteractions/tools
TOP_FILE="/scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-active-noNb-BI-nature2011/condition-D/step5_assembly.pdb"
TRAJ_FILE="/scratch/PI/rondror/DesRes-Simulations/ordered-from-DesRes/nature2011/DESRES-Trajectory_nature2011-D-all.1/nature2011-D-all/nature2011-D-all-130.dcd"
OUTPUT_FILE="/scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-active-noNb-BI-nature2011/condition-D/rep_1/Prod_130/Prod_130_rewrapped.dcd"
python wrapAlign.py $TOP_FILE $TRAJ_FILE $OUTPUT_FILE

# Stripping water from rewrapped .dcd file and placing output file in same experiment fragment folder path
TRAJ_FILE="/scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-active-noNb-BI-nature2011/condition-D/rep_1/Prod_130/Prod_130_rewrapped.dcd"
OUTPUT_FILE_PATH="/scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-active-noNb-BI-nature2011/condition-D/rep_1/Prod_130/Prod_130_rewrapped_strip_waters.dcd"
python stripWaters.py -top $TOP_FILE -traj $TRAJ_FILE $OUTPUT_FILE_PATH


# Rewrapping original .dcd files and placing copy in output experiment fragment folder path
cd /scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-active-noNb-BI-nature2011/condition-D/rep_1
mkdir Prod_131
cd /scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicInteractions/tools
TOP_FILE="/scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-active-noNb-BI-nature2011/condition-D/step5_assembly.pdb"
TRAJ_FILE="/scratch/PI/rondror/DesRes-Simulations/ordered-from-DesRes/nature2011/DESRES-Trajectory_nature2011-D-all.1/nature2011-D-all/nature2011-D-all-131.dcd"
OUTPUT_FILE="/scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-active-noNb-BI-nature2011/condition-D/rep_1/Prod_131/Prod_131_rewrapped.dcd"
python wrapAlign.py $TOP_FILE $TRAJ_FILE $OUTPUT_FILE

# Stripping water from rewrapped .dcd file and placing output file in same experiment fragment folder path
TRAJ_FILE="/scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-active-noNb-BI-nature2011/condition-D/rep_1/Prod_131/Prod_131_rewrapped.dcd"
OUTPUT_FILE_PATH="/scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-active-noNb-BI-nature2011/condition-D/rep_1/Prod_131/Prod_131_rewrapped_strip_waters.dcd"
python stripWaters.py -top $TOP_FILE -traj $TRAJ_FILE $OUTPUT_FILE_PATH


# Rewrapping original .dcd files and placing copy in output experiment fragment folder path
cd /scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-active-noNb-BI-nature2011/condition-D/rep_1
mkdir Prod_132
cd /scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicInteractions/tools
TOP_FILE="/scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-active-noNb-BI-nature2011/condition-D/step5_assembly.pdb"
TRAJ_FILE="/scratch/PI/rondror/DesRes-Simulations/ordered-from-DesRes/nature2011/DESRES-Trajectory_nature2011-D-all.1/nature2011-D-all/nature2011-D-all-132.dcd"
OUTPUT_FILE="/scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-active-noNb-BI-nature2011/condition-D/rep_1/Prod_132/Prod_132_rewrapped.dcd"
python wrapAlign.py $TOP_FILE $TRAJ_FILE $OUTPUT_FILE

# Stripping water from rewrapped .dcd file and placing output file in same experiment fragment folder path
TRAJ_FILE="/scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-active-noNb-BI-nature2011/condition-D/rep_1/Prod_132/Prod_132_rewrapped.dcd"
OUTPUT_FILE_PATH="/scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-active-noNb-BI-nature2011/condition-D/rep_1/Prod_132/Prod_132_rewrapped_strip_waters.dcd"
python stripWaters.py -top $TOP_FILE -traj $TRAJ_FILE $OUTPUT_FILE_PATH


# Rewrapping original .dcd files and placing copy in output experiment fragment folder path
cd /scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-active-noNb-BI-nature2011/condition-D/rep_1
mkdir Prod_133
cd /scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicInteractions/tools
TOP_FILE="/scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-active-noNb-BI-nature2011/condition-D/step5_assembly.pdb"
TRAJ_FILE="/scratch/PI/rondror/DesRes-Simulations/ordered-from-DesRes/nature2011/DESRES-Trajectory_nature2011-D-all.1/nature2011-D-all/nature2011-D-all-133.dcd"
OUTPUT_FILE="/scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-active-noNb-BI-nature2011/condition-D/rep_1/Prod_133/Prod_133_rewrapped.dcd"
python wrapAlign.py $TOP_FILE $TRAJ_FILE $OUTPUT_FILE

# Stripping water from rewrapped .dcd file and placing output file in same experiment fragment folder path
TRAJ_FILE="/scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-active-noNb-BI-nature2011/condition-D/rep_1/Prod_133/Prod_133_rewrapped.dcd"
OUTPUT_FILE_PATH="/scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-active-noNb-BI-nature2011/condition-D/rep_1/Prod_133/Prod_133_rewrapped_strip_waters.dcd"
python stripWaters.py -top $TOP_FILE -traj $TRAJ_FILE $OUTPUT_FILE_PATH


# Rewrapping original .dcd files and placing copy in output experiment fragment folder path
cd /scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-active-noNb-BI-nature2011/condition-D/rep_1
mkdir Prod_134
cd /scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicInteractions/tools
TOP_FILE="/scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-active-noNb-BI-nature2011/condition-D/step5_assembly.pdb"
TRAJ_FILE="/scratch/PI/rondror/DesRes-Simulations/ordered-from-DesRes/nature2011/DESRES-Trajectory_nature2011-D-all.1/nature2011-D-all/nature2011-D-all-134.dcd"
OUTPUT_FILE="/scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-active-noNb-BI-nature2011/condition-D/rep_1/Prod_134/Prod_134_rewrapped.dcd"
python wrapAlign.py $TOP_FILE $TRAJ_FILE $OUTPUT_FILE

# Stripping water from rewrapped .dcd file and placing output file in same experiment fragment folder path
TRAJ_FILE="/scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-active-noNb-BI-nature2011/condition-D/rep_1/Prod_134/Prod_134_rewrapped.dcd"
OUTPUT_FILE_PATH="/scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-active-noNb-BI-nature2011/condition-D/rep_1/Prod_134/Prod_134_rewrapped_strip_waters.dcd"
python stripWaters.py -top $TOP_FILE -traj $TRAJ_FILE $OUTPUT_FILE_PATH


# Rewrapping original .dcd files and placing copy in output experiment fragment folder path
cd /scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-active-noNb-BI-nature2011/condition-D/rep_1
mkdir Prod_135
cd /scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicInteractions/tools
TOP_FILE="/scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-active-noNb-BI-nature2011/condition-D/step5_assembly.pdb"
TRAJ_FILE="/scratch/PI/rondror/DesRes-Simulations/ordered-from-DesRes/nature2011/DESRES-Trajectory_nature2011-D-all.1/nature2011-D-all/nature2011-D-all-135.dcd"
OUTPUT_FILE="/scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-active-noNb-BI-nature2011/condition-D/rep_1/Prod_135/Prod_135_rewrapped.dcd"
python wrapAlign.py $TOP_FILE $TRAJ_FILE $OUTPUT_FILE

# Stripping water from rewrapped .dcd file and placing output file in same experiment fragment folder path
TRAJ_FILE="/scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-active-noNb-BI-nature2011/condition-D/rep_1/Prod_135/Prod_135_rewrapped.dcd"
OUTPUT_FILE_PATH="/scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-active-noNb-BI-nature2011/condition-D/rep_1/Prod_135/Prod_135_rewrapped_strip_waters.dcd"
python stripWaters.py -top $TOP_FILE -traj $TRAJ_FILE $OUTPUT_FILE_PATH


# Rewrapping original .dcd files and placing copy in output experiment fragment folder path
cd /scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-active-noNb-BI-nature2011/condition-D/rep_1
mkdir Prod_136
cd /scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicInteractions/tools
TOP_FILE="/scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-active-noNb-BI-nature2011/condition-D/step5_assembly.pdb"
TRAJ_FILE="/scratch/PI/rondror/DesRes-Simulations/ordered-from-DesRes/nature2011/DESRES-Trajectory_nature2011-D-all.1/nature2011-D-all/nature2011-D-all-136.dcd"
OUTPUT_FILE="/scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-active-noNb-BI-nature2011/condition-D/rep_1/Prod_136/Prod_136_rewrapped.dcd"
python wrapAlign.py $TOP_FILE $TRAJ_FILE $OUTPUT_FILE

# Stripping water from rewrapped .dcd file and placing output file in same experiment fragment folder path
TRAJ_FILE="/scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-active-noNb-BI-nature2011/condition-D/rep_1/Prod_136/Prod_136_rewrapped.dcd"
OUTPUT_FILE_PATH="/scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-active-noNb-BI-nature2011/condition-D/rep_1/Prod_136/Prod_136_rewrapped_strip_waters.dcd"
python stripWaters.py -top $TOP_FILE -traj $TRAJ_FILE $OUTPUT_FILE_PATH


# Rewrapping original .dcd files and placing copy in output experiment fragment folder path
cd /scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-active-noNb-BI-nature2011/condition-D/rep_1
mkdir Prod_137
cd /scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicInteractions/tools
TOP_FILE="/scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-active-noNb-BI-nature2011/condition-D/step5_assembly.pdb"
TRAJ_FILE="/scratch/PI/rondror/DesRes-Simulations/ordered-from-DesRes/nature2011/DESRES-Trajectory_nature2011-D-all.1/nature2011-D-all/nature2011-D-all-137.dcd"
OUTPUT_FILE="/scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-active-noNb-BI-nature2011/condition-D/rep_1/Prod_137/Prod_137_rewrapped.dcd"
python wrapAlign.py $TOP_FILE $TRAJ_FILE $OUTPUT_FILE

# Stripping water from rewrapped .dcd file and placing output file in same experiment fragment folder path
TRAJ_FILE="/scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-active-noNb-BI-nature2011/condition-D/rep_1/Prod_137/Prod_137_rewrapped.dcd"
OUTPUT_FILE_PATH="/scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-active-noNb-BI-nature2011/condition-D/rep_1/Prod_137/Prod_137_rewrapped_strip_waters.dcd"
python stripWaters.py -top $TOP_FILE -traj $TRAJ_FILE $OUTPUT_FILE_PATH


# Rewrapping original .dcd files and placing copy in output experiment fragment folder path
cd /scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-active-noNb-BI-nature2011/condition-D/rep_1
mkdir Prod_138
cd /scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicInteractions/tools
TOP_FILE="/scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-active-noNb-BI-nature2011/condition-D/step5_assembly.pdb"
TRAJ_FILE="/scratch/PI/rondror/DesRes-Simulations/ordered-from-DesRes/nature2011/DESRES-Trajectory_nature2011-D-all.1/nature2011-D-all/nature2011-D-all-138.dcd"
OUTPUT_FILE="/scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-active-noNb-BI-nature2011/condition-D/rep_1/Prod_138/Prod_138_rewrapped.dcd"
python wrapAlign.py $TOP_FILE $TRAJ_FILE $OUTPUT_FILE

# Stripping water from rewrapped .dcd file and placing output file in same experiment fragment folder path
TRAJ_FILE="/scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-active-noNb-BI-nature2011/condition-D/rep_1/Prod_138/Prod_138_rewrapped.dcd"
OUTPUT_FILE_PATH="/scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-active-noNb-BI-nature2011/condition-D/rep_1/Prod_138/Prod_138_rewrapped_strip_waters.dcd"
python stripWaters.py -top $TOP_FILE -traj $TRAJ_FILE $OUTPUT_FILE_PATH


# Rewrapping original .dcd files and placing copy in output experiment fragment folder path
cd /scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-active-noNb-BI-nature2011/condition-D/rep_1
mkdir Prod_139
cd /scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicInteractions/tools
TOP_FILE="/scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-active-noNb-BI-nature2011/condition-D/step5_assembly.pdb"
TRAJ_FILE="/scratch/PI/rondror/DesRes-Simulations/ordered-from-DesRes/nature2011/DESRES-Trajectory_nature2011-D-all.1/nature2011-D-all/nature2011-D-all-139.dcd"
OUTPUT_FILE="/scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-active-noNb-BI-nature2011/condition-D/rep_1/Prod_139/Prod_139_rewrapped.dcd"
python wrapAlign.py $TOP_FILE $TRAJ_FILE $OUTPUT_FILE

# Stripping water from rewrapped .dcd file and placing output file in same experiment fragment folder path
TRAJ_FILE="/scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-active-noNb-BI-nature2011/condition-D/rep_1/Prod_139/Prod_139_rewrapped.dcd"
OUTPUT_FILE_PATH="/scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-active-noNb-BI-nature2011/condition-D/rep_1/Prod_139/Prod_139_rewrapped_strip_waters.dcd"
python stripWaters.py -top $TOP_FILE -traj $TRAJ_FILE $OUTPUT_FILE_PATH


# Rewrapping original .dcd files and placing copy in output experiment fragment folder path
cd /scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-active-noNb-BI-nature2011/condition-D/rep_1
mkdir Prod_140
cd /scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicInteractions/tools
TOP_FILE="/scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-active-noNb-BI-nature2011/condition-D/step5_assembly.pdb"
TRAJ_FILE="/scratch/PI/rondror/DesRes-Simulations/ordered-from-DesRes/nature2011/DESRES-Trajectory_nature2011-D-all.1/nature2011-D-all/nature2011-D-all-140.dcd"
OUTPUT_FILE="/scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-active-noNb-BI-nature2011/condition-D/rep_1/Prod_140/Prod_140_rewrapped.dcd"
python wrapAlign.py $TOP_FILE $TRAJ_FILE $OUTPUT_FILE

# Stripping water from rewrapped .dcd file and placing output file in same experiment fragment folder path
TRAJ_FILE="/scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-active-noNb-BI-nature2011/condition-D/rep_1/Prod_140/Prod_140_rewrapped.dcd"
OUTPUT_FILE_PATH="/scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-active-noNb-BI-nature2011/condition-D/rep_1/Prod_140/Prod_140_rewrapped_strip_waters.dcd"
python stripWaters.py -top $TOP_FILE -traj $TRAJ_FILE $OUTPUT_FILE_PATH


# Rewrapping original .dcd files and placing copy in output experiment fragment folder path
cd /scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-active-noNb-BI-nature2011/condition-D/rep_1
mkdir Prod_141
cd /scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicInteractions/tools
TOP_FILE="/scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-active-noNb-BI-nature2011/condition-D/step5_assembly.pdb"
TRAJ_FILE="/scratch/PI/rondror/DesRes-Simulations/ordered-from-DesRes/nature2011/DESRES-Trajectory_nature2011-D-all.1/nature2011-D-all/nature2011-D-all-141.dcd"
OUTPUT_FILE="/scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-active-noNb-BI-nature2011/condition-D/rep_1/Prod_141/Prod_141_rewrapped.dcd"
python wrapAlign.py $TOP_FILE $TRAJ_FILE $OUTPUT_FILE

# Stripping water from rewrapped .dcd file and placing output file in same experiment fragment folder path
TRAJ_FILE="/scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-active-noNb-BI-nature2011/condition-D/rep_1/Prod_141/Prod_141_rewrapped.dcd"
OUTPUT_FILE_PATH="/scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-active-noNb-BI-nature2011/condition-D/rep_1/Prod_141/Prod_141_rewrapped_strip_waters.dcd"
python stripWaters.py -top $TOP_FILE -traj $TRAJ_FILE $OUTPUT_FILE_PATH


# Rewrapping original .dcd files and placing copy in output experiment fragment folder path
cd /scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-active-noNb-BI-nature2011/condition-D/rep_1
mkdir Prod_142
cd /scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicInteractions/tools
TOP_FILE="/scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-active-noNb-BI-nature2011/condition-D/step5_assembly.pdb"
TRAJ_FILE="/scratch/PI/rondror/DesRes-Simulations/ordered-from-DesRes/nature2011/DESRES-Trajectory_nature2011-D-all.1/nature2011-D-all/nature2011-D-all-142.dcd"
OUTPUT_FILE="/scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-active-noNb-BI-nature2011/condition-D/rep_1/Prod_142/Prod_142_rewrapped.dcd"
python wrapAlign.py $TOP_FILE $TRAJ_FILE $OUTPUT_FILE

# Stripping water from rewrapped .dcd file and placing output file in same experiment fragment folder path
TRAJ_FILE="/scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-active-noNb-BI-nature2011/condition-D/rep_1/Prod_142/Prod_142_rewrapped.dcd"
OUTPUT_FILE_PATH="/scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-active-noNb-BI-nature2011/condition-D/rep_1/Prod_142/Prod_142_rewrapped_strip_waters.dcd"
python stripWaters.py -top $TOP_FILE -traj $TRAJ_FILE $OUTPUT_FILE_PATH


# Rewrapping original .dcd files and placing copy in output experiment fragment folder path
cd /scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-active-noNb-BI-nature2011/condition-D/rep_1
mkdir Prod_143
cd /scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicInteractions/tools
TOP_FILE="/scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-active-noNb-BI-nature2011/condition-D/step5_assembly.pdb"
TRAJ_FILE="/scratch/PI/rondror/DesRes-Simulations/ordered-from-DesRes/nature2011/DESRES-Trajectory_nature2011-D-all.1/nature2011-D-all/nature2011-D-all-143.dcd"
OUTPUT_FILE="/scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-active-noNb-BI-nature2011/condition-D/rep_1/Prod_143/Prod_143_rewrapped.dcd"
python wrapAlign.py $TOP_FILE $TRAJ_FILE $OUTPUT_FILE

# Stripping water from rewrapped .dcd file and placing output file in same experiment fragment folder path
TRAJ_FILE="/scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-active-noNb-BI-nature2011/condition-D/rep_1/Prod_143/Prod_143_rewrapped.dcd"
OUTPUT_FILE_PATH="/scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-active-noNb-BI-nature2011/condition-D/rep_1/Prod_143/Prod_143_rewrapped_strip_waters.dcd"
python stripWaters.py -top $TOP_FILE -traj $TRAJ_FILE $OUTPUT_FILE_PATH


# Rewrapping original .dcd files and placing copy in output experiment fragment folder path
cd /scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-active-noNb-BI-nature2011/condition-D/rep_1
mkdir Prod_144
cd /scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicInteractions/tools
TOP_FILE="/scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-active-noNb-BI-nature2011/condition-D/step5_assembly.pdb"
TRAJ_FILE="/scratch/PI/rondror/DesRes-Simulations/ordered-from-DesRes/nature2011/DESRES-Trajectory_nature2011-D-all.1/nature2011-D-all/nature2011-D-all-144.dcd"
OUTPUT_FILE="/scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-active-noNb-BI-nature2011/condition-D/rep_1/Prod_144/Prod_144_rewrapped.dcd"
python wrapAlign.py $TOP_FILE $TRAJ_FILE $OUTPUT_FILE

# Stripping water from rewrapped .dcd file and placing output file in same experiment fragment folder path
TRAJ_FILE="/scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-active-noNb-BI-nature2011/condition-D/rep_1/Prod_144/Prod_144_rewrapped.dcd"
OUTPUT_FILE_PATH="/scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-active-noNb-BI-nature2011/condition-D/rep_1/Prod_144/Prod_144_rewrapped_strip_waters.dcd"
python stripWaters.py -top $TOP_FILE -traj $TRAJ_FILE $OUTPUT_FILE_PATH


# Rewrapping original .dcd files and placing copy in output experiment fragment folder path
cd /scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-active-noNb-BI-nature2011/condition-D/rep_1
mkdir Prod_145
cd /scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicInteractions/tools
TOP_FILE="/scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-active-noNb-BI-nature2011/condition-D/step5_assembly.pdb"
TRAJ_FILE="/scratch/PI/rondror/DesRes-Simulations/ordered-from-DesRes/nature2011/DESRES-Trajectory_nature2011-D-all.1/nature2011-D-all/nature2011-D-all-145.dcd"
OUTPUT_FILE="/scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-active-noNb-BI-nature2011/condition-D/rep_1/Prod_145/Prod_145_rewrapped.dcd"
python wrapAlign.py $TOP_FILE $TRAJ_FILE $OUTPUT_FILE

# Stripping water from rewrapped .dcd file and placing output file in same experiment fragment folder path
TRAJ_FILE="/scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-active-noNb-BI-nature2011/condition-D/rep_1/Prod_145/Prod_145_rewrapped.dcd"
OUTPUT_FILE_PATH="/scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-active-noNb-BI-nature2011/condition-D/rep_1/Prod_145/Prod_145_rewrapped_strip_waters.dcd"
python stripWaters.py -top $TOP_FILE -traj $TRAJ_FILE $OUTPUT_FILE_PATH


# Rewrapping original .dcd files and placing copy in output experiment fragment folder path
cd /scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-active-noNb-BI-nature2011/condition-D/rep_1
mkdir Prod_146
cd /scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicInteractions/tools
TOP_FILE="/scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-active-noNb-BI-nature2011/condition-D/step5_assembly.pdb"
TRAJ_FILE="/scratch/PI/rondror/DesRes-Simulations/ordered-from-DesRes/nature2011/DESRES-Trajectory_nature2011-D-all.1/nature2011-D-all/nature2011-D-all-146.dcd"
OUTPUT_FILE="/scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-active-noNb-BI-nature2011/condition-D/rep_1/Prod_146/Prod_146_rewrapped.dcd"
python wrapAlign.py $TOP_FILE $TRAJ_FILE $OUTPUT_FILE

# Stripping water from rewrapped .dcd file and placing output file in same experiment fragment folder path
TRAJ_FILE="/scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-active-noNb-BI-nature2011/condition-D/rep_1/Prod_146/Prod_146_rewrapped.dcd"
OUTPUT_FILE_PATH="/scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-active-noNb-BI-nature2011/condition-D/rep_1/Prod_146/Prod_146_rewrapped_strip_waters.dcd"
python stripWaters.py -top $TOP_FILE -traj $TRAJ_FILE $OUTPUT_FILE_PATH


# Rewrapping original .dcd files and placing copy in output experiment fragment folder path
cd /scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-active-noNb-BI-nature2011/condition-D/rep_1
mkdir Prod_147
cd /scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicInteractions/tools
TOP_FILE="/scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-active-noNb-BI-nature2011/condition-D/step5_assembly.pdb"
TRAJ_FILE="/scratch/PI/rondror/DesRes-Simulations/ordered-from-DesRes/nature2011/DESRES-Trajectory_nature2011-D-all.1/nature2011-D-all/nature2011-D-all-147.dcd"
OUTPUT_FILE="/scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-active-noNb-BI-nature2011/condition-D/rep_1/Prod_147/Prod_147_rewrapped.dcd"
python wrapAlign.py $TOP_FILE $TRAJ_FILE $OUTPUT_FILE

# Stripping water from rewrapped .dcd file and placing output file in same experiment fragment folder path
TRAJ_FILE="/scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-active-noNb-BI-nature2011/condition-D/rep_1/Prod_147/Prod_147_rewrapped.dcd"
OUTPUT_FILE_PATH="/scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-active-noNb-BI-nature2011/condition-D/rep_1/Prod_147/Prod_147_rewrapped_strip_waters.dcd"
python stripWaters.py -top $TOP_FILE -traj $TRAJ_FILE $OUTPUT_FILE_PATH


# Rewrapping original .dcd files and placing copy in output experiment fragment folder path
cd /scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-active-noNb-BI-nature2011/condition-D/rep_1
mkdir Prod_148
cd /scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicInteractions/tools
TOP_FILE="/scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-active-noNb-BI-nature2011/condition-D/step5_assembly.pdb"
TRAJ_FILE="/scratch/PI/rondror/DesRes-Simulations/ordered-from-DesRes/nature2011/DESRES-Trajectory_nature2011-D-all.1/nature2011-D-all/nature2011-D-all-148.dcd"
OUTPUT_FILE="/scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-active-noNb-BI-nature2011/condition-D/rep_1/Prod_148/Prod_148_rewrapped.dcd"
python wrapAlign.py $TOP_FILE $TRAJ_FILE $OUTPUT_FILE

# Stripping water from rewrapped .dcd file and placing output file in same experiment fragment folder path
TRAJ_FILE="/scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-active-noNb-BI-nature2011/condition-D/rep_1/Prod_148/Prod_148_rewrapped.dcd"
OUTPUT_FILE_PATH="/scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-active-noNb-BI-nature2011/condition-D/rep_1/Prod_148/Prod_148_rewrapped_strip_waters.dcd"
python stripWaters.py -top $TOP_FILE -traj $TRAJ_FILE $OUTPUT_FILE_PATH


# Rewrapping original .dcd files and placing copy in output experiment fragment folder path
cd /scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-active-noNb-BI-nature2011/condition-D/rep_1
mkdir Prod_149
cd /scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicInteractions/tools
TOP_FILE="/scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-active-noNb-BI-nature2011/condition-D/step5_assembly.pdb"
TRAJ_FILE="/scratch/PI/rondror/DesRes-Simulations/ordered-from-DesRes/nature2011/DESRES-Trajectory_nature2011-D-all.1/nature2011-D-all/nature2011-D-all-149.dcd"
OUTPUT_FILE="/scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-active-noNb-BI-nature2011/condition-D/rep_1/Prod_149/Prod_149_rewrapped.dcd"
python wrapAlign.py $TOP_FILE $TRAJ_FILE $OUTPUT_FILE

# Stripping water from rewrapped .dcd file and placing output file in same experiment fragment folder path
TRAJ_FILE="/scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-active-noNb-BI-nature2011/condition-D/rep_1/Prod_149/Prod_149_rewrapped.dcd"
OUTPUT_FILE_PATH="/scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-active-noNb-BI-nature2011/condition-D/rep_1/Prod_149/Prod_149_rewrapped_strip_waters.dcd"
python stripWaters.py -top $TOP_FILE -traj $TRAJ_FILE $OUTPUT_FILE_PATH


# Rewrapping original .dcd files and placing copy in output experiment fragment folder path
cd /scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-active-noNb-BI-nature2011/condition-D/rep_1
mkdir Prod_150
cd /scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicInteractions/tools
TOP_FILE="/scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-active-noNb-BI-nature2011/condition-D/step5_assembly.pdb"
TRAJ_FILE="/scratch/PI/rondror/DesRes-Simulations/ordered-from-DesRes/nature2011/DESRES-Trajectory_nature2011-D-all.1/nature2011-D-all/nature2011-D-all-150.dcd"
OUTPUT_FILE="/scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-active-noNb-BI-nature2011/condition-D/rep_1/Prod_150/Prod_150_rewrapped.dcd"
python wrapAlign.py $TOP_FILE $TRAJ_FILE $OUTPUT_FILE

# Stripping water from rewrapped .dcd file and placing output file in same experiment fragment folder path
TRAJ_FILE="/scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-active-noNb-BI-nature2011/condition-D/rep_1/Prod_150/Prod_150_rewrapped.dcd"
OUTPUT_FILE_PATH="/scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-active-noNb-BI-nature2011/condition-D/rep_1/Prod_150/Prod_150_rewrapped_strip_waters.dcd"
python stripWaters.py -top $TOP_FILE -traj $TRAJ_FILE $OUTPUT_FILE_PATH


# Rewrapping original .dcd files and placing copy in output experiment fragment folder path
cd /scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-active-noNb-BI-nature2011/condition-D/rep_1
mkdir Prod_151
cd /scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicInteractions/tools
TOP_FILE="/scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-active-noNb-BI-nature2011/condition-D/step5_assembly.pdb"
TRAJ_FILE="/scratch/PI/rondror/DesRes-Simulations/ordered-from-DesRes/nature2011/DESRES-Trajectory_nature2011-D-all.1/nature2011-D-all/nature2011-D-all-151.dcd"
OUTPUT_FILE="/scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-active-noNb-BI-nature2011/condition-D/rep_1/Prod_151/Prod_151_rewrapped.dcd"
python wrapAlign.py $TOP_FILE $TRAJ_FILE $OUTPUT_FILE

# Stripping water from rewrapped .dcd file and placing output file in same experiment fragment folder path
TRAJ_FILE="/scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-active-noNb-BI-nature2011/condition-D/rep_1/Prod_151/Prod_151_rewrapped.dcd"
OUTPUT_FILE_PATH="/scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-active-noNb-BI-nature2011/condition-D/rep_1/Prod_151/Prod_151_rewrapped_strip_waters.dcd"
python stripWaters.py -top $TOP_FILE -traj $TRAJ_FILE $OUTPUT_FILE_PATH


# Rewrapping original .dcd files and placing copy in output experiment fragment folder path
cd /scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-active-noNb-BI-nature2011/condition-D/rep_1
mkdir Prod_152
cd /scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicInteractions/tools
TOP_FILE="/scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-active-noNb-BI-nature2011/condition-D/step5_assembly.pdb"
TRAJ_FILE="/scratch/PI/rondror/DesRes-Simulations/ordered-from-DesRes/nature2011/DESRES-Trajectory_nature2011-D-all.1/nature2011-D-all/nature2011-D-all-152.dcd"
OUTPUT_FILE="/scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-active-noNb-BI-nature2011/condition-D/rep_1/Prod_152/Prod_152_rewrapped.dcd"
python wrapAlign.py $TOP_FILE $TRAJ_FILE $OUTPUT_FILE

# Stripping water from rewrapped .dcd file and placing output file in same experiment fragment folder path
TRAJ_FILE="/scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-active-noNb-BI-nature2011/condition-D/rep_1/Prod_152/Prod_152_rewrapped.dcd"
OUTPUT_FILE_PATH="/scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-active-noNb-BI-nature2011/condition-D/rep_1/Prod_152/Prod_152_rewrapped_strip_waters.dcd"
python stripWaters.py -top $TOP_FILE -traj $TRAJ_FILE $OUTPUT_FILE_PATH


# Rewrapping original .dcd files and placing copy in output experiment fragment folder path
cd /scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-active-noNb-BI-nature2011/condition-D/rep_1
mkdir Prod_153
cd /scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicInteractions/tools
TOP_FILE="/scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-active-noNb-BI-nature2011/condition-D/step5_assembly.pdb"
TRAJ_FILE="/scratch/PI/rondror/DesRes-Simulations/ordered-from-DesRes/nature2011/DESRES-Trajectory_nature2011-D-all.1/nature2011-D-all/nature2011-D-all-153.dcd"
OUTPUT_FILE="/scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-active-noNb-BI-nature2011/condition-D/rep_1/Prod_153/Prod_153_rewrapped.dcd"
python wrapAlign.py $TOP_FILE $TRAJ_FILE $OUTPUT_FILE

# Stripping water from rewrapped .dcd file and placing output file in same experiment fragment folder path
TRAJ_FILE="/scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-active-noNb-BI-nature2011/condition-D/rep_1/Prod_153/Prod_153_rewrapped.dcd"
OUTPUT_FILE_PATH="/scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-active-noNb-BI-nature2011/condition-D/rep_1/Prod_153/Prod_153_rewrapped_strip_waters.dcd"
python stripWaters.py -top $TOP_FILE -traj $TRAJ_FILE $OUTPUT_FILE_PATH


# Rewrapping original .dcd files and placing copy in output experiment fragment folder path
cd /scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-active-noNb-BI-nature2011/condition-D/rep_1
mkdir Prod_154
cd /scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicInteractions/tools
TOP_FILE="/scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-active-noNb-BI-nature2011/condition-D/step5_assembly.pdb"
TRAJ_FILE="/scratch/PI/rondror/DesRes-Simulations/ordered-from-DesRes/nature2011/DESRES-Trajectory_nature2011-D-all.1/nature2011-D-all/nature2011-D-all-154.dcd"
OUTPUT_FILE="/scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-active-noNb-BI-nature2011/condition-D/rep_1/Prod_154/Prod_154_rewrapped.dcd"
python wrapAlign.py $TOP_FILE $TRAJ_FILE $OUTPUT_FILE

# Stripping water from rewrapped .dcd file and placing output file in same experiment fragment folder path
TRAJ_FILE="/scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-active-noNb-BI-nature2011/condition-D/rep_1/Prod_154/Prod_154_rewrapped.dcd"
OUTPUT_FILE_PATH="/scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-active-noNb-BI-nature2011/condition-D/rep_1/Prod_154/Prod_154_rewrapped_strip_waters.dcd"
python stripWaters.py -top $TOP_FILE -traj $TRAJ_FILE $OUTPUT_FILE_PATH


# Rewrapping original .dcd files and placing copy in output experiment fragment folder path
cd /scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-active-noNb-BI-nature2011/condition-D/rep_1
mkdir Prod_155
cd /scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicInteractions/tools
TOP_FILE="/scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-active-noNb-BI-nature2011/condition-D/step5_assembly.pdb"
TRAJ_FILE="/scratch/PI/rondror/DesRes-Simulations/ordered-from-DesRes/nature2011/DESRES-Trajectory_nature2011-D-all.1/nature2011-D-all/nature2011-D-all-155.dcd"
OUTPUT_FILE="/scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-active-noNb-BI-nature2011/condition-D/rep_1/Prod_155/Prod_155_rewrapped.dcd"
python wrapAlign.py $TOP_FILE $TRAJ_FILE $OUTPUT_FILE

# Stripping water from rewrapped .dcd file and placing output file in same experiment fragment folder path
TRAJ_FILE="/scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-active-noNb-BI-nature2011/condition-D/rep_1/Prod_155/Prod_155_rewrapped.dcd"
OUTPUT_FILE_PATH="/scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-active-noNb-BI-nature2011/condition-D/rep_1/Prod_155/Prod_155_rewrapped_strip_waters.dcd"
python stripWaters.py -top $TOP_FILE -traj $TRAJ_FILE $OUTPUT_FILE_PATH


# Rewrapping original .dcd files and placing copy in output experiment fragment folder path
cd /scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-active-noNb-BI-nature2011/condition-D/rep_1
mkdir Prod_156
cd /scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicInteractions/tools
TOP_FILE="/scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-active-noNb-BI-nature2011/condition-D/step5_assembly.pdb"
TRAJ_FILE="/scratch/PI/rondror/DesRes-Simulations/ordered-from-DesRes/nature2011/DESRES-Trajectory_nature2011-D-all.1/nature2011-D-all/nature2011-D-all-156.dcd"
OUTPUT_FILE="/scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-active-noNb-BI-nature2011/condition-D/rep_1/Prod_156/Prod_156_rewrapped.dcd"
python wrapAlign.py $TOP_FILE $TRAJ_FILE $OUTPUT_FILE

# Stripping water from rewrapped .dcd file and placing output file in same experiment fragment folder path
TRAJ_FILE="/scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-active-noNb-BI-nature2011/condition-D/rep_1/Prod_156/Prod_156_rewrapped.dcd"
OUTPUT_FILE_PATH="/scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-active-noNb-BI-nature2011/condition-D/rep_1/Prod_156/Prod_156_rewrapped_strip_waters.dcd"
python stripWaters.py -top $TOP_FILE -traj $TRAJ_FILE $OUTPUT_FILE_PATH


# Rewrapping original .dcd files and placing copy in output experiment fragment folder path
cd /scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-active-noNb-BI-nature2011/condition-D/rep_1
mkdir Prod_157
cd /scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicInteractions/tools
TOP_FILE="/scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-active-noNb-BI-nature2011/condition-D/step5_assembly.pdb"
TRAJ_FILE="/scratch/PI/rondror/DesRes-Simulations/ordered-from-DesRes/nature2011/DESRES-Trajectory_nature2011-D-all.1/nature2011-D-all/nature2011-D-all-157.dcd"
OUTPUT_FILE="/scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-active-noNb-BI-nature2011/condition-D/rep_1/Prod_157/Prod_157_rewrapped.dcd"
python wrapAlign.py $TOP_FILE $TRAJ_FILE $OUTPUT_FILE

# Stripping water from rewrapped .dcd file and placing output file in same experiment fragment folder path
TRAJ_FILE="/scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-active-noNb-BI-nature2011/condition-D/rep_1/Prod_157/Prod_157_rewrapped.dcd"
OUTPUT_FILE_PATH="/scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-active-noNb-BI-nature2011/condition-D/rep_1/Prod_157/Prod_157_rewrapped_strip_waters.dcd"
python stripWaters.py -top $TOP_FILE -traj $TRAJ_FILE $OUTPUT_FILE_PATH


# Rewrapping original .dcd files and placing copy in output experiment fragment folder path
cd /scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-active-noNb-BI-nature2011/condition-D/rep_1
mkdir Prod_158
cd /scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicInteractions/tools
TOP_FILE="/scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-active-noNb-BI-nature2011/condition-D/step5_assembly.pdb"
TRAJ_FILE="/scratch/PI/rondror/DesRes-Simulations/ordered-from-DesRes/nature2011/DESRES-Trajectory_nature2011-D-all.1/nature2011-D-all/nature2011-D-all-158.dcd"
OUTPUT_FILE="/scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-active-noNb-BI-nature2011/condition-D/rep_1/Prod_158/Prod_158_rewrapped.dcd"
python wrapAlign.py $TOP_FILE $TRAJ_FILE $OUTPUT_FILE

# Stripping water from rewrapped .dcd file and placing output file in same experiment fragment folder path
TRAJ_FILE="/scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-active-noNb-BI-nature2011/condition-D/rep_1/Prod_158/Prod_158_rewrapped.dcd"
OUTPUT_FILE_PATH="/scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-active-noNb-BI-nature2011/condition-D/rep_1/Prod_158/Prod_158_rewrapped_strip_waters.dcd"
python stripWaters.py -top $TOP_FILE -traj $TRAJ_FILE $OUTPUT_FILE_PATH


# Rewrapping original .dcd files and placing copy in output experiment fragment folder path
cd /scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-active-noNb-BI-nature2011/condition-D/rep_1
mkdir Prod_159
cd /scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicInteractions/tools
TOP_FILE="/scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-active-noNb-BI-nature2011/condition-D/step5_assembly.pdb"
TRAJ_FILE="/scratch/PI/rondror/DesRes-Simulations/ordered-from-DesRes/nature2011/DESRES-Trajectory_nature2011-D-all.1/nature2011-D-all/nature2011-D-all-159.dcd"
OUTPUT_FILE="/scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-active-noNb-BI-nature2011/condition-D/rep_1/Prod_159/Prod_159_rewrapped.dcd"
python wrapAlign.py $TOP_FILE $TRAJ_FILE $OUTPUT_FILE

# Stripping water from rewrapped .dcd file and placing output file in same experiment fragment folder path
TRAJ_FILE="/scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-active-noNb-BI-nature2011/condition-D/rep_1/Prod_159/Prod_159_rewrapped.dcd"
OUTPUT_FILE_PATH="/scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-active-noNb-BI-nature2011/condition-D/rep_1/Prod_159/Prod_159_rewrapped_strip_waters.dcd"
python stripWaters.py -top $TOP_FILE -traj $TRAJ_FILE $OUTPUT_FILE_PATH


# Rewrapping original .dcd files and placing copy in output experiment fragment folder path
cd /scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-active-noNb-BI-nature2011/condition-D/rep_1
mkdir Prod_160
cd /scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicInteractions/tools
TOP_FILE="/scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-active-noNb-BI-nature2011/condition-D/step5_assembly.pdb"
TRAJ_FILE="/scratch/PI/rondror/DesRes-Simulations/ordered-from-DesRes/nature2011/DESRES-Trajectory_nature2011-D-all.1/nature2011-D-all/nature2011-D-all-160.dcd"
OUTPUT_FILE="/scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-active-noNb-BI-nature2011/condition-D/rep_1/Prod_160/Prod_160_rewrapped.dcd"
python wrapAlign.py $TOP_FILE $TRAJ_FILE $OUTPUT_FILE

# Stripping water from rewrapped .dcd file and placing output file in same experiment fragment folder path
TRAJ_FILE="/scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-active-noNb-BI-nature2011/condition-D/rep_1/Prod_160/Prod_160_rewrapped.dcd"
OUTPUT_FILE_PATH="/scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-active-noNb-BI-nature2011/condition-D/rep_1/Prod_160/Prod_160_rewrapped_strip_waters.dcd"
python stripWaters.py -top $TOP_FILE -traj $TRAJ_FILE $OUTPUT_FILE_PATH


# Rewrapping original .dcd files and placing copy in output experiment fragment folder path
cd /scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-active-noNb-BI-nature2011/condition-D/rep_1
mkdir Prod_161
cd /scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicInteractions/tools
TOP_FILE="/scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-active-noNb-BI-nature2011/condition-D/step5_assembly.pdb"
TRAJ_FILE="/scratch/PI/rondror/DesRes-Simulations/ordered-from-DesRes/nature2011/DESRES-Trajectory_nature2011-D-all.1/nature2011-D-all/nature2011-D-all-161.dcd"
OUTPUT_FILE="/scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-active-noNb-BI-nature2011/condition-D/rep_1/Prod_161/Prod_161_rewrapped.dcd"
python wrapAlign.py $TOP_FILE $TRAJ_FILE $OUTPUT_FILE

# Stripping water from rewrapped .dcd file and placing output file in same experiment fragment folder path
TRAJ_FILE="/scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-active-noNb-BI-nature2011/condition-D/rep_1/Prod_161/Prod_161_rewrapped.dcd"
OUTPUT_FILE_PATH="/scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-active-noNb-BI-nature2011/condition-D/rep_1/Prod_161/Prod_161_rewrapped_strip_waters.dcd"
python stripWaters.py -top $TOP_FILE -traj $TRAJ_FILE $OUTPUT_FILE_PATH


# Rewrapping original .dcd files and placing copy in output experiment fragment folder path
cd /scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-active-noNb-BI-nature2011/condition-D/rep_1
mkdir Prod_162
cd /scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicInteractions/tools
TOP_FILE="/scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-active-noNb-BI-nature2011/condition-D/step5_assembly.pdb"
TRAJ_FILE="/scratch/PI/rondror/DesRes-Simulations/ordered-from-DesRes/nature2011/DESRES-Trajectory_nature2011-D-all.1/nature2011-D-all/nature2011-D-all-162.dcd"
OUTPUT_FILE="/scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-active-noNb-BI-nature2011/condition-D/rep_1/Prod_162/Prod_162_rewrapped.dcd"
python wrapAlign.py $TOP_FILE $TRAJ_FILE $OUTPUT_FILE

# Stripping water from rewrapped .dcd file and placing output file in same experiment fragment folder path
TRAJ_FILE="/scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-active-noNb-BI-nature2011/condition-D/rep_1/Prod_162/Prod_162_rewrapped.dcd"
OUTPUT_FILE_PATH="/scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-active-noNb-BI-nature2011/condition-D/rep_1/Prod_162/Prod_162_rewrapped_strip_waters.dcd"
python stripWaters.py -top $TOP_FILE -traj $TRAJ_FILE $OUTPUT_FILE_PATH


# Rewrapping original .dcd files and placing copy in output experiment fragment folder path
cd /scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-active-noNb-BI-nature2011/condition-D/rep_1
mkdir Prod_163
cd /scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicInteractions/tools
TOP_FILE="/scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-active-noNb-BI-nature2011/condition-D/step5_assembly.pdb"
TRAJ_FILE="/scratch/PI/rondror/DesRes-Simulations/ordered-from-DesRes/nature2011/DESRES-Trajectory_nature2011-D-all.1/nature2011-D-all/nature2011-D-all-163.dcd"
OUTPUT_FILE="/scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-active-noNb-BI-nature2011/condition-D/rep_1/Prod_163/Prod_163_rewrapped.dcd"
python wrapAlign.py $TOP_FILE $TRAJ_FILE $OUTPUT_FILE

# Stripping water from rewrapped .dcd file and placing output file in same experiment fragment folder path
TRAJ_FILE="/scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-active-noNb-BI-nature2011/condition-D/rep_1/Prod_163/Prod_163_rewrapped.dcd"
OUTPUT_FILE_PATH="/scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-active-noNb-BI-nature2011/condition-D/rep_1/Prod_163/Prod_163_rewrapped_strip_waters.dcd"
python stripWaters.py -top $TOP_FILE -traj $TRAJ_FILE $OUTPUT_FILE_PATH


# Rewrapping original .dcd files and placing copy in output experiment fragment folder path
cd /scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-active-noNb-BI-nature2011/condition-D/rep_1
mkdir Prod_164
cd /scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicInteractions/tools
TOP_FILE="/scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-active-noNb-BI-nature2011/condition-D/step5_assembly.pdb"
TRAJ_FILE="/scratch/PI/rondror/DesRes-Simulations/ordered-from-DesRes/nature2011/DESRES-Trajectory_nature2011-D-all.1/nature2011-D-all/nature2011-D-all-164.dcd"
OUTPUT_FILE="/scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-active-noNb-BI-nature2011/condition-D/rep_1/Prod_164/Prod_164_rewrapped.dcd"
python wrapAlign.py $TOP_FILE $TRAJ_FILE $OUTPUT_FILE

# Stripping water from rewrapped .dcd file and placing output file in same experiment fragment folder path
TRAJ_FILE="/scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-active-noNb-BI-nature2011/condition-D/rep_1/Prod_164/Prod_164_rewrapped.dcd"
OUTPUT_FILE_PATH="/scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutput/B2AR-active-noNb-BI-nature2011/condition-D/rep_1/Prod_164/Prod_164_rewrapped_strip_waters.dcd"
python stripWaters.py -top $TOP_FILE -traj $TRAJ_FILE $OUTPUT_FILE_PATH


