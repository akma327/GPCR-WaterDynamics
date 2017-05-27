# Converting .mae to .pdb file and placing in the output experimental condition path

cd /scratch/PI/rondror/akma327/DynamicNetworks/src/DI-pipeline-tools
MAE_PATH="/scratch/PI/rondror/DesRes-Simulations/Downloaded/Gprot_Science2015_Dror_Desres/science2015/DESRES-Trajectory_science2015-22-all/science2015-22-all/science2015-22-all.mae"
OUTPUT_PDB_PATH="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/step5_assembly.pdb"
python maeToPdb.py $MAE_PATH $OUTPUT_PDB_PATH

# Copy and rename .mae file to the output experimental condition path
cp /scratch/PI/rondror/DesRes-Simulations/Downloaded/Gprot_Science2015_Dror_Desres/science2015/DESRES-Trajectory_science2015-22-all/science2015-22-all/science2015-22-all.mae /scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/step5_assembly.mae

# Stripping waters from original pdb

TOPOLOGY_PATH="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/step5_assembly.pdb"
OUTPUT_FILE_PATH="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/step5_assembly_strip_waters.pdb"
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/DI-pipeline-tools
python stripWaters.py -top $TOPOLOGY_PATH $OUTPUT_FILE_PATH


# Rewrapping original .dcd files and placing copy in output experiment fragment folder path
cd /scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/rep_1
mkdir Prod_0
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/DI-pipeline-tools
TOP_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/step5_assembly.pdb"
TRAJ_FILE="/scratch/PI/rondror/DesRes-Simulations/Downloaded/Gprot_Science2015_Dror_Desres/science2015/DESRES-Trajectory_science2015-22-all/science2015-22-all/science2015-22-all-000.dcd"
OUTPUT_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/rep_1/Prod_0/Prod_0_rewrapped.dcd"
python wrapAlign.py $TOP_FILE $TRAJ_FILE $OUTPUT_FILE -crys

# Stripping water from rewrapped .dcd file and placing output file in same experiment fragment folder path
TRAJ_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/rep_1/Prod_0/Prod_0_rewrapped.dcd"
OUTPUT_FILE_PATH="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/rep_1/Prod_0/Prod_0_rewrapped_strip_waters.dcd"
python stripWaters.py -top $TOP_FILE -traj $TRAJ_FILE $OUTPUT_FILE_PATH


# Rewrapping original .dcd files and placing copy in output experiment fragment folder path
cd /scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/rep_1
mkdir Prod_1
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/DI-pipeline-tools
TOP_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/step5_assembly.pdb"
TRAJ_FILE="/scratch/PI/rondror/DesRes-Simulations/Downloaded/Gprot_Science2015_Dror_Desres/science2015/DESRES-Trajectory_science2015-22-all/science2015-22-all/science2015-22-all-001.dcd"
OUTPUT_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/rep_1/Prod_1/Prod_1_rewrapped.dcd"
python wrapAlign.py $TOP_FILE $TRAJ_FILE $OUTPUT_FILE

# Stripping water from rewrapped .dcd file and placing output file in same experiment fragment folder path
TRAJ_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/rep_1/Prod_1/Prod_1_rewrapped.dcd"
OUTPUT_FILE_PATH="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/rep_1/Prod_1/Prod_1_rewrapped_strip_waters.dcd"
python stripWaters.py -top $TOP_FILE -traj $TRAJ_FILE $OUTPUT_FILE_PATH


# Rewrapping original .dcd files and placing copy in output experiment fragment folder path
cd /scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/rep_1
mkdir Prod_2
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/DI-pipeline-tools
TOP_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/step5_assembly.pdb"
TRAJ_FILE="/scratch/PI/rondror/DesRes-Simulations/Downloaded/Gprot_Science2015_Dror_Desres/science2015/DESRES-Trajectory_science2015-22-all/science2015-22-all/science2015-22-all-002.dcd"
OUTPUT_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/rep_1/Prod_2/Prod_2_rewrapped.dcd"
python wrapAlign.py $TOP_FILE $TRAJ_FILE $OUTPUT_FILE

# Stripping water from rewrapped .dcd file and placing output file in same experiment fragment folder path
TRAJ_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/rep_1/Prod_2/Prod_2_rewrapped.dcd"
OUTPUT_FILE_PATH="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/rep_1/Prod_2/Prod_2_rewrapped_strip_waters.dcd"
python stripWaters.py -top $TOP_FILE -traj $TRAJ_FILE $OUTPUT_FILE_PATH


# Rewrapping original .dcd files and placing copy in output experiment fragment folder path
cd /scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/rep_1
mkdir Prod_3
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/DI-pipeline-tools
TOP_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/step5_assembly.pdb"
TRAJ_FILE="/scratch/PI/rondror/DesRes-Simulations/Downloaded/Gprot_Science2015_Dror_Desres/science2015/DESRES-Trajectory_science2015-22-all/science2015-22-all/science2015-22-all-003.dcd"
OUTPUT_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/rep_1/Prod_3/Prod_3_rewrapped.dcd"
python wrapAlign.py $TOP_FILE $TRAJ_FILE $OUTPUT_FILE

# Stripping water from rewrapped .dcd file and placing output file in same experiment fragment folder path
TRAJ_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/rep_1/Prod_3/Prod_3_rewrapped.dcd"
OUTPUT_FILE_PATH="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/rep_1/Prod_3/Prod_3_rewrapped_strip_waters.dcd"
python stripWaters.py -top $TOP_FILE -traj $TRAJ_FILE $OUTPUT_FILE_PATH


# Rewrapping original .dcd files and placing copy in output experiment fragment folder path
cd /scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/rep_1
mkdir Prod_4
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/DI-pipeline-tools
TOP_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/step5_assembly.pdb"
TRAJ_FILE="/scratch/PI/rondror/DesRes-Simulations/Downloaded/Gprot_Science2015_Dror_Desres/science2015/DESRES-Trajectory_science2015-22-all/science2015-22-all/science2015-22-all-004.dcd"
OUTPUT_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/rep_1/Prod_4/Prod_4_rewrapped.dcd"
python wrapAlign.py $TOP_FILE $TRAJ_FILE $OUTPUT_FILE

# Stripping water from rewrapped .dcd file and placing output file in same experiment fragment folder path
TRAJ_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/rep_1/Prod_4/Prod_4_rewrapped.dcd"
OUTPUT_FILE_PATH="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/rep_1/Prod_4/Prod_4_rewrapped_strip_waters.dcd"
python stripWaters.py -top $TOP_FILE -traj $TRAJ_FILE $OUTPUT_FILE_PATH


# Rewrapping original .dcd files and placing copy in output experiment fragment folder path
cd /scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/rep_1
mkdir Prod_5
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/DI-pipeline-tools
TOP_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/step5_assembly.pdb"
TRAJ_FILE="/scratch/PI/rondror/DesRes-Simulations/Downloaded/Gprot_Science2015_Dror_Desres/science2015/DESRES-Trajectory_science2015-22-all/science2015-22-all/science2015-22-all-005.dcd"
OUTPUT_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/rep_1/Prod_5/Prod_5_rewrapped.dcd"
python wrapAlign.py $TOP_FILE $TRAJ_FILE $OUTPUT_FILE

# Stripping water from rewrapped .dcd file and placing output file in same experiment fragment folder path
TRAJ_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/rep_1/Prod_5/Prod_5_rewrapped.dcd"
OUTPUT_FILE_PATH="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/rep_1/Prod_5/Prod_5_rewrapped_strip_waters.dcd"
python stripWaters.py -top $TOP_FILE -traj $TRAJ_FILE $OUTPUT_FILE_PATH


# Rewrapping original .dcd files and placing copy in output experiment fragment folder path
cd /scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/rep_1
mkdir Prod_6
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/DI-pipeline-tools
TOP_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/step5_assembly.pdb"
TRAJ_FILE="/scratch/PI/rondror/DesRes-Simulations/Downloaded/Gprot_Science2015_Dror_Desres/science2015/DESRES-Trajectory_science2015-22-all/science2015-22-all/science2015-22-all-006.dcd"
OUTPUT_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/rep_1/Prod_6/Prod_6_rewrapped.dcd"
python wrapAlign.py $TOP_FILE $TRAJ_FILE $OUTPUT_FILE

# Stripping water from rewrapped .dcd file and placing output file in same experiment fragment folder path
TRAJ_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/rep_1/Prod_6/Prod_6_rewrapped.dcd"
OUTPUT_FILE_PATH="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/rep_1/Prod_6/Prod_6_rewrapped_strip_waters.dcd"
python stripWaters.py -top $TOP_FILE -traj $TRAJ_FILE $OUTPUT_FILE_PATH


# Rewrapping original .dcd files and placing copy in output experiment fragment folder path
cd /scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/rep_1
mkdir Prod_7
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/DI-pipeline-tools
TOP_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/step5_assembly.pdb"
TRAJ_FILE="/scratch/PI/rondror/DesRes-Simulations/Downloaded/Gprot_Science2015_Dror_Desres/science2015/DESRES-Trajectory_science2015-22-all/science2015-22-all/science2015-22-all-007.dcd"
OUTPUT_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/rep_1/Prod_7/Prod_7_rewrapped.dcd"
python wrapAlign.py $TOP_FILE $TRAJ_FILE $OUTPUT_FILE

# Stripping water from rewrapped .dcd file and placing output file in same experiment fragment folder path
TRAJ_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/rep_1/Prod_7/Prod_7_rewrapped.dcd"
OUTPUT_FILE_PATH="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/rep_1/Prod_7/Prod_7_rewrapped_strip_waters.dcd"
python stripWaters.py -top $TOP_FILE -traj $TRAJ_FILE $OUTPUT_FILE_PATH


# Rewrapping original .dcd files and placing copy in output experiment fragment folder path
cd /scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/rep_1
mkdir Prod_8
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/DI-pipeline-tools
TOP_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/step5_assembly.pdb"
TRAJ_FILE="/scratch/PI/rondror/DesRes-Simulations/Downloaded/Gprot_Science2015_Dror_Desres/science2015/DESRES-Trajectory_science2015-22-all/science2015-22-all/science2015-22-all-008.dcd"
OUTPUT_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/rep_1/Prod_8/Prod_8_rewrapped.dcd"
python wrapAlign.py $TOP_FILE $TRAJ_FILE $OUTPUT_FILE

# Stripping water from rewrapped .dcd file and placing output file in same experiment fragment folder path
TRAJ_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/rep_1/Prod_8/Prod_8_rewrapped.dcd"
OUTPUT_FILE_PATH="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/rep_1/Prod_8/Prod_8_rewrapped_strip_waters.dcd"
python stripWaters.py -top $TOP_FILE -traj $TRAJ_FILE $OUTPUT_FILE_PATH


# Rewrapping original .dcd files and placing copy in output experiment fragment folder path
cd /scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/rep_1
mkdir Prod_9
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/DI-pipeline-tools
TOP_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/step5_assembly.pdb"
TRAJ_FILE="/scratch/PI/rondror/DesRes-Simulations/Downloaded/Gprot_Science2015_Dror_Desres/science2015/DESRES-Trajectory_science2015-22-all/science2015-22-all/science2015-22-all-009.dcd"
OUTPUT_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/rep_1/Prod_9/Prod_9_rewrapped.dcd"
python wrapAlign.py $TOP_FILE $TRAJ_FILE $OUTPUT_FILE

# Stripping water from rewrapped .dcd file and placing output file in same experiment fragment folder path
TRAJ_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/rep_1/Prod_9/Prod_9_rewrapped.dcd"
OUTPUT_FILE_PATH="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/rep_1/Prod_9/Prod_9_rewrapped_strip_waters.dcd"
python stripWaters.py -top $TOP_FILE -traj $TRAJ_FILE $OUTPUT_FILE_PATH


# Rewrapping original .dcd files and placing copy in output experiment fragment folder path
cd /scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/rep_1
mkdir Prod_10
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/DI-pipeline-tools
TOP_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/step5_assembly.pdb"
TRAJ_FILE="/scratch/PI/rondror/DesRes-Simulations/Downloaded/Gprot_Science2015_Dror_Desres/science2015/DESRES-Trajectory_science2015-22-all/science2015-22-all/science2015-22-all-010.dcd"
OUTPUT_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/rep_1/Prod_10/Prod_10_rewrapped.dcd"
python wrapAlign.py $TOP_FILE $TRAJ_FILE $OUTPUT_FILE

# Stripping water from rewrapped .dcd file and placing output file in same experiment fragment folder path
TRAJ_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/rep_1/Prod_10/Prod_10_rewrapped.dcd"
OUTPUT_FILE_PATH="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/rep_1/Prod_10/Prod_10_rewrapped_strip_waters.dcd"
python stripWaters.py -top $TOP_FILE -traj $TRAJ_FILE $OUTPUT_FILE_PATH


# Rewrapping original .dcd files and placing copy in output experiment fragment folder path
cd /scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/rep_1
mkdir Prod_11
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/DI-pipeline-tools
TOP_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/step5_assembly.pdb"
TRAJ_FILE="/scratch/PI/rondror/DesRes-Simulations/Downloaded/Gprot_Science2015_Dror_Desres/science2015/DESRES-Trajectory_science2015-22-all/science2015-22-all/science2015-22-all-011.dcd"
OUTPUT_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/rep_1/Prod_11/Prod_11_rewrapped.dcd"
python wrapAlign.py $TOP_FILE $TRAJ_FILE $OUTPUT_FILE

# Stripping water from rewrapped .dcd file and placing output file in same experiment fragment folder path
TRAJ_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/rep_1/Prod_11/Prod_11_rewrapped.dcd"
OUTPUT_FILE_PATH="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/rep_1/Prod_11/Prod_11_rewrapped_strip_waters.dcd"
python stripWaters.py -top $TOP_FILE -traj $TRAJ_FILE $OUTPUT_FILE_PATH


# Rewrapping original .dcd files and placing copy in output experiment fragment folder path
cd /scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/rep_1
mkdir Prod_12
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/DI-pipeline-tools
TOP_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/step5_assembly.pdb"
TRAJ_FILE="/scratch/PI/rondror/DesRes-Simulations/Downloaded/Gprot_Science2015_Dror_Desres/science2015/DESRES-Trajectory_science2015-22-all/science2015-22-all/science2015-22-all-012.dcd"
OUTPUT_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/rep_1/Prod_12/Prod_12_rewrapped.dcd"
python wrapAlign.py $TOP_FILE $TRAJ_FILE $OUTPUT_FILE

# Stripping water from rewrapped .dcd file and placing output file in same experiment fragment folder path
TRAJ_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/rep_1/Prod_12/Prod_12_rewrapped.dcd"
OUTPUT_FILE_PATH="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/rep_1/Prod_12/Prod_12_rewrapped_strip_waters.dcd"
python stripWaters.py -top $TOP_FILE -traj $TRAJ_FILE $OUTPUT_FILE_PATH


# Rewrapping original .dcd files and placing copy in output experiment fragment folder path
cd /scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/rep_1
mkdir Prod_13
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/DI-pipeline-tools
TOP_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/step5_assembly.pdb"
TRAJ_FILE="/scratch/PI/rondror/DesRes-Simulations/Downloaded/Gprot_Science2015_Dror_Desres/science2015/DESRES-Trajectory_science2015-22-all/science2015-22-all/science2015-22-all-013.dcd"
OUTPUT_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/rep_1/Prod_13/Prod_13_rewrapped.dcd"
python wrapAlign.py $TOP_FILE $TRAJ_FILE $OUTPUT_FILE

# Stripping water from rewrapped .dcd file and placing output file in same experiment fragment folder path
TRAJ_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/rep_1/Prod_13/Prod_13_rewrapped.dcd"
OUTPUT_FILE_PATH="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/rep_1/Prod_13/Prod_13_rewrapped_strip_waters.dcd"
python stripWaters.py -top $TOP_FILE -traj $TRAJ_FILE $OUTPUT_FILE_PATH


# Rewrapping original .dcd files and placing copy in output experiment fragment folder path
cd /scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/rep_1
mkdir Prod_14
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/DI-pipeline-tools
TOP_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/step5_assembly.pdb"
TRAJ_FILE="/scratch/PI/rondror/DesRes-Simulations/Downloaded/Gprot_Science2015_Dror_Desres/science2015/DESRES-Trajectory_science2015-22-all/science2015-22-all/science2015-22-all-014.dcd"
OUTPUT_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/rep_1/Prod_14/Prod_14_rewrapped.dcd"
python wrapAlign.py $TOP_FILE $TRAJ_FILE $OUTPUT_FILE

# Stripping water from rewrapped .dcd file and placing output file in same experiment fragment folder path
TRAJ_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/rep_1/Prod_14/Prod_14_rewrapped.dcd"
OUTPUT_FILE_PATH="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/rep_1/Prod_14/Prod_14_rewrapped_strip_waters.dcd"
python stripWaters.py -top $TOP_FILE -traj $TRAJ_FILE $OUTPUT_FILE_PATH


# Rewrapping original .dcd files and placing copy in output experiment fragment folder path
cd /scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/rep_1
mkdir Prod_15
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/DI-pipeline-tools
TOP_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/step5_assembly.pdb"
TRAJ_FILE="/scratch/PI/rondror/DesRes-Simulations/Downloaded/Gprot_Science2015_Dror_Desres/science2015/DESRES-Trajectory_science2015-22-all/science2015-22-all/science2015-22-all-015.dcd"
OUTPUT_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/rep_1/Prod_15/Prod_15_rewrapped.dcd"
python wrapAlign.py $TOP_FILE $TRAJ_FILE $OUTPUT_FILE

# Stripping water from rewrapped .dcd file and placing output file in same experiment fragment folder path
TRAJ_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/rep_1/Prod_15/Prod_15_rewrapped.dcd"
OUTPUT_FILE_PATH="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/rep_1/Prod_15/Prod_15_rewrapped_strip_waters.dcd"
python stripWaters.py -top $TOP_FILE -traj $TRAJ_FILE $OUTPUT_FILE_PATH


# Rewrapping original .dcd files and placing copy in output experiment fragment folder path
cd /scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/rep_1
mkdir Prod_16
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/DI-pipeline-tools
TOP_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/step5_assembly.pdb"
TRAJ_FILE="/scratch/PI/rondror/DesRes-Simulations/Downloaded/Gprot_Science2015_Dror_Desres/science2015/DESRES-Trajectory_science2015-22-all/science2015-22-all/science2015-22-all-016.dcd"
OUTPUT_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/rep_1/Prod_16/Prod_16_rewrapped.dcd"
python wrapAlign.py $TOP_FILE $TRAJ_FILE $OUTPUT_FILE

# Stripping water from rewrapped .dcd file and placing output file in same experiment fragment folder path
TRAJ_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/rep_1/Prod_16/Prod_16_rewrapped.dcd"
OUTPUT_FILE_PATH="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/rep_1/Prod_16/Prod_16_rewrapped_strip_waters.dcd"
python stripWaters.py -top $TOP_FILE -traj $TRAJ_FILE $OUTPUT_FILE_PATH


# Rewrapping original .dcd files and placing copy in output experiment fragment folder path
cd /scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/rep_1
mkdir Prod_17
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/DI-pipeline-tools
TOP_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/step5_assembly.pdb"
TRAJ_FILE="/scratch/PI/rondror/DesRes-Simulations/Downloaded/Gprot_Science2015_Dror_Desres/science2015/DESRES-Trajectory_science2015-22-all/science2015-22-all/science2015-22-all-017.dcd"
OUTPUT_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/rep_1/Prod_17/Prod_17_rewrapped.dcd"
python wrapAlign.py $TOP_FILE $TRAJ_FILE $OUTPUT_FILE

# Stripping water from rewrapped .dcd file and placing output file in same experiment fragment folder path
TRAJ_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/rep_1/Prod_17/Prod_17_rewrapped.dcd"
OUTPUT_FILE_PATH="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/rep_1/Prod_17/Prod_17_rewrapped_strip_waters.dcd"
python stripWaters.py -top $TOP_FILE -traj $TRAJ_FILE $OUTPUT_FILE_PATH


# Rewrapping original .dcd files and placing copy in output experiment fragment folder path
cd /scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/rep_1
mkdir Prod_18
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/DI-pipeline-tools
TOP_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/step5_assembly.pdb"
TRAJ_FILE="/scratch/PI/rondror/DesRes-Simulations/Downloaded/Gprot_Science2015_Dror_Desres/science2015/DESRES-Trajectory_science2015-22-all/science2015-22-all/science2015-22-all-018.dcd"
OUTPUT_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/rep_1/Prod_18/Prod_18_rewrapped.dcd"
python wrapAlign.py $TOP_FILE $TRAJ_FILE $OUTPUT_FILE

# Stripping water from rewrapped .dcd file and placing output file in same experiment fragment folder path
TRAJ_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/rep_1/Prod_18/Prod_18_rewrapped.dcd"
OUTPUT_FILE_PATH="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/rep_1/Prod_18/Prod_18_rewrapped_strip_waters.dcd"
python stripWaters.py -top $TOP_FILE -traj $TRAJ_FILE $OUTPUT_FILE_PATH


# Rewrapping original .dcd files and placing copy in output experiment fragment folder path
cd /scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/rep_1
mkdir Prod_19
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/DI-pipeline-tools
TOP_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/step5_assembly.pdb"
TRAJ_FILE="/scratch/PI/rondror/DesRes-Simulations/Downloaded/Gprot_Science2015_Dror_Desres/science2015/DESRES-Trajectory_science2015-22-all/science2015-22-all/science2015-22-all-019.dcd"
OUTPUT_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/rep_1/Prod_19/Prod_19_rewrapped.dcd"
python wrapAlign.py $TOP_FILE $TRAJ_FILE $OUTPUT_FILE

# Stripping water from rewrapped .dcd file and placing output file in same experiment fragment folder path
TRAJ_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/rep_1/Prod_19/Prod_19_rewrapped.dcd"
OUTPUT_FILE_PATH="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/rep_1/Prod_19/Prod_19_rewrapped_strip_waters.dcd"
python stripWaters.py -top $TOP_FILE -traj $TRAJ_FILE $OUTPUT_FILE_PATH


# Rewrapping original .dcd files and placing copy in output experiment fragment folder path
cd /scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/rep_1
mkdir Prod_20
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/DI-pipeline-tools
TOP_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/step5_assembly.pdb"
TRAJ_FILE="/scratch/PI/rondror/DesRes-Simulations/Downloaded/Gprot_Science2015_Dror_Desres/science2015/DESRES-Trajectory_science2015-22-all/science2015-22-all/science2015-22-all-020.dcd"
OUTPUT_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/rep_1/Prod_20/Prod_20_rewrapped.dcd"
python wrapAlign.py $TOP_FILE $TRAJ_FILE $OUTPUT_FILE

# Stripping water from rewrapped .dcd file and placing output file in same experiment fragment folder path
TRAJ_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/rep_1/Prod_20/Prod_20_rewrapped.dcd"
OUTPUT_FILE_PATH="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/rep_1/Prod_20/Prod_20_rewrapped_strip_waters.dcd"
python stripWaters.py -top $TOP_FILE -traj $TRAJ_FILE $OUTPUT_FILE_PATH


# Rewrapping original .dcd files and placing copy in output experiment fragment folder path
cd /scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/rep_1
mkdir Prod_21
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/DI-pipeline-tools
TOP_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/step5_assembly.pdb"
TRAJ_FILE="/scratch/PI/rondror/DesRes-Simulations/Downloaded/Gprot_Science2015_Dror_Desres/science2015/DESRES-Trajectory_science2015-22-all/science2015-22-all/science2015-22-all-021.dcd"
OUTPUT_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/rep_1/Prod_21/Prod_21_rewrapped.dcd"
python wrapAlign.py $TOP_FILE $TRAJ_FILE $OUTPUT_FILE

# Stripping water from rewrapped .dcd file and placing output file in same experiment fragment folder path
TRAJ_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/rep_1/Prod_21/Prod_21_rewrapped.dcd"
OUTPUT_FILE_PATH="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/rep_1/Prod_21/Prod_21_rewrapped_strip_waters.dcd"
python stripWaters.py -top $TOP_FILE -traj $TRAJ_FILE $OUTPUT_FILE_PATH


# Rewrapping original .dcd files and placing copy in output experiment fragment folder path
cd /scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/rep_1
mkdir Prod_22
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/DI-pipeline-tools
TOP_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/step5_assembly.pdb"
TRAJ_FILE="/scratch/PI/rondror/DesRes-Simulations/Downloaded/Gprot_Science2015_Dror_Desres/science2015/DESRES-Trajectory_science2015-22-all/science2015-22-all/science2015-22-all-022.dcd"
OUTPUT_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/rep_1/Prod_22/Prod_22_rewrapped.dcd"
python wrapAlign.py $TOP_FILE $TRAJ_FILE $OUTPUT_FILE

# Stripping water from rewrapped .dcd file and placing output file in same experiment fragment folder path
TRAJ_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/rep_1/Prod_22/Prod_22_rewrapped.dcd"
OUTPUT_FILE_PATH="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/rep_1/Prod_22/Prod_22_rewrapped_strip_waters.dcd"
python stripWaters.py -top $TOP_FILE -traj $TRAJ_FILE $OUTPUT_FILE_PATH


# Rewrapping original .dcd files and placing copy in output experiment fragment folder path
cd /scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/rep_1
mkdir Prod_23
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/DI-pipeline-tools
TOP_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/step5_assembly.pdb"
TRAJ_FILE="/scratch/PI/rondror/DesRes-Simulations/Downloaded/Gprot_Science2015_Dror_Desres/science2015/DESRES-Trajectory_science2015-22-all/science2015-22-all/science2015-22-all-023.dcd"
OUTPUT_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/rep_1/Prod_23/Prod_23_rewrapped.dcd"
python wrapAlign.py $TOP_FILE $TRAJ_FILE $OUTPUT_FILE

# Stripping water from rewrapped .dcd file and placing output file in same experiment fragment folder path
TRAJ_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/rep_1/Prod_23/Prod_23_rewrapped.dcd"
OUTPUT_FILE_PATH="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/rep_1/Prod_23/Prod_23_rewrapped_strip_waters.dcd"
python stripWaters.py -top $TOP_FILE -traj $TRAJ_FILE $OUTPUT_FILE_PATH


# Rewrapping original .dcd files and placing copy in output experiment fragment folder path
cd /scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/rep_1
mkdir Prod_24
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/DI-pipeline-tools
TOP_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/step5_assembly.pdb"
TRAJ_FILE="/scratch/PI/rondror/DesRes-Simulations/Downloaded/Gprot_Science2015_Dror_Desres/science2015/DESRES-Trajectory_science2015-22-all/science2015-22-all/science2015-22-all-024.dcd"
OUTPUT_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/rep_1/Prod_24/Prod_24_rewrapped.dcd"
python wrapAlign.py $TOP_FILE $TRAJ_FILE $OUTPUT_FILE

# Stripping water from rewrapped .dcd file and placing output file in same experiment fragment folder path
TRAJ_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/rep_1/Prod_24/Prod_24_rewrapped.dcd"
OUTPUT_FILE_PATH="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/rep_1/Prod_24/Prod_24_rewrapped_strip_waters.dcd"
python stripWaters.py -top $TOP_FILE -traj $TRAJ_FILE $OUTPUT_FILE_PATH


# Rewrapping original .dcd files and placing copy in output experiment fragment folder path
cd /scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/rep_1
mkdir Prod_25
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/DI-pipeline-tools
TOP_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/step5_assembly.pdb"
TRAJ_FILE="/scratch/PI/rondror/DesRes-Simulations/Downloaded/Gprot_Science2015_Dror_Desres/science2015/DESRES-Trajectory_science2015-22-all/science2015-22-all/science2015-22-all-025.dcd"
OUTPUT_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/rep_1/Prod_25/Prod_25_rewrapped.dcd"
python wrapAlign.py $TOP_FILE $TRAJ_FILE $OUTPUT_FILE

# Stripping water from rewrapped .dcd file and placing output file in same experiment fragment folder path
TRAJ_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/rep_1/Prod_25/Prod_25_rewrapped.dcd"
OUTPUT_FILE_PATH="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/rep_1/Prod_25/Prod_25_rewrapped_strip_waters.dcd"
python stripWaters.py -top $TOP_FILE -traj $TRAJ_FILE $OUTPUT_FILE_PATH


# Rewrapping original .dcd files and placing copy in output experiment fragment folder path
cd /scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/rep_1
mkdir Prod_26
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/DI-pipeline-tools
TOP_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/step5_assembly.pdb"
TRAJ_FILE="/scratch/PI/rondror/DesRes-Simulations/Downloaded/Gprot_Science2015_Dror_Desres/science2015/DESRES-Trajectory_science2015-22-all/science2015-22-all/science2015-22-all-026.dcd"
OUTPUT_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/rep_1/Prod_26/Prod_26_rewrapped.dcd"
python wrapAlign.py $TOP_FILE $TRAJ_FILE $OUTPUT_FILE

# Stripping water from rewrapped .dcd file and placing output file in same experiment fragment folder path
TRAJ_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/rep_1/Prod_26/Prod_26_rewrapped.dcd"
OUTPUT_FILE_PATH="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/rep_1/Prod_26/Prod_26_rewrapped_strip_waters.dcd"
python stripWaters.py -top $TOP_FILE -traj $TRAJ_FILE $OUTPUT_FILE_PATH


# Rewrapping original .dcd files and placing copy in output experiment fragment folder path
cd /scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/rep_1
mkdir Prod_27
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/DI-pipeline-tools
TOP_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/step5_assembly.pdb"
TRAJ_FILE="/scratch/PI/rondror/DesRes-Simulations/Downloaded/Gprot_Science2015_Dror_Desres/science2015/DESRES-Trajectory_science2015-22-all/science2015-22-all/science2015-22-all-027.dcd"
OUTPUT_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/rep_1/Prod_27/Prod_27_rewrapped.dcd"
python wrapAlign.py $TOP_FILE $TRAJ_FILE $OUTPUT_FILE

# Stripping water from rewrapped .dcd file and placing output file in same experiment fragment folder path
TRAJ_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/rep_1/Prod_27/Prod_27_rewrapped.dcd"
OUTPUT_FILE_PATH="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/rep_1/Prod_27/Prod_27_rewrapped_strip_waters.dcd"
python stripWaters.py -top $TOP_FILE -traj $TRAJ_FILE $OUTPUT_FILE_PATH


# Rewrapping original .dcd files and placing copy in output experiment fragment folder path
cd /scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/rep_1
mkdir Prod_28
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/DI-pipeline-tools
TOP_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/step5_assembly.pdb"
TRAJ_FILE="/scratch/PI/rondror/DesRes-Simulations/Downloaded/Gprot_Science2015_Dror_Desres/science2015/DESRES-Trajectory_science2015-22-all/science2015-22-all/science2015-22-all-028.dcd"
OUTPUT_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/rep_1/Prod_28/Prod_28_rewrapped.dcd"
python wrapAlign.py $TOP_FILE $TRAJ_FILE $OUTPUT_FILE

# Stripping water from rewrapped .dcd file and placing output file in same experiment fragment folder path
TRAJ_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/rep_1/Prod_28/Prod_28_rewrapped.dcd"
OUTPUT_FILE_PATH="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/rep_1/Prod_28/Prod_28_rewrapped_strip_waters.dcd"
python stripWaters.py -top $TOP_FILE -traj $TRAJ_FILE $OUTPUT_FILE_PATH


# Rewrapping original .dcd files and placing copy in output experiment fragment folder path
cd /scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/rep_1
mkdir Prod_29
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/DI-pipeline-tools
TOP_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/step5_assembly.pdb"
TRAJ_FILE="/scratch/PI/rondror/DesRes-Simulations/Downloaded/Gprot_Science2015_Dror_Desres/science2015/DESRES-Trajectory_science2015-22-all/science2015-22-all/science2015-22-all-029.dcd"
OUTPUT_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/rep_1/Prod_29/Prod_29_rewrapped.dcd"
python wrapAlign.py $TOP_FILE $TRAJ_FILE $OUTPUT_FILE

# Stripping water from rewrapped .dcd file and placing output file in same experiment fragment folder path
TRAJ_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/rep_1/Prod_29/Prod_29_rewrapped.dcd"
OUTPUT_FILE_PATH="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/rep_1/Prod_29/Prod_29_rewrapped_strip_waters.dcd"
python stripWaters.py -top $TOP_FILE -traj $TRAJ_FILE $OUTPUT_FILE_PATH


# Rewrapping original .dcd files and placing copy in output experiment fragment folder path
cd /scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/rep_1
mkdir Prod_30
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/DI-pipeline-tools
TOP_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/step5_assembly.pdb"
TRAJ_FILE="/scratch/PI/rondror/DesRes-Simulations/Downloaded/Gprot_Science2015_Dror_Desres/science2015/DESRES-Trajectory_science2015-22-all/science2015-22-all/science2015-22-all-030.dcd"
OUTPUT_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/rep_1/Prod_30/Prod_30_rewrapped.dcd"
python wrapAlign.py $TOP_FILE $TRAJ_FILE $OUTPUT_FILE

# Stripping water from rewrapped .dcd file and placing output file in same experiment fragment folder path
TRAJ_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/rep_1/Prod_30/Prod_30_rewrapped.dcd"
OUTPUT_FILE_PATH="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/rep_1/Prod_30/Prod_30_rewrapped_strip_waters.dcd"
python stripWaters.py -top $TOP_FILE -traj $TRAJ_FILE $OUTPUT_FILE_PATH


# Rewrapping original .dcd files and placing copy in output experiment fragment folder path
cd /scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/rep_1
mkdir Prod_31
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/DI-pipeline-tools
TOP_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/step5_assembly.pdb"
TRAJ_FILE="/scratch/PI/rondror/DesRes-Simulations/Downloaded/Gprot_Science2015_Dror_Desres/science2015/DESRES-Trajectory_science2015-22-all/science2015-22-all/science2015-22-all-031.dcd"
OUTPUT_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/rep_1/Prod_31/Prod_31_rewrapped.dcd"
python wrapAlign.py $TOP_FILE $TRAJ_FILE $OUTPUT_FILE

# Stripping water from rewrapped .dcd file and placing output file in same experiment fragment folder path
TRAJ_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/rep_1/Prod_31/Prod_31_rewrapped.dcd"
OUTPUT_FILE_PATH="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/rep_1/Prod_31/Prod_31_rewrapped_strip_waters.dcd"
python stripWaters.py -top $TOP_FILE -traj $TRAJ_FILE $OUTPUT_FILE_PATH


# Rewrapping original .dcd files and placing copy in output experiment fragment folder path
cd /scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/rep_1
mkdir Prod_32
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/DI-pipeline-tools
TOP_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/step5_assembly.pdb"
TRAJ_FILE="/scratch/PI/rondror/DesRes-Simulations/Downloaded/Gprot_Science2015_Dror_Desres/science2015/DESRES-Trajectory_science2015-22-all/science2015-22-all/science2015-22-all-032.dcd"
OUTPUT_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/rep_1/Prod_32/Prod_32_rewrapped.dcd"
python wrapAlign.py $TOP_FILE $TRAJ_FILE $OUTPUT_FILE

# Stripping water from rewrapped .dcd file and placing output file in same experiment fragment folder path
TRAJ_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/rep_1/Prod_32/Prod_32_rewrapped.dcd"
OUTPUT_FILE_PATH="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/rep_1/Prod_32/Prod_32_rewrapped_strip_waters.dcd"
python stripWaters.py -top $TOP_FILE -traj $TRAJ_FILE $OUTPUT_FILE_PATH


# Rewrapping original .dcd files and placing copy in output experiment fragment folder path
cd /scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/rep_1
mkdir Prod_33
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/DI-pipeline-tools
TOP_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/step5_assembly.pdb"
TRAJ_FILE="/scratch/PI/rondror/DesRes-Simulations/Downloaded/Gprot_Science2015_Dror_Desres/science2015/DESRES-Trajectory_science2015-22-all/science2015-22-all/science2015-22-all-033.dcd"
OUTPUT_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/rep_1/Prod_33/Prod_33_rewrapped.dcd"
python wrapAlign.py $TOP_FILE $TRAJ_FILE $OUTPUT_FILE

# Stripping water from rewrapped .dcd file and placing output file in same experiment fragment folder path
TRAJ_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/rep_1/Prod_33/Prod_33_rewrapped.dcd"
OUTPUT_FILE_PATH="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/rep_1/Prod_33/Prod_33_rewrapped_strip_waters.dcd"
python stripWaters.py -top $TOP_FILE -traj $TRAJ_FILE $OUTPUT_FILE_PATH


# Rewrapping original .dcd files and placing copy in output experiment fragment folder path
cd /scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/rep_1
mkdir Prod_34
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/DI-pipeline-tools
TOP_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/step5_assembly.pdb"
TRAJ_FILE="/scratch/PI/rondror/DesRes-Simulations/Downloaded/Gprot_Science2015_Dror_Desres/science2015/DESRES-Trajectory_science2015-22-all/science2015-22-all/science2015-22-all-034.dcd"
OUTPUT_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/rep_1/Prod_34/Prod_34_rewrapped.dcd"
python wrapAlign.py $TOP_FILE $TRAJ_FILE $OUTPUT_FILE

# Stripping water from rewrapped .dcd file and placing output file in same experiment fragment folder path
TRAJ_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/rep_1/Prod_34/Prod_34_rewrapped.dcd"
OUTPUT_FILE_PATH="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/rep_1/Prod_34/Prod_34_rewrapped_strip_waters.dcd"
python stripWaters.py -top $TOP_FILE -traj $TRAJ_FILE $OUTPUT_FILE_PATH


# Rewrapping original .dcd files and placing copy in output experiment fragment folder path
cd /scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/rep_1
mkdir Prod_35
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/DI-pipeline-tools
TOP_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/step5_assembly.pdb"
TRAJ_FILE="/scratch/PI/rondror/DesRes-Simulations/Downloaded/Gprot_Science2015_Dror_Desres/science2015/DESRES-Trajectory_science2015-22-all/science2015-22-all/science2015-22-all-035.dcd"
OUTPUT_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/rep_1/Prod_35/Prod_35_rewrapped.dcd"
python wrapAlign.py $TOP_FILE $TRAJ_FILE $OUTPUT_FILE

# Stripping water from rewrapped .dcd file and placing output file in same experiment fragment folder path
TRAJ_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/rep_1/Prod_35/Prod_35_rewrapped.dcd"
OUTPUT_FILE_PATH="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/rep_1/Prod_35/Prod_35_rewrapped_strip_waters.dcd"
python stripWaters.py -top $TOP_FILE -traj $TRAJ_FILE $OUTPUT_FILE_PATH


# Rewrapping original .dcd files and placing copy in output experiment fragment folder path
cd /scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/rep_1
mkdir Prod_36
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/DI-pipeline-tools
TOP_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/step5_assembly.pdb"
TRAJ_FILE="/scratch/PI/rondror/DesRes-Simulations/Downloaded/Gprot_Science2015_Dror_Desres/science2015/DESRES-Trajectory_science2015-22-all/science2015-22-all/science2015-22-all-036.dcd"
OUTPUT_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/rep_1/Prod_36/Prod_36_rewrapped.dcd"
python wrapAlign.py $TOP_FILE $TRAJ_FILE $OUTPUT_FILE

# Stripping water from rewrapped .dcd file and placing output file in same experiment fragment folder path
TRAJ_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/rep_1/Prod_36/Prod_36_rewrapped.dcd"
OUTPUT_FILE_PATH="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/rep_1/Prod_36/Prod_36_rewrapped_strip_waters.dcd"
python stripWaters.py -top $TOP_FILE -traj $TRAJ_FILE $OUTPUT_FILE_PATH


# Rewrapping original .dcd files and placing copy in output experiment fragment folder path
cd /scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/rep_1
mkdir Prod_37
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/DI-pipeline-tools
TOP_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/step5_assembly.pdb"
TRAJ_FILE="/scratch/PI/rondror/DesRes-Simulations/Downloaded/Gprot_Science2015_Dror_Desres/science2015/DESRES-Trajectory_science2015-22-all/science2015-22-all/science2015-22-all-037.dcd"
OUTPUT_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/rep_1/Prod_37/Prod_37_rewrapped.dcd"
python wrapAlign.py $TOP_FILE $TRAJ_FILE $OUTPUT_FILE

# Stripping water from rewrapped .dcd file and placing output file in same experiment fragment folder path
TRAJ_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/rep_1/Prod_37/Prod_37_rewrapped.dcd"
OUTPUT_FILE_PATH="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/rep_1/Prod_37/Prod_37_rewrapped_strip_waters.dcd"
python stripWaters.py -top $TOP_FILE -traj $TRAJ_FILE $OUTPUT_FILE_PATH


# Rewrapping original .dcd files and placing copy in output experiment fragment folder path
cd /scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/rep_1
mkdir Prod_38
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/DI-pipeline-tools
TOP_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/step5_assembly.pdb"
TRAJ_FILE="/scratch/PI/rondror/DesRes-Simulations/Downloaded/Gprot_Science2015_Dror_Desres/science2015/DESRES-Trajectory_science2015-22-all/science2015-22-all/science2015-22-all-038.dcd"
OUTPUT_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/rep_1/Prod_38/Prod_38_rewrapped.dcd"
python wrapAlign.py $TOP_FILE $TRAJ_FILE $OUTPUT_FILE

# Stripping water from rewrapped .dcd file and placing output file in same experiment fragment folder path
TRAJ_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/rep_1/Prod_38/Prod_38_rewrapped.dcd"
OUTPUT_FILE_PATH="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/rep_1/Prod_38/Prod_38_rewrapped_strip_waters.dcd"
python stripWaters.py -top $TOP_FILE -traj $TRAJ_FILE $OUTPUT_FILE_PATH


# Rewrapping original .dcd files and placing copy in output experiment fragment folder path
cd /scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/rep_1
mkdir Prod_39
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/DI-pipeline-tools
TOP_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/step5_assembly.pdb"
TRAJ_FILE="/scratch/PI/rondror/DesRes-Simulations/Downloaded/Gprot_Science2015_Dror_Desres/science2015/DESRES-Trajectory_science2015-22-all/science2015-22-all/science2015-22-all-039.dcd"
OUTPUT_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/rep_1/Prod_39/Prod_39_rewrapped.dcd"
python wrapAlign.py $TOP_FILE $TRAJ_FILE $OUTPUT_FILE

# Stripping water from rewrapped .dcd file and placing output file in same experiment fragment folder path
TRAJ_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/rep_1/Prod_39/Prod_39_rewrapped.dcd"
OUTPUT_FILE_PATH="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/rep_1/Prod_39/Prod_39_rewrapped_strip_waters.dcd"
python stripWaters.py -top $TOP_FILE -traj $TRAJ_FILE $OUTPUT_FILE_PATH


# Rewrapping original .dcd files and placing copy in output experiment fragment folder path
cd /scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/rep_1
mkdir Prod_40
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/DI-pipeline-tools
TOP_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/step5_assembly.pdb"
TRAJ_FILE="/scratch/PI/rondror/DesRes-Simulations/Downloaded/Gprot_Science2015_Dror_Desres/science2015/DESRES-Trajectory_science2015-22-all/science2015-22-all/science2015-22-all-040.dcd"
OUTPUT_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/rep_1/Prod_40/Prod_40_rewrapped.dcd"
python wrapAlign.py $TOP_FILE $TRAJ_FILE $OUTPUT_FILE

# Stripping water from rewrapped .dcd file and placing output file in same experiment fragment folder path
TRAJ_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/rep_1/Prod_40/Prod_40_rewrapped.dcd"
OUTPUT_FILE_PATH="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/rep_1/Prod_40/Prod_40_rewrapped_strip_waters.dcd"
python stripWaters.py -top $TOP_FILE -traj $TRAJ_FILE $OUTPUT_FILE_PATH


# Rewrapping original .dcd files and placing copy in output experiment fragment folder path
cd /scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/rep_1
mkdir Prod_41
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/DI-pipeline-tools
TOP_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/step5_assembly.pdb"
TRAJ_FILE="/scratch/PI/rondror/DesRes-Simulations/Downloaded/Gprot_Science2015_Dror_Desres/science2015/DESRES-Trajectory_science2015-22-all/science2015-22-all/science2015-22-all-041.dcd"
OUTPUT_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/rep_1/Prod_41/Prod_41_rewrapped.dcd"
python wrapAlign.py $TOP_FILE $TRAJ_FILE $OUTPUT_FILE

# Stripping water from rewrapped .dcd file and placing output file in same experiment fragment folder path
TRAJ_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/rep_1/Prod_41/Prod_41_rewrapped.dcd"
OUTPUT_FILE_PATH="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/rep_1/Prod_41/Prod_41_rewrapped_strip_waters.dcd"
python stripWaters.py -top $TOP_FILE -traj $TRAJ_FILE $OUTPUT_FILE_PATH


# Rewrapping original .dcd files and placing copy in output experiment fragment folder path
cd /scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/rep_1
mkdir Prod_42
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/DI-pipeline-tools
TOP_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/step5_assembly.pdb"
TRAJ_FILE="/scratch/PI/rondror/DesRes-Simulations/Downloaded/Gprot_Science2015_Dror_Desres/science2015/DESRES-Trajectory_science2015-22-all/science2015-22-all/science2015-22-all-042.dcd"
OUTPUT_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/rep_1/Prod_42/Prod_42_rewrapped.dcd"
python wrapAlign.py $TOP_FILE $TRAJ_FILE $OUTPUT_FILE

# Stripping water from rewrapped .dcd file and placing output file in same experiment fragment folder path
TRAJ_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/rep_1/Prod_42/Prod_42_rewrapped.dcd"
OUTPUT_FILE_PATH="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/rep_1/Prod_42/Prod_42_rewrapped_strip_waters.dcd"
python stripWaters.py -top $TOP_FILE -traj $TRAJ_FILE $OUTPUT_FILE_PATH


# Rewrapping original .dcd files and placing copy in output experiment fragment folder path
cd /scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/rep_1
mkdir Prod_43
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/DI-pipeline-tools
TOP_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/step5_assembly.pdb"
TRAJ_FILE="/scratch/PI/rondror/DesRes-Simulations/Downloaded/Gprot_Science2015_Dror_Desres/science2015/DESRES-Trajectory_science2015-22-all/science2015-22-all/science2015-22-all-043.dcd"
OUTPUT_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/rep_1/Prod_43/Prod_43_rewrapped.dcd"
python wrapAlign.py $TOP_FILE $TRAJ_FILE $OUTPUT_FILE

# Stripping water from rewrapped .dcd file and placing output file in same experiment fragment folder path
TRAJ_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/rep_1/Prod_43/Prod_43_rewrapped.dcd"
OUTPUT_FILE_PATH="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/rep_1/Prod_43/Prod_43_rewrapped_strip_waters.dcd"
python stripWaters.py -top $TOP_FILE -traj $TRAJ_FILE $OUTPUT_FILE_PATH


# Rewrapping original .dcd files and placing copy in output experiment fragment folder path
cd /scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/rep_1
mkdir Prod_44
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/DI-pipeline-tools
TOP_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/step5_assembly.pdb"
TRAJ_FILE="/scratch/PI/rondror/DesRes-Simulations/Downloaded/Gprot_Science2015_Dror_Desres/science2015/DESRES-Trajectory_science2015-22-all/science2015-22-all/science2015-22-all-044.dcd"
OUTPUT_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/rep_1/Prod_44/Prod_44_rewrapped.dcd"
python wrapAlign.py $TOP_FILE $TRAJ_FILE $OUTPUT_FILE

# Stripping water from rewrapped .dcd file and placing output file in same experiment fragment folder path
TRAJ_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/rep_1/Prod_44/Prod_44_rewrapped.dcd"
OUTPUT_FILE_PATH="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/rep_1/Prod_44/Prod_44_rewrapped_strip_waters.dcd"
python stripWaters.py -top $TOP_FILE -traj $TRAJ_FILE $OUTPUT_FILE_PATH


# Rewrapping original .dcd files and placing copy in output experiment fragment folder path
cd /scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/rep_1
mkdir Prod_45
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/DI-pipeline-tools
TOP_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/step5_assembly.pdb"
TRAJ_FILE="/scratch/PI/rondror/DesRes-Simulations/Downloaded/Gprot_Science2015_Dror_Desres/science2015/DESRES-Trajectory_science2015-22-all/science2015-22-all/science2015-22-all-045.dcd"
OUTPUT_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/rep_1/Prod_45/Prod_45_rewrapped.dcd"
python wrapAlign.py $TOP_FILE $TRAJ_FILE $OUTPUT_FILE

# Stripping water from rewrapped .dcd file and placing output file in same experiment fragment folder path
TRAJ_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/rep_1/Prod_45/Prod_45_rewrapped.dcd"
OUTPUT_FILE_PATH="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/rep_1/Prod_45/Prod_45_rewrapped_strip_waters.dcd"
python stripWaters.py -top $TOP_FILE -traj $TRAJ_FILE $OUTPUT_FILE_PATH


# Rewrapping original .dcd files and placing copy in output experiment fragment folder path
cd /scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/rep_1
mkdir Prod_46
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/DI-pipeline-tools
TOP_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/step5_assembly.pdb"
TRAJ_FILE="/scratch/PI/rondror/DesRes-Simulations/Downloaded/Gprot_Science2015_Dror_Desres/science2015/DESRES-Trajectory_science2015-22-all/science2015-22-all/science2015-22-all-046.dcd"
OUTPUT_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/rep_1/Prod_46/Prod_46_rewrapped.dcd"
python wrapAlign.py $TOP_FILE $TRAJ_FILE $OUTPUT_FILE

# Stripping water from rewrapped .dcd file and placing output file in same experiment fragment folder path
TRAJ_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/rep_1/Prod_46/Prod_46_rewrapped.dcd"
OUTPUT_FILE_PATH="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/rep_1/Prod_46/Prod_46_rewrapped_strip_waters.dcd"
python stripWaters.py -top $TOP_FILE -traj $TRAJ_FILE $OUTPUT_FILE_PATH


# Rewrapping original .dcd files and placing copy in output experiment fragment folder path
cd /scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/rep_1
mkdir Prod_47
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/DI-pipeline-tools
TOP_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/step5_assembly.pdb"
TRAJ_FILE="/scratch/PI/rondror/DesRes-Simulations/Downloaded/Gprot_Science2015_Dror_Desres/science2015/DESRES-Trajectory_science2015-22-all/science2015-22-all/science2015-22-all-047.dcd"
OUTPUT_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/rep_1/Prod_47/Prod_47_rewrapped.dcd"
python wrapAlign.py $TOP_FILE $TRAJ_FILE $OUTPUT_FILE

# Stripping water from rewrapped .dcd file and placing output file in same experiment fragment folder path
TRAJ_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/rep_1/Prod_47/Prod_47_rewrapped.dcd"
OUTPUT_FILE_PATH="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/rep_1/Prod_47/Prod_47_rewrapped_strip_waters.dcd"
python stripWaters.py -top $TOP_FILE -traj $TRAJ_FILE $OUTPUT_FILE_PATH


# Rewrapping original .dcd files and placing copy in output experiment fragment folder path
cd /scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/rep_1
mkdir Prod_48
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/DI-pipeline-tools
TOP_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/step5_assembly.pdb"
TRAJ_FILE="/scratch/PI/rondror/DesRes-Simulations/Downloaded/Gprot_Science2015_Dror_Desres/science2015/DESRES-Trajectory_science2015-22-all/science2015-22-all/science2015-22-all-048.dcd"
OUTPUT_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/rep_1/Prod_48/Prod_48_rewrapped.dcd"
python wrapAlign.py $TOP_FILE $TRAJ_FILE $OUTPUT_FILE

# Stripping water from rewrapped .dcd file and placing output file in same experiment fragment folder path
TRAJ_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/rep_1/Prod_48/Prod_48_rewrapped.dcd"
OUTPUT_FILE_PATH="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/rep_1/Prod_48/Prod_48_rewrapped_strip_waters.dcd"
python stripWaters.py -top $TOP_FILE -traj $TRAJ_FILE $OUTPUT_FILE_PATH


# Rewrapping original .dcd files and placing copy in output experiment fragment folder path
cd /scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/rep_1
mkdir Prod_49
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/DI-pipeline-tools
TOP_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/step5_assembly.pdb"
TRAJ_FILE="/scratch/PI/rondror/DesRes-Simulations/Downloaded/Gprot_Science2015_Dror_Desres/science2015/DESRES-Trajectory_science2015-22-all/science2015-22-all/science2015-22-all-049.dcd"
OUTPUT_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/rep_1/Prod_49/Prod_49_rewrapped.dcd"
python wrapAlign.py $TOP_FILE $TRAJ_FILE $OUTPUT_FILE

# Stripping water from rewrapped .dcd file and placing output file in same experiment fragment folder path
TRAJ_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/rep_1/Prod_49/Prod_49_rewrapped.dcd"
OUTPUT_FILE_PATH="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/rep_1/Prod_49/Prod_49_rewrapped_strip_waters.dcd"
python stripWaters.py -top $TOP_FILE -traj $TRAJ_FILE $OUTPUT_FILE_PATH


# Rewrapping original .dcd files and placing copy in output experiment fragment folder path
cd /scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/rep_1
mkdir Prod_50
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/DI-pipeline-tools
TOP_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/step5_assembly.pdb"
TRAJ_FILE="/scratch/PI/rondror/DesRes-Simulations/Downloaded/Gprot_Science2015_Dror_Desres/science2015/DESRES-Trajectory_science2015-22-all/science2015-22-all/science2015-22-all-050.dcd"
OUTPUT_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/rep_1/Prod_50/Prod_50_rewrapped.dcd"
python wrapAlign.py $TOP_FILE $TRAJ_FILE $OUTPUT_FILE

# Stripping water from rewrapped .dcd file and placing output file in same experiment fragment folder path
TRAJ_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/rep_1/Prod_50/Prod_50_rewrapped.dcd"
OUTPUT_FILE_PATH="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/rep_1/Prod_50/Prod_50_rewrapped_strip_waters.dcd"
python stripWaters.py -top $TOP_FILE -traj $TRAJ_FILE $OUTPUT_FILE_PATH


# Rewrapping original .dcd files and placing copy in output experiment fragment folder path
cd /scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/rep_1
mkdir Prod_51
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/DI-pipeline-tools
TOP_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/step5_assembly.pdb"
TRAJ_FILE="/scratch/PI/rondror/DesRes-Simulations/Downloaded/Gprot_Science2015_Dror_Desres/science2015/DESRES-Trajectory_science2015-22-all/science2015-22-all/science2015-22-all-051.dcd"
OUTPUT_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/rep_1/Prod_51/Prod_51_rewrapped.dcd"
python wrapAlign.py $TOP_FILE $TRAJ_FILE $OUTPUT_FILE

# Stripping water from rewrapped .dcd file and placing output file in same experiment fragment folder path
TRAJ_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/rep_1/Prod_51/Prod_51_rewrapped.dcd"
OUTPUT_FILE_PATH="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/rep_1/Prod_51/Prod_51_rewrapped_strip_waters.dcd"
python stripWaters.py -top $TOP_FILE -traj $TRAJ_FILE $OUTPUT_FILE_PATH


# Rewrapping original .dcd files and placing copy in output experiment fragment folder path
cd /scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/rep_1
mkdir Prod_52
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/DI-pipeline-tools
TOP_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/step5_assembly.pdb"
TRAJ_FILE="/scratch/PI/rondror/DesRes-Simulations/Downloaded/Gprot_Science2015_Dror_Desres/science2015/DESRES-Trajectory_science2015-22-all/science2015-22-all/science2015-22-all-052.dcd"
OUTPUT_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/rep_1/Prod_52/Prod_52_rewrapped.dcd"
python wrapAlign.py $TOP_FILE $TRAJ_FILE $OUTPUT_FILE

# Stripping water from rewrapped .dcd file and placing output file in same experiment fragment folder path
TRAJ_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/rep_1/Prod_52/Prod_52_rewrapped.dcd"
OUTPUT_FILE_PATH="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/rep_1/Prod_52/Prod_52_rewrapped_strip_waters.dcd"
python stripWaters.py -top $TOP_FILE -traj $TRAJ_FILE $OUTPUT_FILE_PATH


# Rewrapping original .dcd files and placing copy in output experiment fragment folder path
cd /scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/rep_1
mkdir Prod_53
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/DI-pipeline-tools
TOP_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/step5_assembly.pdb"
TRAJ_FILE="/scratch/PI/rondror/DesRes-Simulations/Downloaded/Gprot_Science2015_Dror_Desres/science2015/DESRES-Trajectory_science2015-22-all/science2015-22-all/science2015-22-all-053.dcd"
OUTPUT_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/rep_1/Prod_53/Prod_53_rewrapped.dcd"
python wrapAlign.py $TOP_FILE $TRAJ_FILE $OUTPUT_FILE

# Stripping water from rewrapped .dcd file and placing output file in same experiment fragment folder path
TRAJ_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/rep_1/Prod_53/Prod_53_rewrapped.dcd"
OUTPUT_FILE_PATH="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/rep_1/Prod_53/Prod_53_rewrapped_strip_waters.dcd"
python stripWaters.py -top $TOP_FILE -traj $TRAJ_FILE $OUTPUT_FILE_PATH


# Rewrapping original .dcd files and placing copy in output experiment fragment folder path
cd /scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/rep_1
mkdir Prod_54
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/DI-pipeline-tools
TOP_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/step5_assembly.pdb"
TRAJ_FILE="/scratch/PI/rondror/DesRes-Simulations/Downloaded/Gprot_Science2015_Dror_Desres/science2015/DESRES-Trajectory_science2015-22-all/science2015-22-all/science2015-22-all-054.dcd"
OUTPUT_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/rep_1/Prod_54/Prod_54_rewrapped.dcd"
python wrapAlign.py $TOP_FILE $TRAJ_FILE $OUTPUT_FILE

# Stripping water from rewrapped .dcd file and placing output file in same experiment fragment folder path
TRAJ_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/rep_1/Prod_54/Prod_54_rewrapped.dcd"
OUTPUT_FILE_PATH="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/rep_1/Prod_54/Prod_54_rewrapped_strip_waters.dcd"
python stripWaters.py -top $TOP_FILE -traj $TRAJ_FILE $OUTPUT_FILE_PATH


# Rewrapping original .dcd files and placing copy in output experiment fragment folder path
cd /scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/rep_1
mkdir Prod_55
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/DI-pipeline-tools
TOP_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/step5_assembly.pdb"
TRAJ_FILE="/scratch/PI/rondror/DesRes-Simulations/Downloaded/Gprot_Science2015_Dror_Desres/science2015/DESRES-Trajectory_science2015-22-all/science2015-22-all/science2015-22-all-055.dcd"
OUTPUT_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/rep_1/Prod_55/Prod_55_rewrapped.dcd"
python wrapAlign.py $TOP_FILE $TRAJ_FILE $OUTPUT_FILE

# Stripping water from rewrapped .dcd file and placing output file in same experiment fragment folder path
TRAJ_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/rep_1/Prod_55/Prod_55_rewrapped.dcd"
OUTPUT_FILE_PATH="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/rep_1/Prod_55/Prod_55_rewrapped_strip_waters.dcd"
python stripWaters.py -top $TOP_FILE -traj $TRAJ_FILE $OUTPUT_FILE_PATH


# Rewrapping original .dcd files and placing copy in output experiment fragment folder path
cd /scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/rep_1
mkdir Prod_56
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/DI-pipeline-tools
TOP_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/step5_assembly.pdb"
TRAJ_FILE="/scratch/PI/rondror/DesRes-Simulations/Downloaded/Gprot_Science2015_Dror_Desres/science2015/DESRES-Trajectory_science2015-22-all/science2015-22-all/science2015-22-all-056.dcd"
OUTPUT_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/rep_1/Prod_56/Prod_56_rewrapped.dcd"
python wrapAlign.py $TOP_FILE $TRAJ_FILE $OUTPUT_FILE

# Stripping water from rewrapped .dcd file and placing output file in same experiment fragment folder path
TRAJ_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/rep_1/Prod_56/Prod_56_rewrapped.dcd"
OUTPUT_FILE_PATH="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/rep_1/Prod_56/Prod_56_rewrapped_strip_waters.dcd"
python stripWaters.py -top $TOP_FILE -traj $TRAJ_FILE $OUTPUT_FILE_PATH


# Rewrapping original .dcd files and placing copy in output experiment fragment folder path
cd /scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/rep_1
mkdir Prod_57
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/DI-pipeline-tools
TOP_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/step5_assembly.pdb"
TRAJ_FILE="/scratch/PI/rondror/DesRes-Simulations/Downloaded/Gprot_Science2015_Dror_Desres/science2015/DESRES-Trajectory_science2015-22-all/science2015-22-all/science2015-22-all-057.dcd"
OUTPUT_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/rep_1/Prod_57/Prod_57_rewrapped.dcd"
python wrapAlign.py $TOP_FILE $TRAJ_FILE $OUTPUT_FILE

# Stripping water from rewrapped .dcd file and placing output file in same experiment fragment folder path
TRAJ_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/rep_1/Prod_57/Prod_57_rewrapped.dcd"
OUTPUT_FILE_PATH="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/rep_1/Prod_57/Prod_57_rewrapped_strip_waters.dcd"
python stripWaters.py -top $TOP_FILE -traj $TRAJ_FILE $OUTPUT_FILE_PATH


# Rewrapping original .dcd files and placing copy in output experiment fragment folder path
cd /scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/rep_1
mkdir Prod_58
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/DI-pipeline-tools
TOP_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/step5_assembly.pdb"
TRAJ_FILE="/scratch/PI/rondror/DesRes-Simulations/Downloaded/Gprot_Science2015_Dror_Desres/science2015/DESRES-Trajectory_science2015-22-all/science2015-22-all/science2015-22-all-058.dcd"
OUTPUT_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/rep_1/Prod_58/Prod_58_rewrapped.dcd"
python wrapAlign.py $TOP_FILE $TRAJ_FILE $OUTPUT_FILE

# Stripping water from rewrapped .dcd file and placing output file in same experiment fragment folder path
TRAJ_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/rep_1/Prod_58/Prod_58_rewrapped.dcd"
OUTPUT_FILE_PATH="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/rep_1/Prod_58/Prod_58_rewrapped_strip_waters.dcd"
python stripWaters.py -top $TOP_FILE -traj $TRAJ_FILE $OUTPUT_FILE_PATH


# Rewrapping original .dcd files and placing copy in output experiment fragment folder path
cd /scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/rep_1
mkdir Prod_59
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/DI-pipeline-tools
TOP_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/step5_assembly.pdb"
TRAJ_FILE="/scratch/PI/rondror/DesRes-Simulations/Downloaded/Gprot_Science2015_Dror_Desres/science2015/DESRES-Trajectory_science2015-22-all/science2015-22-all/science2015-22-all-059.dcd"
OUTPUT_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/rep_1/Prod_59/Prod_59_rewrapped.dcd"
python wrapAlign.py $TOP_FILE $TRAJ_FILE $OUTPUT_FILE

# Stripping water from rewrapped .dcd file and placing output file in same experiment fragment folder path
TRAJ_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/rep_1/Prod_59/Prod_59_rewrapped.dcd"
OUTPUT_FILE_PATH="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/rep_1/Prod_59/Prod_59_rewrapped_strip_waters.dcd"
python stripWaters.py -top $TOP_FILE -traj $TRAJ_FILE $OUTPUT_FILE_PATH


# Rewrapping original .dcd files and placing copy in output experiment fragment folder path
cd /scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/rep_1
mkdir Prod_60
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/DI-pipeline-tools
TOP_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/step5_assembly.pdb"
TRAJ_FILE="/scratch/PI/rondror/DesRes-Simulations/Downloaded/Gprot_Science2015_Dror_Desres/science2015/DESRES-Trajectory_science2015-22-all/science2015-22-all/science2015-22-all-060.dcd"
OUTPUT_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/rep_1/Prod_60/Prod_60_rewrapped.dcd"
python wrapAlign.py $TOP_FILE $TRAJ_FILE $OUTPUT_FILE

# Stripping water from rewrapped .dcd file and placing output file in same experiment fragment folder path
TRAJ_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/rep_1/Prod_60/Prod_60_rewrapped.dcd"
OUTPUT_FILE_PATH="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/rep_1/Prod_60/Prod_60_rewrapped_strip_waters.dcd"
python stripWaters.py -top $TOP_FILE -traj $TRAJ_FILE $OUTPUT_FILE_PATH


# Rewrapping original .dcd files and placing copy in output experiment fragment folder path
cd /scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/rep_1
mkdir Prod_61
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/DI-pipeline-tools
TOP_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/step5_assembly.pdb"
TRAJ_FILE="/scratch/PI/rondror/DesRes-Simulations/Downloaded/Gprot_Science2015_Dror_Desres/science2015/DESRES-Trajectory_science2015-22-all/science2015-22-all/science2015-22-all-061.dcd"
OUTPUT_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/rep_1/Prod_61/Prod_61_rewrapped.dcd"
python wrapAlign.py $TOP_FILE $TRAJ_FILE $OUTPUT_FILE

# Stripping water from rewrapped .dcd file and placing output file in same experiment fragment folder path
TRAJ_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/rep_1/Prod_61/Prod_61_rewrapped.dcd"
OUTPUT_FILE_PATH="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/rep_1/Prod_61/Prod_61_rewrapped_strip_waters.dcd"
python stripWaters.py -top $TOP_FILE -traj $TRAJ_FILE $OUTPUT_FILE_PATH


# Rewrapping original .dcd files and placing copy in output experiment fragment folder path
cd /scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/rep_1
mkdir Prod_62
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/DI-pipeline-tools
TOP_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/step5_assembly.pdb"
TRAJ_FILE="/scratch/PI/rondror/DesRes-Simulations/Downloaded/Gprot_Science2015_Dror_Desres/science2015/DESRES-Trajectory_science2015-22-all/science2015-22-all/science2015-22-all-062.dcd"
OUTPUT_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/rep_1/Prod_62/Prod_62_rewrapped.dcd"
python wrapAlign.py $TOP_FILE $TRAJ_FILE $OUTPUT_FILE

# Stripping water from rewrapped .dcd file and placing output file in same experiment fragment folder path
TRAJ_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/rep_1/Prod_62/Prod_62_rewrapped.dcd"
OUTPUT_FILE_PATH="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/rep_1/Prod_62/Prod_62_rewrapped_strip_waters.dcd"
python stripWaters.py -top $TOP_FILE -traj $TRAJ_FILE $OUTPUT_FILE_PATH


# Rewrapping original .dcd files and placing copy in output experiment fragment folder path
cd /scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/rep_1
mkdir Prod_63
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/DI-pipeline-tools
TOP_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/step5_assembly.pdb"
TRAJ_FILE="/scratch/PI/rondror/DesRes-Simulations/Downloaded/Gprot_Science2015_Dror_Desres/science2015/DESRES-Trajectory_science2015-22-all/science2015-22-all/science2015-22-all-063.dcd"
OUTPUT_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/rep_1/Prod_63/Prod_63_rewrapped.dcd"
python wrapAlign.py $TOP_FILE $TRAJ_FILE $OUTPUT_FILE

# Stripping water from rewrapped .dcd file and placing output file in same experiment fragment folder path
TRAJ_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/rep_1/Prod_63/Prod_63_rewrapped.dcd"
OUTPUT_FILE_PATH="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/rep_1/Prod_63/Prod_63_rewrapped_strip_waters.dcd"
python stripWaters.py -top $TOP_FILE -traj $TRAJ_FILE $OUTPUT_FILE_PATH


# Rewrapping original .dcd files and placing copy in output experiment fragment folder path
cd /scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/rep_1
mkdir Prod_64
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/DI-pipeline-tools
TOP_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/step5_assembly.pdb"
TRAJ_FILE="/scratch/PI/rondror/DesRes-Simulations/Downloaded/Gprot_Science2015_Dror_Desres/science2015/DESRES-Trajectory_science2015-22-all/science2015-22-all/science2015-22-all-064.dcd"
OUTPUT_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/rep_1/Prod_64/Prod_64_rewrapped.dcd"
python wrapAlign.py $TOP_FILE $TRAJ_FILE $OUTPUT_FILE

# Stripping water from rewrapped .dcd file and placing output file in same experiment fragment folder path
TRAJ_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/rep_1/Prod_64/Prod_64_rewrapped.dcd"
OUTPUT_FILE_PATH="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/rep_1/Prod_64/Prod_64_rewrapped_strip_waters.dcd"
python stripWaters.py -top $TOP_FILE -traj $TRAJ_FILE $OUTPUT_FILE_PATH


# Rewrapping original .dcd files and placing copy in output experiment fragment folder path
cd /scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/rep_1
mkdir Prod_65
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/DI-pipeline-tools
TOP_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/step5_assembly.pdb"
TRAJ_FILE="/scratch/PI/rondror/DesRes-Simulations/Downloaded/Gprot_Science2015_Dror_Desres/science2015/DESRES-Trajectory_science2015-22-all/science2015-22-all/science2015-22-all-065.dcd"
OUTPUT_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/rep_1/Prod_65/Prod_65_rewrapped.dcd"
python wrapAlign.py $TOP_FILE $TRAJ_FILE $OUTPUT_FILE

# Stripping water from rewrapped .dcd file and placing output file in same experiment fragment folder path
TRAJ_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/rep_1/Prod_65/Prod_65_rewrapped.dcd"
OUTPUT_FILE_PATH="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/rep_1/Prod_65/Prod_65_rewrapped_strip_waters.dcd"
python stripWaters.py -top $TOP_FILE -traj $TRAJ_FILE $OUTPUT_FILE_PATH


# Rewrapping original .dcd files and placing copy in output experiment fragment folder path
cd /scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/rep_1
mkdir Prod_66
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/DI-pipeline-tools
TOP_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/step5_assembly.pdb"
TRAJ_FILE="/scratch/PI/rondror/DesRes-Simulations/Downloaded/Gprot_Science2015_Dror_Desres/science2015/DESRES-Trajectory_science2015-22-all/science2015-22-all/science2015-22-all-066.dcd"
OUTPUT_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/rep_1/Prod_66/Prod_66_rewrapped.dcd"
python wrapAlign.py $TOP_FILE $TRAJ_FILE $OUTPUT_FILE

# Stripping water from rewrapped .dcd file and placing output file in same experiment fragment folder path
TRAJ_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/rep_1/Prod_66/Prod_66_rewrapped.dcd"
OUTPUT_FILE_PATH="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/rep_1/Prod_66/Prod_66_rewrapped_strip_waters.dcd"
python stripWaters.py -top $TOP_FILE -traj $TRAJ_FILE $OUTPUT_FILE_PATH


# Rewrapping original .dcd files and placing copy in output experiment fragment folder path
cd /scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/rep_1
mkdir Prod_67
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/DI-pipeline-tools
TOP_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/step5_assembly.pdb"
TRAJ_FILE="/scratch/PI/rondror/DesRes-Simulations/Downloaded/Gprot_Science2015_Dror_Desres/science2015/DESRES-Trajectory_science2015-22-all/science2015-22-all/science2015-22-all-067.dcd"
OUTPUT_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/rep_1/Prod_67/Prod_67_rewrapped.dcd"
python wrapAlign.py $TOP_FILE $TRAJ_FILE $OUTPUT_FILE

# Stripping water from rewrapped .dcd file and placing output file in same experiment fragment folder path
TRAJ_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/rep_1/Prod_67/Prod_67_rewrapped.dcd"
OUTPUT_FILE_PATH="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/rep_1/Prod_67/Prod_67_rewrapped_strip_waters.dcd"
python stripWaters.py -top $TOP_FILE -traj $TRAJ_FILE $OUTPUT_FILE_PATH


# Rewrapping original .dcd files and placing copy in output experiment fragment folder path
cd /scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/rep_1
mkdir Prod_68
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/DI-pipeline-tools
TOP_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/step5_assembly.pdb"
TRAJ_FILE="/scratch/PI/rondror/DesRes-Simulations/Downloaded/Gprot_Science2015_Dror_Desres/science2015/DESRES-Trajectory_science2015-22-all/science2015-22-all/science2015-22-all-068.dcd"
OUTPUT_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/rep_1/Prod_68/Prod_68_rewrapped.dcd"
python wrapAlign.py $TOP_FILE $TRAJ_FILE $OUTPUT_FILE

# Stripping water from rewrapped .dcd file and placing output file in same experiment fragment folder path
TRAJ_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/rep_1/Prod_68/Prod_68_rewrapped.dcd"
OUTPUT_FILE_PATH="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/rep_1/Prod_68/Prod_68_rewrapped_strip_waters.dcd"
python stripWaters.py -top $TOP_FILE -traj $TRAJ_FILE $OUTPUT_FILE_PATH


# Rewrapping original .dcd files and placing copy in output experiment fragment folder path
cd /scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/rep_1
mkdir Prod_69
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/DI-pipeline-tools
TOP_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/step5_assembly.pdb"
TRAJ_FILE="/scratch/PI/rondror/DesRes-Simulations/Downloaded/Gprot_Science2015_Dror_Desres/science2015/DESRES-Trajectory_science2015-22-all/science2015-22-all/science2015-22-all-069.dcd"
OUTPUT_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/rep_1/Prod_69/Prod_69_rewrapped.dcd"
python wrapAlign.py $TOP_FILE $TRAJ_FILE $OUTPUT_FILE

# Stripping water from rewrapped .dcd file and placing output file in same experiment fragment folder path
TRAJ_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/rep_1/Prod_69/Prod_69_rewrapped.dcd"
OUTPUT_FILE_PATH="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/rep_1/Prod_69/Prod_69_rewrapped_strip_waters.dcd"
python stripWaters.py -top $TOP_FILE -traj $TRAJ_FILE $OUTPUT_FILE_PATH


# Rewrapping original .dcd files and placing copy in output experiment fragment folder path
cd /scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/rep_1
mkdir Prod_70
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/DI-pipeline-tools
TOP_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/step5_assembly.pdb"
TRAJ_FILE="/scratch/PI/rondror/DesRes-Simulations/Downloaded/Gprot_Science2015_Dror_Desres/science2015/DESRES-Trajectory_science2015-22-all/science2015-22-all/science2015-22-all-070.dcd"
OUTPUT_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/rep_1/Prod_70/Prod_70_rewrapped.dcd"
python wrapAlign.py $TOP_FILE $TRAJ_FILE $OUTPUT_FILE

# Stripping water from rewrapped .dcd file and placing output file in same experiment fragment folder path
TRAJ_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/rep_1/Prod_70/Prod_70_rewrapped.dcd"
OUTPUT_FILE_PATH="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/rep_1/Prod_70/Prod_70_rewrapped_strip_waters.dcd"
python stripWaters.py -top $TOP_FILE -traj $TRAJ_FILE $OUTPUT_FILE_PATH


# Rewrapping original .dcd files and placing copy in output experiment fragment folder path
cd /scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/rep_1
mkdir Prod_71
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/DI-pipeline-tools
TOP_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/step5_assembly.pdb"
TRAJ_FILE="/scratch/PI/rondror/DesRes-Simulations/Downloaded/Gprot_Science2015_Dror_Desres/science2015/DESRES-Trajectory_science2015-22-all/science2015-22-all/science2015-22-all-071.dcd"
OUTPUT_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/rep_1/Prod_71/Prod_71_rewrapped.dcd"
python wrapAlign.py $TOP_FILE $TRAJ_FILE $OUTPUT_FILE

# Stripping water from rewrapped .dcd file and placing output file in same experiment fragment folder path
TRAJ_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/rep_1/Prod_71/Prod_71_rewrapped.dcd"
OUTPUT_FILE_PATH="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/rep_1/Prod_71/Prod_71_rewrapped_strip_waters.dcd"
python stripWaters.py -top $TOP_FILE -traj $TRAJ_FILE $OUTPUT_FILE_PATH


# Rewrapping original .dcd files and placing copy in output experiment fragment folder path
cd /scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/rep_1
mkdir Prod_72
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/DI-pipeline-tools
TOP_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/step5_assembly.pdb"
TRAJ_FILE="/scratch/PI/rondror/DesRes-Simulations/Downloaded/Gprot_Science2015_Dror_Desres/science2015/DESRES-Trajectory_science2015-22-all/science2015-22-all/science2015-22-all-072.dcd"
OUTPUT_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/rep_1/Prod_72/Prod_72_rewrapped.dcd"
python wrapAlign.py $TOP_FILE $TRAJ_FILE $OUTPUT_FILE

# Stripping water from rewrapped .dcd file and placing output file in same experiment fragment folder path
TRAJ_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/rep_1/Prod_72/Prod_72_rewrapped.dcd"
OUTPUT_FILE_PATH="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/rep_1/Prod_72/Prod_72_rewrapped_strip_waters.dcd"
python stripWaters.py -top $TOP_FILE -traj $TRAJ_FILE $OUTPUT_FILE_PATH


# Rewrapping original .dcd files and placing copy in output experiment fragment folder path
cd /scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/rep_1
mkdir Prod_73
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/DI-pipeline-tools
TOP_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/step5_assembly.pdb"
TRAJ_FILE="/scratch/PI/rondror/DesRes-Simulations/Downloaded/Gprot_Science2015_Dror_Desres/science2015/DESRES-Trajectory_science2015-22-all/science2015-22-all/science2015-22-all-073.dcd"
OUTPUT_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/rep_1/Prod_73/Prod_73_rewrapped.dcd"
python wrapAlign.py $TOP_FILE $TRAJ_FILE $OUTPUT_FILE

# Stripping water from rewrapped .dcd file and placing output file in same experiment fragment folder path
TRAJ_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/rep_1/Prod_73/Prod_73_rewrapped.dcd"
OUTPUT_FILE_PATH="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/rep_1/Prod_73/Prod_73_rewrapped_strip_waters.dcd"
python stripWaters.py -top $TOP_FILE -traj $TRAJ_FILE $OUTPUT_FILE_PATH


# Rewrapping original .dcd files and placing copy in output experiment fragment folder path
cd /scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/rep_1
mkdir Prod_74
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/DI-pipeline-tools
TOP_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/step5_assembly.pdb"
TRAJ_FILE="/scratch/PI/rondror/DesRes-Simulations/Downloaded/Gprot_Science2015_Dror_Desres/science2015/DESRES-Trajectory_science2015-22-all/science2015-22-all/science2015-22-all-074.dcd"
OUTPUT_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/rep_1/Prod_74/Prod_74_rewrapped.dcd"
python wrapAlign.py $TOP_FILE $TRAJ_FILE $OUTPUT_FILE

# Stripping water from rewrapped .dcd file and placing output file in same experiment fragment folder path
TRAJ_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/rep_1/Prod_74/Prod_74_rewrapped.dcd"
OUTPUT_FILE_PATH="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/rep_1/Prod_74/Prod_74_rewrapped_strip_waters.dcd"
python stripWaters.py -top $TOP_FILE -traj $TRAJ_FILE $OUTPUT_FILE_PATH


# Rewrapping original .dcd files and placing copy in output experiment fragment folder path
cd /scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/rep_1
mkdir Prod_75
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/DI-pipeline-tools
TOP_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/step5_assembly.pdb"
TRAJ_FILE="/scratch/PI/rondror/DesRes-Simulations/Downloaded/Gprot_Science2015_Dror_Desres/science2015/DESRES-Trajectory_science2015-22-all/science2015-22-all/science2015-22-all-075.dcd"
OUTPUT_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/rep_1/Prod_75/Prod_75_rewrapped.dcd"
python wrapAlign.py $TOP_FILE $TRAJ_FILE $OUTPUT_FILE

# Stripping water from rewrapped .dcd file and placing output file in same experiment fragment folder path
TRAJ_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/rep_1/Prod_75/Prod_75_rewrapped.dcd"
OUTPUT_FILE_PATH="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/rep_1/Prod_75/Prod_75_rewrapped_strip_waters.dcd"
python stripWaters.py -top $TOP_FILE -traj $TRAJ_FILE $OUTPUT_FILE_PATH


# Rewrapping original .dcd files and placing copy in output experiment fragment folder path
cd /scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/rep_1
mkdir Prod_76
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/DI-pipeline-tools
TOP_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/step5_assembly.pdb"
TRAJ_FILE="/scratch/PI/rondror/DesRes-Simulations/Downloaded/Gprot_Science2015_Dror_Desres/science2015/DESRES-Trajectory_science2015-22-all/science2015-22-all/science2015-22-all-076.dcd"
OUTPUT_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/rep_1/Prod_76/Prod_76_rewrapped.dcd"
python wrapAlign.py $TOP_FILE $TRAJ_FILE $OUTPUT_FILE

# Stripping water from rewrapped .dcd file and placing output file in same experiment fragment folder path
TRAJ_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/rep_1/Prod_76/Prod_76_rewrapped.dcd"
OUTPUT_FILE_PATH="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/rep_1/Prod_76/Prod_76_rewrapped_strip_waters.dcd"
python stripWaters.py -top $TOP_FILE -traj $TRAJ_FILE $OUTPUT_FILE_PATH


# Rewrapping original .dcd files and placing copy in output experiment fragment folder path
cd /scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/rep_1
mkdir Prod_77
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/DI-pipeline-tools
TOP_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/step5_assembly.pdb"
TRAJ_FILE="/scratch/PI/rondror/DesRes-Simulations/Downloaded/Gprot_Science2015_Dror_Desres/science2015/DESRES-Trajectory_science2015-22-all/science2015-22-all/science2015-22-all-077.dcd"
OUTPUT_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/rep_1/Prod_77/Prod_77_rewrapped.dcd"
python wrapAlign.py $TOP_FILE $TRAJ_FILE $OUTPUT_FILE

# Stripping water from rewrapped .dcd file and placing output file in same experiment fragment folder path
TRAJ_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/rep_1/Prod_77/Prod_77_rewrapped.dcd"
OUTPUT_FILE_PATH="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/rep_1/Prod_77/Prod_77_rewrapped_strip_waters.dcd"
python stripWaters.py -top $TOP_FILE -traj $TRAJ_FILE $OUTPUT_FILE_PATH


# Rewrapping original .dcd files and placing copy in output experiment fragment folder path
cd /scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/rep_1
mkdir Prod_78
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/DI-pipeline-tools
TOP_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/step5_assembly.pdb"
TRAJ_FILE="/scratch/PI/rondror/DesRes-Simulations/Downloaded/Gprot_Science2015_Dror_Desres/science2015/DESRES-Trajectory_science2015-22-all/science2015-22-all/science2015-22-all-078.dcd"
OUTPUT_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/rep_1/Prod_78/Prod_78_rewrapped.dcd"
python wrapAlign.py $TOP_FILE $TRAJ_FILE $OUTPUT_FILE

# Stripping water from rewrapped .dcd file and placing output file in same experiment fragment folder path
TRAJ_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/rep_1/Prod_78/Prod_78_rewrapped.dcd"
OUTPUT_FILE_PATH="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/rep_1/Prod_78/Prod_78_rewrapped_strip_waters.dcd"
python stripWaters.py -top $TOP_FILE -traj $TRAJ_FILE $OUTPUT_FILE_PATH


# Rewrapping original .dcd files and placing copy in output experiment fragment folder path
cd /scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/rep_1
mkdir Prod_79
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/DI-pipeline-tools
TOP_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/step5_assembly.pdb"
TRAJ_FILE="/scratch/PI/rondror/DesRes-Simulations/Downloaded/Gprot_Science2015_Dror_Desres/science2015/DESRES-Trajectory_science2015-22-all/science2015-22-all/science2015-22-all-079.dcd"
OUTPUT_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/rep_1/Prod_79/Prod_79_rewrapped.dcd"
python wrapAlign.py $TOP_FILE $TRAJ_FILE $OUTPUT_FILE

# Stripping water from rewrapped .dcd file and placing output file in same experiment fragment folder path
TRAJ_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/rep_1/Prod_79/Prod_79_rewrapped.dcd"
OUTPUT_FILE_PATH="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/rep_1/Prod_79/Prod_79_rewrapped_strip_waters.dcd"
python stripWaters.py -top $TOP_FILE -traj $TRAJ_FILE $OUTPUT_FILE_PATH


# Rewrapping original .dcd files and placing copy in output experiment fragment folder path
cd /scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/rep_1
mkdir Prod_80
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/DI-pipeline-tools
TOP_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/step5_assembly.pdb"
TRAJ_FILE="/scratch/PI/rondror/DesRes-Simulations/Downloaded/Gprot_Science2015_Dror_Desres/science2015/DESRES-Trajectory_science2015-22-all/science2015-22-all/science2015-22-all-080.dcd"
OUTPUT_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/rep_1/Prod_80/Prod_80_rewrapped.dcd"
python wrapAlign.py $TOP_FILE $TRAJ_FILE $OUTPUT_FILE

# Stripping water from rewrapped .dcd file and placing output file in same experiment fragment folder path
TRAJ_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/rep_1/Prod_80/Prod_80_rewrapped.dcd"
OUTPUT_FILE_PATH="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/rep_1/Prod_80/Prod_80_rewrapped_strip_waters.dcd"
python stripWaters.py -top $TOP_FILE -traj $TRAJ_FILE $OUTPUT_FILE_PATH


# Rewrapping original .dcd files and placing copy in output experiment fragment folder path
cd /scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/rep_1
mkdir Prod_81
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/DI-pipeline-tools
TOP_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/step5_assembly.pdb"
TRAJ_FILE="/scratch/PI/rondror/DesRes-Simulations/Downloaded/Gprot_Science2015_Dror_Desres/science2015/DESRES-Trajectory_science2015-22-all/science2015-22-all/science2015-22-all-081.dcd"
OUTPUT_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/rep_1/Prod_81/Prod_81_rewrapped.dcd"
python wrapAlign.py $TOP_FILE $TRAJ_FILE $OUTPUT_FILE

# Stripping water from rewrapped .dcd file and placing output file in same experiment fragment folder path
TRAJ_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/rep_1/Prod_81/Prod_81_rewrapped.dcd"
OUTPUT_FILE_PATH="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/rep_1/Prod_81/Prod_81_rewrapped_strip_waters.dcd"
python stripWaters.py -top $TOP_FILE -traj $TRAJ_FILE $OUTPUT_FILE_PATH


# Rewrapping original .dcd files and placing copy in output experiment fragment folder path
cd /scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/rep_1
mkdir Prod_82
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/DI-pipeline-tools
TOP_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/step5_assembly.pdb"
TRAJ_FILE="/scratch/PI/rondror/DesRes-Simulations/Downloaded/Gprot_Science2015_Dror_Desres/science2015/DESRES-Trajectory_science2015-22-all/science2015-22-all/science2015-22-all-082.dcd"
OUTPUT_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/rep_1/Prod_82/Prod_82_rewrapped.dcd"
python wrapAlign.py $TOP_FILE $TRAJ_FILE $OUTPUT_FILE

# Stripping water from rewrapped .dcd file and placing output file in same experiment fragment folder path
TRAJ_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/rep_1/Prod_82/Prod_82_rewrapped.dcd"
OUTPUT_FILE_PATH="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/rep_1/Prod_82/Prod_82_rewrapped_strip_waters.dcd"
python stripWaters.py -top $TOP_FILE -traj $TRAJ_FILE $OUTPUT_FILE_PATH


# Rewrapping original .dcd files and placing copy in output experiment fragment folder path
cd /scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/rep_1
mkdir Prod_83
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/DI-pipeline-tools
TOP_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/step5_assembly.pdb"
TRAJ_FILE="/scratch/PI/rondror/DesRes-Simulations/Downloaded/Gprot_Science2015_Dror_Desres/science2015/DESRES-Trajectory_science2015-22-all/science2015-22-all/science2015-22-all-083.dcd"
OUTPUT_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/rep_1/Prod_83/Prod_83_rewrapped.dcd"
python wrapAlign.py $TOP_FILE $TRAJ_FILE $OUTPUT_FILE

# Stripping water from rewrapped .dcd file and placing output file in same experiment fragment folder path
TRAJ_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/rep_1/Prod_83/Prod_83_rewrapped.dcd"
OUTPUT_FILE_PATH="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/rep_1/Prod_83/Prod_83_rewrapped_strip_waters.dcd"
python stripWaters.py -top $TOP_FILE -traj $TRAJ_FILE $OUTPUT_FILE_PATH


# Rewrapping original .dcd files and placing copy in output experiment fragment folder path
cd /scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/rep_1
mkdir Prod_84
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/DI-pipeline-tools
TOP_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/step5_assembly.pdb"
TRAJ_FILE="/scratch/PI/rondror/DesRes-Simulations/Downloaded/Gprot_Science2015_Dror_Desres/science2015/DESRES-Trajectory_science2015-22-all/science2015-22-all/science2015-22-all-084.dcd"
OUTPUT_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/rep_1/Prod_84/Prod_84_rewrapped.dcd"
python wrapAlign.py $TOP_FILE $TRAJ_FILE $OUTPUT_FILE

# Stripping water from rewrapped .dcd file and placing output file in same experiment fragment folder path
TRAJ_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/rep_1/Prod_84/Prod_84_rewrapped.dcd"
OUTPUT_FILE_PATH="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/rep_1/Prod_84/Prod_84_rewrapped_strip_waters.dcd"
python stripWaters.py -top $TOP_FILE -traj $TRAJ_FILE $OUTPUT_FILE_PATH


# Rewrapping original .dcd files and placing copy in output experiment fragment folder path
cd /scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/rep_1
mkdir Prod_85
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/DI-pipeline-tools
TOP_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/step5_assembly.pdb"
TRAJ_FILE="/scratch/PI/rondror/DesRes-Simulations/Downloaded/Gprot_Science2015_Dror_Desres/science2015/DESRES-Trajectory_science2015-22-all/science2015-22-all/science2015-22-all-085.dcd"
OUTPUT_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/rep_1/Prod_85/Prod_85_rewrapped.dcd"
python wrapAlign.py $TOP_FILE $TRAJ_FILE $OUTPUT_FILE

# Stripping water from rewrapped .dcd file and placing output file in same experiment fragment folder path
TRAJ_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/rep_1/Prod_85/Prod_85_rewrapped.dcd"
OUTPUT_FILE_PATH="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/rep_1/Prod_85/Prod_85_rewrapped_strip_waters.dcd"
python stripWaters.py -top $TOP_FILE -traj $TRAJ_FILE $OUTPUT_FILE_PATH


# Rewrapping original .dcd files and placing copy in output experiment fragment folder path
cd /scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/rep_1
mkdir Prod_86
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/DI-pipeline-tools
TOP_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/step5_assembly.pdb"
TRAJ_FILE="/scratch/PI/rondror/DesRes-Simulations/Downloaded/Gprot_Science2015_Dror_Desres/science2015/DESRES-Trajectory_science2015-22-all/science2015-22-all/science2015-22-all-086.dcd"
OUTPUT_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/rep_1/Prod_86/Prod_86_rewrapped.dcd"
python wrapAlign.py $TOP_FILE $TRAJ_FILE $OUTPUT_FILE

# Stripping water from rewrapped .dcd file and placing output file in same experiment fragment folder path
TRAJ_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/rep_1/Prod_86/Prod_86_rewrapped.dcd"
OUTPUT_FILE_PATH="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/rep_1/Prod_86/Prod_86_rewrapped_strip_waters.dcd"
python stripWaters.py -top $TOP_FILE -traj $TRAJ_FILE $OUTPUT_FILE_PATH


# Rewrapping original .dcd files and placing copy in output experiment fragment folder path
cd /scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/rep_1
mkdir Prod_87
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/DI-pipeline-tools
TOP_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/step5_assembly.pdb"
TRAJ_FILE="/scratch/PI/rondror/DesRes-Simulations/Downloaded/Gprot_Science2015_Dror_Desres/science2015/DESRES-Trajectory_science2015-22-all/science2015-22-all/science2015-22-all-087.dcd"
OUTPUT_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/rep_1/Prod_87/Prod_87_rewrapped.dcd"
python wrapAlign.py $TOP_FILE $TRAJ_FILE $OUTPUT_FILE

# Stripping water from rewrapped .dcd file and placing output file in same experiment fragment folder path
TRAJ_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/rep_1/Prod_87/Prod_87_rewrapped.dcd"
OUTPUT_FILE_PATH="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/rep_1/Prod_87/Prod_87_rewrapped_strip_waters.dcd"
python stripWaters.py -top $TOP_FILE -traj $TRAJ_FILE $OUTPUT_FILE_PATH


# Rewrapping original .dcd files and placing copy in output experiment fragment folder path
cd /scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/rep_1
mkdir Prod_88
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/DI-pipeline-tools
TOP_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/step5_assembly.pdb"
TRAJ_FILE="/scratch/PI/rondror/DesRes-Simulations/Downloaded/Gprot_Science2015_Dror_Desres/science2015/DESRES-Trajectory_science2015-22-all/science2015-22-all/science2015-22-all-088.dcd"
OUTPUT_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/rep_1/Prod_88/Prod_88_rewrapped.dcd"
python wrapAlign.py $TOP_FILE $TRAJ_FILE $OUTPUT_FILE

# Stripping water from rewrapped .dcd file and placing output file in same experiment fragment folder path
TRAJ_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/rep_1/Prod_88/Prod_88_rewrapped.dcd"
OUTPUT_FILE_PATH="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/rep_1/Prod_88/Prod_88_rewrapped_strip_waters.dcd"
python stripWaters.py -top $TOP_FILE -traj $TRAJ_FILE $OUTPUT_FILE_PATH


# Rewrapping original .dcd files and placing copy in output experiment fragment folder path
cd /scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/rep_1
mkdir Prod_89
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/DI-pipeline-tools
TOP_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/step5_assembly.pdb"
TRAJ_FILE="/scratch/PI/rondror/DesRes-Simulations/Downloaded/Gprot_Science2015_Dror_Desres/science2015/DESRES-Trajectory_science2015-22-all/science2015-22-all/science2015-22-all-089.dcd"
OUTPUT_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/rep_1/Prod_89/Prod_89_rewrapped.dcd"
python wrapAlign.py $TOP_FILE $TRAJ_FILE $OUTPUT_FILE

# Stripping water from rewrapped .dcd file and placing output file in same experiment fragment folder path
TRAJ_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/rep_1/Prod_89/Prod_89_rewrapped.dcd"
OUTPUT_FILE_PATH="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/rep_1/Prod_89/Prod_89_rewrapped_strip_waters.dcd"
python stripWaters.py -top $TOP_FILE -traj $TRAJ_FILE $OUTPUT_FILE_PATH


# Rewrapping original .dcd files and placing copy in output experiment fragment folder path
cd /scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/rep_1
mkdir Prod_90
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/DI-pipeline-tools
TOP_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/step5_assembly.pdb"
TRAJ_FILE="/scratch/PI/rondror/DesRes-Simulations/Downloaded/Gprot_Science2015_Dror_Desres/science2015/DESRES-Trajectory_science2015-22-all/science2015-22-all/science2015-22-all-090.dcd"
OUTPUT_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/rep_1/Prod_90/Prod_90_rewrapped.dcd"
python wrapAlign.py $TOP_FILE $TRAJ_FILE $OUTPUT_FILE

# Stripping water from rewrapped .dcd file and placing output file in same experiment fragment folder path
TRAJ_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/rep_1/Prod_90/Prod_90_rewrapped.dcd"
OUTPUT_FILE_PATH="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/rep_1/Prod_90/Prod_90_rewrapped_strip_waters.dcd"
python stripWaters.py -top $TOP_FILE -traj $TRAJ_FILE $OUTPUT_FILE_PATH


# Rewrapping original .dcd files and placing copy in output experiment fragment folder path
cd /scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/rep_1
mkdir Prod_91
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/DI-pipeline-tools
TOP_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/step5_assembly.pdb"
TRAJ_FILE="/scratch/PI/rondror/DesRes-Simulations/Downloaded/Gprot_Science2015_Dror_Desres/science2015/DESRES-Trajectory_science2015-22-all/science2015-22-all/science2015-22-all-091.dcd"
OUTPUT_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/rep_1/Prod_91/Prod_91_rewrapped.dcd"
python wrapAlign.py $TOP_FILE $TRAJ_FILE $OUTPUT_FILE

# Stripping water from rewrapped .dcd file and placing output file in same experiment fragment folder path
TRAJ_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/rep_1/Prod_91/Prod_91_rewrapped.dcd"
OUTPUT_FILE_PATH="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/rep_1/Prod_91/Prod_91_rewrapped_strip_waters.dcd"
python stripWaters.py -top $TOP_FILE -traj $TRAJ_FILE $OUTPUT_FILE_PATH


# Rewrapping original .dcd files and placing copy in output experiment fragment folder path
cd /scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/rep_1
mkdir Prod_92
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/DI-pipeline-tools
TOP_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/step5_assembly.pdb"
TRAJ_FILE="/scratch/PI/rondror/DesRes-Simulations/Downloaded/Gprot_Science2015_Dror_Desres/science2015/DESRES-Trajectory_science2015-22-all/science2015-22-all/science2015-22-all-092.dcd"
OUTPUT_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/rep_1/Prod_92/Prod_92_rewrapped.dcd"
python wrapAlign.py $TOP_FILE $TRAJ_FILE $OUTPUT_FILE

# Stripping water from rewrapped .dcd file and placing output file in same experiment fragment folder path
TRAJ_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/rep_1/Prod_92/Prod_92_rewrapped.dcd"
OUTPUT_FILE_PATH="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/rep_1/Prod_92/Prod_92_rewrapped_strip_waters.dcd"
python stripWaters.py -top $TOP_FILE -traj $TRAJ_FILE $OUTPUT_FILE_PATH


# Rewrapping original .dcd files and placing copy in output experiment fragment folder path
cd /scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/rep_1
mkdir Prod_93
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/DI-pipeline-tools
TOP_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/step5_assembly.pdb"
TRAJ_FILE="/scratch/PI/rondror/DesRes-Simulations/Downloaded/Gprot_Science2015_Dror_Desres/science2015/DESRES-Trajectory_science2015-22-all/science2015-22-all/science2015-22-all-093.dcd"
OUTPUT_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/rep_1/Prod_93/Prod_93_rewrapped.dcd"
python wrapAlign.py $TOP_FILE $TRAJ_FILE $OUTPUT_FILE

# Stripping water from rewrapped .dcd file and placing output file in same experiment fragment folder path
TRAJ_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/rep_1/Prod_93/Prod_93_rewrapped.dcd"
OUTPUT_FILE_PATH="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/rep_1/Prod_93/Prod_93_rewrapped_strip_waters.dcd"
python stripWaters.py -top $TOP_FILE -traj $TRAJ_FILE $OUTPUT_FILE_PATH


# Rewrapping original .dcd files and placing copy in output experiment fragment folder path
cd /scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/rep_1
mkdir Prod_94
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/DI-pipeline-tools
TOP_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/step5_assembly.pdb"
TRAJ_FILE="/scratch/PI/rondror/DesRes-Simulations/Downloaded/Gprot_Science2015_Dror_Desres/science2015/DESRES-Trajectory_science2015-22-all/science2015-22-all/science2015-22-all-094.dcd"
OUTPUT_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/rep_1/Prod_94/Prod_94_rewrapped.dcd"
python wrapAlign.py $TOP_FILE $TRAJ_FILE $OUTPUT_FILE

# Stripping water from rewrapped .dcd file and placing output file in same experiment fragment folder path
TRAJ_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/rep_1/Prod_94/Prod_94_rewrapped.dcd"
OUTPUT_FILE_PATH="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/rep_1/Prod_94/Prod_94_rewrapped_strip_waters.dcd"
python stripWaters.py -top $TOP_FILE -traj $TRAJ_FILE $OUTPUT_FILE_PATH


# Rewrapping original .dcd files and placing copy in output experiment fragment folder path
cd /scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/rep_1
mkdir Prod_95
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/DI-pipeline-tools
TOP_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/step5_assembly.pdb"
TRAJ_FILE="/scratch/PI/rondror/DesRes-Simulations/Downloaded/Gprot_Science2015_Dror_Desres/science2015/DESRES-Trajectory_science2015-22-all/science2015-22-all/science2015-22-all-095.dcd"
OUTPUT_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/rep_1/Prod_95/Prod_95_rewrapped.dcd"
python wrapAlign.py $TOP_FILE $TRAJ_FILE $OUTPUT_FILE

# Stripping water from rewrapped .dcd file and placing output file in same experiment fragment folder path
TRAJ_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/rep_1/Prod_95/Prod_95_rewrapped.dcd"
OUTPUT_FILE_PATH="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/rep_1/Prod_95/Prod_95_rewrapped_strip_waters.dcd"
python stripWaters.py -top $TOP_FILE -traj $TRAJ_FILE $OUTPUT_FILE_PATH


# Rewrapping original .dcd files and placing copy in output experiment fragment folder path
cd /scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/rep_1
mkdir Prod_96
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/DI-pipeline-tools
TOP_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/step5_assembly.pdb"
TRAJ_FILE="/scratch/PI/rondror/DesRes-Simulations/Downloaded/Gprot_Science2015_Dror_Desres/science2015/DESRES-Trajectory_science2015-22-all/science2015-22-all/science2015-22-all-096.dcd"
OUTPUT_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/rep_1/Prod_96/Prod_96_rewrapped.dcd"
python wrapAlign.py $TOP_FILE $TRAJ_FILE $OUTPUT_FILE

# Stripping water from rewrapped .dcd file and placing output file in same experiment fragment folder path
TRAJ_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/rep_1/Prod_96/Prod_96_rewrapped.dcd"
OUTPUT_FILE_PATH="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/rep_1/Prod_96/Prod_96_rewrapped_strip_waters.dcd"
python stripWaters.py -top $TOP_FILE -traj $TRAJ_FILE $OUTPUT_FILE_PATH


# Rewrapping original .dcd files and placing copy in output experiment fragment folder path
cd /scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/rep_1
mkdir Prod_97
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/DI-pipeline-tools
TOP_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/step5_assembly.pdb"
TRAJ_FILE="/scratch/PI/rondror/DesRes-Simulations/Downloaded/Gprot_Science2015_Dror_Desres/science2015/DESRES-Trajectory_science2015-22-all/science2015-22-all/science2015-22-all-097.dcd"
OUTPUT_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/rep_1/Prod_97/Prod_97_rewrapped.dcd"
python wrapAlign.py $TOP_FILE $TRAJ_FILE $OUTPUT_FILE

# Stripping water from rewrapped .dcd file and placing output file in same experiment fragment folder path
TRAJ_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/rep_1/Prod_97/Prod_97_rewrapped.dcd"
OUTPUT_FILE_PATH="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/rep_1/Prod_97/Prod_97_rewrapped_strip_waters.dcd"
python stripWaters.py -top $TOP_FILE -traj $TRAJ_FILE $OUTPUT_FILE_PATH


# Rewrapping original .dcd files and placing copy in output experiment fragment folder path
cd /scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/rep_1
mkdir Prod_98
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/DI-pipeline-tools
TOP_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/step5_assembly.pdb"
TRAJ_FILE="/scratch/PI/rondror/DesRes-Simulations/Downloaded/Gprot_Science2015_Dror_Desres/science2015/DESRES-Trajectory_science2015-22-all/science2015-22-all/science2015-22-all-098.dcd"
OUTPUT_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/rep_1/Prod_98/Prod_98_rewrapped.dcd"
python wrapAlign.py $TOP_FILE $TRAJ_FILE $OUTPUT_FILE

# Stripping water from rewrapped .dcd file and placing output file in same experiment fragment folder path
TRAJ_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/rep_1/Prod_98/Prod_98_rewrapped.dcd"
OUTPUT_FILE_PATH="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/rep_1/Prod_98/Prod_98_rewrapped_strip_waters.dcd"
python stripWaters.py -top $TOP_FILE -traj $TRAJ_FILE $OUTPUT_FILE_PATH


# Rewrapping original .dcd files and placing copy in output experiment fragment folder path
cd /scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/rep_1
mkdir Prod_99
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/DI-pipeline-tools
TOP_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/step5_assembly.pdb"
TRAJ_FILE="/scratch/PI/rondror/DesRes-Simulations/Downloaded/Gprot_Science2015_Dror_Desres/science2015/DESRES-Trajectory_science2015-22-all/science2015-22-all/science2015-22-all-099.dcd"
OUTPUT_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/rep_1/Prod_99/Prod_99_rewrapped.dcd"
python wrapAlign.py $TOP_FILE $TRAJ_FILE $OUTPUT_FILE

# Stripping water from rewrapped .dcd file and placing output file in same experiment fragment folder path
TRAJ_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/rep_1/Prod_99/Prod_99_rewrapped.dcd"
OUTPUT_FILE_PATH="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/rep_1/Prod_99/Prod_99_rewrapped_strip_waters.dcd"
python stripWaters.py -top $TOP_FILE -traj $TRAJ_FILE $OUTPUT_FILE_PATH


# Rewrapping original .dcd files and placing copy in output experiment fragment folder path
cd /scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/rep_1
mkdir Prod_100
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/DI-pipeline-tools
TOP_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/step5_assembly.pdb"
TRAJ_FILE="/scratch/PI/rondror/DesRes-Simulations/Downloaded/Gprot_Science2015_Dror_Desres/science2015/DESRES-Trajectory_science2015-22-all/science2015-22-all/science2015-22-all-100.dcd"
OUTPUT_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/rep_1/Prod_100/Prod_100_rewrapped.dcd"
python wrapAlign.py $TOP_FILE $TRAJ_FILE $OUTPUT_FILE

# Stripping water from rewrapped .dcd file and placing output file in same experiment fragment folder path
TRAJ_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/rep_1/Prod_100/Prod_100_rewrapped.dcd"
OUTPUT_FILE_PATH="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/rep_1/Prod_100/Prod_100_rewrapped_strip_waters.dcd"
python stripWaters.py -top $TOP_FILE -traj $TRAJ_FILE $OUTPUT_FILE_PATH


# Rewrapping original .dcd files and placing copy in output experiment fragment folder path
cd /scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/rep_1
mkdir Prod_101
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/DI-pipeline-tools
TOP_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/step5_assembly.pdb"
TRAJ_FILE="/scratch/PI/rondror/DesRes-Simulations/Downloaded/Gprot_Science2015_Dror_Desres/science2015/DESRES-Trajectory_science2015-22-all/science2015-22-all/science2015-22-all-101.dcd"
OUTPUT_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/rep_1/Prod_101/Prod_101_rewrapped.dcd"
python wrapAlign.py $TOP_FILE $TRAJ_FILE $OUTPUT_FILE

# Stripping water from rewrapped .dcd file and placing output file in same experiment fragment folder path
TRAJ_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/rep_1/Prod_101/Prod_101_rewrapped.dcd"
OUTPUT_FILE_PATH="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/rep_1/Prod_101/Prod_101_rewrapped_strip_waters.dcd"
python stripWaters.py -top $TOP_FILE -traj $TRAJ_FILE $OUTPUT_FILE_PATH


# Rewrapping original .dcd files and placing copy in output experiment fragment folder path
cd /scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/rep_1
mkdir Prod_102
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/DI-pipeline-tools
TOP_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/step5_assembly.pdb"
TRAJ_FILE="/scratch/PI/rondror/DesRes-Simulations/Downloaded/Gprot_Science2015_Dror_Desres/science2015/DESRES-Trajectory_science2015-22-all/science2015-22-all/science2015-22-all-102.dcd"
OUTPUT_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/rep_1/Prod_102/Prod_102_rewrapped.dcd"
python wrapAlign.py $TOP_FILE $TRAJ_FILE $OUTPUT_FILE

# Stripping water from rewrapped .dcd file and placing output file in same experiment fragment folder path
TRAJ_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/rep_1/Prod_102/Prod_102_rewrapped.dcd"
OUTPUT_FILE_PATH="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/rep_1/Prod_102/Prod_102_rewrapped_strip_waters.dcd"
python stripWaters.py -top $TOP_FILE -traj $TRAJ_FILE $OUTPUT_FILE_PATH


# Rewrapping original .dcd files and placing copy in output experiment fragment folder path
cd /scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/rep_1
mkdir Prod_103
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/DI-pipeline-tools
TOP_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/step5_assembly.pdb"
TRAJ_FILE="/scratch/PI/rondror/DesRes-Simulations/Downloaded/Gprot_Science2015_Dror_Desres/science2015/DESRES-Trajectory_science2015-22-all/science2015-22-all/science2015-22-all-103.dcd"
OUTPUT_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/rep_1/Prod_103/Prod_103_rewrapped.dcd"
python wrapAlign.py $TOP_FILE $TRAJ_FILE $OUTPUT_FILE

# Stripping water from rewrapped .dcd file and placing output file in same experiment fragment folder path
TRAJ_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/rep_1/Prod_103/Prod_103_rewrapped.dcd"
OUTPUT_FILE_PATH="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/rep_1/Prod_103/Prod_103_rewrapped_strip_waters.dcd"
python stripWaters.py -top $TOP_FILE -traj $TRAJ_FILE $OUTPUT_FILE_PATH


# Rewrapping original .dcd files and placing copy in output experiment fragment folder path
cd /scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/rep_1
mkdir Prod_104
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/DI-pipeline-tools
TOP_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/step5_assembly.pdb"
TRAJ_FILE="/scratch/PI/rondror/DesRes-Simulations/Downloaded/Gprot_Science2015_Dror_Desres/science2015/DESRES-Trajectory_science2015-22-all/science2015-22-all/science2015-22-all-104.dcd"
OUTPUT_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/rep_1/Prod_104/Prod_104_rewrapped.dcd"
python wrapAlign.py $TOP_FILE $TRAJ_FILE $OUTPUT_FILE

# Stripping water from rewrapped .dcd file and placing output file in same experiment fragment folder path
TRAJ_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/rep_1/Prod_104/Prod_104_rewrapped.dcd"
OUTPUT_FILE_PATH="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/rep_1/Prod_104/Prod_104_rewrapped_strip_waters.dcd"
python stripWaters.py -top $TOP_FILE -traj $TRAJ_FILE $OUTPUT_FILE_PATH


# Rewrapping original .dcd files and placing copy in output experiment fragment folder path
cd /scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/rep_1
mkdir Prod_105
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/DI-pipeline-tools
TOP_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/step5_assembly.pdb"
TRAJ_FILE="/scratch/PI/rondror/DesRes-Simulations/Downloaded/Gprot_Science2015_Dror_Desres/science2015/DESRES-Trajectory_science2015-22-all/science2015-22-all/science2015-22-all-105.dcd"
OUTPUT_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/rep_1/Prod_105/Prod_105_rewrapped.dcd"
python wrapAlign.py $TOP_FILE $TRAJ_FILE $OUTPUT_FILE

# Stripping water from rewrapped .dcd file and placing output file in same experiment fragment folder path
TRAJ_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/rep_1/Prod_105/Prod_105_rewrapped.dcd"
OUTPUT_FILE_PATH="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/rep_1/Prod_105/Prod_105_rewrapped_strip_waters.dcd"
python stripWaters.py -top $TOP_FILE -traj $TRAJ_FILE $OUTPUT_FILE_PATH


# Rewrapping original .dcd files and placing copy in output experiment fragment folder path
cd /scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/rep_1
mkdir Prod_106
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/DI-pipeline-tools
TOP_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/step5_assembly.pdb"
TRAJ_FILE="/scratch/PI/rondror/DesRes-Simulations/Downloaded/Gprot_Science2015_Dror_Desres/science2015/DESRES-Trajectory_science2015-22-all/science2015-22-all/science2015-22-all-106.dcd"
OUTPUT_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/rep_1/Prod_106/Prod_106_rewrapped.dcd"
python wrapAlign.py $TOP_FILE $TRAJ_FILE $OUTPUT_FILE

# Stripping water from rewrapped .dcd file and placing output file in same experiment fragment folder path
TRAJ_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/rep_1/Prod_106/Prod_106_rewrapped.dcd"
OUTPUT_FILE_PATH="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/rep_1/Prod_106/Prod_106_rewrapped_strip_waters.dcd"
python stripWaters.py -top $TOP_FILE -traj $TRAJ_FILE $OUTPUT_FILE_PATH


# Rewrapping original .dcd files and placing copy in output experiment fragment folder path
cd /scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/rep_1
mkdir Prod_107
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/DI-pipeline-tools
TOP_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/step5_assembly.pdb"
TRAJ_FILE="/scratch/PI/rondror/DesRes-Simulations/Downloaded/Gprot_Science2015_Dror_Desres/science2015/DESRES-Trajectory_science2015-22-all/science2015-22-all/science2015-22-all-107.dcd"
OUTPUT_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/rep_1/Prod_107/Prod_107_rewrapped.dcd"
python wrapAlign.py $TOP_FILE $TRAJ_FILE $OUTPUT_FILE

# Stripping water from rewrapped .dcd file and placing output file in same experiment fragment folder path
TRAJ_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/rep_1/Prod_107/Prod_107_rewrapped.dcd"
OUTPUT_FILE_PATH="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/rep_1/Prod_107/Prod_107_rewrapped_strip_waters.dcd"
python stripWaters.py -top $TOP_FILE -traj $TRAJ_FILE $OUTPUT_FILE_PATH


# Rewrapping original .dcd files and placing copy in output experiment fragment folder path
cd /scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/rep_1
mkdir Prod_108
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/DI-pipeline-tools
TOP_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/step5_assembly.pdb"
TRAJ_FILE="/scratch/PI/rondror/DesRes-Simulations/Downloaded/Gprot_Science2015_Dror_Desres/science2015/DESRES-Trajectory_science2015-22-all/science2015-22-all/science2015-22-all-108.dcd"
OUTPUT_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/rep_1/Prod_108/Prod_108_rewrapped.dcd"
python wrapAlign.py $TOP_FILE $TRAJ_FILE $OUTPUT_FILE

# Stripping water from rewrapped .dcd file and placing output file in same experiment fragment folder path
TRAJ_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/rep_1/Prod_108/Prod_108_rewrapped.dcd"
OUTPUT_FILE_PATH="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/rep_1/Prod_108/Prod_108_rewrapped_strip_waters.dcd"
python stripWaters.py -top $TOP_FILE -traj $TRAJ_FILE $OUTPUT_FILE_PATH


# Rewrapping original .dcd files and placing copy in output experiment fragment folder path
cd /scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/rep_1
mkdir Prod_109
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/DI-pipeline-tools
TOP_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/step5_assembly.pdb"
TRAJ_FILE="/scratch/PI/rondror/DesRes-Simulations/Downloaded/Gprot_Science2015_Dror_Desres/science2015/DESRES-Trajectory_science2015-22-all/science2015-22-all/science2015-22-all-109.dcd"
OUTPUT_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/rep_1/Prod_109/Prod_109_rewrapped.dcd"
python wrapAlign.py $TOP_FILE $TRAJ_FILE $OUTPUT_FILE

# Stripping water from rewrapped .dcd file and placing output file in same experiment fragment folder path
TRAJ_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/rep_1/Prod_109/Prod_109_rewrapped.dcd"
OUTPUT_FILE_PATH="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/rep_1/Prod_109/Prod_109_rewrapped_strip_waters.dcd"
python stripWaters.py -top $TOP_FILE -traj $TRAJ_FILE $OUTPUT_FILE_PATH


# Rewrapping original .dcd files and placing copy in output experiment fragment folder path
cd /scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/rep_1
mkdir Prod_110
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/DI-pipeline-tools
TOP_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/step5_assembly.pdb"
TRAJ_FILE="/scratch/PI/rondror/DesRes-Simulations/Downloaded/Gprot_Science2015_Dror_Desres/science2015/DESRES-Trajectory_science2015-22-all/science2015-22-all/science2015-22-all-110.dcd"
OUTPUT_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/rep_1/Prod_110/Prod_110_rewrapped.dcd"
python wrapAlign.py $TOP_FILE $TRAJ_FILE $OUTPUT_FILE

# Stripping water from rewrapped .dcd file and placing output file in same experiment fragment folder path
TRAJ_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/rep_1/Prod_110/Prod_110_rewrapped.dcd"
OUTPUT_FILE_PATH="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/rep_1/Prod_110/Prod_110_rewrapped_strip_waters.dcd"
python stripWaters.py -top $TOP_FILE -traj $TRAJ_FILE $OUTPUT_FILE_PATH


# Rewrapping original .dcd files and placing copy in output experiment fragment folder path
cd /scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/rep_1
mkdir Prod_111
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/DI-pipeline-tools
TOP_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/step5_assembly.pdb"
TRAJ_FILE="/scratch/PI/rondror/DesRes-Simulations/Downloaded/Gprot_Science2015_Dror_Desres/science2015/DESRES-Trajectory_science2015-22-all/science2015-22-all/science2015-22-all-111.dcd"
OUTPUT_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/rep_1/Prod_111/Prod_111_rewrapped.dcd"
python wrapAlign.py $TOP_FILE $TRAJ_FILE $OUTPUT_FILE

# Stripping water from rewrapped .dcd file and placing output file in same experiment fragment folder path
TRAJ_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/rep_1/Prod_111/Prod_111_rewrapped.dcd"
OUTPUT_FILE_PATH="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/rep_1/Prod_111/Prod_111_rewrapped_strip_waters.dcd"
python stripWaters.py -top $TOP_FILE -traj $TRAJ_FILE $OUTPUT_FILE_PATH


# Rewrapping original .dcd files and placing copy in output experiment fragment folder path
cd /scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/rep_1
mkdir Prod_112
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/DI-pipeline-tools
TOP_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/step5_assembly.pdb"
TRAJ_FILE="/scratch/PI/rondror/DesRes-Simulations/Downloaded/Gprot_Science2015_Dror_Desres/science2015/DESRES-Trajectory_science2015-22-all/science2015-22-all/science2015-22-all-112.dcd"
OUTPUT_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/rep_1/Prod_112/Prod_112_rewrapped.dcd"
python wrapAlign.py $TOP_FILE $TRAJ_FILE $OUTPUT_FILE

# Stripping water from rewrapped .dcd file and placing output file in same experiment fragment folder path
TRAJ_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/rep_1/Prod_112/Prod_112_rewrapped.dcd"
OUTPUT_FILE_PATH="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/rep_1/Prod_112/Prod_112_rewrapped_strip_waters.dcd"
python stripWaters.py -top $TOP_FILE -traj $TRAJ_FILE $OUTPUT_FILE_PATH


# Rewrapping original .dcd files and placing copy in output experiment fragment folder path
cd /scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/rep_1
mkdir Prod_113
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/DI-pipeline-tools
TOP_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/step5_assembly.pdb"
TRAJ_FILE="/scratch/PI/rondror/DesRes-Simulations/Downloaded/Gprot_Science2015_Dror_Desres/science2015/DESRES-Trajectory_science2015-22-all/science2015-22-all/science2015-22-all-113.dcd"
OUTPUT_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/rep_1/Prod_113/Prod_113_rewrapped.dcd"
python wrapAlign.py $TOP_FILE $TRAJ_FILE $OUTPUT_FILE

# Stripping water from rewrapped .dcd file and placing output file in same experiment fragment folder path
TRAJ_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/rep_1/Prod_113/Prod_113_rewrapped.dcd"
OUTPUT_FILE_PATH="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/rep_1/Prod_113/Prod_113_rewrapped_strip_waters.dcd"
python stripWaters.py -top $TOP_FILE -traj $TRAJ_FILE $OUTPUT_FILE_PATH


# Rewrapping original .dcd files and placing copy in output experiment fragment folder path
cd /scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/rep_1
mkdir Prod_114
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/DI-pipeline-tools
TOP_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/step5_assembly.pdb"
TRAJ_FILE="/scratch/PI/rondror/DesRes-Simulations/Downloaded/Gprot_Science2015_Dror_Desres/science2015/DESRES-Trajectory_science2015-22-all/science2015-22-all/science2015-22-all-114.dcd"
OUTPUT_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/rep_1/Prod_114/Prod_114_rewrapped.dcd"
python wrapAlign.py $TOP_FILE $TRAJ_FILE $OUTPUT_FILE

# Stripping water from rewrapped .dcd file and placing output file in same experiment fragment folder path
TRAJ_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/rep_1/Prod_114/Prod_114_rewrapped.dcd"
OUTPUT_FILE_PATH="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/rep_1/Prod_114/Prod_114_rewrapped_strip_waters.dcd"
python stripWaters.py -top $TOP_FILE -traj $TRAJ_FILE $OUTPUT_FILE_PATH


# Rewrapping original .dcd files and placing copy in output experiment fragment folder path
cd /scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/rep_1
mkdir Prod_115
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/DI-pipeline-tools
TOP_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/step5_assembly.pdb"
TRAJ_FILE="/scratch/PI/rondror/DesRes-Simulations/Downloaded/Gprot_Science2015_Dror_Desres/science2015/DESRES-Trajectory_science2015-22-all/science2015-22-all/science2015-22-all-115.dcd"
OUTPUT_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/rep_1/Prod_115/Prod_115_rewrapped.dcd"
python wrapAlign.py $TOP_FILE $TRAJ_FILE $OUTPUT_FILE

# Stripping water from rewrapped .dcd file and placing output file in same experiment fragment folder path
TRAJ_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/rep_1/Prod_115/Prod_115_rewrapped.dcd"
OUTPUT_FILE_PATH="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/rep_1/Prod_115/Prod_115_rewrapped_strip_waters.dcd"
python stripWaters.py -top $TOP_FILE -traj $TRAJ_FILE $OUTPUT_FILE_PATH


# Rewrapping original .dcd files and placing copy in output experiment fragment folder path
cd /scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/rep_1
mkdir Prod_116
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/DI-pipeline-tools
TOP_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/step5_assembly.pdb"
TRAJ_FILE="/scratch/PI/rondror/DesRes-Simulations/Downloaded/Gprot_Science2015_Dror_Desres/science2015/DESRES-Trajectory_science2015-22-all/science2015-22-all/science2015-22-all-116.dcd"
OUTPUT_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/rep_1/Prod_116/Prod_116_rewrapped.dcd"
python wrapAlign.py $TOP_FILE $TRAJ_FILE $OUTPUT_FILE

# Stripping water from rewrapped .dcd file and placing output file in same experiment fragment folder path
TRAJ_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/rep_1/Prod_116/Prod_116_rewrapped.dcd"
OUTPUT_FILE_PATH="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/rep_1/Prod_116/Prod_116_rewrapped_strip_waters.dcd"
python stripWaters.py -top $TOP_FILE -traj $TRAJ_FILE $OUTPUT_FILE_PATH


# Rewrapping original .dcd files and placing copy in output experiment fragment folder path
cd /scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/rep_1
mkdir Prod_117
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/DI-pipeline-tools
TOP_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/step5_assembly.pdb"
TRAJ_FILE="/scratch/PI/rondror/DesRes-Simulations/Downloaded/Gprot_Science2015_Dror_Desres/science2015/DESRES-Trajectory_science2015-22-all/science2015-22-all/science2015-22-all-117.dcd"
OUTPUT_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/rep_1/Prod_117/Prod_117_rewrapped.dcd"
python wrapAlign.py $TOP_FILE $TRAJ_FILE $OUTPUT_FILE

# Stripping water from rewrapped .dcd file and placing output file in same experiment fragment folder path
TRAJ_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/rep_1/Prod_117/Prod_117_rewrapped.dcd"
OUTPUT_FILE_PATH="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/rep_1/Prod_117/Prod_117_rewrapped_strip_waters.dcd"
python stripWaters.py -top $TOP_FILE -traj $TRAJ_FILE $OUTPUT_FILE_PATH


# Rewrapping original .dcd files and placing copy in output experiment fragment folder path
cd /scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/rep_1
mkdir Prod_118
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/DI-pipeline-tools
TOP_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/step5_assembly.pdb"
TRAJ_FILE="/scratch/PI/rondror/DesRes-Simulations/Downloaded/Gprot_Science2015_Dror_Desres/science2015/DESRES-Trajectory_science2015-22-all/science2015-22-all/science2015-22-all-118.dcd"
OUTPUT_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/rep_1/Prod_118/Prod_118_rewrapped.dcd"
python wrapAlign.py $TOP_FILE $TRAJ_FILE $OUTPUT_FILE

# Stripping water from rewrapped .dcd file and placing output file in same experiment fragment folder path
TRAJ_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/rep_1/Prod_118/Prod_118_rewrapped.dcd"
OUTPUT_FILE_PATH="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/rep_1/Prod_118/Prod_118_rewrapped_strip_waters.dcd"
python stripWaters.py -top $TOP_FILE -traj $TRAJ_FILE $OUTPUT_FILE_PATH


# Rewrapping original .dcd files and placing copy in output experiment fragment folder path
cd /scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/rep_1
mkdir Prod_119
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/DI-pipeline-tools
TOP_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/step5_assembly.pdb"
TRAJ_FILE="/scratch/PI/rondror/DesRes-Simulations/Downloaded/Gprot_Science2015_Dror_Desres/science2015/DESRES-Trajectory_science2015-22-all/science2015-22-all/science2015-22-all-119.dcd"
OUTPUT_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/rep_1/Prod_119/Prod_119_rewrapped.dcd"
python wrapAlign.py $TOP_FILE $TRAJ_FILE $OUTPUT_FILE

# Stripping water from rewrapped .dcd file and placing output file in same experiment fragment folder path
TRAJ_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/rep_1/Prod_119/Prod_119_rewrapped.dcd"
OUTPUT_FILE_PATH="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/rep_1/Prod_119/Prod_119_rewrapped_strip_waters.dcd"
python stripWaters.py -top $TOP_FILE -traj $TRAJ_FILE $OUTPUT_FILE_PATH


# Rewrapping original .dcd files and placing copy in output experiment fragment folder path
cd /scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/rep_1
mkdir Prod_120
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/DI-pipeline-tools
TOP_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/step5_assembly.pdb"
TRAJ_FILE="/scratch/PI/rondror/DesRes-Simulations/Downloaded/Gprot_Science2015_Dror_Desres/science2015/DESRES-Trajectory_science2015-22-all/science2015-22-all/science2015-22-all-120.dcd"
OUTPUT_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/rep_1/Prod_120/Prod_120_rewrapped.dcd"
python wrapAlign.py $TOP_FILE $TRAJ_FILE $OUTPUT_FILE

# Stripping water from rewrapped .dcd file and placing output file in same experiment fragment folder path
TRAJ_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/rep_1/Prod_120/Prod_120_rewrapped.dcd"
OUTPUT_FILE_PATH="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/rep_1/Prod_120/Prod_120_rewrapped_strip_waters.dcd"
python stripWaters.py -top $TOP_FILE -traj $TRAJ_FILE $OUTPUT_FILE_PATH


# Rewrapping original .dcd files and placing copy in output experiment fragment folder path
cd /scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/rep_1
mkdir Prod_121
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/DI-pipeline-tools
TOP_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/step5_assembly.pdb"
TRAJ_FILE="/scratch/PI/rondror/DesRes-Simulations/Downloaded/Gprot_Science2015_Dror_Desres/science2015/DESRES-Trajectory_science2015-22-all/science2015-22-all/science2015-22-all-121.dcd"
OUTPUT_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/rep_1/Prod_121/Prod_121_rewrapped.dcd"
python wrapAlign.py $TOP_FILE $TRAJ_FILE $OUTPUT_FILE

# Stripping water from rewrapped .dcd file and placing output file in same experiment fragment folder path
TRAJ_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/rep_1/Prod_121/Prod_121_rewrapped.dcd"
OUTPUT_FILE_PATH="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/rep_1/Prod_121/Prod_121_rewrapped_strip_waters.dcd"
python stripWaters.py -top $TOP_FILE -traj $TRAJ_FILE $OUTPUT_FILE_PATH


# Rewrapping original .dcd files and placing copy in output experiment fragment folder path
cd /scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/rep_1
mkdir Prod_122
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/DI-pipeline-tools
TOP_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/step5_assembly.pdb"
TRAJ_FILE="/scratch/PI/rondror/DesRes-Simulations/Downloaded/Gprot_Science2015_Dror_Desres/science2015/DESRES-Trajectory_science2015-22-all/science2015-22-all/science2015-22-all-122.dcd"
OUTPUT_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/rep_1/Prod_122/Prod_122_rewrapped.dcd"
python wrapAlign.py $TOP_FILE $TRAJ_FILE $OUTPUT_FILE

# Stripping water from rewrapped .dcd file and placing output file in same experiment fragment folder path
TRAJ_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/rep_1/Prod_122/Prod_122_rewrapped.dcd"
OUTPUT_FILE_PATH="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/rep_1/Prod_122/Prod_122_rewrapped_strip_waters.dcd"
python stripWaters.py -top $TOP_FILE -traj $TRAJ_FILE $OUTPUT_FILE_PATH


# Rewrapping original .dcd files and placing copy in output experiment fragment folder path
cd /scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/rep_1
mkdir Prod_123
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/DI-pipeline-tools
TOP_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/step5_assembly.pdb"
TRAJ_FILE="/scratch/PI/rondror/DesRes-Simulations/Downloaded/Gprot_Science2015_Dror_Desres/science2015/DESRES-Trajectory_science2015-22-all/science2015-22-all/science2015-22-all-123.dcd"
OUTPUT_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/rep_1/Prod_123/Prod_123_rewrapped.dcd"
python wrapAlign.py $TOP_FILE $TRAJ_FILE $OUTPUT_FILE

# Stripping water from rewrapped .dcd file and placing output file in same experiment fragment folder path
TRAJ_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/rep_1/Prod_123/Prod_123_rewrapped.dcd"
OUTPUT_FILE_PATH="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/rep_1/Prod_123/Prod_123_rewrapped_strip_waters.dcd"
python stripWaters.py -top $TOP_FILE -traj $TRAJ_FILE $OUTPUT_FILE_PATH


# Rewrapping original .dcd files and placing copy in output experiment fragment folder path
cd /scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/rep_1
mkdir Prod_124
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/DI-pipeline-tools
TOP_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/step5_assembly.pdb"
TRAJ_FILE="/scratch/PI/rondror/DesRes-Simulations/Downloaded/Gprot_Science2015_Dror_Desres/science2015/DESRES-Trajectory_science2015-22-all/science2015-22-all/science2015-22-all-124.dcd"
OUTPUT_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/rep_1/Prod_124/Prod_124_rewrapped.dcd"
python wrapAlign.py $TOP_FILE $TRAJ_FILE $OUTPUT_FILE

# Stripping water from rewrapped .dcd file and placing output file in same experiment fragment folder path
TRAJ_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/rep_1/Prod_124/Prod_124_rewrapped.dcd"
OUTPUT_FILE_PATH="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/rep_1/Prod_124/Prod_124_rewrapped_strip_waters.dcd"
python stripWaters.py -top $TOP_FILE -traj $TRAJ_FILE $OUTPUT_FILE_PATH


# Rewrapping original .dcd files and placing copy in output experiment fragment folder path
cd /scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/rep_1
mkdir Prod_125
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/DI-pipeline-tools
TOP_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/step5_assembly.pdb"
TRAJ_FILE="/scratch/PI/rondror/DesRes-Simulations/Downloaded/Gprot_Science2015_Dror_Desres/science2015/DESRES-Trajectory_science2015-22-all/science2015-22-all/science2015-22-all-125.dcd"
OUTPUT_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/rep_1/Prod_125/Prod_125_rewrapped.dcd"
python wrapAlign.py $TOP_FILE $TRAJ_FILE $OUTPUT_FILE

# Stripping water from rewrapped .dcd file and placing output file in same experiment fragment folder path
TRAJ_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/rep_1/Prod_125/Prod_125_rewrapped.dcd"
OUTPUT_FILE_PATH="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/rep_1/Prod_125/Prod_125_rewrapped_strip_waters.dcd"
python stripWaters.py -top $TOP_FILE -traj $TRAJ_FILE $OUTPUT_FILE_PATH


# Rewrapping original .dcd files and placing copy in output experiment fragment folder path
cd /scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/rep_1
mkdir Prod_126
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/DI-pipeline-tools
TOP_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/step5_assembly.pdb"
TRAJ_FILE="/scratch/PI/rondror/DesRes-Simulations/Downloaded/Gprot_Science2015_Dror_Desres/science2015/DESRES-Trajectory_science2015-22-all/science2015-22-all/science2015-22-all-126.dcd"
OUTPUT_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/rep_1/Prod_126/Prod_126_rewrapped.dcd"
python wrapAlign.py $TOP_FILE $TRAJ_FILE $OUTPUT_FILE

# Stripping water from rewrapped .dcd file and placing output file in same experiment fragment folder path
TRAJ_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/rep_1/Prod_126/Prod_126_rewrapped.dcd"
OUTPUT_FILE_PATH="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/rep_1/Prod_126/Prod_126_rewrapped_strip_waters.dcd"
python stripWaters.py -top $TOP_FILE -traj $TRAJ_FILE $OUTPUT_FILE_PATH


# Rewrapping original .dcd files and placing copy in output experiment fragment folder path
cd /scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/rep_1
mkdir Prod_127
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/DI-pipeline-tools
TOP_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/step5_assembly.pdb"
TRAJ_FILE="/scratch/PI/rondror/DesRes-Simulations/Downloaded/Gprot_Science2015_Dror_Desres/science2015/DESRES-Trajectory_science2015-22-all/science2015-22-all/science2015-22-all-127.dcd"
OUTPUT_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/rep_1/Prod_127/Prod_127_rewrapped.dcd"
python wrapAlign.py $TOP_FILE $TRAJ_FILE $OUTPUT_FILE

# Stripping water from rewrapped .dcd file and placing output file in same experiment fragment folder path
TRAJ_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/rep_1/Prod_127/Prod_127_rewrapped.dcd"
OUTPUT_FILE_PATH="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/rep_1/Prod_127/Prod_127_rewrapped_strip_waters.dcd"
python stripWaters.py -top $TOP_FILE -traj $TRAJ_FILE $OUTPUT_FILE_PATH


# Rewrapping original .dcd files and placing copy in output experiment fragment folder path
cd /scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/rep_1
mkdir Prod_128
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/DI-pipeline-tools
TOP_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/step5_assembly.pdb"
TRAJ_FILE="/scratch/PI/rondror/DesRes-Simulations/Downloaded/Gprot_Science2015_Dror_Desres/science2015/DESRES-Trajectory_science2015-22-all/science2015-22-all/science2015-22-all-128.dcd"
OUTPUT_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/rep_1/Prod_128/Prod_128_rewrapped.dcd"
python wrapAlign.py $TOP_FILE $TRAJ_FILE $OUTPUT_FILE

# Stripping water from rewrapped .dcd file and placing output file in same experiment fragment folder path
TRAJ_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/rep_1/Prod_128/Prod_128_rewrapped.dcd"
OUTPUT_FILE_PATH="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/rep_1/Prod_128/Prod_128_rewrapped_strip_waters.dcd"
python stripWaters.py -top $TOP_FILE -traj $TRAJ_FILE $OUTPUT_FILE_PATH


# Rewrapping original .dcd files and placing copy in output experiment fragment folder path
cd /scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/rep_1
mkdir Prod_129
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/DI-pipeline-tools
TOP_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/step5_assembly.pdb"
TRAJ_FILE="/scratch/PI/rondror/DesRes-Simulations/Downloaded/Gprot_Science2015_Dror_Desres/science2015/DESRES-Trajectory_science2015-22-all/science2015-22-all/science2015-22-all-129.dcd"
OUTPUT_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/rep_1/Prod_129/Prod_129_rewrapped.dcd"
python wrapAlign.py $TOP_FILE $TRAJ_FILE $OUTPUT_FILE

# Stripping water from rewrapped .dcd file and placing output file in same experiment fragment folder path
TRAJ_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/rep_1/Prod_129/Prod_129_rewrapped.dcd"
OUTPUT_FILE_PATH="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/rep_1/Prod_129/Prod_129_rewrapped_strip_waters.dcd"
python stripWaters.py -top $TOP_FILE -traj $TRAJ_FILE $OUTPUT_FILE_PATH


# Rewrapping original .dcd files and placing copy in output experiment fragment folder path
cd /scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/rep_1
mkdir Prod_130
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/DI-pipeline-tools
TOP_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/step5_assembly.pdb"
TRAJ_FILE="/scratch/PI/rondror/DesRes-Simulations/Downloaded/Gprot_Science2015_Dror_Desres/science2015/DESRES-Trajectory_science2015-22-all/science2015-22-all/science2015-22-all-130.dcd"
OUTPUT_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/rep_1/Prod_130/Prod_130_rewrapped.dcd"
python wrapAlign.py $TOP_FILE $TRAJ_FILE $OUTPUT_FILE

# Stripping water from rewrapped .dcd file and placing output file in same experiment fragment folder path
TRAJ_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/rep_1/Prod_130/Prod_130_rewrapped.dcd"
OUTPUT_FILE_PATH="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/rep_1/Prod_130/Prod_130_rewrapped_strip_waters.dcd"
python stripWaters.py -top $TOP_FILE -traj $TRAJ_FILE $OUTPUT_FILE_PATH


# Rewrapping original .dcd files and placing copy in output experiment fragment folder path
cd /scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/rep_1
mkdir Prod_131
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/DI-pipeline-tools
TOP_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/step5_assembly.pdb"
TRAJ_FILE="/scratch/PI/rondror/DesRes-Simulations/Downloaded/Gprot_Science2015_Dror_Desres/science2015/DESRES-Trajectory_science2015-22-all/science2015-22-all/science2015-22-all-131.dcd"
OUTPUT_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/rep_1/Prod_131/Prod_131_rewrapped.dcd"
python wrapAlign.py $TOP_FILE $TRAJ_FILE $OUTPUT_FILE

# Stripping water from rewrapped .dcd file and placing output file in same experiment fragment folder path
TRAJ_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/rep_1/Prod_131/Prod_131_rewrapped.dcd"
OUTPUT_FILE_PATH="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/rep_1/Prod_131/Prod_131_rewrapped_strip_waters.dcd"
python stripWaters.py -top $TOP_FILE -traj $TRAJ_FILE $OUTPUT_FILE_PATH


# Rewrapping original .dcd files and placing copy in output experiment fragment folder path
cd /scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/rep_1
mkdir Prod_132
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/DI-pipeline-tools
TOP_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/step5_assembly.pdb"
TRAJ_FILE="/scratch/PI/rondror/DesRes-Simulations/Downloaded/Gprot_Science2015_Dror_Desres/science2015/DESRES-Trajectory_science2015-22-all/science2015-22-all/science2015-22-all-132.dcd"
OUTPUT_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/rep_1/Prod_132/Prod_132_rewrapped.dcd"
python wrapAlign.py $TOP_FILE $TRAJ_FILE $OUTPUT_FILE

# Stripping water from rewrapped .dcd file and placing output file in same experiment fragment folder path
TRAJ_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/rep_1/Prod_132/Prod_132_rewrapped.dcd"
OUTPUT_FILE_PATH="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/rep_1/Prod_132/Prod_132_rewrapped_strip_waters.dcd"
python stripWaters.py -top $TOP_FILE -traj $TRAJ_FILE $OUTPUT_FILE_PATH


# Rewrapping original .dcd files and placing copy in output experiment fragment folder path
cd /scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/rep_1
mkdir Prod_133
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/DI-pipeline-tools
TOP_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/step5_assembly.pdb"
TRAJ_FILE="/scratch/PI/rondror/DesRes-Simulations/Downloaded/Gprot_Science2015_Dror_Desres/science2015/DESRES-Trajectory_science2015-22-all/science2015-22-all/science2015-22-all-133.dcd"
OUTPUT_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/rep_1/Prod_133/Prod_133_rewrapped.dcd"
python wrapAlign.py $TOP_FILE $TRAJ_FILE $OUTPUT_FILE

# Stripping water from rewrapped .dcd file and placing output file in same experiment fragment folder path
TRAJ_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/rep_1/Prod_133/Prod_133_rewrapped.dcd"
OUTPUT_FILE_PATH="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/rep_1/Prod_133/Prod_133_rewrapped_strip_waters.dcd"
python stripWaters.py -top $TOP_FILE -traj $TRAJ_FILE $OUTPUT_FILE_PATH


# Rewrapping original .dcd files and placing copy in output experiment fragment folder path
cd /scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/rep_1
mkdir Prod_134
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/DI-pipeline-tools
TOP_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/step5_assembly.pdb"
TRAJ_FILE="/scratch/PI/rondror/DesRes-Simulations/Downloaded/Gprot_Science2015_Dror_Desres/science2015/DESRES-Trajectory_science2015-22-all/science2015-22-all/science2015-22-all-134.dcd"
OUTPUT_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/rep_1/Prod_134/Prod_134_rewrapped.dcd"
python wrapAlign.py $TOP_FILE $TRAJ_FILE $OUTPUT_FILE

# Stripping water from rewrapped .dcd file and placing output file in same experiment fragment folder path
TRAJ_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/rep_1/Prod_134/Prod_134_rewrapped.dcd"
OUTPUT_FILE_PATH="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/rep_1/Prod_134/Prod_134_rewrapped_strip_waters.dcd"
python stripWaters.py -top $TOP_FILE -traj $TRAJ_FILE $OUTPUT_FILE_PATH


# Rewrapping original .dcd files and placing copy in output experiment fragment folder path
cd /scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/rep_1
mkdir Prod_135
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/DI-pipeline-tools
TOP_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/step5_assembly.pdb"
TRAJ_FILE="/scratch/PI/rondror/DesRes-Simulations/Downloaded/Gprot_Science2015_Dror_Desres/science2015/DESRES-Trajectory_science2015-22-all/science2015-22-all/science2015-22-all-135.dcd"
OUTPUT_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/rep_1/Prod_135/Prod_135_rewrapped.dcd"
python wrapAlign.py $TOP_FILE $TRAJ_FILE $OUTPUT_FILE

# Stripping water from rewrapped .dcd file and placing output file in same experiment fragment folder path
TRAJ_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/rep_1/Prod_135/Prod_135_rewrapped.dcd"
OUTPUT_FILE_PATH="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/rep_1/Prod_135/Prod_135_rewrapped_strip_waters.dcd"
python stripWaters.py -top $TOP_FILE -traj $TRAJ_FILE $OUTPUT_FILE_PATH


# Rewrapping original .dcd files and placing copy in output experiment fragment folder path
cd /scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/rep_1
mkdir Prod_136
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/DI-pipeline-tools
TOP_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/step5_assembly.pdb"
TRAJ_FILE="/scratch/PI/rondror/DesRes-Simulations/Downloaded/Gprot_Science2015_Dror_Desres/science2015/DESRES-Trajectory_science2015-22-all/science2015-22-all/science2015-22-all-136.dcd"
OUTPUT_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/rep_1/Prod_136/Prod_136_rewrapped.dcd"
python wrapAlign.py $TOP_FILE $TRAJ_FILE $OUTPUT_FILE

# Stripping water from rewrapped .dcd file and placing output file in same experiment fragment folder path
TRAJ_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/rep_1/Prod_136/Prod_136_rewrapped.dcd"
OUTPUT_FILE_PATH="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/rep_1/Prod_136/Prod_136_rewrapped_strip_waters.dcd"
python stripWaters.py -top $TOP_FILE -traj $TRAJ_FILE $OUTPUT_FILE_PATH


# Rewrapping original .dcd files and placing copy in output experiment fragment folder path
cd /scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/rep_1
mkdir Prod_137
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/DI-pipeline-tools
TOP_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/step5_assembly.pdb"
TRAJ_FILE="/scratch/PI/rondror/DesRes-Simulations/Downloaded/Gprot_Science2015_Dror_Desres/science2015/DESRES-Trajectory_science2015-22-all/science2015-22-all/science2015-22-all-137.dcd"
OUTPUT_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/rep_1/Prod_137/Prod_137_rewrapped.dcd"
python wrapAlign.py $TOP_FILE $TRAJ_FILE $OUTPUT_FILE

# Stripping water from rewrapped .dcd file and placing output file in same experiment fragment folder path
TRAJ_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/rep_1/Prod_137/Prod_137_rewrapped.dcd"
OUTPUT_FILE_PATH="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/rep_1/Prod_137/Prod_137_rewrapped_strip_waters.dcd"
python stripWaters.py -top $TOP_FILE -traj $TRAJ_FILE $OUTPUT_FILE_PATH


# Rewrapping original .dcd files and placing copy in output experiment fragment folder path
cd /scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/rep_1
mkdir Prod_138
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/DI-pipeline-tools
TOP_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/step5_assembly.pdb"
TRAJ_FILE="/scratch/PI/rondror/DesRes-Simulations/Downloaded/Gprot_Science2015_Dror_Desres/science2015/DESRES-Trajectory_science2015-22-all/science2015-22-all/science2015-22-all-138.dcd"
OUTPUT_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/rep_1/Prod_138/Prod_138_rewrapped.dcd"
python wrapAlign.py $TOP_FILE $TRAJ_FILE $OUTPUT_FILE

# Stripping water from rewrapped .dcd file and placing output file in same experiment fragment folder path
TRAJ_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/rep_1/Prod_138/Prod_138_rewrapped.dcd"
OUTPUT_FILE_PATH="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/rep_1/Prod_138/Prod_138_rewrapped_strip_waters.dcd"
python stripWaters.py -top $TOP_FILE -traj $TRAJ_FILE $OUTPUT_FILE_PATH


# Rewrapping original .dcd files and placing copy in output experiment fragment folder path
cd /scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/rep_1
mkdir Prod_139
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/DI-pipeline-tools
TOP_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/step5_assembly.pdb"
TRAJ_FILE="/scratch/PI/rondror/DesRes-Simulations/Downloaded/Gprot_Science2015_Dror_Desres/science2015/DESRES-Trajectory_science2015-22-all/science2015-22-all/science2015-22-all-139.dcd"
OUTPUT_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/rep_1/Prod_139/Prod_139_rewrapped.dcd"
python wrapAlign.py $TOP_FILE $TRAJ_FILE $OUTPUT_FILE

# Stripping water from rewrapped .dcd file and placing output file in same experiment fragment folder path
TRAJ_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/rep_1/Prod_139/Prod_139_rewrapped.dcd"
OUTPUT_FILE_PATH="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/rep_1/Prod_139/Prod_139_rewrapped_strip_waters.dcd"
python stripWaters.py -top $TOP_FILE -traj $TRAJ_FILE $OUTPUT_FILE_PATH


# Rewrapping original .dcd files and placing copy in output experiment fragment folder path
cd /scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/rep_1
mkdir Prod_140
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/DI-pipeline-tools
TOP_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/step5_assembly.pdb"
TRAJ_FILE="/scratch/PI/rondror/DesRes-Simulations/Downloaded/Gprot_Science2015_Dror_Desres/science2015/DESRES-Trajectory_science2015-22-all/science2015-22-all/science2015-22-all-140.dcd"
OUTPUT_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/rep_1/Prod_140/Prod_140_rewrapped.dcd"
python wrapAlign.py $TOP_FILE $TRAJ_FILE $OUTPUT_FILE

# Stripping water from rewrapped .dcd file and placing output file in same experiment fragment folder path
TRAJ_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/rep_1/Prod_140/Prod_140_rewrapped.dcd"
OUTPUT_FILE_PATH="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/rep_1/Prod_140/Prod_140_rewrapped_strip_waters.dcd"
python stripWaters.py -top $TOP_FILE -traj $TRAJ_FILE $OUTPUT_FILE_PATH


# Rewrapping original .dcd files and placing copy in output experiment fragment folder path
cd /scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/rep_1
mkdir Prod_141
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/DI-pipeline-tools
TOP_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/step5_assembly.pdb"
TRAJ_FILE="/scratch/PI/rondror/DesRes-Simulations/Downloaded/Gprot_Science2015_Dror_Desres/science2015/DESRES-Trajectory_science2015-22-all/science2015-22-all/science2015-22-all-141.dcd"
OUTPUT_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/rep_1/Prod_141/Prod_141_rewrapped.dcd"
python wrapAlign.py $TOP_FILE $TRAJ_FILE $OUTPUT_FILE

# Stripping water from rewrapped .dcd file and placing output file in same experiment fragment folder path
TRAJ_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/rep_1/Prod_141/Prod_141_rewrapped.dcd"
OUTPUT_FILE_PATH="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/rep_1/Prod_141/Prod_141_rewrapped_strip_waters.dcd"
python stripWaters.py -top $TOP_FILE -traj $TRAJ_FILE $OUTPUT_FILE_PATH


# Rewrapping original .dcd files and placing copy in output experiment fragment folder path
cd /scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/rep_1
mkdir Prod_142
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/DI-pipeline-tools
TOP_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/step5_assembly.pdb"
TRAJ_FILE="/scratch/PI/rondror/DesRes-Simulations/Downloaded/Gprot_Science2015_Dror_Desres/science2015/DESRES-Trajectory_science2015-22-all/science2015-22-all/science2015-22-all-142.dcd"
OUTPUT_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/rep_1/Prod_142/Prod_142_rewrapped.dcd"
python wrapAlign.py $TOP_FILE $TRAJ_FILE $OUTPUT_FILE

# Stripping water from rewrapped .dcd file and placing output file in same experiment fragment folder path
TRAJ_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/rep_1/Prod_142/Prod_142_rewrapped.dcd"
OUTPUT_FILE_PATH="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/rep_1/Prod_142/Prod_142_rewrapped_strip_waters.dcd"
python stripWaters.py -top $TOP_FILE -traj $TRAJ_FILE $OUTPUT_FILE_PATH


# Rewrapping original .dcd files and placing copy in output experiment fragment folder path
cd /scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/rep_1
mkdir Prod_143
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/DI-pipeline-tools
TOP_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/step5_assembly.pdb"
TRAJ_FILE="/scratch/PI/rondror/DesRes-Simulations/Downloaded/Gprot_Science2015_Dror_Desres/science2015/DESRES-Trajectory_science2015-22-all/science2015-22-all/science2015-22-all-143.dcd"
OUTPUT_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/rep_1/Prod_143/Prod_143_rewrapped.dcd"
python wrapAlign.py $TOP_FILE $TRAJ_FILE $OUTPUT_FILE

# Stripping water from rewrapped .dcd file and placing output file in same experiment fragment folder path
TRAJ_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/rep_1/Prod_143/Prod_143_rewrapped.dcd"
OUTPUT_FILE_PATH="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/rep_1/Prod_143/Prod_143_rewrapped_strip_waters.dcd"
python stripWaters.py -top $TOP_FILE -traj $TRAJ_FILE $OUTPUT_FILE_PATH


# Rewrapping original .dcd files and placing copy in output experiment fragment folder path
cd /scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/rep_1
mkdir Prod_144
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/DI-pipeline-tools
TOP_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/step5_assembly.pdb"
TRAJ_FILE="/scratch/PI/rondror/DesRes-Simulations/Downloaded/Gprot_Science2015_Dror_Desres/science2015/DESRES-Trajectory_science2015-22-all/science2015-22-all/science2015-22-all-144.dcd"
OUTPUT_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/rep_1/Prod_144/Prod_144_rewrapped.dcd"
python wrapAlign.py $TOP_FILE $TRAJ_FILE $OUTPUT_FILE

# Stripping water from rewrapped .dcd file and placing output file in same experiment fragment folder path
TRAJ_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/rep_1/Prod_144/Prod_144_rewrapped.dcd"
OUTPUT_FILE_PATH="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/rep_1/Prod_144/Prod_144_rewrapped_strip_waters.dcd"
python stripWaters.py -top $TOP_FILE -traj $TRAJ_FILE $OUTPUT_FILE_PATH


# Rewrapping original .dcd files and placing copy in output experiment fragment folder path
cd /scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/rep_1
mkdir Prod_145
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/DI-pipeline-tools
TOP_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/step5_assembly.pdb"
TRAJ_FILE="/scratch/PI/rondror/DesRes-Simulations/Downloaded/Gprot_Science2015_Dror_Desres/science2015/DESRES-Trajectory_science2015-22-all/science2015-22-all/science2015-22-all-145.dcd"
OUTPUT_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/rep_1/Prod_145/Prod_145_rewrapped.dcd"
python wrapAlign.py $TOP_FILE $TRAJ_FILE $OUTPUT_FILE

# Stripping water from rewrapped .dcd file and placing output file in same experiment fragment folder path
TRAJ_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/rep_1/Prod_145/Prod_145_rewrapped.dcd"
OUTPUT_FILE_PATH="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/rep_1/Prod_145/Prod_145_rewrapped_strip_waters.dcd"
python stripWaters.py -top $TOP_FILE -traj $TRAJ_FILE $OUTPUT_FILE_PATH


# Rewrapping original .dcd files and placing copy in output experiment fragment folder path
cd /scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/rep_1
mkdir Prod_146
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/DI-pipeline-tools
TOP_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/step5_assembly.pdb"
TRAJ_FILE="/scratch/PI/rondror/DesRes-Simulations/Downloaded/Gprot_Science2015_Dror_Desres/science2015/DESRES-Trajectory_science2015-22-all/science2015-22-all/science2015-22-all-146.dcd"
OUTPUT_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/rep_1/Prod_146/Prod_146_rewrapped.dcd"
python wrapAlign.py $TOP_FILE $TRAJ_FILE $OUTPUT_FILE

# Stripping water from rewrapped .dcd file and placing output file in same experiment fragment folder path
TRAJ_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/rep_1/Prod_146/Prod_146_rewrapped.dcd"
OUTPUT_FILE_PATH="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/rep_1/Prod_146/Prod_146_rewrapped_strip_waters.dcd"
python stripWaters.py -top $TOP_FILE -traj $TRAJ_FILE $OUTPUT_FILE_PATH


# Rewrapping original .dcd files and placing copy in output experiment fragment folder path
cd /scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/rep_1
mkdir Prod_147
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/DI-pipeline-tools
TOP_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/step5_assembly.pdb"
TRAJ_FILE="/scratch/PI/rondror/DesRes-Simulations/Downloaded/Gprot_Science2015_Dror_Desres/science2015/DESRES-Trajectory_science2015-22-all/science2015-22-all/science2015-22-all-147.dcd"
OUTPUT_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/rep_1/Prod_147/Prod_147_rewrapped.dcd"
python wrapAlign.py $TOP_FILE $TRAJ_FILE $OUTPUT_FILE

# Stripping water from rewrapped .dcd file and placing output file in same experiment fragment folder path
TRAJ_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/rep_1/Prod_147/Prod_147_rewrapped.dcd"
OUTPUT_FILE_PATH="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/rep_1/Prod_147/Prod_147_rewrapped_strip_waters.dcd"
python stripWaters.py -top $TOP_FILE -traj $TRAJ_FILE $OUTPUT_FILE_PATH


# Rewrapping original .dcd files and placing copy in output experiment fragment folder path
cd /scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/rep_1
mkdir Prod_148
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/DI-pipeline-tools
TOP_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/step5_assembly.pdb"
TRAJ_FILE="/scratch/PI/rondror/DesRes-Simulations/Downloaded/Gprot_Science2015_Dror_Desres/science2015/DESRES-Trajectory_science2015-22-all/science2015-22-all/science2015-22-all-148.dcd"
OUTPUT_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/rep_1/Prod_148/Prod_148_rewrapped.dcd"
python wrapAlign.py $TOP_FILE $TRAJ_FILE $OUTPUT_FILE

# Stripping water from rewrapped .dcd file and placing output file in same experiment fragment folder path
TRAJ_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/rep_1/Prod_148/Prod_148_rewrapped.dcd"
OUTPUT_FILE_PATH="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/rep_1/Prod_148/Prod_148_rewrapped_strip_waters.dcd"
python stripWaters.py -top $TOP_FILE -traj $TRAJ_FILE $OUTPUT_FILE_PATH


# Rewrapping original .dcd files and placing copy in output experiment fragment folder path
cd /scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/rep_1
mkdir Prod_149
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/DI-pipeline-tools
TOP_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/step5_assembly.pdb"
TRAJ_FILE="/scratch/PI/rondror/DesRes-Simulations/Downloaded/Gprot_Science2015_Dror_Desres/science2015/DESRES-Trajectory_science2015-22-all/science2015-22-all/science2015-22-all-149.dcd"
OUTPUT_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/rep_1/Prod_149/Prod_149_rewrapped.dcd"
python wrapAlign.py $TOP_FILE $TRAJ_FILE $OUTPUT_FILE

# Stripping water from rewrapped .dcd file and placing output file in same experiment fragment folder path
TRAJ_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/rep_1/Prod_149/Prod_149_rewrapped.dcd"
OUTPUT_FILE_PATH="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/rep_1/Prod_149/Prod_149_rewrapped_strip_waters.dcd"
python stripWaters.py -top $TOP_FILE -traj $TRAJ_FILE $OUTPUT_FILE_PATH


# Rewrapping original .dcd files and placing copy in output experiment fragment folder path
cd /scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/rep_1
mkdir Prod_150
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/DI-pipeline-tools
TOP_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/step5_assembly.pdb"
TRAJ_FILE="/scratch/PI/rondror/DesRes-Simulations/Downloaded/Gprot_Science2015_Dror_Desres/science2015/DESRES-Trajectory_science2015-22-all/science2015-22-all/science2015-22-all-150.dcd"
OUTPUT_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/rep_1/Prod_150/Prod_150_rewrapped.dcd"
python wrapAlign.py $TOP_FILE $TRAJ_FILE $OUTPUT_FILE

# Stripping water from rewrapped .dcd file and placing output file in same experiment fragment folder path
TRAJ_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/rep_1/Prod_150/Prod_150_rewrapped.dcd"
OUTPUT_FILE_PATH="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/rep_1/Prod_150/Prod_150_rewrapped_strip_waters.dcd"
python stripWaters.py -top $TOP_FILE -traj $TRAJ_FILE $OUTPUT_FILE_PATH


# Rewrapping original .dcd files and placing copy in output experiment fragment folder path
cd /scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/rep_1
mkdir Prod_151
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/DI-pipeline-tools
TOP_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/step5_assembly.pdb"
TRAJ_FILE="/scratch/PI/rondror/DesRes-Simulations/Downloaded/Gprot_Science2015_Dror_Desres/science2015/DESRES-Trajectory_science2015-22-all/science2015-22-all/science2015-22-all-151.dcd"
OUTPUT_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/rep_1/Prod_151/Prod_151_rewrapped.dcd"
python wrapAlign.py $TOP_FILE $TRAJ_FILE $OUTPUT_FILE

# Stripping water from rewrapped .dcd file and placing output file in same experiment fragment folder path
TRAJ_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/rep_1/Prod_151/Prod_151_rewrapped.dcd"
OUTPUT_FILE_PATH="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/rep_1/Prod_151/Prod_151_rewrapped_strip_waters.dcd"
python stripWaters.py -top $TOP_FILE -traj $TRAJ_FILE $OUTPUT_FILE_PATH


# Rewrapping original .dcd files and placing copy in output experiment fragment folder path
cd /scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/rep_1
mkdir Prod_152
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/DI-pipeline-tools
TOP_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/step5_assembly.pdb"
TRAJ_FILE="/scratch/PI/rondror/DesRes-Simulations/Downloaded/Gprot_Science2015_Dror_Desres/science2015/DESRES-Trajectory_science2015-22-all/science2015-22-all/science2015-22-all-152.dcd"
OUTPUT_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/rep_1/Prod_152/Prod_152_rewrapped.dcd"
python wrapAlign.py $TOP_FILE $TRAJ_FILE $OUTPUT_FILE

# Stripping water from rewrapped .dcd file and placing output file in same experiment fragment folder path
TRAJ_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/rep_1/Prod_152/Prod_152_rewrapped.dcd"
OUTPUT_FILE_PATH="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/rep_1/Prod_152/Prod_152_rewrapped_strip_waters.dcd"
python stripWaters.py -top $TOP_FILE -traj $TRAJ_FILE $OUTPUT_FILE_PATH


# Rewrapping original .dcd files and placing copy in output experiment fragment folder path
cd /scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/rep_1
mkdir Prod_153
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/DI-pipeline-tools
TOP_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/step5_assembly.pdb"
TRAJ_FILE="/scratch/PI/rondror/DesRes-Simulations/Downloaded/Gprot_Science2015_Dror_Desres/science2015/DESRES-Trajectory_science2015-22-all/science2015-22-all/science2015-22-all-153.dcd"
OUTPUT_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/rep_1/Prod_153/Prod_153_rewrapped.dcd"
python wrapAlign.py $TOP_FILE $TRAJ_FILE $OUTPUT_FILE

# Stripping water from rewrapped .dcd file and placing output file in same experiment fragment folder path
TRAJ_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/rep_1/Prod_153/Prod_153_rewrapped.dcd"
OUTPUT_FILE_PATH="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/rep_1/Prod_153/Prod_153_rewrapped_strip_waters.dcd"
python stripWaters.py -top $TOP_FILE -traj $TRAJ_FILE $OUTPUT_FILE_PATH


# Rewrapping original .dcd files and placing copy in output experiment fragment folder path
cd /scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/rep_1
mkdir Prod_154
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/DI-pipeline-tools
TOP_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/step5_assembly.pdb"
TRAJ_FILE="/scratch/PI/rondror/DesRes-Simulations/Downloaded/Gprot_Science2015_Dror_Desres/science2015/DESRES-Trajectory_science2015-22-all/science2015-22-all/science2015-22-all-154.dcd"
OUTPUT_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/rep_1/Prod_154/Prod_154_rewrapped.dcd"
python wrapAlign.py $TOP_FILE $TRAJ_FILE $OUTPUT_FILE

# Stripping water from rewrapped .dcd file and placing output file in same experiment fragment folder path
TRAJ_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/rep_1/Prod_154/Prod_154_rewrapped.dcd"
OUTPUT_FILE_PATH="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/rep_1/Prod_154/Prod_154_rewrapped_strip_waters.dcd"
python stripWaters.py -top $TOP_FILE -traj $TRAJ_FILE $OUTPUT_FILE_PATH


# Rewrapping original .dcd files and placing copy in output experiment fragment folder path
cd /scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/rep_1
mkdir Prod_155
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/DI-pipeline-tools
TOP_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/step5_assembly.pdb"
TRAJ_FILE="/scratch/PI/rondror/DesRes-Simulations/Downloaded/Gprot_Science2015_Dror_Desres/science2015/DESRES-Trajectory_science2015-22-all/science2015-22-all/science2015-22-all-155.dcd"
OUTPUT_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/rep_1/Prod_155/Prod_155_rewrapped.dcd"
python wrapAlign.py $TOP_FILE $TRAJ_FILE $OUTPUT_FILE

# Stripping water from rewrapped .dcd file and placing output file in same experiment fragment folder path
TRAJ_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/rep_1/Prod_155/Prod_155_rewrapped.dcd"
OUTPUT_FILE_PATH="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/rep_1/Prod_155/Prod_155_rewrapped_strip_waters.dcd"
python stripWaters.py -top $TOP_FILE -traj $TRAJ_FILE $OUTPUT_FILE_PATH


# Rewrapping original .dcd files and placing copy in output experiment fragment folder path
cd /scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/rep_1
mkdir Prod_156
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/DI-pipeline-tools
TOP_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/step5_assembly.pdb"
TRAJ_FILE="/scratch/PI/rondror/DesRes-Simulations/Downloaded/Gprot_Science2015_Dror_Desres/science2015/DESRES-Trajectory_science2015-22-all/science2015-22-all/science2015-22-all-156.dcd"
OUTPUT_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/rep_1/Prod_156/Prod_156_rewrapped.dcd"
python wrapAlign.py $TOP_FILE $TRAJ_FILE $OUTPUT_FILE

# Stripping water from rewrapped .dcd file and placing output file in same experiment fragment folder path
TRAJ_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/rep_1/Prod_156/Prod_156_rewrapped.dcd"
OUTPUT_FILE_PATH="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/rep_1/Prod_156/Prod_156_rewrapped_strip_waters.dcd"
python stripWaters.py -top $TOP_FILE -traj $TRAJ_FILE $OUTPUT_FILE_PATH


# Rewrapping original .dcd files and placing copy in output experiment fragment folder path
cd /scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/rep_1
mkdir Prod_157
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/DI-pipeline-tools
TOP_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/step5_assembly.pdb"
TRAJ_FILE="/scratch/PI/rondror/DesRes-Simulations/Downloaded/Gprot_Science2015_Dror_Desres/science2015/DESRES-Trajectory_science2015-22-all/science2015-22-all/science2015-22-all-157.dcd"
OUTPUT_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/rep_1/Prod_157/Prod_157_rewrapped.dcd"
python wrapAlign.py $TOP_FILE $TRAJ_FILE $OUTPUT_FILE

# Stripping water from rewrapped .dcd file and placing output file in same experiment fragment folder path
TRAJ_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/rep_1/Prod_157/Prod_157_rewrapped.dcd"
OUTPUT_FILE_PATH="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/rep_1/Prod_157/Prod_157_rewrapped_strip_waters.dcd"
python stripWaters.py -top $TOP_FILE -traj $TRAJ_FILE $OUTPUT_FILE_PATH


# Rewrapping original .dcd files and placing copy in output experiment fragment folder path
cd /scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/rep_1
mkdir Prod_158
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/DI-pipeline-tools
TOP_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/step5_assembly.pdb"
TRAJ_FILE="/scratch/PI/rondror/DesRes-Simulations/Downloaded/Gprot_Science2015_Dror_Desres/science2015/DESRES-Trajectory_science2015-22-all/science2015-22-all/science2015-22-all-158.dcd"
OUTPUT_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/rep_1/Prod_158/Prod_158_rewrapped.dcd"
python wrapAlign.py $TOP_FILE $TRAJ_FILE $OUTPUT_FILE

# Stripping water from rewrapped .dcd file and placing output file in same experiment fragment folder path
TRAJ_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/rep_1/Prod_158/Prod_158_rewrapped.dcd"
OUTPUT_FILE_PATH="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/rep_1/Prod_158/Prod_158_rewrapped_strip_waters.dcd"
python stripWaters.py -top $TOP_FILE -traj $TRAJ_FILE $OUTPUT_FILE_PATH


# Rewrapping original .dcd files and placing copy in output experiment fragment folder path
cd /scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/rep_1
mkdir Prod_159
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/DI-pipeline-tools
TOP_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/step5_assembly.pdb"
TRAJ_FILE="/scratch/PI/rondror/DesRes-Simulations/Downloaded/Gprot_Science2015_Dror_Desres/science2015/DESRES-Trajectory_science2015-22-all/science2015-22-all/science2015-22-all-159.dcd"
OUTPUT_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/rep_1/Prod_159/Prod_159_rewrapped.dcd"
python wrapAlign.py $TOP_FILE $TRAJ_FILE $OUTPUT_FILE

# Stripping water from rewrapped .dcd file and placing output file in same experiment fragment folder path
TRAJ_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/rep_1/Prod_159/Prod_159_rewrapped.dcd"
OUTPUT_FILE_PATH="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/rep_1/Prod_159/Prod_159_rewrapped_strip_waters.dcd"
python stripWaters.py -top $TOP_FILE -traj $TRAJ_FILE $OUTPUT_FILE_PATH


# Rewrapping original .dcd files and placing copy in output experiment fragment folder path
cd /scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/rep_1
mkdir Prod_160
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/DI-pipeline-tools
TOP_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/step5_assembly.pdb"
TRAJ_FILE="/scratch/PI/rondror/DesRes-Simulations/Downloaded/Gprot_Science2015_Dror_Desres/science2015/DESRES-Trajectory_science2015-22-all/science2015-22-all/science2015-22-all-160.dcd"
OUTPUT_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/rep_1/Prod_160/Prod_160_rewrapped.dcd"
python wrapAlign.py $TOP_FILE $TRAJ_FILE $OUTPUT_FILE

# Stripping water from rewrapped .dcd file and placing output file in same experiment fragment folder path
TRAJ_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/rep_1/Prod_160/Prod_160_rewrapped.dcd"
OUTPUT_FILE_PATH="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/rep_1/Prod_160/Prod_160_rewrapped_strip_waters.dcd"
python stripWaters.py -top $TOP_FILE -traj $TRAJ_FILE $OUTPUT_FILE_PATH


# Rewrapping original .dcd files and placing copy in output experiment fragment folder path
cd /scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/rep_1
mkdir Prod_161
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/DI-pipeline-tools
TOP_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/step5_assembly.pdb"
TRAJ_FILE="/scratch/PI/rondror/DesRes-Simulations/Downloaded/Gprot_Science2015_Dror_Desres/science2015/DESRES-Trajectory_science2015-22-all/science2015-22-all/science2015-22-all-161.dcd"
OUTPUT_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/rep_1/Prod_161/Prod_161_rewrapped.dcd"
python wrapAlign.py $TOP_FILE $TRAJ_FILE $OUTPUT_FILE

# Stripping water from rewrapped .dcd file and placing output file in same experiment fragment folder path
TRAJ_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/rep_1/Prod_161/Prod_161_rewrapped.dcd"
OUTPUT_FILE_PATH="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/rep_1/Prod_161/Prod_161_rewrapped_strip_waters.dcd"
python stripWaters.py -top $TOP_FILE -traj $TRAJ_FILE $OUTPUT_FILE_PATH


# Rewrapping original .dcd files and placing copy in output experiment fragment folder path
cd /scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/rep_1
mkdir Prod_162
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/DI-pipeline-tools
TOP_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/step5_assembly.pdb"
TRAJ_FILE="/scratch/PI/rondror/DesRes-Simulations/Downloaded/Gprot_Science2015_Dror_Desres/science2015/DESRES-Trajectory_science2015-22-all/science2015-22-all/science2015-22-all-162.dcd"
OUTPUT_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/rep_1/Prod_162/Prod_162_rewrapped.dcd"
python wrapAlign.py $TOP_FILE $TRAJ_FILE $OUTPUT_FILE

# Stripping water from rewrapped .dcd file and placing output file in same experiment fragment folder path
TRAJ_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/rep_1/Prod_162/Prod_162_rewrapped.dcd"
OUTPUT_FILE_PATH="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/rep_1/Prod_162/Prod_162_rewrapped_strip_waters.dcd"
python stripWaters.py -top $TOP_FILE -traj $TRAJ_FILE $OUTPUT_FILE_PATH


# Rewrapping original .dcd files and placing copy in output experiment fragment folder path
cd /scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/rep_1
mkdir Prod_163
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/DI-pipeline-tools
TOP_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/step5_assembly.pdb"
TRAJ_FILE="/scratch/PI/rondror/DesRes-Simulations/Downloaded/Gprot_Science2015_Dror_Desres/science2015/DESRES-Trajectory_science2015-22-all/science2015-22-all/science2015-22-all-163.dcd"
OUTPUT_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/rep_1/Prod_163/Prod_163_rewrapped.dcd"
python wrapAlign.py $TOP_FILE $TRAJ_FILE $OUTPUT_FILE

# Stripping water from rewrapped .dcd file and placing output file in same experiment fragment folder path
TRAJ_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/rep_1/Prod_163/Prod_163_rewrapped.dcd"
OUTPUT_FILE_PATH="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/rep_1/Prod_163/Prod_163_rewrapped_strip_waters.dcd"
python stripWaters.py -top $TOP_FILE -traj $TRAJ_FILE $OUTPUT_FILE_PATH


# Rewrapping original .dcd files and placing copy in output experiment fragment folder path
cd /scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/rep_1
mkdir Prod_164
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/DI-pipeline-tools
TOP_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/step5_assembly.pdb"
TRAJ_FILE="/scratch/PI/rondror/DesRes-Simulations/Downloaded/Gprot_Science2015_Dror_Desres/science2015/DESRES-Trajectory_science2015-22-all/science2015-22-all/science2015-22-all-164.dcd"
OUTPUT_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/rep_1/Prod_164/Prod_164_rewrapped.dcd"
python wrapAlign.py $TOP_FILE $TRAJ_FILE $OUTPUT_FILE

# Stripping water from rewrapped .dcd file and placing output file in same experiment fragment folder path
TRAJ_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/rep_1/Prod_164/Prod_164_rewrapped.dcd"
OUTPUT_FILE_PATH="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/rep_1/Prod_164/Prod_164_rewrapped_strip_waters.dcd"
python stripWaters.py -top $TOP_FILE -traj $TRAJ_FILE $OUTPUT_FILE_PATH


# Rewrapping original .dcd files and placing copy in output experiment fragment folder path
cd /scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/rep_1
mkdir Prod_165
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/DI-pipeline-tools
TOP_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/step5_assembly.pdb"
TRAJ_FILE="/scratch/PI/rondror/DesRes-Simulations/Downloaded/Gprot_Science2015_Dror_Desres/science2015/DESRES-Trajectory_science2015-22-all/science2015-22-all/science2015-22-all-165.dcd"
OUTPUT_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/rep_1/Prod_165/Prod_165_rewrapped.dcd"
python wrapAlign.py $TOP_FILE $TRAJ_FILE $OUTPUT_FILE

# Stripping water from rewrapped .dcd file and placing output file in same experiment fragment folder path
TRAJ_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/rep_1/Prod_165/Prod_165_rewrapped.dcd"
OUTPUT_FILE_PATH="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/rep_1/Prod_165/Prod_165_rewrapped_strip_waters.dcd"
python stripWaters.py -top $TOP_FILE -traj $TRAJ_FILE $OUTPUT_FILE_PATH


# Rewrapping original .dcd files and placing copy in output experiment fragment folder path
cd /scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/rep_1
mkdir Prod_166
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/DI-pipeline-tools
TOP_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/step5_assembly.pdb"
TRAJ_FILE="/scratch/PI/rondror/DesRes-Simulations/Downloaded/Gprot_Science2015_Dror_Desres/science2015/DESRES-Trajectory_science2015-22-all/science2015-22-all/science2015-22-all-166.dcd"
OUTPUT_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/rep_1/Prod_166/Prod_166_rewrapped.dcd"
python wrapAlign.py $TOP_FILE $TRAJ_FILE $OUTPUT_FILE

# Stripping water from rewrapped .dcd file and placing output file in same experiment fragment folder path
TRAJ_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/rep_1/Prod_166/Prod_166_rewrapped.dcd"
OUTPUT_FILE_PATH="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/rep_1/Prod_166/Prod_166_rewrapped_strip_waters.dcd"
python stripWaters.py -top $TOP_FILE -traj $TRAJ_FILE $OUTPUT_FILE_PATH


# Rewrapping original .dcd files and placing copy in output experiment fragment folder path
cd /scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/rep_1
mkdir Prod_167
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/DI-pipeline-tools
TOP_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/step5_assembly.pdb"
TRAJ_FILE="/scratch/PI/rondror/DesRes-Simulations/Downloaded/Gprot_Science2015_Dror_Desres/science2015/DESRES-Trajectory_science2015-22-all/science2015-22-all/science2015-22-all-167.dcd"
OUTPUT_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/rep_1/Prod_167/Prod_167_rewrapped.dcd"
python wrapAlign.py $TOP_FILE $TRAJ_FILE $OUTPUT_FILE

# Stripping water from rewrapped .dcd file and placing output file in same experiment fragment folder path
TRAJ_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/rep_1/Prod_167/Prod_167_rewrapped.dcd"
OUTPUT_FILE_PATH="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/rep_1/Prod_167/Prod_167_rewrapped_strip_waters.dcd"
python stripWaters.py -top $TOP_FILE -traj $TRAJ_FILE $OUTPUT_FILE_PATH


# Rewrapping original .dcd files and placing copy in output experiment fragment folder path
cd /scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/rep_1
mkdir Prod_168
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/DI-pipeline-tools
TOP_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/step5_assembly.pdb"
TRAJ_FILE="/scratch/PI/rondror/DesRes-Simulations/Downloaded/Gprot_Science2015_Dror_Desres/science2015/DESRES-Trajectory_science2015-22-all/science2015-22-all/science2015-22-all-168.dcd"
OUTPUT_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/rep_1/Prod_168/Prod_168_rewrapped.dcd"
python wrapAlign.py $TOP_FILE $TRAJ_FILE $OUTPUT_FILE

# Stripping water from rewrapped .dcd file and placing output file in same experiment fragment folder path
TRAJ_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/rep_1/Prod_168/Prod_168_rewrapped.dcd"
OUTPUT_FILE_PATH="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/rep_1/Prod_168/Prod_168_rewrapped_strip_waters.dcd"
python stripWaters.py -top $TOP_FILE -traj $TRAJ_FILE $OUTPUT_FILE_PATH


# Rewrapping original .dcd files and placing copy in output experiment fragment folder path
cd /scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/rep_1
mkdir Prod_169
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/DI-pipeline-tools
TOP_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/step5_assembly.pdb"
TRAJ_FILE="/scratch/PI/rondror/DesRes-Simulations/Downloaded/Gprot_Science2015_Dror_Desres/science2015/DESRES-Trajectory_science2015-22-all/science2015-22-all/science2015-22-all-169.dcd"
OUTPUT_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/rep_1/Prod_169/Prod_169_rewrapped.dcd"
python wrapAlign.py $TOP_FILE $TRAJ_FILE $OUTPUT_FILE

# Stripping water from rewrapped .dcd file and placing output file in same experiment fragment folder path
TRAJ_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/rep_1/Prod_169/Prod_169_rewrapped.dcd"
OUTPUT_FILE_PATH="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/rep_1/Prod_169/Prod_169_rewrapped_strip_waters.dcd"
python stripWaters.py -top $TOP_FILE -traj $TRAJ_FILE $OUTPUT_FILE_PATH


# Rewrapping original .dcd files and placing copy in output experiment fragment folder path
cd /scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/rep_1
mkdir Prod_170
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/DI-pipeline-tools
TOP_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/step5_assembly.pdb"
TRAJ_FILE="/scratch/PI/rondror/DesRes-Simulations/Downloaded/Gprot_Science2015_Dror_Desres/science2015/DESRES-Trajectory_science2015-22-all/science2015-22-all/science2015-22-all-170.dcd"
OUTPUT_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/rep_1/Prod_170/Prod_170_rewrapped.dcd"
python wrapAlign.py $TOP_FILE $TRAJ_FILE $OUTPUT_FILE

# Stripping water from rewrapped .dcd file and placing output file in same experiment fragment folder path
TRAJ_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/rep_1/Prod_170/Prod_170_rewrapped.dcd"
OUTPUT_FILE_PATH="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/rep_1/Prod_170/Prod_170_rewrapped_strip_waters.dcd"
python stripWaters.py -top $TOP_FILE -traj $TRAJ_FILE $OUTPUT_FILE_PATH


# Rewrapping original .dcd files and placing copy in output experiment fragment folder path
cd /scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/rep_1
mkdir Prod_171
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/DI-pipeline-tools
TOP_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/step5_assembly.pdb"
TRAJ_FILE="/scratch/PI/rondror/DesRes-Simulations/Downloaded/Gprot_Science2015_Dror_Desres/science2015/DESRES-Trajectory_science2015-22-all/science2015-22-all/science2015-22-all-171.dcd"
OUTPUT_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/rep_1/Prod_171/Prod_171_rewrapped.dcd"
python wrapAlign.py $TOP_FILE $TRAJ_FILE $OUTPUT_FILE

# Stripping water from rewrapped .dcd file and placing output file in same experiment fragment folder path
TRAJ_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/rep_1/Prod_171/Prod_171_rewrapped.dcd"
OUTPUT_FILE_PATH="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/rep_1/Prod_171/Prod_171_rewrapped_strip_waters.dcd"
python stripWaters.py -top $TOP_FILE -traj $TRAJ_FILE $OUTPUT_FILE_PATH


# Rewrapping original .dcd files and placing copy in output experiment fragment folder path
cd /scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/rep_1
mkdir Prod_172
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/DI-pipeline-tools
TOP_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/step5_assembly.pdb"
TRAJ_FILE="/scratch/PI/rondror/DesRes-Simulations/Downloaded/Gprot_Science2015_Dror_Desres/science2015/DESRES-Trajectory_science2015-22-all/science2015-22-all/science2015-22-all-172.dcd"
OUTPUT_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/rep_1/Prod_172/Prod_172_rewrapped.dcd"
python wrapAlign.py $TOP_FILE $TRAJ_FILE $OUTPUT_FILE

# Stripping water from rewrapped .dcd file and placing output file in same experiment fragment folder path
TRAJ_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/rep_1/Prod_172/Prod_172_rewrapped.dcd"
OUTPUT_FILE_PATH="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/rep_1/Prod_172/Prod_172_rewrapped_strip_waters.dcd"
python stripWaters.py -top $TOP_FILE -traj $TRAJ_FILE $OUTPUT_FILE_PATH


# Rewrapping original .dcd files and placing copy in output experiment fragment folder path
cd /scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/rep_1
mkdir Prod_173
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/DI-pipeline-tools
TOP_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/step5_assembly.pdb"
TRAJ_FILE="/scratch/PI/rondror/DesRes-Simulations/Downloaded/Gprot_Science2015_Dror_Desres/science2015/DESRES-Trajectory_science2015-22-all/science2015-22-all/science2015-22-all-173.dcd"
OUTPUT_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/rep_1/Prod_173/Prod_173_rewrapped.dcd"
python wrapAlign.py $TOP_FILE $TRAJ_FILE $OUTPUT_FILE

# Stripping water from rewrapped .dcd file and placing output file in same experiment fragment folder path
TRAJ_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/rep_1/Prod_173/Prod_173_rewrapped.dcd"
OUTPUT_FILE_PATH="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/rep_1/Prod_173/Prod_173_rewrapped_strip_waters.dcd"
python stripWaters.py -top $TOP_FILE -traj $TRAJ_FILE $OUTPUT_FILE_PATH


# Rewrapping original .dcd files and placing copy in output experiment fragment folder path
cd /scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/rep_1
mkdir Prod_174
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/DI-pipeline-tools
TOP_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/step5_assembly.pdb"
TRAJ_FILE="/scratch/PI/rondror/DesRes-Simulations/Downloaded/Gprot_Science2015_Dror_Desres/science2015/DESRES-Trajectory_science2015-22-all/science2015-22-all/science2015-22-all-174.dcd"
OUTPUT_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/rep_1/Prod_174/Prod_174_rewrapped.dcd"
python wrapAlign.py $TOP_FILE $TRAJ_FILE $OUTPUT_FILE

# Stripping water from rewrapped .dcd file and placing output file in same experiment fragment folder path
TRAJ_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/rep_1/Prod_174/Prod_174_rewrapped.dcd"
OUTPUT_FILE_PATH="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/rep_1/Prod_174/Prod_174_rewrapped_strip_waters.dcd"
python stripWaters.py -top $TOP_FILE -traj $TRAJ_FILE $OUTPUT_FILE_PATH


# Rewrapping original .dcd files and placing copy in output experiment fragment folder path
cd /scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/rep_1
mkdir Prod_175
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/DI-pipeline-tools
TOP_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/step5_assembly.pdb"
TRAJ_FILE="/scratch/PI/rondror/DesRes-Simulations/Downloaded/Gprot_Science2015_Dror_Desres/science2015/DESRES-Trajectory_science2015-22-all/science2015-22-all/science2015-22-all-175.dcd"
OUTPUT_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/rep_1/Prod_175/Prod_175_rewrapped.dcd"
python wrapAlign.py $TOP_FILE $TRAJ_FILE $OUTPUT_FILE

# Stripping water from rewrapped .dcd file and placing output file in same experiment fragment folder path
TRAJ_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/rep_1/Prod_175/Prod_175_rewrapped.dcd"
OUTPUT_FILE_PATH="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/rep_1/Prod_175/Prod_175_rewrapped_strip_waters.dcd"
python stripWaters.py -top $TOP_FILE -traj $TRAJ_FILE $OUTPUT_FILE_PATH


# Rewrapping original .dcd files and placing copy in output experiment fragment folder path
cd /scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/rep_1
mkdir Prod_176
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/DI-pipeline-tools
TOP_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/step5_assembly.pdb"
TRAJ_FILE="/scratch/PI/rondror/DesRes-Simulations/Downloaded/Gprot_Science2015_Dror_Desres/science2015/DESRES-Trajectory_science2015-22-all/science2015-22-all/science2015-22-all-176.dcd"
OUTPUT_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/rep_1/Prod_176/Prod_176_rewrapped.dcd"
python wrapAlign.py $TOP_FILE $TRAJ_FILE $OUTPUT_FILE

# Stripping water from rewrapped .dcd file and placing output file in same experiment fragment folder path
TRAJ_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/rep_1/Prod_176/Prod_176_rewrapped.dcd"
OUTPUT_FILE_PATH="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/rep_1/Prod_176/Prod_176_rewrapped_strip_waters.dcd"
python stripWaters.py -top $TOP_FILE -traj $TRAJ_FILE $OUTPUT_FILE_PATH


# Rewrapping original .dcd files and placing copy in output experiment fragment folder path
cd /scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/rep_1
mkdir Prod_177
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/DI-pipeline-tools
TOP_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/step5_assembly.pdb"
TRAJ_FILE="/scratch/PI/rondror/DesRes-Simulations/Downloaded/Gprot_Science2015_Dror_Desres/science2015/DESRES-Trajectory_science2015-22-all/science2015-22-all/science2015-22-all-177.dcd"
OUTPUT_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/rep_1/Prod_177/Prod_177_rewrapped.dcd"
python wrapAlign.py $TOP_FILE $TRAJ_FILE $OUTPUT_FILE

# Stripping water from rewrapped .dcd file and placing output file in same experiment fragment folder path
TRAJ_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/rep_1/Prod_177/Prod_177_rewrapped.dcd"
OUTPUT_FILE_PATH="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/rep_1/Prod_177/Prod_177_rewrapped_strip_waters.dcd"
python stripWaters.py -top $TOP_FILE -traj $TRAJ_FILE $OUTPUT_FILE_PATH


# Rewrapping original .dcd files and placing copy in output experiment fragment folder path
cd /scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/rep_1
mkdir Prod_178
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/DI-pipeline-tools
TOP_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/step5_assembly.pdb"
TRAJ_FILE="/scratch/PI/rondror/DesRes-Simulations/Downloaded/Gprot_Science2015_Dror_Desres/science2015/DESRES-Trajectory_science2015-22-all/science2015-22-all/science2015-22-all-178.dcd"
OUTPUT_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/rep_1/Prod_178/Prod_178_rewrapped.dcd"
python wrapAlign.py $TOP_FILE $TRAJ_FILE $OUTPUT_FILE

# Stripping water from rewrapped .dcd file and placing output file in same experiment fragment folder path
TRAJ_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/rep_1/Prod_178/Prod_178_rewrapped.dcd"
OUTPUT_FILE_PATH="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/rep_1/Prod_178/Prod_178_rewrapped_strip_waters.dcd"
python stripWaters.py -top $TOP_FILE -traj $TRAJ_FILE $OUTPUT_FILE_PATH


# Rewrapping original .dcd files and placing copy in output experiment fragment folder path
cd /scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/rep_1
mkdir Prod_179
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/DI-pipeline-tools
TOP_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/step5_assembly.pdb"
TRAJ_FILE="/scratch/PI/rondror/DesRes-Simulations/Downloaded/Gprot_Science2015_Dror_Desres/science2015/DESRES-Trajectory_science2015-22-all/science2015-22-all/science2015-22-all-179.dcd"
OUTPUT_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/rep_1/Prod_179/Prod_179_rewrapped.dcd"
python wrapAlign.py $TOP_FILE $TRAJ_FILE $OUTPUT_FILE

# Stripping water from rewrapped .dcd file and placing output file in same experiment fragment folder path
TRAJ_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/rep_1/Prod_179/Prod_179_rewrapped.dcd"
OUTPUT_FILE_PATH="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/rep_1/Prod_179/Prod_179_rewrapped_strip_waters.dcd"
python stripWaters.py -top $TOP_FILE -traj $TRAJ_FILE $OUTPUT_FILE_PATH


# Rewrapping original .dcd files and placing copy in output experiment fragment folder path
cd /scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/rep_1
mkdir Prod_180
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/DI-pipeline-tools
TOP_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/step5_assembly.pdb"
TRAJ_FILE="/scratch/PI/rondror/DesRes-Simulations/Downloaded/Gprot_Science2015_Dror_Desres/science2015/DESRES-Trajectory_science2015-22-all/science2015-22-all/science2015-22-all-180.dcd"
OUTPUT_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/rep_1/Prod_180/Prod_180_rewrapped.dcd"
python wrapAlign.py $TOP_FILE $TRAJ_FILE $OUTPUT_FILE

# Stripping water from rewrapped .dcd file and placing output file in same experiment fragment folder path
TRAJ_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/rep_1/Prod_180/Prod_180_rewrapped.dcd"
OUTPUT_FILE_PATH="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/rep_1/Prod_180/Prod_180_rewrapped_strip_waters.dcd"
python stripWaters.py -top $TOP_FILE -traj $TRAJ_FILE $OUTPUT_FILE_PATH


# Rewrapping original .dcd files and placing copy in output experiment fragment folder path
cd /scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/rep_1
mkdir Prod_181
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/DI-pipeline-tools
TOP_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/step5_assembly.pdb"
TRAJ_FILE="/scratch/PI/rondror/DesRes-Simulations/Downloaded/Gprot_Science2015_Dror_Desres/science2015/DESRES-Trajectory_science2015-22-all/science2015-22-all/science2015-22-all-181.dcd"
OUTPUT_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/rep_1/Prod_181/Prod_181_rewrapped.dcd"
python wrapAlign.py $TOP_FILE $TRAJ_FILE $OUTPUT_FILE

# Stripping water from rewrapped .dcd file and placing output file in same experiment fragment folder path
TRAJ_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/rep_1/Prod_181/Prod_181_rewrapped.dcd"
OUTPUT_FILE_PATH="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/rep_1/Prod_181/Prod_181_rewrapped_strip_waters.dcd"
python stripWaters.py -top $TOP_FILE -traj $TRAJ_FILE $OUTPUT_FILE_PATH


# Rewrapping original .dcd files and placing copy in output experiment fragment folder path
cd /scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/rep_1
mkdir Prod_182
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/DI-pipeline-tools
TOP_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/step5_assembly.pdb"
TRAJ_FILE="/scratch/PI/rondror/DesRes-Simulations/Downloaded/Gprot_Science2015_Dror_Desres/science2015/DESRES-Trajectory_science2015-22-all/science2015-22-all/science2015-22-all-182.dcd"
OUTPUT_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/rep_1/Prod_182/Prod_182_rewrapped.dcd"
python wrapAlign.py $TOP_FILE $TRAJ_FILE $OUTPUT_FILE

# Stripping water from rewrapped .dcd file and placing output file in same experiment fragment folder path
TRAJ_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/rep_1/Prod_182/Prod_182_rewrapped.dcd"
OUTPUT_FILE_PATH="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/rep_1/Prod_182/Prod_182_rewrapped_strip_waters.dcd"
python stripWaters.py -top $TOP_FILE -traj $TRAJ_FILE $OUTPUT_FILE_PATH


# Rewrapping original .dcd files and placing copy in output experiment fragment folder path
cd /scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/rep_1
mkdir Prod_183
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/DI-pipeline-tools
TOP_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/step5_assembly.pdb"
TRAJ_FILE="/scratch/PI/rondror/DesRes-Simulations/Downloaded/Gprot_Science2015_Dror_Desres/science2015/DESRES-Trajectory_science2015-22-all/science2015-22-all/science2015-22-all-183.dcd"
OUTPUT_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/rep_1/Prod_183/Prod_183_rewrapped.dcd"
python wrapAlign.py $TOP_FILE $TRAJ_FILE $OUTPUT_FILE

# Stripping water from rewrapped .dcd file and placing output file in same experiment fragment folder path
TRAJ_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/rep_1/Prod_183/Prod_183_rewrapped.dcd"
OUTPUT_FILE_PATH="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/rep_1/Prod_183/Prod_183_rewrapped_strip_waters.dcd"
python stripWaters.py -top $TOP_FILE -traj $TRAJ_FILE $OUTPUT_FILE_PATH


# Rewrapping original .dcd files and placing copy in output experiment fragment folder path
cd /scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/rep_1
mkdir Prod_184
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/DI-pipeline-tools
TOP_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/step5_assembly.pdb"
TRAJ_FILE="/scratch/PI/rondror/DesRes-Simulations/Downloaded/Gprot_Science2015_Dror_Desres/science2015/DESRES-Trajectory_science2015-22-all/science2015-22-all/science2015-22-all-184.dcd"
OUTPUT_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/rep_1/Prod_184/Prod_184_rewrapped.dcd"
python wrapAlign.py $TOP_FILE $TRAJ_FILE $OUTPUT_FILE

# Stripping water from rewrapped .dcd file and placing output file in same experiment fragment folder path
TRAJ_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/rep_1/Prod_184/Prod_184_rewrapped.dcd"
OUTPUT_FILE_PATH="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/rep_1/Prod_184/Prod_184_rewrapped_strip_waters.dcd"
python stripWaters.py -top $TOP_FILE -traj $TRAJ_FILE $OUTPUT_FILE_PATH


# Rewrapping original .dcd files and placing copy in output experiment fragment folder path
cd /scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/rep_1
mkdir Prod_185
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/DI-pipeline-tools
TOP_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/step5_assembly.pdb"
TRAJ_FILE="/scratch/PI/rondror/DesRes-Simulations/Downloaded/Gprot_Science2015_Dror_Desres/science2015/DESRES-Trajectory_science2015-22-all/science2015-22-all/science2015-22-all-185.dcd"
OUTPUT_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/rep_1/Prod_185/Prod_185_rewrapped.dcd"
python wrapAlign.py $TOP_FILE $TRAJ_FILE $OUTPUT_FILE

# Stripping water from rewrapped .dcd file and placing output file in same experiment fragment folder path
TRAJ_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/rep_1/Prod_185/Prod_185_rewrapped.dcd"
OUTPUT_FILE_PATH="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/rep_1/Prod_185/Prod_185_rewrapped_strip_waters.dcd"
python stripWaters.py -top $TOP_FILE -traj $TRAJ_FILE $OUTPUT_FILE_PATH


# Rewrapping original .dcd files and placing copy in output experiment fragment folder path
cd /scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/rep_1
mkdir Prod_186
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/DI-pipeline-tools
TOP_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/step5_assembly.pdb"
TRAJ_FILE="/scratch/PI/rondror/DesRes-Simulations/Downloaded/Gprot_Science2015_Dror_Desres/science2015/DESRES-Trajectory_science2015-22-all/science2015-22-all/science2015-22-all-186.dcd"
OUTPUT_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/rep_1/Prod_186/Prod_186_rewrapped.dcd"
python wrapAlign.py $TOP_FILE $TRAJ_FILE $OUTPUT_FILE

# Stripping water from rewrapped .dcd file and placing output file in same experiment fragment folder path
TRAJ_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/rep_1/Prod_186/Prod_186_rewrapped.dcd"
OUTPUT_FILE_PATH="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/rep_1/Prod_186/Prod_186_rewrapped_strip_waters.dcd"
python stripWaters.py -top $TOP_FILE -traj $TRAJ_FILE $OUTPUT_FILE_PATH


# Rewrapping original .dcd files and placing copy in output experiment fragment folder path
cd /scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/rep_1
mkdir Prod_187
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/DI-pipeline-tools
TOP_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/step5_assembly.pdb"
TRAJ_FILE="/scratch/PI/rondror/DesRes-Simulations/Downloaded/Gprot_Science2015_Dror_Desres/science2015/DESRES-Trajectory_science2015-22-all/science2015-22-all/science2015-22-all-187.dcd"
OUTPUT_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/rep_1/Prod_187/Prod_187_rewrapped.dcd"
python wrapAlign.py $TOP_FILE $TRAJ_FILE $OUTPUT_FILE

# Stripping water from rewrapped .dcd file and placing output file in same experiment fragment folder path
TRAJ_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/rep_1/Prod_187/Prod_187_rewrapped.dcd"
OUTPUT_FILE_PATH="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/rep_1/Prod_187/Prod_187_rewrapped_strip_waters.dcd"
python stripWaters.py -top $TOP_FILE -traj $TRAJ_FILE $OUTPUT_FILE_PATH


# Rewrapping original .dcd files and placing copy in output experiment fragment folder path
cd /scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/rep_1
mkdir Prod_188
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/DI-pipeline-tools
TOP_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/step5_assembly.pdb"
TRAJ_FILE="/scratch/PI/rondror/DesRes-Simulations/Downloaded/Gprot_Science2015_Dror_Desres/science2015/DESRES-Trajectory_science2015-22-all/science2015-22-all/science2015-22-all-188.dcd"
OUTPUT_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/rep_1/Prod_188/Prod_188_rewrapped.dcd"
python wrapAlign.py $TOP_FILE $TRAJ_FILE $OUTPUT_FILE

# Stripping water from rewrapped .dcd file and placing output file in same experiment fragment folder path
TRAJ_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/rep_1/Prod_188/Prod_188_rewrapped.dcd"
OUTPUT_FILE_PATH="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/rep_1/Prod_188/Prod_188_rewrapped_strip_waters.dcd"
python stripWaters.py -top $TOP_FILE -traj $TRAJ_FILE $OUTPUT_FILE_PATH


# Rewrapping original .dcd files and placing copy in output experiment fragment folder path
cd /scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/rep_1
mkdir Prod_189
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/DI-pipeline-tools
TOP_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/step5_assembly.pdb"
TRAJ_FILE="/scratch/PI/rondror/DesRes-Simulations/Downloaded/Gprot_Science2015_Dror_Desres/science2015/DESRES-Trajectory_science2015-22-all/science2015-22-all/science2015-22-all-189.dcd"
OUTPUT_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/rep_1/Prod_189/Prod_189_rewrapped.dcd"
python wrapAlign.py $TOP_FILE $TRAJ_FILE $OUTPUT_FILE

# Stripping water from rewrapped .dcd file and placing output file in same experiment fragment folder path
TRAJ_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/rep_1/Prod_189/Prod_189_rewrapped.dcd"
OUTPUT_FILE_PATH="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/rep_1/Prod_189/Prod_189_rewrapped_strip_waters.dcd"
python stripWaters.py -top $TOP_FILE -traj $TRAJ_FILE $OUTPUT_FILE_PATH


# Rewrapping original .dcd files and placing copy in output experiment fragment folder path
cd /scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/rep_1
mkdir Prod_190
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/DI-pipeline-tools
TOP_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/step5_assembly.pdb"
TRAJ_FILE="/scratch/PI/rondror/DesRes-Simulations/Downloaded/Gprot_Science2015_Dror_Desres/science2015/DESRES-Trajectory_science2015-22-all/science2015-22-all/science2015-22-all-190.dcd"
OUTPUT_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/rep_1/Prod_190/Prod_190_rewrapped.dcd"
python wrapAlign.py $TOP_FILE $TRAJ_FILE $OUTPUT_FILE

# Stripping water from rewrapped .dcd file and placing output file in same experiment fragment folder path
TRAJ_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/rep_1/Prod_190/Prod_190_rewrapped.dcd"
OUTPUT_FILE_PATH="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/rep_1/Prod_190/Prod_190_rewrapped_strip_waters.dcd"
python stripWaters.py -top $TOP_FILE -traj $TRAJ_FILE $OUTPUT_FILE_PATH


# Rewrapping original .dcd files and placing copy in output experiment fragment folder path
cd /scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/rep_1
mkdir Prod_191
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/DI-pipeline-tools
TOP_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/step5_assembly.pdb"
TRAJ_FILE="/scratch/PI/rondror/DesRes-Simulations/Downloaded/Gprot_Science2015_Dror_Desres/science2015/DESRES-Trajectory_science2015-22-all/science2015-22-all/science2015-22-all-191.dcd"
OUTPUT_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/rep_1/Prod_191/Prod_191_rewrapped.dcd"
python wrapAlign.py $TOP_FILE $TRAJ_FILE $OUTPUT_FILE

# Stripping water from rewrapped .dcd file and placing output file in same experiment fragment folder path
TRAJ_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/rep_1/Prod_191/Prod_191_rewrapped.dcd"
OUTPUT_FILE_PATH="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/rep_1/Prod_191/Prod_191_rewrapped_strip_waters.dcd"
python stripWaters.py -top $TOP_FILE -traj $TRAJ_FILE $OUTPUT_FILE_PATH


# Rewrapping original .dcd files and placing copy in output experiment fragment folder path
cd /scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/rep_1
mkdir Prod_192
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/DI-pipeline-tools
TOP_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/step5_assembly.pdb"
TRAJ_FILE="/scratch/PI/rondror/DesRes-Simulations/Downloaded/Gprot_Science2015_Dror_Desres/science2015/DESRES-Trajectory_science2015-22-all/science2015-22-all/science2015-22-all-192.dcd"
OUTPUT_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/rep_1/Prod_192/Prod_192_rewrapped.dcd"
python wrapAlign.py $TOP_FILE $TRAJ_FILE $OUTPUT_FILE

# Stripping water from rewrapped .dcd file and placing output file in same experiment fragment folder path
TRAJ_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/rep_1/Prod_192/Prod_192_rewrapped.dcd"
OUTPUT_FILE_PATH="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/rep_1/Prod_192/Prod_192_rewrapped_strip_waters.dcd"
python stripWaters.py -top $TOP_FILE -traj $TRAJ_FILE $OUTPUT_FILE_PATH


# Rewrapping original .dcd files and placing copy in output experiment fragment folder path
cd /scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/rep_1
mkdir Prod_193
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/DI-pipeline-tools
TOP_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/step5_assembly.pdb"
TRAJ_FILE="/scratch/PI/rondror/DesRes-Simulations/Downloaded/Gprot_Science2015_Dror_Desres/science2015/DESRES-Trajectory_science2015-22-all/science2015-22-all/science2015-22-all-193.dcd"
OUTPUT_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/rep_1/Prod_193/Prod_193_rewrapped.dcd"
python wrapAlign.py $TOP_FILE $TRAJ_FILE $OUTPUT_FILE

# Stripping water from rewrapped .dcd file and placing output file in same experiment fragment folder path
TRAJ_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/rep_1/Prod_193/Prod_193_rewrapped.dcd"
OUTPUT_FILE_PATH="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/rep_1/Prod_193/Prod_193_rewrapped_strip_waters.dcd"
python stripWaters.py -top $TOP_FILE -traj $TRAJ_FILE $OUTPUT_FILE_PATH


# Rewrapping original .dcd files and placing copy in output experiment fragment folder path
cd /scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/rep_1
mkdir Prod_194
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/DI-pipeline-tools
TOP_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/step5_assembly.pdb"
TRAJ_FILE="/scratch/PI/rondror/DesRes-Simulations/Downloaded/Gprot_Science2015_Dror_Desres/science2015/DESRES-Trajectory_science2015-22-all/science2015-22-all/science2015-22-all-194.dcd"
OUTPUT_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/rep_1/Prod_194/Prod_194_rewrapped.dcd"
python wrapAlign.py $TOP_FILE $TRAJ_FILE $OUTPUT_FILE

# Stripping water from rewrapped .dcd file and placing output file in same experiment fragment folder path
TRAJ_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/rep_1/Prod_194/Prod_194_rewrapped.dcd"
OUTPUT_FILE_PATH="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/rep_1/Prod_194/Prod_194_rewrapped_strip_waters.dcd"
python stripWaters.py -top $TOP_FILE -traj $TRAJ_FILE $OUTPUT_FILE_PATH


# Rewrapping original .dcd files and placing copy in output experiment fragment folder path
cd /scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/rep_1
mkdir Prod_195
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/DI-pipeline-tools
TOP_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/step5_assembly.pdb"
TRAJ_FILE="/scratch/PI/rondror/DesRes-Simulations/Downloaded/Gprot_Science2015_Dror_Desres/science2015/DESRES-Trajectory_science2015-22-all/science2015-22-all/science2015-22-all-195.dcd"
OUTPUT_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/rep_1/Prod_195/Prod_195_rewrapped.dcd"
python wrapAlign.py $TOP_FILE $TRAJ_FILE $OUTPUT_FILE

# Stripping water from rewrapped .dcd file and placing output file in same experiment fragment folder path
TRAJ_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/rep_1/Prod_195/Prod_195_rewrapped.dcd"
OUTPUT_FILE_PATH="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/rep_1/Prod_195/Prod_195_rewrapped_strip_waters.dcd"
python stripWaters.py -top $TOP_FILE -traj $TRAJ_FILE $OUTPUT_FILE_PATH


# Rewrapping original .dcd files and placing copy in output experiment fragment folder path
cd /scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/rep_1
mkdir Prod_196
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/DI-pipeline-tools
TOP_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/step5_assembly.pdb"
TRAJ_FILE="/scratch/PI/rondror/DesRes-Simulations/Downloaded/Gprot_Science2015_Dror_Desres/science2015/DESRES-Trajectory_science2015-22-all/science2015-22-all/science2015-22-all-196.dcd"
OUTPUT_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/rep_1/Prod_196/Prod_196_rewrapped.dcd"
python wrapAlign.py $TOP_FILE $TRAJ_FILE $OUTPUT_FILE

# Stripping water from rewrapped .dcd file and placing output file in same experiment fragment folder path
TRAJ_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/rep_1/Prod_196/Prod_196_rewrapped.dcd"
OUTPUT_FILE_PATH="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/rep_1/Prod_196/Prod_196_rewrapped_strip_waters.dcd"
python stripWaters.py -top $TOP_FILE -traj $TRAJ_FILE $OUTPUT_FILE_PATH


# Rewrapping original .dcd files and placing copy in output experiment fragment folder path
cd /scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/rep_1
mkdir Prod_197
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/DI-pipeline-tools
TOP_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/step5_assembly.pdb"
TRAJ_FILE="/scratch/PI/rondror/DesRes-Simulations/Downloaded/Gprot_Science2015_Dror_Desres/science2015/DESRES-Trajectory_science2015-22-all/science2015-22-all/science2015-22-all-197.dcd"
OUTPUT_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/rep_1/Prod_197/Prod_197_rewrapped.dcd"
python wrapAlign.py $TOP_FILE $TRAJ_FILE $OUTPUT_FILE

# Stripping water from rewrapped .dcd file and placing output file in same experiment fragment folder path
TRAJ_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/rep_1/Prod_197/Prod_197_rewrapped.dcd"
OUTPUT_FILE_PATH="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/rep_1/Prod_197/Prod_197_rewrapped_strip_waters.dcd"
python stripWaters.py -top $TOP_FILE -traj $TRAJ_FILE $OUTPUT_FILE_PATH


# Rewrapping original .dcd files and placing copy in output experiment fragment folder path
cd /scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/rep_1
mkdir Prod_198
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/DI-pipeline-tools
TOP_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/step5_assembly.pdb"
TRAJ_FILE="/scratch/PI/rondror/DesRes-Simulations/Downloaded/Gprot_Science2015_Dror_Desres/science2015/DESRES-Trajectory_science2015-22-all/science2015-22-all/science2015-22-all-198.dcd"
OUTPUT_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/rep_1/Prod_198/Prod_198_rewrapped.dcd"
python wrapAlign.py $TOP_FILE $TRAJ_FILE $OUTPUT_FILE

# Stripping water from rewrapped .dcd file and placing output file in same experiment fragment folder path
TRAJ_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/rep_1/Prod_198/Prod_198_rewrapped.dcd"
OUTPUT_FILE_PATH="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/rep_1/Prod_198/Prod_198_rewrapped_strip_waters.dcd"
python stripWaters.py -top $TOP_FILE -traj $TRAJ_FILE $OUTPUT_FILE_PATH


# Rewrapping original .dcd files and placing copy in output experiment fragment folder path
cd /scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/rep_1
mkdir Prod_199
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/DI-pipeline-tools
TOP_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/step5_assembly.pdb"
TRAJ_FILE="/scratch/PI/rondror/DesRes-Simulations/Downloaded/Gprot_Science2015_Dror_Desres/science2015/DESRES-Trajectory_science2015-22-all/science2015-22-all/science2015-22-all-199.dcd"
OUTPUT_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/rep_1/Prod_199/Prod_199_rewrapped.dcd"
python wrapAlign.py $TOP_FILE $TRAJ_FILE $OUTPUT_FILE

# Stripping water from rewrapped .dcd file and placing output file in same experiment fragment folder path
TRAJ_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/rep_1/Prod_199/Prod_199_rewrapped.dcd"
OUTPUT_FILE_PATH="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/rep_1/Prod_199/Prod_199_rewrapped_strip_waters.dcd"
python stripWaters.py -top $TOP_FILE -traj $TRAJ_FILE $OUTPUT_FILE_PATH


# Rewrapping original .dcd files and placing copy in output experiment fragment folder path
cd /scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/rep_1
mkdir Prod_200
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/DI-pipeline-tools
TOP_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/step5_assembly.pdb"
TRAJ_FILE="/scratch/PI/rondror/DesRes-Simulations/Downloaded/Gprot_Science2015_Dror_Desres/science2015/DESRES-Trajectory_science2015-22-all/science2015-22-all/science2015-22-all-200.dcd"
OUTPUT_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/rep_1/Prod_200/Prod_200_rewrapped.dcd"
python wrapAlign.py $TOP_FILE $TRAJ_FILE $OUTPUT_FILE

# Stripping water from rewrapped .dcd file and placing output file in same experiment fragment folder path
TRAJ_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/rep_1/Prod_200/Prod_200_rewrapped.dcd"
OUTPUT_FILE_PATH="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/rep_1/Prod_200/Prod_200_rewrapped_strip_waters.dcd"
python stripWaters.py -top $TOP_FILE -traj $TRAJ_FILE $OUTPUT_FILE_PATH


# Rewrapping original .dcd files and placing copy in output experiment fragment folder path
cd /scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/rep_1
mkdir Prod_201
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/DI-pipeline-tools
TOP_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/step5_assembly.pdb"
TRAJ_FILE="/scratch/PI/rondror/DesRes-Simulations/Downloaded/Gprot_Science2015_Dror_Desres/science2015/DESRES-Trajectory_science2015-22-all/science2015-22-all/science2015-22-all-201.dcd"
OUTPUT_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/rep_1/Prod_201/Prod_201_rewrapped.dcd"
python wrapAlign.py $TOP_FILE $TRAJ_FILE $OUTPUT_FILE

# Stripping water from rewrapped .dcd file and placing output file in same experiment fragment folder path
TRAJ_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/rep_1/Prod_201/Prod_201_rewrapped.dcd"
OUTPUT_FILE_PATH="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/rep_1/Prod_201/Prod_201_rewrapped_strip_waters.dcd"
python stripWaters.py -top $TOP_FILE -traj $TRAJ_FILE $OUTPUT_FILE_PATH


# Rewrapping original .dcd files and placing copy in output experiment fragment folder path
cd /scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/rep_1
mkdir Prod_202
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/DI-pipeline-tools
TOP_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/step5_assembly.pdb"
TRAJ_FILE="/scratch/PI/rondror/DesRes-Simulations/Downloaded/Gprot_Science2015_Dror_Desres/science2015/DESRES-Trajectory_science2015-22-all/science2015-22-all/science2015-22-all-202.dcd"
OUTPUT_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/rep_1/Prod_202/Prod_202_rewrapped.dcd"
python wrapAlign.py $TOP_FILE $TRAJ_FILE $OUTPUT_FILE

# Stripping water from rewrapped .dcd file and placing output file in same experiment fragment folder path
TRAJ_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/rep_1/Prod_202/Prod_202_rewrapped.dcd"
OUTPUT_FILE_PATH="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/rep_1/Prod_202/Prod_202_rewrapped_strip_waters.dcd"
python stripWaters.py -top $TOP_FILE -traj $TRAJ_FILE $OUTPUT_FILE_PATH


# Rewrapping original .dcd files and placing copy in output experiment fragment folder path
cd /scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/rep_1
mkdir Prod_203
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/DI-pipeline-tools
TOP_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/step5_assembly.pdb"
TRAJ_FILE="/scratch/PI/rondror/DesRes-Simulations/Downloaded/Gprot_Science2015_Dror_Desres/science2015/DESRES-Trajectory_science2015-22-all/science2015-22-all/science2015-22-all-203.dcd"
OUTPUT_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/rep_1/Prod_203/Prod_203_rewrapped.dcd"
python wrapAlign.py $TOP_FILE $TRAJ_FILE $OUTPUT_FILE

# Stripping water from rewrapped .dcd file and placing output file in same experiment fragment folder path
TRAJ_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/rep_1/Prod_203/Prod_203_rewrapped.dcd"
OUTPUT_FILE_PATH="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/rep_1/Prod_203/Prod_203_rewrapped_strip_waters.dcd"
python stripWaters.py -top $TOP_FILE -traj $TRAJ_FILE $OUTPUT_FILE_PATH


# Rewrapping original .dcd files and placing copy in output experiment fragment folder path
cd /scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/rep_1
mkdir Prod_204
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/DI-pipeline-tools
TOP_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/step5_assembly.pdb"
TRAJ_FILE="/scratch/PI/rondror/DesRes-Simulations/Downloaded/Gprot_Science2015_Dror_Desres/science2015/DESRES-Trajectory_science2015-22-all/science2015-22-all/science2015-22-all-204.dcd"
OUTPUT_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/rep_1/Prod_204/Prod_204_rewrapped.dcd"
python wrapAlign.py $TOP_FILE $TRAJ_FILE $OUTPUT_FILE

# Stripping water from rewrapped .dcd file and placing output file in same experiment fragment folder path
TRAJ_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/rep_1/Prod_204/Prod_204_rewrapped.dcd"
OUTPUT_FILE_PATH="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/rep_1/Prod_204/Prod_204_rewrapped_strip_waters.dcd"
python stripWaters.py -top $TOP_FILE -traj $TRAJ_FILE $OUTPUT_FILE_PATH


# Rewrapping original .dcd files and placing copy in output experiment fragment folder path
cd /scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/rep_1
mkdir Prod_205
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/DI-pipeline-tools
TOP_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/step5_assembly.pdb"
TRAJ_FILE="/scratch/PI/rondror/DesRes-Simulations/Downloaded/Gprot_Science2015_Dror_Desres/science2015/DESRES-Trajectory_science2015-22-all/science2015-22-all/science2015-22-all-205.dcd"
OUTPUT_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/rep_1/Prod_205/Prod_205_rewrapped.dcd"
python wrapAlign.py $TOP_FILE $TRAJ_FILE $OUTPUT_FILE

# Stripping water from rewrapped .dcd file and placing output file in same experiment fragment folder path
TRAJ_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/rep_1/Prod_205/Prod_205_rewrapped.dcd"
OUTPUT_FILE_PATH="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/rep_1/Prod_205/Prod_205_rewrapped_strip_waters.dcd"
python stripWaters.py -top $TOP_FILE -traj $TRAJ_FILE $OUTPUT_FILE_PATH


# Rewrapping original .dcd files and placing copy in output experiment fragment folder path
cd /scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/rep_1
mkdir Prod_206
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/DI-pipeline-tools
TOP_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/step5_assembly.pdb"
TRAJ_FILE="/scratch/PI/rondror/DesRes-Simulations/Downloaded/Gprot_Science2015_Dror_Desres/science2015/DESRES-Trajectory_science2015-22-all/science2015-22-all/science2015-22-all-206.dcd"
OUTPUT_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/rep_1/Prod_206/Prod_206_rewrapped.dcd"
python wrapAlign.py $TOP_FILE $TRAJ_FILE $OUTPUT_FILE

# Stripping water from rewrapped .dcd file and placing output file in same experiment fragment folder path
TRAJ_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/rep_1/Prod_206/Prod_206_rewrapped.dcd"
OUTPUT_FILE_PATH="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/rep_1/Prod_206/Prod_206_rewrapped_strip_waters.dcd"
python stripWaters.py -top $TOP_FILE -traj $TRAJ_FILE $OUTPUT_FILE_PATH


# Rewrapping original .dcd files and placing copy in output experiment fragment folder path
cd /scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/rep_1
mkdir Prod_207
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/DI-pipeline-tools
TOP_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/step5_assembly.pdb"
TRAJ_FILE="/scratch/PI/rondror/DesRes-Simulations/Downloaded/Gprot_Science2015_Dror_Desres/science2015/DESRES-Trajectory_science2015-22-all/science2015-22-all/science2015-22-all-207.dcd"
OUTPUT_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/rep_1/Prod_207/Prod_207_rewrapped.dcd"
python wrapAlign.py $TOP_FILE $TRAJ_FILE $OUTPUT_FILE

# Stripping water from rewrapped .dcd file and placing output file in same experiment fragment folder path
TRAJ_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/rep_1/Prod_207/Prod_207_rewrapped.dcd"
OUTPUT_FILE_PATH="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/rep_1/Prod_207/Prod_207_rewrapped_strip_waters.dcd"
python stripWaters.py -top $TOP_FILE -traj $TRAJ_FILE $OUTPUT_FILE_PATH


# Rewrapping original .dcd files and placing copy in output experiment fragment folder path
cd /scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/rep_1
mkdir Prod_208
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/DI-pipeline-tools
TOP_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/step5_assembly.pdb"
TRAJ_FILE="/scratch/PI/rondror/DesRes-Simulations/Downloaded/Gprot_Science2015_Dror_Desres/science2015/DESRES-Trajectory_science2015-22-all/science2015-22-all/science2015-22-all-208.dcd"
OUTPUT_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/rep_1/Prod_208/Prod_208_rewrapped.dcd"
python wrapAlign.py $TOP_FILE $TRAJ_FILE $OUTPUT_FILE

# Stripping water from rewrapped .dcd file and placing output file in same experiment fragment folder path
TRAJ_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/rep_1/Prod_208/Prod_208_rewrapped.dcd"
OUTPUT_FILE_PATH="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/rep_1/Prod_208/Prod_208_rewrapped_strip_waters.dcd"
python stripWaters.py -top $TOP_FILE -traj $TRAJ_FILE $OUTPUT_FILE_PATH


# Rewrapping original .dcd files and placing copy in output experiment fragment folder path
cd /scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/rep_1
mkdir Prod_209
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/DI-pipeline-tools
TOP_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/step5_assembly.pdb"
TRAJ_FILE="/scratch/PI/rondror/DesRes-Simulations/Downloaded/Gprot_Science2015_Dror_Desres/science2015/DESRES-Trajectory_science2015-22-all/science2015-22-all/science2015-22-all-209.dcd"
OUTPUT_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/rep_1/Prod_209/Prod_209_rewrapped.dcd"
python wrapAlign.py $TOP_FILE $TRAJ_FILE $OUTPUT_FILE

# Stripping water from rewrapped .dcd file and placing output file in same experiment fragment folder path
TRAJ_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/rep_1/Prod_209/Prod_209_rewrapped.dcd"
OUTPUT_FILE_PATH="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/rep_1/Prod_209/Prod_209_rewrapped_strip_waters.dcd"
python stripWaters.py -top $TOP_FILE -traj $TRAJ_FILE $OUTPUT_FILE_PATH


# Rewrapping original .dcd files and placing copy in output experiment fragment folder path
cd /scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/rep_1
mkdir Prod_210
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/DI-pipeline-tools
TOP_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/step5_assembly.pdb"
TRAJ_FILE="/scratch/PI/rondror/DesRes-Simulations/Downloaded/Gprot_Science2015_Dror_Desres/science2015/DESRES-Trajectory_science2015-22-all/science2015-22-all/science2015-22-all-210.dcd"
OUTPUT_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/rep_1/Prod_210/Prod_210_rewrapped.dcd"
python wrapAlign.py $TOP_FILE $TRAJ_FILE $OUTPUT_FILE

# Stripping water from rewrapped .dcd file and placing output file in same experiment fragment folder path
TRAJ_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/rep_1/Prod_210/Prod_210_rewrapped.dcd"
OUTPUT_FILE_PATH="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/rep_1/Prod_210/Prod_210_rewrapped_strip_waters.dcd"
python stripWaters.py -top $TOP_FILE -traj $TRAJ_FILE $OUTPUT_FILE_PATH


# Rewrapping original .dcd files and placing copy in output experiment fragment folder path
cd /scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/rep_1
mkdir Prod_211
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/DI-pipeline-tools
TOP_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/step5_assembly.pdb"
TRAJ_FILE="/scratch/PI/rondror/DesRes-Simulations/Downloaded/Gprot_Science2015_Dror_Desres/science2015/DESRES-Trajectory_science2015-22-all/science2015-22-all/science2015-22-all-211.dcd"
OUTPUT_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/rep_1/Prod_211/Prod_211_rewrapped.dcd"
python wrapAlign.py $TOP_FILE $TRAJ_FILE $OUTPUT_FILE

# Stripping water from rewrapped .dcd file and placing output file in same experiment fragment folder path
TRAJ_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/rep_1/Prod_211/Prod_211_rewrapped.dcd"
OUTPUT_FILE_PATH="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/rep_1/Prod_211/Prod_211_rewrapped_strip_waters.dcd"
python stripWaters.py -top $TOP_FILE -traj $TRAJ_FILE $OUTPUT_FILE_PATH


# Rewrapping original .dcd files and placing copy in output experiment fragment folder path
cd /scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/rep_1
mkdir Prod_212
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/DI-pipeline-tools
TOP_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/step5_assembly.pdb"
TRAJ_FILE="/scratch/PI/rondror/DesRes-Simulations/Downloaded/Gprot_Science2015_Dror_Desres/science2015/DESRES-Trajectory_science2015-22-all/science2015-22-all/science2015-22-all-212.dcd"
OUTPUT_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/rep_1/Prod_212/Prod_212_rewrapped.dcd"
python wrapAlign.py $TOP_FILE $TRAJ_FILE $OUTPUT_FILE

# Stripping water from rewrapped .dcd file and placing output file in same experiment fragment folder path
TRAJ_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/rep_1/Prod_212/Prod_212_rewrapped.dcd"
OUTPUT_FILE_PATH="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/rep_1/Prod_212/Prod_212_rewrapped_strip_waters.dcd"
python stripWaters.py -top $TOP_FILE -traj $TRAJ_FILE $OUTPUT_FILE_PATH


# Rewrapping original .dcd files and placing copy in output experiment fragment folder path
cd /scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/rep_1
mkdir Prod_213
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/DI-pipeline-tools
TOP_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/step5_assembly.pdb"
TRAJ_FILE="/scratch/PI/rondror/DesRes-Simulations/Downloaded/Gprot_Science2015_Dror_Desres/science2015/DESRES-Trajectory_science2015-22-all/science2015-22-all/science2015-22-all-213.dcd"
OUTPUT_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/rep_1/Prod_213/Prod_213_rewrapped.dcd"
python wrapAlign.py $TOP_FILE $TRAJ_FILE $OUTPUT_FILE

# Stripping water from rewrapped .dcd file and placing output file in same experiment fragment folder path
TRAJ_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/rep_1/Prod_213/Prod_213_rewrapped.dcd"
OUTPUT_FILE_PATH="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/rep_1/Prod_213/Prod_213_rewrapped_strip_waters.dcd"
python stripWaters.py -top $TOP_FILE -traj $TRAJ_FILE $OUTPUT_FILE_PATH


# Rewrapping original .dcd files and placing copy in output experiment fragment folder path
cd /scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/rep_1
mkdir Prod_214
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/DI-pipeline-tools
TOP_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/step5_assembly.pdb"
TRAJ_FILE="/scratch/PI/rondror/DesRes-Simulations/Downloaded/Gprot_Science2015_Dror_Desres/science2015/DESRES-Trajectory_science2015-22-all/science2015-22-all/science2015-22-all-214.dcd"
OUTPUT_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/rep_1/Prod_214/Prod_214_rewrapped.dcd"
python wrapAlign.py $TOP_FILE $TRAJ_FILE $OUTPUT_FILE

# Stripping water from rewrapped .dcd file and placing output file in same experiment fragment folder path
TRAJ_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/rep_1/Prod_214/Prod_214_rewrapped.dcd"
OUTPUT_FILE_PATH="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/rep_1/Prod_214/Prod_214_rewrapped_strip_waters.dcd"
python stripWaters.py -top $TOP_FILE -traj $TRAJ_FILE $OUTPUT_FILE_PATH


# Rewrapping original .dcd files and placing copy in output experiment fragment folder path
cd /scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/rep_1
mkdir Prod_215
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/DI-pipeline-tools
TOP_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/step5_assembly.pdb"
TRAJ_FILE="/scratch/PI/rondror/DesRes-Simulations/Downloaded/Gprot_Science2015_Dror_Desres/science2015/DESRES-Trajectory_science2015-22-all/science2015-22-all/science2015-22-all-215.dcd"
OUTPUT_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/rep_1/Prod_215/Prod_215_rewrapped.dcd"
python wrapAlign.py $TOP_FILE $TRAJ_FILE $OUTPUT_FILE

# Stripping water from rewrapped .dcd file and placing output file in same experiment fragment folder path
TRAJ_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/rep_1/Prod_215/Prod_215_rewrapped.dcd"
OUTPUT_FILE_PATH="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/rep_1/Prod_215/Prod_215_rewrapped_strip_waters.dcd"
python stripWaters.py -top $TOP_FILE -traj $TRAJ_FILE $OUTPUT_FILE_PATH


# Rewrapping original .dcd files and placing copy in output experiment fragment folder path
cd /scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/rep_1
mkdir Prod_216
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/DI-pipeline-tools
TOP_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/step5_assembly.pdb"
TRAJ_FILE="/scratch/PI/rondror/DesRes-Simulations/Downloaded/Gprot_Science2015_Dror_Desres/science2015/DESRES-Trajectory_science2015-22-all/science2015-22-all/science2015-22-all-216.dcd"
OUTPUT_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/rep_1/Prod_216/Prod_216_rewrapped.dcd"
python wrapAlign.py $TOP_FILE $TRAJ_FILE $OUTPUT_FILE

# Stripping water from rewrapped .dcd file and placing output file in same experiment fragment folder path
TRAJ_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/rep_1/Prod_216/Prod_216_rewrapped.dcd"
OUTPUT_FILE_PATH="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/rep_1/Prod_216/Prod_216_rewrapped_strip_waters.dcd"
python stripWaters.py -top $TOP_FILE -traj $TRAJ_FILE $OUTPUT_FILE_PATH


# Rewrapping original .dcd files and placing copy in output experiment fragment folder path
cd /scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/rep_1
mkdir Prod_217
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/DI-pipeline-tools
TOP_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/step5_assembly.pdb"
TRAJ_FILE="/scratch/PI/rondror/DesRes-Simulations/Downloaded/Gprot_Science2015_Dror_Desres/science2015/DESRES-Trajectory_science2015-22-all/science2015-22-all/science2015-22-all-217.dcd"
OUTPUT_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/rep_1/Prod_217/Prod_217_rewrapped.dcd"
python wrapAlign.py $TOP_FILE $TRAJ_FILE $OUTPUT_FILE

# Stripping water from rewrapped .dcd file and placing output file in same experiment fragment folder path
TRAJ_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/rep_1/Prod_217/Prod_217_rewrapped.dcd"
OUTPUT_FILE_PATH="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/rep_1/Prod_217/Prod_217_rewrapped_strip_waters.dcd"
python stripWaters.py -top $TOP_FILE -traj $TRAJ_FILE $OUTPUT_FILE_PATH


# Rewrapping original .dcd files and placing copy in output experiment fragment folder path
cd /scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/rep_1
mkdir Prod_218
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/DI-pipeline-tools
TOP_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/step5_assembly.pdb"
TRAJ_FILE="/scratch/PI/rondror/DesRes-Simulations/Downloaded/Gprot_Science2015_Dror_Desres/science2015/DESRES-Trajectory_science2015-22-all/science2015-22-all/science2015-22-all-218.dcd"
OUTPUT_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/rep_1/Prod_218/Prod_218_rewrapped.dcd"
python wrapAlign.py $TOP_FILE $TRAJ_FILE $OUTPUT_FILE

# Stripping water from rewrapped .dcd file and placing output file in same experiment fragment folder path
TRAJ_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/rep_1/Prod_218/Prod_218_rewrapped.dcd"
OUTPUT_FILE_PATH="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/rep_1/Prod_218/Prod_218_rewrapped_strip_waters.dcd"
python stripWaters.py -top $TOP_FILE -traj $TRAJ_FILE $OUTPUT_FILE_PATH


# Rewrapping original .dcd files and placing copy in output experiment fragment folder path
cd /scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/rep_1
mkdir Prod_219
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/DI-pipeline-tools
TOP_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/step5_assembly.pdb"
TRAJ_FILE="/scratch/PI/rondror/DesRes-Simulations/Downloaded/Gprot_Science2015_Dror_Desres/science2015/DESRES-Trajectory_science2015-22-all/science2015-22-all/science2015-22-all-219.dcd"
OUTPUT_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/rep_1/Prod_219/Prod_219_rewrapped.dcd"
python wrapAlign.py $TOP_FILE $TRAJ_FILE $OUTPUT_FILE

# Stripping water from rewrapped .dcd file and placing output file in same experiment fragment folder path
TRAJ_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/rep_1/Prod_219/Prod_219_rewrapped.dcd"
OUTPUT_FILE_PATH="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/rep_1/Prod_219/Prod_219_rewrapped_strip_waters.dcd"
python stripWaters.py -top $TOP_FILE -traj $TRAJ_FILE $OUTPUT_FILE_PATH


# Rewrapping original .dcd files and placing copy in output experiment fragment folder path
cd /scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/rep_1
mkdir Prod_220
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/DI-pipeline-tools
TOP_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/step5_assembly.pdb"
TRAJ_FILE="/scratch/PI/rondror/DesRes-Simulations/Downloaded/Gprot_Science2015_Dror_Desres/science2015/DESRES-Trajectory_science2015-22-all/science2015-22-all/science2015-22-all-220.dcd"
OUTPUT_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/rep_1/Prod_220/Prod_220_rewrapped.dcd"
python wrapAlign.py $TOP_FILE $TRAJ_FILE $OUTPUT_FILE

# Stripping water from rewrapped .dcd file and placing output file in same experiment fragment folder path
TRAJ_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/rep_1/Prod_220/Prod_220_rewrapped.dcd"
OUTPUT_FILE_PATH="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/rep_1/Prod_220/Prod_220_rewrapped_strip_waters.dcd"
python stripWaters.py -top $TOP_FILE -traj $TRAJ_FILE $OUTPUT_FILE_PATH


# Rewrapping original .dcd files and placing copy in output experiment fragment folder path
cd /scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/rep_1
mkdir Prod_221
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/DI-pipeline-tools
TOP_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/step5_assembly.pdb"
TRAJ_FILE="/scratch/PI/rondror/DesRes-Simulations/Downloaded/Gprot_Science2015_Dror_Desres/science2015/DESRES-Trajectory_science2015-22-all/science2015-22-all/science2015-22-all-221.dcd"
OUTPUT_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/rep_1/Prod_221/Prod_221_rewrapped.dcd"
python wrapAlign.py $TOP_FILE $TRAJ_FILE $OUTPUT_FILE

# Stripping water from rewrapped .dcd file and placing output file in same experiment fragment folder path
TRAJ_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/rep_1/Prod_221/Prod_221_rewrapped.dcd"
OUTPUT_FILE_PATH="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/rep_1/Prod_221/Prod_221_rewrapped_strip_waters.dcd"
python stripWaters.py -top $TOP_FILE -traj $TRAJ_FILE $OUTPUT_FILE_PATH


# Rewrapping original .dcd files and placing copy in output experiment fragment folder path
cd /scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/rep_1
mkdir Prod_222
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/DI-pipeline-tools
TOP_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/step5_assembly.pdb"
TRAJ_FILE="/scratch/PI/rondror/DesRes-Simulations/Downloaded/Gprot_Science2015_Dror_Desres/science2015/DESRES-Trajectory_science2015-22-all/science2015-22-all/science2015-22-all-222.dcd"
OUTPUT_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/rep_1/Prod_222/Prod_222_rewrapped.dcd"
python wrapAlign.py $TOP_FILE $TRAJ_FILE $OUTPUT_FILE

# Stripping water from rewrapped .dcd file and placing output file in same experiment fragment folder path
TRAJ_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/rep_1/Prod_222/Prod_222_rewrapped.dcd"
OUTPUT_FILE_PATH="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/rep_1/Prod_222/Prod_222_rewrapped_strip_waters.dcd"
python stripWaters.py -top $TOP_FILE -traj $TRAJ_FILE $OUTPUT_FILE_PATH


# Rewrapping original .dcd files and placing copy in output experiment fragment folder path
cd /scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/rep_1
mkdir Prod_223
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/DI-pipeline-tools
TOP_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/step5_assembly.pdb"
TRAJ_FILE="/scratch/PI/rondror/DesRes-Simulations/Downloaded/Gprot_Science2015_Dror_Desres/science2015/DESRES-Trajectory_science2015-22-all/science2015-22-all/science2015-22-all-223.dcd"
OUTPUT_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/rep_1/Prod_223/Prod_223_rewrapped.dcd"
python wrapAlign.py $TOP_FILE $TRAJ_FILE $OUTPUT_FILE

# Stripping water from rewrapped .dcd file and placing output file in same experiment fragment folder path
TRAJ_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/rep_1/Prod_223/Prod_223_rewrapped.dcd"
OUTPUT_FILE_PATH="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/rep_1/Prod_223/Prod_223_rewrapped_strip_waters.dcd"
python stripWaters.py -top $TOP_FILE -traj $TRAJ_FILE $OUTPUT_FILE_PATH


# Rewrapping original .dcd files and placing copy in output experiment fragment folder path
cd /scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/rep_1
mkdir Prod_224
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/DI-pipeline-tools
TOP_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/step5_assembly.pdb"
TRAJ_FILE="/scratch/PI/rondror/DesRes-Simulations/Downloaded/Gprot_Science2015_Dror_Desres/science2015/DESRES-Trajectory_science2015-22-all/science2015-22-all/science2015-22-all-224.dcd"
OUTPUT_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/rep_1/Prod_224/Prod_224_rewrapped.dcd"
python wrapAlign.py $TOP_FILE $TRAJ_FILE $OUTPUT_FILE

# Stripping water from rewrapped .dcd file and placing output file in same experiment fragment folder path
TRAJ_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/rep_1/Prod_224/Prod_224_rewrapped.dcd"
OUTPUT_FILE_PATH="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/rep_1/Prod_224/Prod_224_rewrapped_strip_waters.dcd"
python stripWaters.py -top $TOP_FILE -traj $TRAJ_FILE $OUTPUT_FILE_PATH


# Rewrapping original .dcd files and placing copy in output experiment fragment folder path
cd /scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/rep_1
mkdir Prod_225
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/DI-pipeline-tools
TOP_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/step5_assembly.pdb"
TRAJ_FILE="/scratch/PI/rondror/DesRes-Simulations/Downloaded/Gprot_Science2015_Dror_Desres/science2015/DESRES-Trajectory_science2015-22-all/science2015-22-all/science2015-22-all-225.dcd"
OUTPUT_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/rep_1/Prod_225/Prod_225_rewrapped.dcd"
python wrapAlign.py $TOP_FILE $TRAJ_FILE $OUTPUT_FILE

# Stripping water from rewrapped .dcd file and placing output file in same experiment fragment folder path
TRAJ_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/rep_1/Prod_225/Prod_225_rewrapped.dcd"
OUTPUT_FILE_PATH="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/rep_1/Prod_225/Prod_225_rewrapped_strip_waters.dcd"
python stripWaters.py -top $TOP_FILE -traj $TRAJ_FILE $OUTPUT_FILE_PATH


# Rewrapping original .dcd files and placing copy in output experiment fragment folder path
cd /scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/rep_1
mkdir Prod_226
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/DI-pipeline-tools
TOP_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/step5_assembly.pdb"
TRAJ_FILE="/scratch/PI/rondror/DesRes-Simulations/Downloaded/Gprot_Science2015_Dror_Desres/science2015/DESRES-Trajectory_science2015-22-all/science2015-22-all/science2015-22-all-226.dcd"
OUTPUT_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/rep_1/Prod_226/Prod_226_rewrapped.dcd"
python wrapAlign.py $TOP_FILE $TRAJ_FILE $OUTPUT_FILE

# Stripping water from rewrapped .dcd file and placing output file in same experiment fragment folder path
TRAJ_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/rep_1/Prod_226/Prod_226_rewrapped.dcd"
OUTPUT_FILE_PATH="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/rep_1/Prod_226/Prod_226_rewrapped_strip_waters.dcd"
python stripWaters.py -top $TOP_FILE -traj $TRAJ_FILE $OUTPUT_FILE_PATH


# Rewrapping original .dcd files and placing copy in output experiment fragment folder path
cd /scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/rep_1
mkdir Prod_227
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/DI-pipeline-tools
TOP_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/step5_assembly.pdb"
TRAJ_FILE="/scratch/PI/rondror/DesRes-Simulations/Downloaded/Gprot_Science2015_Dror_Desres/science2015/DESRES-Trajectory_science2015-22-all/science2015-22-all/science2015-22-all-227.dcd"
OUTPUT_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/rep_1/Prod_227/Prod_227_rewrapped.dcd"
python wrapAlign.py $TOP_FILE $TRAJ_FILE $OUTPUT_FILE

# Stripping water from rewrapped .dcd file and placing output file in same experiment fragment folder path
TRAJ_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/rep_1/Prod_227/Prod_227_rewrapped.dcd"
OUTPUT_FILE_PATH="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/rep_1/Prod_227/Prod_227_rewrapped_strip_waters.dcd"
python stripWaters.py -top $TOP_FILE -traj $TRAJ_FILE $OUTPUT_FILE_PATH


# Rewrapping original .dcd files and placing copy in output experiment fragment folder path
cd /scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/rep_1
mkdir Prod_228
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/DI-pipeline-tools
TOP_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/step5_assembly.pdb"
TRAJ_FILE="/scratch/PI/rondror/DesRes-Simulations/Downloaded/Gprot_Science2015_Dror_Desres/science2015/DESRES-Trajectory_science2015-22-all/science2015-22-all/science2015-22-all-228.dcd"
OUTPUT_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/rep_1/Prod_228/Prod_228_rewrapped.dcd"
python wrapAlign.py $TOP_FILE $TRAJ_FILE $OUTPUT_FILE

# Stripping water from rewrapped .dcd file and placing output file in same experiment fragment folder path
TRAJ_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/rep_1/Prod_228/Prod_228_rewrapped.dcd"
OUTPUT_FILE_PATH="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/rep_1/Prod_228/Prod_228_rewrapped_strip_waters.dcd"
python stripWaters.py -top $TOP_FILE -traj $TRAJ_FILE $OUTPUT_FILE_PATH


# Rewrapping original .dcd files and placing copy in output experiment fragment folder path
cd /scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/rep_1
mkdir Prod_229
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/DI-pipeline-tools
TOP_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/step5_assembly.pdb"
TRAJ_FILE="/scratch/PI/rondror/DesRes-Simulations/Downloaded/Gprot_Science2015_Dror_Desres/science2015/DESRES-Trajectory_science2015-22-all/science2015-22-all/science2015-22-all-229.dcd"
OUTPUT_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/rep_1/Prod_229/Prod_229_rewrapped.dcd"
python wrapAlign.py $TOP_FILE $TRAJ_FILE $OUTPUT_FILE

# Stripping water from rewrapped .dcd file and placing output file in same experiment fragment folder path
TRAJ_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/rep_1/Prod_229/Prod_229_rewrapped.dcd"
OUTPUT_FILE_PATH="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/rep_1/Prod_229/Prod_229_rewrapped_strip_waters.dcd"
python stripWaters.py -top $TOP_FILE -traj $TRAJ_FILE $OUTPUT_FILE_PATH


# Rewrapping original .dcd files and placing copy in output experiment fragment folder path
cd /scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/rep_1
mkdir Prod_230
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/DI-pipeline-tools
TOP_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/step5_assembly.pdb"
TRAJ_FILE="/scratch/PI/rondror/DesRes-Simulations/Downloaded/Gprot_Science2015_Dror_Desres/science2015/DESRES-Trajectory_science2015-22-all/science2015-22-all/science2015-22-all-230.dcd"
OUTPUT_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/rep_1/Prod_230/Prod_230_rewrapped.dcd"
python wrapAlign.py $TOP_FILE $TRAJ_FILE $OUTPUT_FILE

# Stripping water from rewrapped .dcd file and placing output file in same experiment fragment folder path
TRAJ_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/rep_1/Prod_230/Prod_230_rewrapped.dcd"
OUTPUT_FILE_PATH="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/rep_1/Prod_230/Prod_230_rewrapped_strip_waters.dcd"
python stripWaters.py -top $TOP_FILE -traj $TRAJ_FILE $OUTPUT_FILE_PATH


# Rewrapping original .dcd files and placing copy in output experiment fragment folder path
cd /scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/rep_1
mkdir Prod_231
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/DI-pipeline-tools
TOP_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/step5_assembly.pdb"
TRAJ_FILE="/scratch/PI/rondror/DesRes-Simulations/Downloaded/Gprot_Science2015_Dror_Desres/science2015/DESRES-Trajectory_science2015-22-all/science2015-22-all/science2015-22-all-231.dcd"
OUTPUT_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/rep_1/Prod_231/Prod_231_rewrapped.dcd"
python wrapAlign.py $TOP_FILE $TRAJ_FILE $OUTPUT_FILE

# Stripping water from rewrapped .dcd file and placing output file in same experiment fragment folder path
TRAJ_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/rep_1/Prod_231/Prod_231_rewrapped.dcd"
OUTPUT_FILE_PATH="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/rep_1/Prod_231/Prod_231_rewrapped_strip_waters.dcd"
python stripWaters.py -top $TOP_FILE -traj $TRAJ_FILE $OUTPUT_FILE_PATH


# Rewrapping original .dcd files and placing copy in output experiment fragment folder path
cd /scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/rep_1
mkdir Prod_232
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/DI-pipeline-tools
TOP_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/step5_assembly.pdb"
TRAJ_FILE="/scratch/PI/rondror/DesRes-Simulations/Downloaded/Gprot_Science2015_Dror_Desres/science2015/DESRES-Trajectory_science2015-22-all/science2015-22-all/science2015-22-all-232.dcd"
OUTPUT_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/rep_1/Prod_232/Prod_232_rewrapped.dcd"
python wrapAlign.py $TOP_FILE $TRAJ_FILE $OUTPUT_FILE

# Stripping water from rewrapped .dcd file and placing output file in same experiment fragment folder path
TRAJ_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/rep_1/Prod_232/Prod_232_rewrapped.dcd"
OUTPUT_FILE_PATH="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/rep_1/Prod_232/Prod_232_rewrapped_strip_waters.dcd"
python stripWaters.py -top $TOP_FILE -traj $TRAJ_FILE $OUTPUT_FILE_PATH


# Rewrapping original .dcd files and placing copy in output experiment fragment folder path
cd /scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/rep_1
mkdir Prod_233
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/DI-pipeline-tools
TOP_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/step5_assembly.pdb"
TRAJ_FILE="/scratch/PI/rondror/DesRes-Simulations/Downloaded/Gprot_Science2015_Dror_Desres/science2015/DESRES-Trajectory_science2015-22-all/science2015-22-all/science2015-22-all-233.dcd"
OUTPUT_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/rep_1/Prod_233/Prod_233_rewrapped.dcd"
python wrapAlign.py $TOP_FILE $TRAJ_FILE $OUTPUT_FILE

# Stripping water from rewrapped .dcd file and placing output file in same experiment fragment folder path
TRAJ_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/rep_1/Prod_233/Prod_233_rewrapped.dcd"
OUTPUT_FILE_PATH="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/rep_1/Prod_233/Prod_233_rewrapped_strip_waters.dcd"
python stripWaters.py -top $TOP_FILE -traj $TRAJ_FILE $OUTPUT_FILE_PATH


# Rewrapping original .dcd files and placing copy in output experiment fragment folder path
cd /scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/rep_1
mkdir Prod_234
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/DI-pipeline-tools
TOP_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/step5_assembly.pdb"
TRAJ_FILE="/scratch/PI/rondror/DesRes-Simulations/Downloaded/Gprot_Science2015_Dror_Desres/science2015/DESRES-Trajectory_science2015-22-all/science2015-22-all/science2015-22-all-234.dcd"
OUTPUT_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/rep_1/Prod_234/Prod_234_rewrapped.dcd"
python wrapAlign.py $TOP_FILE $TRAJ_FILE $OUTPUT_FILE

# Stripping water from rewrapped .dcd file and placing output file in same experiment fragment folder path
TRAJ_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/rep_1/Prod_234/Prod_234_rewrapped.dcd"
OUTPUT_FILE_PATH="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/rep_1/Prod_234/Prod_234_rewrapped_strip_waters.dcd"
python stripWaters.py -top $TOP_FILE -traj $TRAJ_FILE $OUTPUT_FILE_PATH


# Rewrapping original .dcd files and placing copy in output experiment fragment folder path
cd /scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/rep_1
mkdir Prod_235
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/DI-pipeline-tools
TOP_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/step5_assembly.pdb"
TRAJ_FILE="/scratch/PI/rondror/DesRes-Simulations/Downloaded/Gprot_Science2015_Dror_Desres/science2015/DESRES-Trajectory_science2015-22-all/science2015-22-all/science2015-22-all-235.dcd"
OUTPUT_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/rep_1/Prod_235/Prod_235_rewrapped.dcd"
python wrapAlign.py $TOP_FILE $TRAJ_FILE $OUTPUT_FILE

# Stripping water from rewrapped .dcd file and placing output file in same experiment fragment folder path
TRAJ_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/rep_1/Prod_235/Prod_235_rewrapped.dcd"
OUTPUT_FILE_PATH="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/rep_1/Prod_235/Prod_235_rewrapped_strip_waters.dcd"
python stripWaters.py -top $TOP_FILE -traj $TRAJ_FILE $OUTPUT_FILE_PATH


# Rewrapping original .dcd files and placing copy in output experiment fragment folder path
cd /scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/rep_1
mkdir Prod_236
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/DI-pipeline-tools
TOP_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/step5_assembly.pdb"
TRAJ_FILE="/scratch/PI/rondror/DesRes-Simulations/Downloaded/Gprot_Science2015_Dror_Desres/science2015/DESRES-Trajectory_science2015-22-all/science2015-22-all/science2015-22-all-236.dcd"
OUTPUT_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/rep_1/Prod_236/Prod_236_rewrapped.dcd"
python wrapAlign.py $TOP_FILE $TRAJ_FILE $OUTPUT_FILE

# Stripping water from rewrapped .dcd file and placing output file in same experiment fragment folder path
TRAJ_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/rep_1/Prod_236/Prod_236_rewrapped.dcd"
OUTPUT_FILE_PATH="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/rep_1/Prod_236/Prod_236_rewrapped_strip_waters.dcd"
python stripWaters.py -top $TOP_FILE -traj $TRAJ_FILE $OUTPUT_FILE_PATH


# Rewrapping original .dcd files and placing copy in output experiment fragment folder path
cd /scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/rep_1
mkdir Prod_237
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/DI-pipeline-tools
TOP_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/step5_assembly.pdb"
TRAJ_FILE="/scratch/PI/rondror/DesRes-Simulations/Downloaded/Gprot_Science2015_Dror_Desres/science2015/DESRES-Trajectory_science2015-22-all/science2015-22-all/science2015-22-all-237.dcd"
OUTPUT_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/rep_1/Prod_237/Prod_237_rewrapped.dcd"
python wrapAlign.py $TOP_FILE $TRAJ_FILE $OUTPUT_FILE

# Stripping water from rewrapped .dcd file and placing output file in same experiment fragment folder path
TRAJ_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/rep_1/Prod_237/Prod_237_rewrapped.dcd"
OUTPUT_FILE_PATH="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/rep_1/Prod_237/Prod_237_rewrapped_strip_waters.dcd"
python stripWaters.py -top $TOP_FILE -traj $TRAJ_FILE $OUTPUT_FILE_PATH


# Rewrapping original .dcd files and placing copy in output experiment fragment folder path
cd /scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/rep_1
mkdir Prod_238
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/DI-pipeline-tools
TOP_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/step5_assembly.pdb"
TRAJ_FILE="/scratch/PI/rondror/DesRes-Simulations/Downloaded/Gprot_Science2015_Dror_Desres/science2015/DESRES-Trajectory_science2015-22-all/science2015-22-all/science2015-22-all-238.dcd"
OUTPUT_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/rep_1/Prod_238/Prod_238_rewrapped.dcd"
python wrapAlign.py $TOP_FILE $TRAJ_FILE $OUTPUT_FILE

# Stripping water from rewrapped .dcd file and placing output file in same experiment fragment folder path
TRAJ_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/rep_1/Prod_238/Prod_238_rewrapped.dcd"
OUTPUT_FILE_PATH="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/rep_1/Prod_238/Prod_238_rewrapped_strip_waters.dcd"
python stripWaters.py -top $TOP_FILE -traj $TRAJ_FILE $OUTPUT_FILE_PATH


# Rewrapping original .dcd files and placing copy in output experiment fragment folder path
cd /scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/rep_1
mkdir Prod_239
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/DI-pipeline-tools
TOP_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/step5_assembly.pdb"
TRAJ_FILE="/scratch/PI/rondror/DesRes-Simulations/Downloaded/Gprot_Science2015_Dror_Desres/science2015/DESRES-Trajectory_science2015-22-all/science2015-22-all/science2015-22-all-239.dcd"
OUTPUT_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/rep_1/Prod_239/Prod_239_rewrapped.dcd"
python wrapAlign.py $TOP_FILE $TRAJ_FILE $OUTPUT_FILE

# Stripping water from rewrapped .dcd file and placing output file in same experiment fragment folder path
TRAJ_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/rep_1/Prod_239/Prod_239_rewrapped.dcd"
OUTPUT_FILE_PATH="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/rep_1/Prod_239/Prod_239_rewrapped_strip_waters.dcd"
python stripWaters.py -top $TOP_FILE -traj $TRAJ_FILE $OUTPUT_FILE_PATH


# Rewrapping original .dcd files and placing copy in output experiment fragment folder path
cd /scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/rep_1
mkdir Prod_240
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/DI-pipeline-tools
TOP_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/step5_assembly.pdb"
TRAJ_FILE="/scratch/PI/rondror/DesRes-Simulations/Downloaded/Gprot_Science2015_Dror_Desres/science2015/DESRES-Trajectory_science2015-22-all/science2015-22-all/science2015-22-all-240.dcd"
OUTPUT_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/rep_1/Prod_240/Prod_240_rewrapped.dcd"
python wrapAlign.py $TOP_FILE $TRAJ_FILE $OUTPUT_FILE

# Stripping water from rewrapped .dcd file and placing output file in same experiment fragment folder path
TRAJ_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/rep_1/Prod_240/Prod_240_rewrapped.dcd"
OUTPUT_FILE_PATH="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/rep_1/Prod_240/Prod_240_rewrapped_strip_waters.dcd"
python stripWaters.py -top $TOP_FILE -traj $TRAJ_FILE $OUTPUT_FILE_PATH


# Rewrapping original .dcd files and placing copy in output experiment fragment folder path
cd /scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/rep_1
mkdir Prod_241
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/DI-pipeline-tools
TOP_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/step5_assembly.pdb"
TRAJ_FILE="/scratch/PI/rondror/DesRes-Simulations/Downloaded/Gprot_Science2015_Dror_Desres/science2015/DESRES-Trajectory_science2015-22-all/science2015-22-all/science2015-22-all-241.dcd"
OUTPUT_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/rep_1/Prod_241/Prod_241_rewrapped.dcd"
python wrapAlign.py $TOP_FILE $TRAJ_FILE $OUTPUT_FILE

# Stripping water from rewrapped .dcd file and placing output file in same experiment fragment folder path
TRAJ_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/rep_1/Prod_241/Prod_241_rewrapped.dcd"
OUTPUT_FILE_PATH="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/rep_1/Prod_241/Prod_241_rewrapped_strip_waters.dcd"
python stripWaters.py -top $TOP_FILE -traj $TRAJ_FILE $OUTPUT_FILE_PATH


# Rewrapping original .dcd files and placing copy in output experiment fragment folder path
cd /scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/rep_1
mkdir Prod_242
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/DI-pipeline-tools
TOP_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/step5_assembly.pdb"
TRAJ_FILE="/scratch/PI/rondror/DesRes-Simulations/Downloaded/Gprot_Science2015_Dror_Desres/science2015/DESRES-Trajectory_science2015-22-all/science2015-22-all/science2015-22-all-242.dcd"
OUTPUT_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/rep_1/Prod_242/Prod_242_rewrapped.dcd"
python wrapAlign.py $TOP_FILE $TRAJ_FILE $OUTPUT_FILE

# Stripping water from rewrapped .dcd file and placing output file in same experiment fragment folder path
TRAJ_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/rep_1/Prod_242/Prod_242_rewrapped.dcd"
OUTPUT_FILE_PATH="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/rep_1/Prod_242/Prod_242_rewrapped_strip_waters.dcd"
python stripWaters.py -top $TOP_FILE -traj $TRAJ_FILE $OUTPUT_FILE_PATH


# Rewrapping original .dcd files and placing copy in output experiment fragment folder path
cd /scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/rep_1
mkdir Prod_243
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/DI-pipeline-tools
TOP_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/step5_assembly.pdb"
TRAJ_FILE="/scratch/PI/rondror/DesRes-Simulations/Downloaded/Gprot_Science2015_Dror_Desres/science2015/DESRES-Trajectory_science2015-22-all/science2015-22-all/science2015-22-all-243.dcd"
OUTPUT_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/rep_1/Prod_243/Prod_243_rewrapped.dcd"
python wrapAlign.py $TOP_FILE $TRAJ_FILE $OUTPUT_FILE

# Stripping water from rewrapped .dcd file and placing output file in same experiment fragment folder path
TRAJ_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/rep_1/Prod_243/Prod_243_rewrapped.dcd"
OUTPUT_FILE_PATH="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/rep_1/Prod_243/Prod_243_rewrapped_strip_waters.dcd"
python stripWaters.py -top $TOP_FILE -traj $TRAJ_FILE $OUTPUT_FILE_PATH


# Rewrapping original .dcd files and placing copy in output experiment fragment folder path
cd /scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/rep_1
mkdir Prod_244
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/DI-pipeline-tools
TOP_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/step5_assembly.pdb"
TRAJ_FILE="/scratch/PI/rondror/DesRes-Simulations/Downloaded/Gprot_Science2015_Dror_Desres/science2015/DESRES-Trajectory_science2015-22-all/science2015-22-all/science2015-22-all-244.dcd"
OUTPUT_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/rep_1/Prod_244/Prod_244_rewrapped.dcd"
python wrapAlign.py $TOP_FILE $TRAJ_FILE $OUTPUT_FILE

# Stripping water from rewrapped .dcd file and placing output file in same experiment fragment folder path
TRAJ_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/rep_1/Prod_244/Prod_244_rewrapped.dcd"
OUTPUT_FILE_PATH="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/rep_1/Prod_244/Prod_244_rewrapped_strip_waters.dcd"
python stripWaters.py -top $TOP_FILE -traj $TRAJ_FILE $OUTPUT_FILE_PATH


# Rewrapping original .dcd files and placing copy in output experiment fragment folder path
cd /scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/rep_1
mkdir Prod_245
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/DI-pipeline-tools
TOP_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/step5_assembly.pdb"
TRAJ_FILE="/scratch/PI/rondror/DesRes-Simulations/Downloaded/Gprot_Science2015_Dror_Desres/science2015/DESRES-Trajectory_science2015-22-all/science2015-22-all/science2015-22-all-245.dcd"
OUTPUT_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/rep_1/Prod_245/Prod_245_rewrapped.dcd"
python wrapAlign.py $TOP_FILE $TRAJ_FILE $OUTPUT_FILE

# Stripping water from rewrapped .dcd file and placing output file in same experiment fragment folder path
TRAJ_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/rep_1/Prod_245/Prod_245_rewrapped.dcd"
OUTPUT_FILE_PATH="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/rep_1/Prod_245/Prod_245_rewrapped_strip_waters.dcd"
python stripWaters.py -top $TOP_FILE -traj $TRAJ_FILE $OUTPUT_FILE_PATH


# Rewrapping original .dcd files and placing copy in output experiment fragment folder path
cd /scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/rep_1
mkdir Prod_246
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/DI-pipeline-tools
TOP_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/step5_assembly.pdb"
TRAJ_FILE="/scratch/PI/rondror/DesRes-Simulations/Downloaded/Gprot_Science2015_Dror_Desres/science2015/DESRES-Trajectory_science2015-22-all/science2015-22-all/science2015-22-all-246.dcd"
OUTPUT_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/rep_1/Prod_246/Prod_246_rewrapped.dcd"
python wrapAlign.py $TOP_FILE $TRAJ_FILE $OUTPUT_FILE

# Stripping water from rewrapped .dcd file and placing output file in same experiment fragment folder path
TRAJ_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/rep_1/Prod_246/Prod_246_rewrapped.dcd"
OUTPUT_FILE_PATH="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/rep_1/Prod_246/Prod_246_rewrapped_strip_waters.dcd"
python stripWaters.py -top $TOP_FILE -traj $TRAJ_FILE $OUTPUT_FILE_PATH


# Rewrapping original .dcd files and placing copy in output experiment fragment folder path
cd /scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/rep_1
mkdir Prod_247
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/DI-pipeline-tools
TOP_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/step5_assembly.pdb"
TRAJ_FILE="/scratch/PI/rondror/DesRes-Simulations/Downloaded/Gprot_Science2015_Dror_Desres/science2015/DESRES-Trajectory_science2015-22-all/science2015-22-all/science2015-22-all-247.dcd"
OUTPUT_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/rep_1/Prod_247/Prod_247_rewrapped.dcd"
python wrapAlign.py $TOP_FILE $TRAJ_FILE $OUTPUT_FILE

# Stripping water from rewrapped .dcd file and placing output file in same experiment fragment folder path
TRAJ_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/rep_1/Prod_247/Prod_247_rewrapped.dcd"
OUTPUT_FILE_PATH="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/rep_1/Prod_247/Prod_247_rewrapped_strip_waters.dcd"
python stripWaters.py -top $TOP_FILE -traj $TRAJ_FILE $OUTPUT_FILE_PATH


# Rewrapping original .dcd files and placing copy in output experiment fragment folder path
cd /scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/rep_1
mkdir Prod_248
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/DI-pipeline-tools
TOP_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/step5_assembly.pdb"
TRAJ_FILE="/scratch/PI/rondror/DesRes-Simulations/Downloaded/Gprot_Science2015_Dror_Desres/science2015/DESRES-Trajectory_science2015-22-all/science2015-22-all/science2015-22-all-248.dcd"
OUTPUT_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/rep_1/Prod_248/Prod_248_rewrapped.dcd"
python wrapAlign.py $TOP_FILE $TRAJ_FILE $OUTPUT_FILE

# Stripping water from rewrapped .dcd file and placing output file in same experiment fragment folder path
TRAJ_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/rep_1/Prod_248/Prod_248_rewrapped.dcd"
OUTPUT_FILE_PATH="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/rep_1/Prod_248/Prod_248_rewrapped_strip_waters.dcd"
python stripWaters.py -top $TOP_FILE -traj $TRAJ_FILE $OUTPUT_FILE_PATH


# Rewrapping original .dcd files and placing copy in output experiment fragment folder path
cd /scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/rep_1
mkdir Prod_249
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/DI-pipeline-tools
TOP_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/step5_assembly.pdb"
TRAJ_FILE="/scratch/PI/rondror/DesRes-Simulations/Downloaded/Gprot_Science2015_Dror_Desres/science2015/DESRES-Trajectory_science2015-22-all/science2015-22-all/science2015-22-all-249.dcd"
OUTPUT_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/rep_1/Prod_249/Prod_249_rewrapped.dcd"
python wrapAlign.py $TOP_FILE $TRAJ_FILE $OUTPUT_FILE

# Stripping water from rewrapped .dcd file and placing output file in same experiment fragment folder path
TRAJ_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/rep_1/Prod_249/Prod_249_rewrapped.dcd"
OUTPUT_FILE_PATH="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/rep_1/Prod_249/Prod_249_rewrapped_strip_waters.dcd"
python stripWaters.py -top $TOP_FILE -traj $TRAJ_FILE $OUTPUT_FILE_PATH


# Rewrapping original .dcd files and placing copy in output experiment fragment folder path
cd /scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/rep_1
mkdir Prod_250
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/DI-pipeline-tools
TOP_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/step5_assembly.pdb"
TRAJ_FILE="/scratch/PI/rondror/DesRes-Simulations/Downloaded/Gprot_Science2015_Dror_Desres/science2015/DESRES-Trajectory_science2015-22-all/science2015-22-all/science2015-22-all-250.dcd"
OUTPUT_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/rep_1/Prod_250/Prod_250_rewrapped.dcd"
python wrapAlign.py $TOP_FILE $TRAJ_FILE $OUTPUT_FILE

# Stripping water from rewrapped .dcd file and placing output file in same experiment fragment folder path
TRAJ_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/rep_1/Prod_250/Prod_250_rewrapped.dcd"
OUTPUT_FILE_PATH="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/rep_1/Prod_250/Prod_250_rewrapped_strip_waters.dcd"
python stripWaters.py -top $TOP_FILE -traj $TRAJ_FILE $OUTPUT_FILE_PATH


# Rewrapping original .dcd files and placing copy in output experiment fragment folder path
cd /scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/rep_1
mkdir Prod_251
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/DI-pipeline-tools
TOP_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/step5_assembly.pdb"
TRAJ_FILE="/scratch/PI/rondror/DesRes-Simulations/Downloaded/Gprot_Science2015_Dror_Desres/science2015/DESRES-Trajectory_science2015-22-all/science2015-22-all/science2015-22-all-251.dcd"
OUTPUT_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/rep_1/Prod_251/Prod_251_rewrapped.dcd"
python wrapAlign.py $TOP_FILE $TRAJ_FILE $OUTPUT_FILE

# Stripping water from rewrapped .dcd file and placing output file in same experiment fragment folder path
TRAJ_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/rep_1/Prod_251/Prod_251_rewrapped.dcd"
OUTPUT_FILE_PATH="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/rep_1/Prod_251/Prod_251_rewrapped_strip_waters.dcd"
python stripWaters.py -top $TOP_FILE -traj $TRAJ_FILE $OUTPUT_FILE_PATH


# Rewrapping original .dcd files and placing copy in output experiment fragment folder path
cd /scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/rep_1
mkdir Prod_252
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/DI-pipeline-tools
TOP_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/step5_assembly.pdb"
TRAJ_FILE="/scratch/PI/rondror/DesRes-Simulations/Downloaded/Gprot_Science2015_Dror_Desres/science2015/DESRES-Trajectory_science2015-22-all/science2015-22-all/science2015-22-all-252.dcd"
OUTPUT_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/rep_1/Prod_252/Prod_252_rewrapped.dcd"
python wrapAlign.py $TOP_FILE $TRAJ_FILE $OUTPUT_FILE

# Stripping water from rewrapped .dcd file and placing output file in same experiment fragment folder path
TRAJ_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/rep_1/Prod_252/Prod_252_rewrapped.dcd"
OUTPUT_FILE_PATH="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/rep_1/Prod_252/Prod_252_rewrapped_strip_waters.dcd"
python stripWaters.py -top $TOP_FILE -traj $TRAJ_FILE $OUTPUT_FILE_PATH


# Rewrapping original .dcd files and placing copy in output experiment fragment folder path
cd /scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/rep_1
mkdir Prod_253
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/DI-pipeline-tools
TOP_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/step5_assembly.pdb"
TRAJ_FILE="/scratch/PI/rondror/DesRes-Simulations/Downloaded/Gprot_Science2015_Dror_Desres/science2015/DESRES-Trajectory_science2015-22-all/science2015-22-all/science2015-22-all-253.dcd"
OUTPUT_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/rep_1/Prod_253/Prod_253_rewrapped.dcd"
python wrapAlign.py $TOP_FILE $TRAJ_FILE $OUTPUT_FILE

# Stripping water from rewrapped .dcd file and placing output file in same experiment fragment folder path
TRAJ_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/rep_1/Prod_253/Prod_253_rewrapped.dcd"
OUTPUT_FILE_PATH="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/rep_1/Prod_253/Prod_253_rewrapped_strip_waters.dcd"
python stripWaters.py -top $TOP_FILE -traj $TRAJ_FILE $OUTPUT_FILE_PATH


# Rewrapping original .dcd files and placing copy in output experiment fragment folder path
cd /scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/rep_1
mkdir Prod_254
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/DI-pipeline-tools
TOP_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/step5_assembly.pdb"
TRAJ_FILE="/scratch/PI/rondror/DesRes-Simulations/Downloaded/Gprot_Science2015_Dror_Desres/science2015/DESRES-Trajectory_science2015-22-all/science2015-22-all/science2015-22-all-254.dcd"
OUTPUT_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/rep_1/Prod_254/Prod_254_rewrapped.dcd"
python wrapAlign.py $TOP_FILE $TRAJ_FILE $OUTPUT_FILE

# Stripping water from rewrapped .dcd file and placing output file in same experiment fragment folder path
TRAJ_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/rep_1/Prod_254/Prod_254_rewrapped.dcd"
OUTPUT_FILE_PATH="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/rep_1/Prod_254/Prod_254_rewrapped_strip_waters.dcd"
python stripWaters.py -top $TOP_FILE -traj $TRAJ_FILE $OUTPUT_FILE_PATH


# Rewrapping original .dcd files and placing copy in output experiment fragment folder path
cd /scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/rep_1
mkdir Prod_255
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/DI-pipeline-tools
TOP_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/step5_assembly.pdb"
TRAJ_FILE="/scratch/PI/rondror/DesRes-Simulations/Downloaded/Gprot_Science2015_Dror_Desres/science2015/DESRES-Trajectory_science2015-22-all/science2015-22-all/science2015-22-all-255.dcd"
OUTPUT_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/rep_1/Prod_255/Prod_255_rewrapped.dcd"
python wrapAlign.py $TOP_FILE $TRAJ_FILE $OUTPUT_FILE

# Stripping water from rewrapped .dcd file and placing output file in same experiment fragment folder path
TRAJ_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/rep_1/Prod_255/Prod_255_rewrapped.dcd"
OUTPUT_FILE_PATH="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/rep_1/Prod_255/Prod_255_rewrapped_strip_waters.dcd"
python stripWaters.py -top $TOP_FILE -traj $TRAJ_FILE $OUTPUT_FILE_PATH


# Rewrapping original .dcd files and placing copy in output experiment fragment folder path
cd /scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/rep_1
mkdir Prod_256
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/DI-pipeline-tools
TOP_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/step5_assembly.pdb"
TRAJ_FILE="/scratch/PI/rondror/DesRes-Simulations/Downloaded/Gprot_Science2015_Dror_Desres/science2015/DESRES-Trajectory_science2015-22-all/science2015-22-all/science2015-22-all-256.dcd"
OUTPUT_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/rep_1/Prod_256/Prod_256_rewrapped.dcd"
python wrapAlign.py $TOP_FILE $TRAJ_FILE $OUTPUT_FILE

# Stripping water from rewrapped .dcd file and placing output file in same experiment fragment folder path
TRAJ_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/rep_1/Prod_256/Prod_256_rewrapped.dcd"
OUTPUT_FILE_PATH="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/rep_1/Prod_256/Prod_256_rewrapped_strip_waters.dcd"
python stripWaters.py -top $TOP_FILE -traj $TRAJ_FILE $OUTPUT_FILE_PATH


# Rewrapping original .dcd files and placing copy in output experiment fragment folder path
cd /scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/rep_1
mkdir Prod_257
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/DI-pipeline-tools
TOP_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/step5_assembly.pdb"
TRAJ_FILE="/scratch/PI/rondror/DesRes-Simulations/Downloaded/Gprot_Science2015_Dror_Desres/science2015/DESRES-Trajectory_science2015-22-all/science2015-22-all/science2015-22-all-257.dcd"
OUTPUT_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/rep_1/Prod_257/Prod_257_rewrapped.dcd"
python wrapAlign.py $TOP_FILE $TRAJ_FILE $OUTPUT_FILE

# Stripping water from rewrapped .dcd file and placing output file in same experiment fragment folder path
TRAJ_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/rep_1/Prod_257/Prod_257_rewrapped.dcd"
OUTPUT_FILE_PATH="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/rep_1/Prod_257/Prod_257_rewrapped_strip_waters.dcd"
python stripWaters.py -top $TOP_FILE -traj $TRAJ_FILE $OUTPUT_FILE_PATH


# Rewrapping original .dcd files and placing copy in output experiment fragment folder path
cd /scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/rep_1
mkdir Prod_258
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/DI-pipeline-tools
TOP_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/step5_assembly.pdb"
TRAJ_FILE="/scratch/PI/rondror/DesRes-Simulations/Downloaded/Gprot_Science2015_Dror_Desres/science2015/DESRES-Trajectory_science2015-22-all/science2015-22-all/science2015-22-all-258.dcd"
OUTPUT_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/rep_1/Prod_258/Prod_258_rewrapped.dcd"
python wrapAlign.py $TOP_FILE $TRAJ_FILE $OUTPUT_FILE

# Stripping water from rewrapped .dcd file and placing output file in same experiment fragment folder path
TRAJ_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/rep_1/Prod_258/Prod_258_rewrapped.dcd"
OUTPUT_FILE_PATH="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/rep_1/Prod_258/Prod_258_rewrapped_strip_waters.dcd"
python stripWaters.py -top $TOP_FILE -traj $TRAJ_FILE $OUTPUT_FILE_PATH


# Rewrapping original .dcd files and placing copy in output experiment fragment folder path
cd /scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/rep_1
mkdir Prod_259
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/DI-pipeline-tools
TOP_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/step5_assembly.pdb"
TRAJ_FILE="/scratch/PI/rondror/DesRes-Simulations/Downloaded/Gprot_Science2015_Dror_Desres/science2015/DESRES-Trajectory_science2015-22-all/science2015-22-all/science2015-22-all-259.dcd"
OUTPUT_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/rep_1/Prod_259/Prod_259_rewrapped.dcd"
python wrapAlign.py $TOP_FILE $TRAJ_FILE $OUTPUT_FILE

# Stripping water from rewrapped .dcd file and placing output file in same experiment fragment folder path
TRAJ_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/rep_1/Prod_259/Prod_259_rewrapped.dcd"
OUTPUT_FILE_PATH="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/rep_1/Prod_259/Prod_259_rewrapped_strip_waters.dcd"
python stripWaters.py -top $TOP_FILE -traj $TRAJ_FILE $OUTPUT_FILE_PATH


# Rewrapping original .dcd files and placing copy in output experiment fragment folder path
cd /scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/rep_1
mkdir Prod_260
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/DI-pipeline-tools
TOP_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/step5_assembly.pdb"
TRAJ_FILE="/scratch/PI/rondror/DesRes-Simulations/Downloaded/Gprot_Science2015_Dror_Desres/science2015/DESRES-Trajectory_science2015-22-all/science2015-22-all/science2015-22-all-260.dcd"
OUTPUT_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/rep_1/Prod_260/Prod_260_rewrapped.dcd"
python wrapAlign.py $TOP_FILE $TRAJ_FILE $OUTPUT_FILE

# Stripping water from rewrapped .dcd file and placing output file in same experiment fragment folder path
TRAJ_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/rep_1/Prod_260/Prod_260_rewrapped.dcd"
OUTPUT_FILE_PATH="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/rep_1/Prod_260/Prod_260_rewrapped_strip_waters.dcd"
python stripWaters.py -top $TOP_FILE -traj $TRAJ_FILE $OUTPUT_FILE_PATH


# Rewrapping original .dcd files and placing copy in output experiment fragment folder path
cd /scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/rep_1
mkdir Prod_261
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/DI-pipeline-tools
TOP_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/step5_assembly.pdb"
TRAJ_FILE="/scratch/PI/rondror/DesRes-Simulations/Downloaded/Gprot_Science2015_Dror_Desres/science2015/DESRES-Trajectory_science2015-22-all/science2015-22-all/science2015-22-all-261.dcd"
OUTPUT_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/rep_1/Prod_261/Prod_261_rewrapped.dcd"
python wrapAlign.py $TOP_FILE $TRAJ_FILE $OUTPUT_FILE

# Stripping water from rewrapped .dcd file and placing output file in same experiment fragment folder path
TRAJ_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/rep_1/Prod_261/Prod_261_rewrapped.dcd"
OUTPUT_FILE_PATH="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/rep_1/Prod_261/Prod_261_rewrapped_strip_waters.dcd"
python stripWaters.py -top $TOP_FILE -traj $TRAJ_FILE $OUTPUT_FILE_PATH


# Rewrapping original .dcd files and placing copy in output experiment fragment folder path
cd /scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/rep_1
mkdir Prod_262
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/DI-pipeline-tools
TOP_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/step5_assembly.pdb"
TRAJ_FILE="/scratch/PI/rondror/DesRes-Simulations/Downloaded/Gprot_Science2015_Dror_Desres/science2015/DESRES-Trajectory_science2015-22-all/science2015-22-all/science2015-22-all-262.dcd"
OUTPUT_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/rep_1/Prod_262/Prod_262_rewrapped.dcd"
python wrapAlign.py $TOP_FILE $TRAJ_FILE $OUTPUT_FILE

# Stripping water from rewrapped .dcd file and placing output file in same experiment fragment folder path
TRAJ_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/rep_1/Prod_262/Prod_262_rewrapped.dcd"
OUTPUT_FILE_PATH="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/rep_1/Prod_262/Prod_262_rewrapped_strip_waters.dcd"
python stripWaters.py -top $TOP_FILE -traj $TRAJ_FILE $OUTPUT_FILE_PATH


# Rewrapping original .dcd files and placing copy in output experiment fragment folder path
cd /scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/rep_1
mkdir Prod_263
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/DI-pipeline-tools
TOP_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/step5_assembly.pdb"
TRAJ_FILE="/scratch/PI/rondror/DesRes-Simulations/Downloaded/Gprot_Science2015_Dror_Desres/science2015/DESRES-Trajectory_science2015-22-all/science2015-22-all/science2015-22-all-263.dcd"
OUTPUT_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/rep_1/Prod_263/Prod_263_rewrapped.dcd"
python wrapAlign.py $TOP_FILE $TRAJ_FILE $OUTPUT_FILE

# Stripping water from rewrapped .dcd file and placing output file in same experiment fragment folder path
TRAJ_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/rep_1/Prod_263/Prod_263_rewrapped.dcd"
OUTPUT_FILE_PATH="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/rep_1/Prod_263/Prod_263_rewrapped_strip_waters.dcd"
python stripWaters.py -top $TOP_FILE -traj $TRAJ_FILE $OUTPUT_FILE_PATH


# Rewrapping original .dcd files and placing copy in output experiment fragment folder path
cd /scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/rep_1
mkdir Prod_264
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/DI-pipeline-tools
TOP_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/step5_assembly.pdb"
TRAJ_FILE="/scratch/PI/rondror/DesRes-Simulations/Downloaded/Gprot_Science2015_Dror_Desres/science2015/DESRES-Trajectory_science2015-22-all/science2015-22-all/science2015-22-all-264.dcd"
OUTPUT_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/rep_1/Prod_264/Prod_264_rewrapped.dcd"
python wrapAlign.py $TOP_FILE $TRAJ_FILE $OUTPUT_FILE

# Stripping water from rewrapped .dcd file and placing output file in same experiment fragment folder path
TRAJ_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/rep_1/Prod_264/Prod_264_rewrapped.dcd"
OUTPUT_FILE_PATH="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/rep_1/Prod_264/Prod_264_rewrapped_strip_waters.dcd"
python stripWaters.py -top $TOP_FILE -traj $TRAJ_FILE $OUTPUT_FILE_PATH


# Rewrapping original .dcd files and placing copy in output experiment fragment folder path
cd /scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/rep_1
mkdir Prod_265
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/DI-pipeline-tools
TOP_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/step5_assembly.pdb"
TRAJ_FILE="/scratch/PI/rondror/DesRes-Simulations/Downloaded/Gprot_Science2015_Dror_Desres/science2015/DESRES-Trajectory_science2015-22-all/science2015-22-all/science2015-22-all-265.dcd"
OUTPUT_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/rep_1/Prod_265/Prod_265_rewrapped.dcd"
python wrapAlign.py $TOP_FILE $TRAJ_FILE $OUTPUT_FILE

# Stripping water from rewrapped .dcd file and placing output file in same experiment fragment folder path
TRAJ_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/rep_1/Prod_265/Prod_265_rewrapped.dcd"
OUTPUT_FILE_PATH="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/rep_1/Prod_265/Prod_265_rewrapped_strip_waters.dcd"
python stripWaters.py -top $TOP_FILE -traj $TRAJ_FILE $OUTPUT_FILE_PATH


# Rewrapping original .dcd files and placing copy in output experiment fragment folder path
cd /scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/rep_1
mkdir Prod_266
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/DI-pipeline-tools
TOP_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/step5_assembly.pdb"
TRAJ_FILE="/scratch/PI/rondror/DesRes-Simulations/Downloaded/Gprot_Science2015_Dror_Desres/science2015/DESRES-Trajectory_science2015-22-all/science2015-22-all/science2015-22-all-266.dcd"
OUTPUT_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/rep_1/Prod_266/Prod_266_rewrapped.dcd"
python wrapAlign.py $TOP_FILE $TRAJ_FILE $OUTPUT_FILE

# Stripping water from rewrapped .dcd file and placing output file in same experiment fragment folder path
TRAJ_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/rep_1/Prod_266/Prod_266_rewrapped.dcd"
OUTPUT_FILE_PATH="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/rep_1/Prod_266/Prod_266_rewrapped_strip_waters.dcd"
python stripWaters.py -top $TOP_FILE -traj $TRAJ_FILE $OUTPUT_FILE_PATH


# Rewrapping original .dcd files and placing copy in output experiment fragment folder path
cd /scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/rep_1
mkdir Prod_267
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/DI-pipeline-tools
TOP_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/step5_assembly.pdb"
TRAJ_FILE="/scratch/PI/rondror/DesRes-Simulations/Downloaded/Gprot_Science2015_Dror_Desres/science2015/DESRES-Trajectory_science2015-22-all/science2015-22-all/science2015-22-all-267.dcd"
OUTPUT_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/rep_1/Prod_267/Prod_267_rewrapped.dcd"
python wrapAlign.py $TOP_FILE $TRAJ_FILE $OUTPUT_FILE

# Stripping water from rewrapped .dcd file and placing output file in same experiment fragment folder path
TRAJ_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/rep_1/Prod_267/Prod_267_rewrapped.dcd"
OUTPUT_FILE_PATH="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/rep_1/Prod_267/Prod_267_rewrapped_strip_waters.dcd"
python stripWaters.py -top $TOP_FILE -traj $TRAJ_FILE $OUTPUT_FILE_PATH


# Rewrapping original .dcd files and placing copy in output experiment fragment folder path
cd /scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/rep_1
mkdir Prod_268
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/DI-pipeline-tools
TOP_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/step5_assembly.pdb"
TRAJ_FILE="/scratch/PI/rondror/DesRes-Simulations/Downloaded/Gprot_Science2015_Dror_Desres/science2015/DESRES-Trajectory_science2015-22-all/science2015-22-all/science2015-22-all-268.dcd"
OUTPUT_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/rep_1/Prod_268/Prod_268_rewrapped.dcd"
python wrapAlign.py $TOP_FILE $TRAJ_FILE $OUTPUT_FILE

# Stripping water from rewrapped .dcd file and placing output file in same experiment fragment folder path
TRAJ_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/rep_1/Prod_268/Prod_268_rewrapped.dcd"
OUTPUT_FILE_PATH="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/rep_1/Prod_268/Prod_268_rewrapped_strip_waters.dcd"
python stripWaters.py -top $TOP_FILE -traj $TRAJ_FILE $OUTPUT_FILE_PATH


# Rewrapping original .dcd files and placing copy in output experiment fragment folder path
cd /scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/rep_1
mkdir Prod_269
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/DI-pipeline-tools
TOP_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/step5_assembly.pdb"
TRAJ_FILE="/scratch/PI/rondror/DesRes-Simulations/Downloaded/Gprot_Science2015_Dror_Desres/science2015/DESRES-Trajectory_science2015-22-all/science2015-22-all/science2015-22-all-269.dcd"
OUTPUT_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/rep_1/Prod_269/Prod_269_rewrapped.dcd"
python wrapAlign.py $TOP_FILE $TRAJ_FILE $OUTPUT_FILE

# Stripping water from rewrapped .dcd file and placing output file in same experiment fragment folder path
TRAJ_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/rep_1/Prod_269/Prod_269_rewrapped.dcd"
OUTPUT_FILE_PATH="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/rep_1/Prod_269/Prod_269_rewrapped_strip_waters.dcd"
python stripWaters.py -top $TOP_FILE -traj $TRAJ_FILE $OUTPUT_FILE_PATH


# Rewrapping original .dcd files and placing copy in output experiment fragment folder path
cd /scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/rep_1
mkdir Prod_270
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/DI-pipeline-tools
TOP_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/step5_assembly.pdb"
TRAJ_FILE="/scratch/PI/rondror/DesRes-Simulations/Downloaded/Gprot_Science2015_Dror_Desres/science2015/DESRES-Trajectory_science2015-22-all/science2015-22-all/science2015-22-all-270.dcd"
OUTPUT_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/rep_1/Prod_270/Prod_270_rewrapped.dcd"
python wrapAlign.py $TOP_FILE $TRAJ_FILE $OUTPUT_FILE

# Stripping water from rewrapped .dcd file and placing output file in same experiment fragment folder path
TRAJ_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/rep_1/Prod_270/Prod_270_rewrapped.dcd"
OUTPUT_FILE_PATH="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/rep_1/Prod_270/Prod_270_rewrapped_strip_waters.dcd"
python stripWaters.py -top $TOP_FILE -traj $TRAJ_FILE $OUTPUT_FILE_PATH


# Rewrapping original .dcd files and placing copy in output experiment fragment folder path
cd /scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/rep_1
mkdir Prod_271
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/DI-pipeline-tools
TOP_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/step5_assembly.pdb"
TRAJ_FILE="/scratch/PI/rondror/DesRes-Simulations/Downloaded/Gprot_Science2015_Dror_Desres/science2015/DESRES-Trajectory_science2015-22-all/science2015-22-all/science2015-22-all-271.dcd"
OUTPUT_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/rep_1/Prod_271/Prod_271_rewrapped.dcd"
python wrapAlign.py $TOP_FILE $TRAJ_FILE $OUTPUT_FILE

# Stripping water from rewrapped .dcd file and placing output file in same experiment fragment folder path
TRAJ_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/rep_1/Prod_271/Prod_271_rewrapped.dcd"
OUTPUT_FILE_PATH="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/rep_1/Prod_271/Prod_271_rewrapped_strip_waters.dcd"
python stripWaters.py -top $TOP_FILE -traj $TRAJ_FILE $OUTPUT_FILE_PATH


# Rewrapping original .dcd files and placing copy in output experiment fragment folder path
cd /scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/rep_1
mkdir Prod_272
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/DI-pipeline-tools
TOP_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/step5_assembly.pdb"
TRAJ_FILE="/scratch/PI/rondror/DesRes-Simulations/Downloaded/Gprot_Science2015_Dror_Desres/science2015/DESRES-Trajectory_science2015-22-all/science2015-22-all/science2015-22-all-272.dcd"
OUTPUT_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/rep_1/Prod_272/Prod_272_rewrapped.dcd"
python wrapAlign.py $TOP_FILE $TRAJ_FILE $OUTPUT_FILE

# Stripping water from rewrapped .dcd file and placing output file in same experiment fragment folder path
TRAJ_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/rep_1/Prod_272/Prod_272_rewrapped.dcd"
OUTPUT_FILE_PATH="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/rep_1/Prod_272/Prod_272_rewrapped_strip_waters.dcd"
python stripWaters.py -top $TOP_FILE -traj $TRAJ_FILE $OUTPUT_FILE_PATH


# Rewrapping original .dcd files and placing copy in output experiment fragment folder path
cd /scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/rep_1
mkdir Prod_273
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/DI-pipeline-tools
TOP_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/step5_assembly.pdb"
TRAJ_FILE="/scratch/PI/rondror/DesRes-Simulations/Downloaded/Gprot_Science2015_Dror_Desres/science2015/DESRES-Trajectory_science2015-22-all/science2015-22-all/science2015-22-all-273.dcd"
OUTPUT_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/rep_1/Prod_273/Prod_273_rewrapped.dcd"
python wrapAlign.py $TOP_FILE $TRAJ_FILE $OUTPUT_FILE

# Stripping water from rewrapped .dcd file and placing output file in same experiment fragment folder path
TRAJ_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/rep_1/Prod_273/Prod_273_rewrapped.dcd"
OUTPUT_FILE_PATH="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/rep_1/Prod_273/Prod_273_rewrapped_strip_waters.dcd"
python stripWaters.py -top $TOP_FILE -traj $TRAJ_FILE $OUTPUT_FILE_PATH


# Rewrapping original .dcd files and placing copy in output experiment fragment folder path
cd /scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/rep_1
mkdir Prod_274
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/DI-pipeline-tools
TOP_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/step5_assembly.pdb"
TRAJ_FILE="/scratch/PI/rondror/DesRes-Simulations/Downloaded/Gprot_Science2015_Dror_Desres/science2015/DESRES-Trajectory_science2015-22-all/science2015-22-all/science2015-22-all-274.dcd"
OUTPUT_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/rep_1/Prod_274/Prod_274_rewrapped.dcd"
python wrapAlign.py $TOP_FILE $TRAJ_FILE $OUTPUT_FILE

# Stripping water from rewrapped .dcd file and placing output file in same experiment fragment folder path
TRAJ_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/rep_1/Prod_274/Prod_274_rewrapped.dcd"
OUTPUT_FILE_PATH="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/rep_1/Prod_274/Prod_274_rewrapped_strip_waters.dcd"
python stripWaters.py -top $TOP_FILE -traj $TRAJ_FILE $OUTPUT_FILE_PATH


# Rewrapping original .dcd files and placing copy in output experiment fragment folder path
cd /scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/rep_1
mkdir Prod_275
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/DI-pipeline-tools
TOP_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/step5_assembly.pdb"
TRAJ_FILE="/scratch/PI/rondror/DesRes-Simulations/Downloaded/Gprot_Science2015_Dror_Desres/science2015/DESRES-Trajectory_science2015-22-all/science2015-22-all/science2015-22-all-275.dcd"
OUTPUT_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/rep_1/Prod_275/Prod_275_rewrapped.dcd"
python wrapAlign.py $TOP_FILE $TRAJ_FILE $OUTPUT_FILE

# Stripping water from rewrapped .dcd file and placing output file in same experiment fragment folder path
TRAJ_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/rep_1/Prod_275/Prod_275_rewrapped.dcd"
OUTPUT_FILE_PATH="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/rep_1/Prod_275/Prod_275_rewrapped_strip_waters.dcd"
python stripWaters.py -top $TOP_FILE -traj $TRAJ_FILE $OUTPUT_FILE_PATH


# Rewrapping original .dcd files and placing copy in output experiment fragment folder path
cd /scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/rep_1
mkdir Prod_276
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/DI-pipeline-tools
TOP_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/step5_assembly.pdb"
TRAJ_FILE="/scratch/PI/rondror/DesRes-Simulations/Downloaded/Gprot_Science2015_Dror_Desres/science2015/DESRES-Trajectory_science2015-22-all/science2015-22-all/science2015-22-all-276.dcd"
OUTPUT_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/rep_1/Prod_276/Prod_276_rewrapped.dcd"
python wrapAlign.py $TOP_FILE $TRAJ_FILE $OUTPUT_FILE

# Stripping water from rewrapped .dcd file and placing output file in same experiment fragment folder path
TRAJ_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/rep_1/Prod_276/Prod_276_rewrapped.dcd"
OUTPUT_FILE_PATH="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/rep_1/Prod_276/Prod_276_rewrapped_strip_waters.dcd"
python stripWaters.py -top $TOP_FILE -traj $TRAJ_FILE $OUTPUT_FILE_PATH


# Rewrapping original .dcd files and placing copy in output experiment fragment folder path
cd /scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/rep_1
mkdir Prod_277
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/DI-pipeline-tools
TOP_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/step5_assembly.pdb"
TRAJ_FILE="/scratch/PI/rondror/DesRes-Simulations/Downloaded/Gprot_Science2015_Dror_Desres/science2015/DESRES-Trajectory_science2015-22-all/science2015-22-all/science2015-22-all-277.dcd"
OUTPUT_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/rep_1/Prod_277/Prod_277_rewrapped.dcd"
python wrapAlign.py $TOP_FILE $TRAJ_FILE $OUTPUT_FILE

# Stripping water from rewrapped .dcd file and placing output file in same experiment fragment folder path
TRAJ_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/rep_1/Prod_277/Prod_277_rewrapped.dcd"
OUTPUT_FILE_PATH="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/rep_1/Prod_277/Prod_277_rewrapped_strip_waters.dcd"
python stripWaters.py -top $TOP_FILE -traj $TRAJ_FILE $OUTPUT_FILE_PATH


