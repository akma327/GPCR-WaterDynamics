# Converting .mae to .pdb file and placing in the output experimental condition path

cd /scratch/PI/rondror/akma327/DynamicNetworks/src/DI-pipeline-tools
MAE_PATH="/scratch/PI/rondror/DesRes-Simulations/ordered-from-DesRes/nature2012/DESRES-Trajectory_nature2012-A-M2-QNB-all.1/nature2012-A-M2-QNB-all/nature2012-A-M2-QNB-all.mae"
OUTPUT_PDB_PATH="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/M2R-inactive-QNB-nature2012/condition-A/step5_assembly.pdb"
python maeToPdb.py $MAE_PATH $OUTPUT_PDB_PATH

# Copy and rename .mae file to the output experimental condition path
cp /scratch/PI/rondror/DesRes-Simulations/ordered-from-DesRes/nature2012/DESRES-Trajectory_nature2012-A-M2-QNB-all.1/nature2012-A-M2-QNB-all/nature2012-A-M2-QNB-all.mae /scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/M2R-inactive-QNB-nature2012/condition-A/step5_assembly.mae

# Rewrapping original .dcd files and placing copy in output experiment fragment folder path

cd /scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/M2R-inactive-QNB-nature2012/condition-A/rep_1
mkdir Prod_0
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/DI-pipeline-tools
TOP_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/M2R-inactive-QNB-nature2012/condition-A/step5_assembly.pdb"
TRAJ_FILE="/scratch/PI/rondror/DesRes-Simulations/ordered-from-DesRes/nature2012/DESRES-Trajectory_nature2012-A-M2-QNB-all.1/nature2012-A-M2-QNB-all/nature2012-A-M2-QNB-all-000.dcd"
OUTPUT_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/M2R-inactive-QNB-nature2012/condition-A/rep_1/Prod_0/Prod_0_rewrapped.dcd"
python wrapAlign.py $TOP_FILE $TRAJ_FILE $OUTPUT_FILE -crys

cd /scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/M2R-inactive-QNB-nature2012/condition-A/rep_1
mkdir Prod_1
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/DI-pipeline-tools
TOP_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/M2R-inactive-QNB-nature2012/condition-A/step5_assembly.pdb"
TRAJ_FILE="/scratch/PI/rondror/DesRes-Simulations/ordered-from-DesRes/nature2012/DESRES-Trajectory_nature2012-A-M2-QNB-all.1/nature2012-A-M2-QNB-all/nature2012-A-M2-QNB-all-001.dcd"
OUTPUT_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/M2R-inactive-QNB-nature2012/condition-A/rep_1/Prod_1/Prod_1_rewrapped.dcd"
python wrapAlign.py $TOP_FILE $TRAJ_FILE $OUTPUT_FILE

cd /scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/M2R-inactive-QNB-nature2012/condition-A/rep_1
mkdir Prod_2
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/DI-pipeline-tools
TOP_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/M2R-inactive-QNB-nature2012/condition-A/step5_assembly.pdb"
TRAJ_FILE="/scratch/PI/rondror/DesRes-Simulations/ordered-from-DesRes/nature2012/DESRES-Trajectory_nature2012-A-M2-QNB-all.1/nature2012-A-M2-QNB-all/nature2012-A-M2-QNB-all-002.dcd"
OUTPUT_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/M2R-inactive-QNB-nature2012/condition-A/rep_1/Prod_2/Prod_2_rewrapped.dcd"
python wrapAlign.py $TOP_FILE $TRAJ_FILE $OUTPUT_FILE

cd /scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/M2R-inactive-QNB-nature2012/condition-A/rep_1
mkdir Prod_3
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/DI-pipeline-tools
TOP_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/M2R-inactive-QNB-nature2012/condition-A/step5_assembly.pdb"
TRAJ_FILE="/scratch/PI/rondror/DesRes-Simulations/ordered-from-DesRes/nature2012/DESRES-Trajectory_nature2012-A-M2-QNB-all.1/nature2012-A-M2-QNB-all/nature2012-A-M2-QNB-all-003.dcd"
OUTPUT_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/M2R-inactive-QNB-nature2012/condition-A/rep_1/Prod_3/Prod_3_rewrapped.dcd"
python wrapAlign.py $TOP_FILE $TRAJ_FILE $OUTPUT_FILE

cd /scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/M2R-inactive-QNB-nature2012/condition-A/rep_1
mkdir Prod_4
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/DI-pipeline-tools
TOP_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/M2R-inactive-QNB-nature2012/condition-A/step5_assembly.pdb"
TRAJ_FILE="/scratch/PI/rondror/DesRes-Simulations/ordered-from-DesRes/nature2012/DESRES-Trajectory_nature2012-A-M2-QNB-all.1/nature2012-A-M2-QNB-all/nature2012-A-M2-QNB-all-004.dcd"
OUTPUT_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/M2R-inactive-QNB-nature2012/condition-A/rep_1/Prod_4/Prod_4_rewrapped.dcd"
python wrapAlign.py $TOP_FILE $TRAJ_FILE $OUTPUT_FILE

cd /scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/M2R-inactive-QNB-nature2012/condition-A/rep_1
mkdir Prod_5
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/DI-pipeline-tools
TOP_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/M2R-inactive-QNB-nature2012/condition-A/step5_assembly.pdb"
TRAJ_FILE="/scratch/PI/rondror/DesRes-Simulations/ordered-from-DesRes/nature2012/DESRES-Trajectory_nature2012-A-M2-QNB-all.1/nature2012-A-M2-QNB-all/nature2012-A-M2-QNB-all-005.dcd"
OUTPUT_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/M2R-inactive-QNB-nature2012/condition-A/rep_1/Prod_5/Prod_5_rewrapped.dcd"
python wrapAlign.py $TOP_FILE $TRAJ_FILE $OUTPUT_FILE

cd /scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/M2R-inactive-QNB-nature2012/condition-A/rep_1
mkdir Prod_6
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/DI-pipeline-tools
TOP_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/M2R-inactive-QNB-nature2012/condition-A/step5_assembly.pdb"
TRAJ_FILE="/scratch/PI/rondror/DesRes-Simulations/ordered-from-DesRes/nature2012/DESRES-Trajectory_nature2012-A-M2-QNB-all.1/nature2012-A-M2-QNB-all/nature2012-A-M2-QNB-all-006.dcd"
OUTPUT_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/M2R-inactive-QNB-nature2012/condition-A/rep_1/Prod_6/Prod_6_rewrapped.dcd"
python wrapAlign.py $TOP_FILE $TRAJ_FILE $OUTPUT_FILE

cd /scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/M2R-inactive-QNB-nature2012/condition-A/rep_1
mkdir Prod_7
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/DI-pipeline-tools
TOP_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/M2R-inactive-QNB-nature2012/condition-A/step5_assembly.pdb"
TRAJ_FILE="/scratch/PI/rondror/DesRes-Simulations/ordered-from-DesRes/nature2012/DESRES-Trajectory_nature2012-A-M2-QNB-all.1/nature2012-A-M2-QNB-all/nature2012-A-M2-QNB-all-007.dcd"
OUTPUT_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/M2R-inactive-QNB-nature2012/condition-A/rep_1/Prod_7/Prod_7_rewrapped.dcd"
python wrapAlign.py $TOP_FILE $TRAJ_FILE $OUTPUT_FILE

cd /scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/M2R-inactive-QNB-nature2012/condition-A/rep_1
mkdir Prod_8
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/DI-pipeline-tools
TOP_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/M2R-inactive-QNB-nature2012/condition-A/step5_assembly.pdb"
TRAJ_FILE="/scratch/PI/rondror/DesRes-Simulations/ordered-from-DesRes/nature2012/DESRES-Trajectory_nature2012-A-M2-QNB-all.1/nature2012-A-M2-QNB-all/nature2012-A-M2-QNB-all-008.dcd"
OUTPUT_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/M2R-inactive-QNB-nature2012/condition-A/rep_1/Prod_8/Prod_8_rewrapped.dcd"
python wrapAlign.py $TOP_FILE $TRAJ_FILE $OUTPUT_FILE

cd /scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/M2R-inactive-QNB-nature2012/condition-A/rep_1
mkdir Prod_9
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/DI-pipeline-tools
TOP_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/M2R-inactive-QNB-nature2012/condition-A/step5_assembly.pdb"
TRAJ_FILE="/scratch/PI/rondror/DesRes-Simulations/ordered-from-DesRes/nature2012/DESRES-Trajectory_nature2012-A-M2-QNB-all.1/nature2012-A-M2-QNB-all/nature2012-A-M2-QNB-all-009.dcd"
OUTPUT_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/M2R-inactive-QNB-nature2012/condition-A/rep_1/Prod_9/Prod_9_rewrapped.dcd"
python wrapAlign.py $TOP_FILE $TRAJ_FILE $OUTPUT_FILE

cd /scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/M2R-inactive-QNB-nature2012/condition-A/rep_1
mkdir Prod_10
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/DI-pipeline-tools
TOP_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/M2R-inactive-QNB-nature2012/condition-A/step5_assembly.pdb"
TRAJ_FILE="/scratch/PI/rondror/DesRes-Simulations/ordered-from-DesRes/nature2012/DESRES-Trajectory_nature2012-A-M2-QNB-all.1/nature2012-A-M2-QNB-all/nature2012-A-M2-QNB-all-010.dcd"
OUTPUT_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/M2R-inactive-QNB-nature2012/condition-A/rep_1/Prod_10/Prod_10_rewrapped.dcd"
python wrapAlign.py $TOP_FILE $TRAJ_FILE $OUTPUT_FILE

cd /scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/M2R-inactive-QNB-nature2012/condition-A/rep_1
mkdir Prod_11
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/DI-pipeline-tools
TOP_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/M2R-inactive-QNB-nature2012/condition-A/step5_assembly.pdb"
TRAJ_FILE="/scratch/PI/rondror/DesRes-Simulations/ordered-from-DesRes/nature2012/DESRES-Trajectory_nature2012-A-M2-QNB-all.1/nature2012-A-M2-QNB-all/nature2012-A-M2-QNB-all-011.dcd"
OUTPUT_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/M2R-inactive-QNB-nature2012/condition-A/rep_1/Prod_11/Prod_11_rewrapped.dcd"
python wrapAlign.py $TOP_FILE $TRAJ_FILE $OUTPUT_FILE

cd /scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/M2R-inactive-QNB-nature2012/condition-A/rep_1
mkdir Prod_12
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/DI-pipeline-tools
TOP_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/M2R-inactive-QNB-nature2012/condition-A/step5_assembly.pdb"
TRAJ_FILE="/scratch/PI/rondror/DesRes-Simulations/ordered-from-DesRes/nature2012/DESRES-Trajectory_nature2012-A-M2-QNB-all.1/nature2012-A-M2-QNB-all/nature2012-A-M2-QNB-all-012.dcd"
OUTPUT_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/M2R-inactive-QNB-nature2012/condition-A/rep_1/Prod_12/Prod_12_rewrapped.dcd"
python wrapAlign.py $TOP_FILE $TRAJ_FILE $OUTPUT_FILE

cd /scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/M2R-inactive-QNB-nature2012/condition-A/rep_1
mkdir Prod_13
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/DI-pipeline-tools
TOP_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/M2R-inactive-QNB-nature2012/condition-A/step5_assembly.pdb"
TRAJ_FILE="/scratch/PI/rondror/DesRes-Simulations/ordered-from-DesRes/nature2012/DESRES-Trajectory_nature2012-A-M2-QNB-all.1/nature2012-A-M2-QNB-all/nature2012-A-M2-QNB-all-013.dcd"
OUTPUT_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/M2R-inactive-QNB-nature2012/condition-A/rep_1/Prod_13/Prod_13_rewrapped.dcd"
python wrapAlign.py $TOP_FILE $TRAJ_FILE $OUTPUT_FILE

cd /scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/M2R-inactive-QNB-nature2012/condition-A/rep_1
mkdir Prod_14
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/DI-pipeline-tools
TOP_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/M2R-inactive-QNB-nature2012/condition-A/step5_assembly.pdb"
TRAJ_FILE="/scratch/PI/rondror/DesRes-Simulations/ordered-from-DesRes/nature2012/DESRES-Trajectory_nature2012-A-M2-QNB-all.1/nature2012-A-M2-QNB-all/nature2012-A-M2-QNB-all-014.dcd"
OUTPUT_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/M2R-inactive-QNB-nature2012/condition-A/rep_1/Prod_14/Prod_14_rewrapped.dcd"
python wrapAlign.py $TOP_FILE $TRAJ_FILE $OUTPUT_FILE

cd /scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/M2R-inactive-QNB-nature2012/condition-A/rep_1
mkdir Prod_15
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/DI-pipeline-tools
TOP_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/M2R-inactive-QNB-nature2012/condition-A/step5_assembly.pdb"
TRAJ_FILE="/scratch/PI/rondror/DesRes-Simulations/ordered-from-DesRes/nature2012/DESRES-Trajectory_nature2012-A-M2-QNB-all.1/nature2012-A-M2-QNB-all/nature2012-A-M2-QNB-all-015.dcd"
OUTPUT_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/M2R-inactive-QNB-nature2012/condition-A/rep_1/Prod_15/Prod_15_rewrapped.dcd"
python wrapAlign.py $TOP_FILE $TRAJ_FILE $OUTPUT_FILE

cd /scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/M2R-inactive-QNB-nature2012/condition-A/rep_1
mkdir Prod_16
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/DI-pipeline-tools
TOP_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/M2R-inactive-QNB-nature2012/condition-A/step5_assembly.pdb"
TRAJ_FILE="/scratch/PI/rondror/DesRes-Simulations/ordered-from-DesRes/nature2012/DESRES-Trajectory_nature2012-A-M2-QNB-all.1/nature2012-A-M2-QNB-all/nature2012-A-M2-QNB-all-016.dcd"
OUTPUT_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/M2R-inactive-QNB-nature2012/condition-A/rep_1/Prod_16/Prod_16_rewrapped.dcd"
python wrapAlign.py $TOP_FILE $TRAJ_FILE $OUTPUT_FILE

cd /scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/M2R-inactive-QNB-nature2012/condition-A/rep_1
mkdir Prod_17
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/DI-pipeline-tools
TOP_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/M2R-inactive-QNB-nature2012/condition-A/step5_assembly.pdb"
TRAJ_FILE="/scratch/PI/rondror/DesRes-Simulations/ordered-from-DesRes/nature2012/DESRES-Trajectory_nature2012-A-M2-QNB-all.1/nature2012-A-M2-QNB-all/nature2012-A-M2-QNB-all-017.dcd"
OUTPUT_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/M2R-inactive-QNB-nature2012/condition-A/rep_1/Prod_17/Prod_17_rewrapped.dcd"
python wrapAlign.py $TOP_FILE $TRAJ_FILE $OUTPUT_FILE

cd /scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/M2R-inactive-QNB-nature2012/condition-A/rep_1
mkdir Prod_18
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/DI-pipeline-tools
TOP_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/M2R-inactive-QNB-nature2012/condition-A/step5_assembly.pdb"
TRAJ_FILE="/scratch/PI/rondror/DesRes-Simulations/ordered-from-DesRes/nature2012/DESRES-Trajectory_nature2012-A-M2-QNB-all.1/nature2012-A-M2-QNB-all/nature2012-A-M2-QNB-all-018.dcd"
OUTPUT_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/M2R-inactive-QNB-nature2012/condition-A/rep_1/Prod_18/Prod_18_rewrapped.dcd"
python wrapAlign.py $TOP_FILE $TRAJ_FILE $OUTPUT_FILE

cd /scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/M2R-inactive-QNB-nature2012/condition-A/rep_1
mkdir Prod_19
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/DI-pipeline-tools
TOP_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/M2R-inactive-QNB-nature2012/condition-A/step5_assembly.pdb"
TRAJ_FILE="/scratch/PI/rondror/DesRes-Simulations/ordered-from-DesRes/nature2012/DESRES-Trajectory_nature2012-A-M2-QNB-all.1/nature2012-A-M2-QNB-all/nature2012-A-M2-QNB-all-019.dcd"
OUTPUT_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/M2R-inactive-QNB-nature2012/condition-A/rep_1/Prod_19/Prod_19_rewrapped.dcd"
python wrapAlign.py $TOP_FILE $TRAJ_FILE $OUTPUT_FILE

cd /scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/M2R-inactive-QNB-nature2012/condition-A/rep_1
mkdir Prod_20
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/DI-pipeline-tools
TOP_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/M2R-inactive-QNB-nature2012/condition-A/step5_assembly.pdb"
TRAJ_FILE="/scratch/PI/rondror/DesRes-Simulations/ordered-from-DesRes/nature2012/DESRES-Trajectory_nature2012-A-M2-QNB-all.1/nature2012-A-M2-QNB-all/nature2012-A-M2-QNB-all-020.dcd"
OUTPUT_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/M2R-inactive-QNB-nature2012/condition-A/rep_1/Prod_20/Prod_20_rewrapped.dcd"
python wrapAlign.py $TOP_FILE $TRAJ_FILE $OUTPUT_FILE

cd /scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/M2R-inactive-QNB-nature2012/condition-A/rep_1
mkdir Prod_21
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/DI-pipeline-tools
TOP_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/M2R-inactive-QNB-nature2012/condition-A/step5_assembly.pdb"
TRAJ_FILE="/scratch/PI/rondror/DesRes-Simulations/ordered-from-DesRes/nature2012/DESRES-Trajectory_nature2012-A-M2-QNB-all.1/nature2012-A-M2-QNB-all/nature2012-A-M2-QNB-all-021.dcd"
OUTPUT_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/M2R-inactive-QNB-nature2012/condition-A/rep_1/Prod_21/Prod_21_rewrapped.dcd"
python wrapAlign.py $TOP_FILE $TRAJ_FILE $OUTPUT_FILE

cd /scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/M2R-inactive-QNB-nature2012/condition-A/rep_1
mkdir Prod_22
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/DI-pipeline-tools
TOP_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/M2R-inactive-QNB-nature2012/condition-A/step5_assembly.pdb"
TRAJ_FILE="/scratch/PI/rondror/DesRes-Simulations/ordered-from-DesRes/nature2012/DESRES-Trajectory_nature2012-A-M2-QNB-all.1/nature2012-A-M2-QNB-all/nature2012-A-M2-QNB-all-022.dcd"
OUTPUT_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/M2R-inactive-QNB-nature2012/condition-A/rep_1/Prod_22/Prod_22_rewrapped.dcd"
python wrapAlign.py $TOP_FILE $TRAJ_FILE $OUTPUT_FILE

cd /scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/M2R-inactive-QNB-nature2012/condition-A/rep_1
mkdir Prod_23
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/DI-pipeline-tools
TOP_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/M2R-inactive-QNB-nature2012/condition-A/step5_assembly.pdb"
TRAJ_FILE="/scratch/PI/rondror/DesRes-Simulations/ordered-from-DesRes/nature2012/DESRES-Trajectory_nature2012-A-M2-QNB-all.1/nature2012-A-M2-QNB-all/nature2012-A-M2-QNB-all-023.dcd"
OUTPUT_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/M2R-inactive-QNB-nature2012/condition-A/rep_1/Prod_23/Prod_23_rewrapped.dcd"
python wrapAlign.py $TOP_FILE $TRAJ_FILE $OUTPUT_FILE

cd /scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/M2R-inactive-QNB-nature2012/condition-A/rep_1
mkdir Prod_24
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/DI-pipeline-tools
TOP_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/M2R-inactive-QNB-nature2012/condition-A/step5_assembly.pdb"
TRAJ_FILE="/scratch/PI/rondror/DesRes-Simulations/ordered-from-DesRes/nature2012/DESRES-Trajectory_nature2012-A-M2-QNB-all.1/nature2012-A-M2-QNB-all/nature2012-A-M2-QNB-all-024.dcd"
OUTPUT_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/M2R-inactive-QNB-nature2012/condition-A/rep_1/Prod_24/Prod_24_rewrapped.dcd"
python wrapAlign.py $TOP_FILE $TRAJ_FILE $OUTPUT_FILE

cd /scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/M2R-inactive-QNB-nature2012/condition-A/rep_1
mkdir Prod_25
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/DI-pipeline-tools
TOP_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/M2R-inactive-QNB-nature2012/condition-A/step5_assembly.pdb"
TRAJ_FILE="/scratch/PI/rondror/DesRes-Simulations/ordered-from-DesRes/nature2012/DESRES-Trajectory_nature2012-A-M2-QNB-all.1/nature2012-A-M2-QNB-all/nature2012-A-M2-QNB-all-025.dcd"
OUTPUT_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/M2R-inactive-QNB-nature2012/condition-A/rep_1/Prod_25/Prod_25_rewrapped.dcd"
python wrapAlign.py $TOP_FILE $TRAJ_FILE $OUTPUT_FILE

cd /scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/M2R-inactive-QNB-nature2012/condition-A/rep_1
mkdir Prod_26
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/DI-pipeline-tools
TOP_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/M2R-inactive-QNB-nature2012/condition-A/step5_assembly.pdb"
TRAJ_FILE="/scratch/PI/rondror/DesRes-Simulations/ordered-from-DesRes/nature2012/DESRES-Trajectory_nature2012-A-M2-QNB-all.1/nature2012-A-M2-QNB-all/nature2012-A-M2-QNB-all-026.dcd"
OUTPUT_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/M2R-inactive-QNB-nature2012/condition-A/rep_1/Prod_26/Prod_26_rewrapped.dcd"
python wrapAlign.py $TOP_FILE $TRAJ_FILE $OUTPUT_FILE

cd /scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/M2R-inactive-QNB-nature2012/condition-A/rep_1
mkdir Prod_27
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/DI-pipeline-tools
TOP_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/M2R-inactive-QNB-nature2012/condition-A/step5_assembly.pdb"
TRAJ_FILE="/scratch/PI/rondror/DesRes-Simulations/ordered-from-DesRes/nature2012/DESRES-Trajectory_nature2012-A-M2-QNB-all.1/nature2012-A-M2-QNB-all/nature2012-A-M2-QNB-all-027.dcd"
OUTPUT_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/M2R-inactive-QNB-nature2012/condition-A/rep_1/Prod_27/Prod_27_rewrapped.dcd"
python wrapAlign.py $TOP_FILE $TRAJ_FILE $OUTPUT_FILE

cd /scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/M2R-inactive-QNB-nature2012/condition-A/rep_1
mkdir Prod_28
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/DI-pipeline-tools
TOP_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/M2R-inactive-QNB-nature2012/condition-A/step5_assembly.pdb"
TRAJ_FILE="/scratch/PI/rondror/DesRes-Simulations/ordered-from-DesRes/nature2012/DESRES-Trajectory_nature2012-A-M2-QNB-all.1/nature2012-A-M2-QNB-all/nature2012-A-M2-QNB-all-028.dcd"
OUTPUT_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/M2R-inactive-QNB-nature2012/condition-A/rep_1/Prod_28/Prod_28_rewrapped.dcd"
python wrapAlign.py $TOP_FILE $TRAJ_FILE $OUTPUT_FILE

cd /scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/M2R-inactive-QNB-nature2012/condition-A/rep_1
mkdir Prod_29
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/DI-pipeline-tools
TOP_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/M2R-inactive-QNB-nature2012/condition-A/step5_assembly.pdb"
TRAJ_FILE="/scratch/PI/rondror/DesRes-Simulations/ordered-from-DesRes/nature2012/DESRES-Trajectory_nature2012-A-M2-QNB-all.1/nature2012-A-M2-QNB-all/nature2012-A-M2-QNB-all-029.dcd"
OUTPUT_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/M2R-inactive-QNB-nature2012/condition-A/rep_1/Prod_29/Prod_29_rewrapped.dcd"
python wrapAlign.py $TOP_FILE $TRAJ_FILE $OUTPUT_FILE

cd /scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/M2R-inactive-QNB-nature2012/condition-A/rep_1
mkdir Prod_30
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/DI-pipeline-tools
TOP_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/M2R-inactive-QNB-nature2012/condition-A/step5_assembly.pdb"
TRAJ_FILE="/scratch/PI/rondror/DesRes-Simulations/ordered-from-DesRes/nature2012/DESRES-Trajectory_nature2012-A-M2-QNB-all.1/nature2012-A-M2-QNB-all/nature2012-A-M2-QNB-all-030.dcd"
OUTPUT_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/M2R-inactive-QNB-nature2012/condition-A/rep_1/Prod_30/Prod_30_rewrapped.dcd"
python wrapAlign.py $TOP_FILE $TRAJ_FILE $OUTPUT_FILE

cd /scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/M2R-inactive-QNB-nature2012/condition-A/rep_1
mkdir Prod_31
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/DI-pipeline-tools
TOP_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/M2R-inactive-QNB-nature2012/condition-A/step5_assembly.pdb"
TRAJ_FILE="/scratch/PI/rondror/DesRes-Simulations/ordered-from-DesRes/nature2012/DESRES-Trajectory_nature2012-A-M2-QNB-all.1/nature2012-A-M2-QNB-all/nature2012-A-M2-QNB-all-031.dcd"
OUTPUT_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/M2R-inactive-QNB-nature2012/condition-A/rep_1/Prod_31/Prod_31_rewrapped.dcd"
python wrapAlign.py $TOP_FILE $TRAJ_FILE $OUTPUT_FILE

cd /scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/M2R-inactive-QNB-nature2012/condition-A/rep_1
mkdir Prod_32
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/DI-pipeline-tools
TOP_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/M2R-inactive-QNB-nature2012/condition-A/step5_assembly.pdb"
TRAJ_FILE="/scratch/PI/rondror/DesRes-Simulations/ordered-from-DesRes/nature2012/DESRES-Trajectory_nature2012-A-M2-QNB-all.1/nature2012-A-M2-QNB-all/nature2012-A-M2-QNB-all-032.dcd"
OUTPUT_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/M2R-inactive-QNB-nature2012/condition-A/rep_1/Prod_32/Prod_32_rewrapped.dcd"
python wrapAlign.py $TOP_FILE $TRAJ_FILE $OUTPUT_FILE

cd /scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/M2R-inactive-QNB-nature2012/condition-A/rep_1
mkdir Prod_33
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/DI-pipeline-tools
TOP_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/M2R-inactive-QNB-nature2012/condition-A/step5_assembly.pdb"
TRAJ_FILE="/scratch/PI/rondror/DesRes-Simulations/ordered-from-DesRes/nature2012/DESRES-Trajectory_nature2012-A-M2-QNB-all.1/nature2012-A-M2-QNB-all/nature2012-A-M2-QNB-all-033.dcd"
OUTPUT_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/M2R-inactive-QNB-nature2012/condition-A/rep_1/Prod_33/Prod_33_rewrapped.dcd"
python wrapAlign.py $TOP_FILE $TRAJ_FILE $OUTPUT_FILE

cd /scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/M2R-inactive-QNB-nature2012/condition-A/rep_1
mkdir Prod_34
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/DI-pipeline-tools
TOP_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/M2R-inactive-QNB-nature2012/condition-A/step5_assembly.pdb"
TRAJ_FILE="/scratch/PI/rondror/DesRes-Simulations/ordered-from-DesRes/nature2012/DESRES-Trajectory_nature2012-A-M2-QNB-all.1/nature2012-A-M2-QNB-all/nature2012-A-M2-QNB-all-034.dcd"
OUTPUT_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/M2R-inactive-QNB-nature2012/condition-A/rep_1/Prod_34/Prod_34_rewrapped.dcd"
python wrapAlign.py $TOP_FILE $TRAJ_FILE $OUTPUT_FILE

cd /scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/M2R-inactive-QNB-nature2012/condition-A/rep_1
mkdir Prod_35
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/DI-pipeline-tools
TOP_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/M2R-inactive-QNB-nature2012/condition-A/step5_assembly.pdb"
TRAJ_FILE="/scratch/PI/rondror/DesRes-Simulations/ordered-from-DesRes/nature2012/DESRES-Trajectory_nature2012-A-M2-QNB-all.1/nature2012-A-M2-QNB-all/nature2012-A-M2-QNB-all-035.dcd"
OUTPUT_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/M2R-inactive-QNB-nature2012/condition-A/rep_1/Prod_35/Prod_35_rewrapped.dcd"
python wrapAlign.py $TOP_FILE $TRAJ_FILE $OUTPUT_FILE

cd /scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/M2R-inactive-QNB-nature2012/condition-A/rep_1
mkdir Prod_36
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/DI-pipeline-tools
TOP_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/M2R-inactive-QNB-nature2012/condition-A/step5_assembly.pdb"
TRAJ_FILE="/scratch/PI/rondror/DesRes-Simulations/ordered-from-DesRes/nature2012/DESRES-Trajectory_nature2012-A-M2-QNB-all.1/nature2012-A-M2-QNB-all/nature2012-A-M2-QNB-all-036.dcd"
OUTPUT_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/M2R-inactive-QNB-nature2012/condition-A/rep_1/Prod_36/Prod_36_rewrapped.dcd"
python wrapAlign.py $TOP_FILE $TRAJ_FILE $OUTPUT_FILE

cd /scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/M2R-inactive-QNB-nature2012/condition-A/rep_1
mkdir Prod_37
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/DI-pipeline-tools
TOP_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/M2R-inactive-QNB-nature2012/condition-A/step5_assembly.pdb"
TRAJ_FILE="/scratch/PI/rondror/DesRes-Simulations/ordered-from-DesRes/nature2012/DESRES-Trajectory_nature2012-A-M2-QNB-all.1/nature2012-A-M2-QNB-all/nature2012-A-M2-QNB-all-037.dcd"
OUTPUT_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/M2R-inactive-QNB-nature2012/condition-A/rep_1/Prod_37/Prod_37_rewrapped.dcd"
python wrapAlign.py $TOP_FILE $TRAJ_FILE $OUTPUT_FILE

cd /scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/M2R-inactive-QNB-nature2012/condition-A/rep_1
mkdir Prod_38
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/DI-pipeline-tools
TOP_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/M2R-inactive-QNB-nature2012/condition-A/step5_assembly.pdb"
TRAJ_FILE="/scratch/PI/rondror/DesRes-Simulations/ordered-from-DesRes/nature2012/DESRES-Trajectory_nature2012-A-M2-QNB-all.1/nature2012-A-M2-QNB-all/nature2012-A-M2-QNB-all-038.dcd"
OUTPUT_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/M2R-inactive-QNB-nature2012/condition-A/rep_1/Prod_38/Prod_38_rewrapped.dcd"
python wrapAlign.py $TOP_FILE $TRAJ_FILE $OUTPUT_FILE

cd /scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/M2R-inactive-QNB-nature2012/condition-A/rep_1
mkdir Prod_39
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/DI-pipeline-tools
TOP_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/M2R-inactive-QNB-nature2012/condition-A/step5_assembly.pdb"
TRAJ_FILE="/scratch/PI/rondror/DesRes-Simulations/ordered-from-DesRes/nature2012/DESRES-Trajectory_nature2012-A-M2-QNB-all.1/nature2012-A-M2-QNB-all/nature2012-A-M2-QNB-all-039.dcd"
OUTPUT_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/M2R-inactive-QNB-nature2012/condition-A/rep_1/Prod_39/Prod_39_rewrapped.dcd"
python wrapAlign.py $TOP_FILE $TRAJ_FILE $OUTPUT_FILE

cd /scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/M2R-inactive-QNB-nature2012/condition-A/rep_1
mkdir Prod_40
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/DI-pipeline-tools
TOP_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/M2R-inactive-QNB-nature2012/condition-A/step5_assembly.pdb"
TRAJ_FILE="/scratch/PI/rondror/DesRes-Simulations/ordered-from-DesRes/nature2012/DESRES-Trajectory_nature2012-A-M2-QNB-all.1/nature2012-A-M2-QNB-all/nature2012-A-M2-QNB-all-040.dcd"
OUTPUT_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/M2R-inactive-QNB-nature2012/condition-A/rep_1/Prod_40/Prod_40_rewrapped.dcd"
python wrapAlign.py $TOP_FILE $TRAJ_FILE $OUTPUT_FILE

cd /scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/M2R-inactive-QNB-nature2012/condition-A/rep_1
mkdir Prod_41
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/DI-pipeline-tools
TOP_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/M2R-inactive-QNB-nature2012/condition-A/step5_assembly.pdb"
TRAJ_FILE="/scratch/PI/rondror/DesRes-Simulations/ordered-from-DesRes/nature2012/DESRES-Trajectory_nature2012-A-M2-QNB-all.1/nature2012-A-M2-QNB-all/nature2012-A-M2-QNB-all-041.dcd"
OUTPUT_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/M2R-inactive-QNB-nature2012/condition-A/rep_1/Prod_41/Prod_41_rewrapped.dcd"
python wrapAlign.py $TOP_FILE $TRAJ_FILE $OUTPUT_FILE

cd /scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/M2R-inactive-QNB-nature2012/condition-A/rep_1
mkdir Prod_42
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/DI-pipeline-tools
TOP_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/M2R-inactive-QNB-nature2012/condition-A/step5_assembly.pdb"
TRAJ_FILE="/scratch/PI/rondror/DesRes-Simulations/ordered-from-DesRes/nature2012/DESRES-Trajectory_nature2012-A-M2-QNB-all.1/nature2012-A-M2-QNB-all/nature2012-A-M2-QNB-all-042.dcd"
OUTPUT_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/M2R-inactive-QNB-nature2012/condition-A/rep_1/Prod_42/Prod_42_rewrapped.dcd"
python wrapAlign.py $TOP_FILE $TRAJ_FILE $OUTPUT_FILE

cd /scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/M2R-inactive-QNB-nature2012/condition-A/rep_1
mkdir Prod_43
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/DI-pipeline-tools
TOP_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/M2R-inactive-QNB-nature2012/condition-A/step5_assembly.pdb"
TRAJ_FILE="/scratch/PI/rondror/DesRes-Simulations/ordered-from-DesRes/nature2012/DESRES-Trajectory_nature2012-A-M2-QNB-all.1/nature2012-A-M2-QNB-all/nature2012-A-M2-QNB-all-043.dcd"
OUTPUT_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/M2R-inactive-QNB-nature2012/condition-A/rep_1/Prod_43/Prod_43_rewrapped.dcd"
python wrapAlign.py $TOP_FILE $TRAJ_FILE $OUTPUT_FILE

cd /scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/M2R-inactive-QNB-nature2012/condition-A/rep_1
mkdir Prod_44
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/DI-pipeline-tools
TOP_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/M2R-inactive-QNB-nature2012/condition-A/step5_assembly.pdb"
TRAJ_FILE="/scratch/PI/rondror/DesRes-Simulations/ordered-from-DesRes/nature2012/DESRES-Trajectory_nature2012-A-M2-QNB-all.1/nature2012-A-M2-QNB-all/nature2012-A-M2-QNB-all-044.dcd"
OUTPUT_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/M2R-inactive-QNB-nature2012/condition-A/rep_1/Prod_44/Prod_44_rewrapped.dcd"
python wrapAlign.py $TOP_FILE $TRAJ_FILE $OUTPUT_FILE

cd /scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/M2R-inactive-QNB-nature2012/condition-A/rep_1
mkdir Prod_45
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/DI-pipeline-tools
TOP_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/M2R-inactive-QNB-nature2012/condition-A/step5_assembly.pdb"
TRAJ_FILE="/scratch/PI/rondror/DesRes-Simulations/ordered-from-DesRes/nature2012/DESRES-Trajectory_nature2012-A-M2-QNB-all.1/nature2012-A-M2-QNB-all/nature2012-A-M2-QNB-all-045.dcd"
OUTPUT_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/M2R-inactive-QNB-nature2012/condition-A/rep_1/Prod_45/Prod_45_rewrapped.dcd"
python wrapAlign.py $TOP_FILE $TRAJ_FILE $OUTPUT_FILE

cd /scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/M2R-inactive-QNB-nature2012/condition-A/rep_1
mkdir Prod_46
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/DI-pipeline-tools
TOP_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/M2R-inactive-QNB-nature2012/condition-A/step5_assembly.pdb"
TRAJ_FILE="/scratch/PI/rondror/DesRes-Simulations/ordered-from-DesRes/nature2012/DESRES-Trajectory_nature2012-A-M2-QNB-all.1/nature2012-A-M2-QNB-all/nature2012-A-M2-QNB-all-046.dcd"
OUTPUT_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/M2R-inactive-QNB-nature2012/condition-A/rep_1/Prod_46/Prod_46_rewrapped.dcd"
python wrapAlign.py $TOP_FILE $TRAJ_FILE $OUTPUT_FILE

cd /scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/M2R-inactive-QNB-nature2012/condition-A/rep_1
mkdir Prod_47
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/DI-pipeline-tools
TOP_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/M2R-inactive-QNB-nature2012/condition-A/step5_assembly.pdb"
TRAJ_FILE="/scratch/PI/rondror/DesRes-Simulations/ordered-from-DesRes/nature2012/DESRES-Trajectory_nature2012-A-M2-QNB-all.1/nature2012-A-M2-QNB-all/nature2012-A-M2-QNB-all-047.dcd"
OUTPUT_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/M2R-inactive-QNB-nature2012/condition-A/rep_1/Prod_47/Prod_47_rewrapped.dcd"
python wrapAlign.py $TOP_FILE $TRAJ_FILE $OUTPUT_FILE

cd /scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/M2R-inactive-QNB-nature2012/condition-A/rep_1
mkdir Prod_48
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/DI-pipeline-tools
TOP_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/M2R-inactive-QNB-nature2012/condition-A/step5_assembly.pdb"
TRAJ_FILE="/scratch/PI/rondror/DesRes-Simulations/ordered-from-DesRes/nature2012/DESRES-Trajectory_nature2012-A-M2-QNB-all.1/nature2012-A-M2-QNB-all/nature2012-A-M2-QNB-all-048.dcd"
OUTPUT_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/M2R-inactive-QNB-nature2012/condition-A/rep_1/Prod_48/Prod_48_rewrapped.dcd"
python wrapAlign.py $TOP_FILE $TRAJ_FILE $OUTPUT_FILE

cd /scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/M2R-inactive-QNB-nature2012/condition-A/rep_1
mkdir Prod_49
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/DI-pipeline-tools
TOP_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/M2R-inactive-QNB-nature2012/condition-A/step5_assembly.pdb"
TRAJ_FILE="/scratch/PI/rondror/DesRes-Simulations/ordered-from-DesRes/nature2012/DESRES-Trajectory_nature2012-A-M2-QNB-all.1/nature2012-A-M2-QNB-all/nature2012-A-M2-QNB-all-049.dcd"
OUTPUT_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/M2R-inactive-QNB-nature2012/condition-A/rep_1/Prod_49/Prod_49_rewrapped.dcd"
python wrapAlign.py $TOP_FILE $TRAJ_FILE $OUTPUT_FILE

cd /scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/M2R-inactive-QNB-nature2012/condition-A/rep_1
mkdir Prod_50
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/DI-pipeline-tools
TOP_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/M2R-inactive-QNB-nature2012/condition-A/step5_assembly.pdb"
TRAJ_FILE="/scratch/PI/rondror/DesRes-Simulations/ordered-from-DesRes/nature2012/DESRES-Trajectory_nature2012-A-M2-QNB-all.1/nature2012-A-M2-QNB-all/nature2012-A-M2-QNB-all-050.dcd"
OUTPUT_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/M2R-inactive-QNB-nature2012/condition-A/rep_1/Prod_50/Prod_50_rewrapped.dcd"
python wrapAlign.py $TOP_FILE $TRAJ_FILE $OUTPUT_FILE

cd /scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/M2R-inactive-QNB-nature2012/condition-A/rep_1
mkdir Prod_51
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/DI-pipeline-tools
TOP_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/M2R-inactive-QNB-nature2012/condition-A/step5_assembly.pdb"
TRAJ_FILE="/scratch/PI/rondror/DesRes-Simulations/ordered-from-DesRes/nature2012/DESRES-Trajectory_nature2012-A-M2-QNB-all.1/nature2012-A-M2-QNB-all/nature2012-A-M2-QNB-all-051.dcd"
OUTPUT_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/M2R-inactive-QNB-nature2012/condition-A/rep_1/Prod_51/Prod_51_rewrapped.dcd"
python wrapAlign.py $TOP_FILE $TRAJ_FILE $OUTPUT_FILE

cd /scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/M2R-inactive-QNB-nature2012/condition-A/rep_1
mkdir Prod_52
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/DI-pipeline-tools
TOP_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/M2R-inactive-QNB-nature2012/condition-A/step5_assembly.pdb"
TRAJ_FILE="/scratch/PI/rondror/DesRes-Simulations/ordered-from-DesRes/nature2012/DESRES-Trajectory_nature2012-A-M2-QNB-all.1/nature2012-A-M2-QNB-all/nature2012-A-M2-QNB-all-052.dcd"
OUTPUT_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/M2R-inactive-QNB-nature2012/condition-A/rep_1/Prod_52/Prod_52_rewrapped.dcd"
python wrapAlign.py $TOP_FILE $TRAJ_FILE $OUTPUT_FILE

cd /scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/M2R-inactive-QNB-nature2012/condition-A/rep_1
mkdir Prod_53
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/DI-pipeline-tools
TOP_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/M2R-inactive-QNB-nature2012/condition-A/step5_assembly.pdb"
TRAJ_FILE="/scratch/PI/rondror/DesRes-Simulations/ordered-from-DesRes/nature2012/DESRES-Trajectory_nature2012-A-M2-QNB-all.1/nature2012-A-M2-QNB-all/nature2012-A-M2-QNB-all-053.dcd"
OUTPUT_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/M2R-inactive-QNB-nature2012/condition-A/rep_1/Prod_53/Prod_53_rewrapped.dcd"
python wrapAlign.py $TOP_FILE $TRAJ_FILE $OUTPUT_FILE

cd /scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/M2R-inactive-QNB-nature2012/condition-A/rep_1
mkdir Prod_54
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/DI-pipeline-tools
TOP_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/M2R-inactive-QNB-nature2012/condition-A/step5_assembly.pdb"
TRAJ_FILE="/scratch/PI/rondror/DesRes-Simulations/ordered-from-DesRes/nature2012/DESRES-Trajectory_nature2012-A-M2-QNB-all.1/nature2012-A-M2-QNB-all/nature2012-A-M2-QNB-all-054.dcd"
OUTPUT_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/M2R-inactive-QNB-nature2012/condition-A/rep_1/Prod_54/Prod_54_rewrapped.dcd"
python wrapAlign.py $TOP_FILE $TRAJ_FILE $OUTPUT_FILE

cd /scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/M2R-inactive-QNB-nature2012/condition-A/rep_1
mkdir Prod_55
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/DI-pipeline-tools
TOP_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/M2R-inactive-QNB-nature2012/condition-A/step5_assembly.pdb"
TRAJ_FILE="/scratch/PI/rondror/DesRes-Simulations/ordered-from-DesRes/nature2012/DESRES-Trajectory_nature2012-A-M2-QNB-all.1/nature2012-A-M2-QNB-all/nature2012-A-M2-QNB-all-055.dcd"
OUTPUT_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/M2R-inactive-QNB-nature2012/condition-A/rep_1/Prod_55/Prod_55_rewrapped.dcd"
python wrapAlign.py $TOP_FILE $TRAJ_FILE $OUTPUT_FILE

cd /scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/M2R-inactive-QNB-nature2012/condition-A/rep_1
mkdir Prod_56
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/DI-pipeline-tools
TOP_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/M2R-inactive-QNB-nature2012/condition-A/step5_assembly.pdb"
TRAJ_FILE="/scratch/PI/rondror/DesRes-Simulations/ordered-from-DesRes/nature2012/DESRES-Trajectory_nature2012-A-M2-QNB-all.1/nature2012-A-M2-QNB-all/nature2012-A-M2-QNB-all-056.dcd"
OUTPUT_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/M2R-inactive-QNB-nature2012/condition-A/rep_1/Prod_56/Prod_56_rewrapped.dcd"
python wrapAlign.py $TOP_FILE $TRAJ_FILE $OUTPUT_FILE

cd /scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/M2R-inactive-QNB-nature2012/condition-A/rep_1
mkdir Prod_57
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/DI-pipeline-tools
TOP_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/M2R-inactive-QNB-nature2012/condition-A/step5_assembly.pdb"
TRAJ_FILE="/scratch/PI/rondror/DesRes-Simulations/ordered-from-DesRes/nature2012/DESRES-Trajectory_nature2012-A-M2-QNB-all.1/nature2012-A-M2-QNB-all/nature2012-A-M2-QNB-all-057.dcd"
OUTPUT_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/M2R-inactive-QNB-nature2012/condition-A/rep_1/Prod_57/Prod_57_rewrapped.dcd"
python wrapAlign.py $TOP_FILE $TRAJ_FILE $OUTPUT_FILE

cd /scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/M2R-inactive-QNB-nature2012/condition-A/rep_1
mkdir Prod_58
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/DI-pipeline-tools
TOP_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/M2R-inactive-QNB-nature2012/condition-A/step5_assembly.pdb"
TRAJ_FILE="/scratch/PI/rondror/DesRes-Simulations/ordered-from-DesRes/nature2012/DESRES-Trajectory_nature2012-A-M2-QNB-all.1/nature2012-A-M2-QNB-all/nature2012-A-M2-QNB-all-058.dcd"
OUTPUT_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/M2R-inactive-QNB-nature2012/condition-A/rep_1/Prod_58/Prod_58_rewrapped.dcd"
python wrapAlign.py $TOP_FILE $TRAJ_FILE $OUTPUT_FILE

cd /scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/M2R-inactive-QNB-nature2012/condition-A/rep_1
mkdir Prod_59
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/DI-pipeline-tools
TOP_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/M2R-inactive-QNB-nature2012/condition-A/step5_assembly.pdb"
TRAJ_FILE="/scratch/PI/rondror/DesRes-Simulations/ordered-from-DesRes/nature2012/DESRES-Trajectory_nature2012-A-M2-QNB-all.1/nature2012-A-M2-QNB-all/nature2012-A-M2-QNB-all-059.dcd"
OUTPUT_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/M2R-inactive-QNB-nature2012/condition-A/rep_1/Prod_59/Prod_59_rewrapped.dcd"
python wrapAlign.py $TOP_FILE $TRAJ_FILE $OUTPUT_FILE

cd /scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/M2R-inactive-QNB-nature2012/condition-A/rep_1
mkdir Prod_60
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/DI-pipeline-tools
TOP_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/M2R-inactive-QNB-nature2012/condition-A/step5_assembly.pdb"
TRAJ_FILE="/scratch/PI/rondror/DesRes-Simulations/ordered-from-DesRes/nature2012/DESRES-Trajectory_nature2012-A-M2-QNB-all.1/nature2012-A-M2-QNB-all/nature2012-A-M2-QNB-all-060.dcd"
OUTPUT_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/M2R-inactive-QNB-nature2012/condition-A/rep_1/Prod_60/Prod_60_rewrapped.dcd"
python wrapAlign.py $TOP_FILE $TRAJ_FILE $OUTPUT_FILE

cd /scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/M2R-inactive-QNB-nature2012/condition-A/rep_1
mkdir Prod_61
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/DI-pipeline-tools
TOP_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/M2R-inactive-QNB-nature2012/condition-A/step5_assembly.pdb"
TRAJ_FILE="/scratch/PI/rondror/DesRes-Simulations/ordered-from-DesRes/nature2012/DESRES-Trajectory_nature2012-A-M2-QNB-all.1/nature2012-A-M2-QNB-all/nature2012-A-M2-QNB-all-061.dcd"
OUTPUT_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/M2R-inactive-QNB-nature2012/condition-A/rep_1/Prod_61/Prod_61_rewrapped.dcd"
python wrapAlign.py $TOP_FILE $TRAJ_FILE $OUTPUT_FILE

cd /scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/M2R-inactive-QNB-nature2012/condition-A/rep_1
mkdir Prod_62
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/DI-pipeline-tools
TOP_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/M2R-inactive-QNB-nature2012/condition-A/step5_assembly.pdb"
TRAJ_FILE="/scratch/PI/rondror/DesRes-Simulations/ordered-from-DesRes/nature2012/DESRES-Trajectory_nature2012-A-M2-QNB-all.1/nature2012-A-M2-QNB-all/nature2012-A-M2-QNB-all-062.dcd"
OUTPUT_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/M2R-inactive-QNB-nature2012/condition-A/rep_1/Prod_62/Prod_62_rewrapped.dcd"
python wrapAlign.py $TOP_FILE $TRAJ_FILE $OUTPUT_FILE

cd /scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/M2R-inactive-QNB-nature2012/condition-A/rep_1
mkdir Prod_63
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/DI-pipeline-tools
TOP_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/M2R-inactive-QNB-nature2012/condition-A/step5_assembly.pdb"
TRAJ_FILE="/scratch/PI/rondror/DesRes-Simulations/ordered-from-DesRes/nature2012/DESRES-Trajectory_nature2012-A-M2-QNB-all.1/nature2012-A-M2-QNB-all/nature2012-A-M2-QNB-all-063.dcd"
OUTPUT_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/M2R-inactive-QNB-nature2012/condition-A/rep_1/Prod_63/Prod_63_rewrapped.dcd"
python wrapAlign.py $TOP_FILE $TRAJ_FILE $OUTPUT_FILE

cd /scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/M2R-inactive-QNB-nature2012/condition-A/rep_1
mkdir Prod_64
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/DI-pipeline-tools
TOP_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/M2R-inactive-QNB-nature2012/condition-A/step5_assembly.pdb"
TRAJ_FILE="/scratch/PI/rondror/DesRes-Simulations/ordered-from-DesRes/nature2012/DESRES-Trajectory_nature2012-A-M2-QNB-all.1/nature2012-A-M2-QNB-all/nature2012-A-M2-QNB-all-064.dcd"
OUTPUT_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/M2R-inactive-QNB-nature2012/condition-A/rep_1/Prod_64/Prod_64_rewrapped.dcd"
python wrapAlign.py $TOP_FILE $TRAJ_FILE $OUTPUT_FILE

cd /scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/M2R-inactive-QNB-nature2012/condition-A/rep_1
mkdir Prod_65
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/DI-pipeline-tools
TOP_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/M2R-inactive-QNB-nature2012/condition-A/step5_assembly.pdb"
TRAJ_FILE="/scratch/PI/rondror/DesRes-Simulations/ordered-from-DesRes/nature2012/DESRES-Trajectory_nature2012-A-M2-QNB-all.1/nature2012-A-M2-QNB-all/nature2012-A-M2-QNB-all-065.dcd"
OUTPUT_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/M2R-inactive-QNB-nature2012/condition-A/rep_1/Prod_65/Prod_65_rewrapped.dcd"
python wrapAlign.py $TOP_FILE $TRAJ_FILE $OUTPUT_FILE

cd /scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/M2R-inactive-QNB-nature2012/condition-A/rep_1
mkdir Prod_66
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/DI-pipeline-tools
TOP_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/M2R-inactive-QNB-nature2012/condition-A/step5_assembly.pdb"
TRAJ_FILE="/scratch/PI/rondror/DesRes-Simulations/ordered-from-DesRes/nature2012/DESRES-Trajectory_nature2012-A-M2-QNB-all.1/nature2012-A-M2-QNB-all/nature2012-A-M2-QNB-all-066.dcd"
OUTPUT_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/M2R-inactive-QNB-nature2012/condition-A/rep_1/Prod_66/Prod_66_rewrapped.dcd"
python wrapAlign.py $TOP_FILE $TRAJ_FILE $OUTPUT_FILE

cd /scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/M2R-inactive-QNB-nature2012/condition-A/rep_1
mkdir Prod_67
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/DI-pipeline-tools
TOP_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/M2R-inactive-QNB-nature2012/condition-A/step5_assembly.pdb"
TRAJ_FILE="/scratch/PI/rondror/DesRes-Simulations/ordered-from-DesRes/nature2012/DESRES-Trajectory_nature2012-A-M2-QNB-all.1/nature2012-A-M2-QNB-all/nature2012-A-M2-QNB-all-067.dcd"
OUTPUT_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/M2R-inactive-QNB-nature2012/condition-A/rep_1/Prod_67/Prod_67_rewrapped.dcd"
python wrapAlign.py $TOP_FILE $TRAJ_FILE $OUTPUT_FILE

cd /scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/M2R-inactive-QNB-nature2012/condition-A/rep_1
mkdir Prod_68
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/DI-pipeline-tools
TOP_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/M2R-inactive-QNB-nature2012/condition-A/step5_assembly.pdb"
TRAJ_FILE="/scratch/PI/rondror/DesRes-Simulations/ordered-from-DesRes/nature2012/DESRES-Trajectory_nature2012-A-M2-QNB-all.1/nature2012-A-M2-QNB-all/nature2012-A-M2-QNB-all-068.dcd"
OUTPUT_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/M2R-inactive-QNB-nature2012/condition-A/rep_1/Prod_68/Prod_68_rewrapped.dcd"
python wrapAlign.py $TOP_FILE $TRAJ_FILE $OUTPUT_FILE

cd /scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/M2R-inactive-QNB-nature2012/condition-A/rep_1
mkdir Prod_69
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/DI-pipeline-tools
TOP_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/M2R-inactive-QNB-nature2012/condition-A/step5_assembly.pdb"
TRAJ_FILE="/scratch/PI/rondror/DesRes-Simulations/ordered-from-DesRes/nature2012/DESRES-Trajectory_nature2012-A-M2-QNB-all.1/nature2012-A-M2-QNB-all/nature2012-A-M2-QNB-all-069.dcd"
OUTPUT_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/M2R-inactive-QNB-nature2012/condition-A/rep_1/Prod_69/Prod_69_rewrapped.dcd"
python wrapAlign.py $TOP_FILE $TRAJ_FILE $OUTPUT_FILE

cd /scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/M2R-inactive-QNB-nature2012/condition-A/rep_1
mkdir Prod_70
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/DI-pipeline-tools
TOP_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/M2R-inactive-QNB-nature2012/condition-A/step5_assembly.pdb"
TRAJ_FILE="/scratch/PI/rondror/DesRes-Simulations/ordered-from-DesRes/nature2012/DESRES-Trajectory_nature2012-A-M2-QNB-all.1/nature2012-A-M2-QNB-all/nature2012-A-M2-QNB-all-070.dcd"
OUTPUT_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/M2R-inactive-QNB-nature2012/condition-A/rep_1/Prod_70/Prod_70_rewrapped.dcd"
python wrapAlign.py $TOP_FILE $TRAJ_FILE $OUTPUT_FILE

cd /scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/M2R-inactive-QNB-nature2012/condition-A/rep_1
mkdir Prod_71
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/DI-pipeline-tools
TOP_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/M2R-inactive-QNB-nature2012/condition-A/step5_assembly.pdb"
TRAJ_FILE="/scratch/PI/rondror/DesRes-Simulations/ordered-from-DesRes/nature2012/DESRES-Trajectory_nature2012-A-M2-QNB-all.1/nature2012-A-M2-QNB-all/nature2012-A-M2-QNB-all-071.dcd"
OUTPUT_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/M2R-inactive-QNB-nature2012/condition-A/rep_1/Prod_71/Prod_71_rewrapped.dcd"
python wrapAlign.py $TOP_FILE $TRAJ_FILE $OUTPUT_FILE

cd /scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/M2R-inactive-QNB-nature2012/condition-A/rep_1
mkdir Prod_72
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/DI-pipeline-tools
TOP_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/M2R-inactive-QNB-nature2012/condition-A/step5_assembly.pdb"
TRAJ_FILE="/scratch/PI/rondror/DesRes-Simulations/ordered-from-DesRes/nature2012/DESRES-Trajectory_nature2012-A-M2-QNB-all.1/nature2012-A-M2-QNB-all/nature2012-A-M2-QNB-all-072.dcd"
OUTPUT_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/M2R-inactive-QNB-nature2012/condition-A/rep_1/Prod_72/Prod_72_rewrapped.dcd"
python wrapAlign.py $TOP_FILE $TRAJ_FILE $OUTPUT_FILE

cd /scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/M2R-inactive-QNB-nature2012/condition-A/rep_1
mkdir Prod_73
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/DI-pipeline-tools
TOP_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/M2R-inactive-QNB-nature2012/condition-A/step5_assembly.pdb"
TRAJ_FILE="/scratch/PI/rondror/DesRes-Simulations/ordered-from-DesRes/nature2012/DESRES-Trajectory_nature2012-A-M2-QNB-all.1/nature2012-A-M2-QNB-all/nature2012-A-M2-QNB-all-073.dcd"
OUTPUT_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/M2R-inactive-QNB-nature2012/condition-A/rep_1/Prod_73/Prod_73_rewrapped.dcd"
python wrapAlign.py $TOP_FILE $TRAJ_FILE $OUTPUT_FILE

cd /scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/M2R-inactive-QNB-nature2012/condition-A/rep_1
mkdir Prod_74
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/DI-pipeline-tools
TOP_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/M2R-inactive-QNB-nature2012/condition-A/step5_assembly.pdb"
TRAJ_FILE="/scratch/PI/rondror/DesRes-Simulations/ordered-from-DesRes/nature2012/DESRES-Trajectory_nature2012-A-M2-QNB-all.1/nature2012-A-M2-QNB-all/nature2012-A-M2-QNB-all-074.dcd"
OUTPUT_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/M2R-inactive-QNB-nature2012/condition-A/rep_1/Prod_74/Prod_74_rewrapped.dcd"
python wrapAlign.py $TOP_FILE $TRAJ_FILE $OUTPUT_FILE

cd /scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/M2R-inactive-QNB-nature2012/condition-A/rep_1
mkdir Prod_75
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/DI-pipeline-tools
TOP_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/M2R-inactive-QNB-nature2012/condition-A/step5_assembly.pdb"
TRAJ_FILE="/scratch/PI/rondror/DesRes-Simulations/ordered-from-DesRes/nature2012/DESRES-Trajectory_nature2012-A-M2-QNB-all.1/nature2012-A-M2-QNB-all/nature2012-A-M2-QNB-all-075.dcd"
OUTPUT_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/M2R-inactive-QNB-nature2012/condition-A/rep_1/Prod_75/Prod_75_rewrapped.dcd"
python wrapAlign.py $TOP_FILE $TRAJ_FILE $OUTPUT_FILE

cd /scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/M2R-inactive-QNB-nature2012/condition-A/rep_1
mkdir Prod_76
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/DI-pipeline-tools
TOP_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/M2R-inactive-QNB-nature2012/condition-A/step5_assembly.pdb"
TRAJ_FILE="/scratch/PI/rondror/DesRes-Simulations/ordered-from-DesRes/nature2012/DESRES-Trajectory_nature2012-A-M2-QNB-all.1/nature2012-A-M2-QNB-all/nature2012-A-M2-QNB-all-076.dcd"
OUTPUT_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/M2R-inactive-QNB-nature2012/condition-A/rep_1/Prod_76/Prod_76_rewrapped.dcd"
python wrapAlign.py $TOP_FILE $TRAJ_FILE $OUTPUT_FILE

cd /scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/M2R-inactive-QNB-nature2012/condition-A/rep_1
mkdir Prod_77
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/DI-pipeline-tools
TOP_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/M2R-inactive-QNB-nature2012/condition-A/step5_assembly.pdb"
TRAJ_FILE="/scratch/PI/rondror/DesRes-Simulations/ordered-from-DesRes/nature2012/DESRES-Trajectory_nature2012-A-M2-QNB-all.1/nature2012-A-M2-QNB-all/nature2012-A-M2-QNB-all-077.dcd"
OUTPUT_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/M2R-inactive-QNB-nature2012/condition-A/rep_1/Prod_77/Prod_77_rewrapped.dcd"
python wrapAlign.py $TOP_FILE $TRAJ_FILE $OUTPUT_FILE

cd /scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/M2R-inactive-QNB-nature2012/condition-A/rep_1
mkdir Prod_78
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/DI-pipeline-tools
TOP_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/M2R-inactive-QNB-nature2012/condition-A/step5_assembly.pdb"
TRAJ_FILE="/scratch/PI/rondror/DesRes-Simulations/ordered-from-DesRes/nature2012/DESRES-Trajectory_nature2012-A-M2-QNB-all.1/nature2012-A-M2-QNB-all/nature2012-A-M2-QNB-all-078.dcd"
OUTPUT_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/M2R-inactive-QNB-nature2012/condition-A/rep_1/Prod_78/Prod_78_rewrapped.dcd"
python wrapAlign.py $TOP_FILE $TRAJ_FILE $OUTPUT_FILE

cd /scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/M2R-inactive-QNB-nature2012/condition-A/rep_1
mkdir Prod_79
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/DI-pipeline-tools
TOP_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/M2R-inactive-QNB-nature2012/condition-A/step5_assembly.pdb"
TRAJ_FILE="/scratch/PI/rondror/DesRes-Simulations/ordered-from-DesRes/nature2012/DESRES-Trajectory_nature2012-A-M2-QNB-all.1/nature2012-A-M2-QNB-all/nature2012-A-M2-QNB-all-079.dcd"
OUTPUT_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/M2R-inactive-QNB-nature2012/condition-A/rep_1/Prod_79/Prod_79_rewrapped.dcd"
python wrapAlign.py $TOP_FILE $TRAJ_FILE $OUTPUT_FILE

cd /scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/M2R-inactive-QNB-nature2012/condition-A/rep_1
mkdir Prod_80
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/DI-pipeline-tools
TOP_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/M2R-inactive-QNB-nature2012/condition-A/step5_assembly.pdb"
TRAJ_FILE="/scratch/PI/rondror/DesRes-Simulations/ordered-from-DesRes/nature2012/DESRES-Trajectory_nature2012-A-M2-QNB-all.1/nature2012-A-M2-QNB-all/nature2012-A-M2-QNB-all-080.dcd"
OUTPUT_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/M2R-inactive-QNB-nature2012/condition-A/rep_1/Prod_80/Prod_80_rewrapped.dcd"
python wrapAlign.py $TOP_FILE $TRAJ_FILE $OUTPUT_FILE

cd /scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/M2R-inactive-QNB-nature2012/condition-A/rep_1
mkdir Prod_81
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/DI-pipeline-tools
TOP_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/M2R-inactive-QNB-nature2012/condition-A/step5_assembly.pdb"
TRAJ_FILE="/scratch/PI/rondror/DesRes-Simulations/ordered-from-DesRes/nature2012/DESRES-Trajectory_nature2012-A-M2-QNB-all.1/nature2012-A-M2-QNB-all/nature2012-A-M2-QNB-all-081.dcd"
OUTPUT_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/M2R-inactive-QNB-nature2012/condition-A/rep_1/Prod_81/Prod_81_rewrapped.dcd"
python wrapAlign.py $TOP_FILE $TRAJ_FILE $OUTPUT_FILE

cd /scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/M2R-inactive-QNB-nature2012/condition-A/rep_1
mkdir Prod_82
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/DI-pipeline-tools
TOP_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/M2R-inactive-QNB-nature2012/condition-A/step5_assembly.pdb"
TRAJ_FILE="/scratch/PI/rondror/DesRes-Simulations/ordered-from-DesRes/nature2012/DESRES-Trajectory_nature2012-A-M2-QNB-all.1/nature2012-A-M2-QNB-all/nature2012-A-M2-QNB-all-082.dcd"
OUTPUT_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/M2R-inactive-QNB-nature2012/condition-A/rep_1/Prod_82/Prod_82_rewrapped.dcd"
python wrapAlign.py $TOP_FILE $TRAJ_FILE $OUTPUT_FILE

cd /scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/M2R-inactive-QNB-nature2012/condition-A/rep_1
mkdir Prod_83
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/DI-pipeline-tools
TOP_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/M2R-inactive-QNB-nature2012/condition-A/step5_assembly.pdb"
TRAJ_FILE="/scratch/PI/rondror/DesRes-Simulations/ordered-from-DesRes/nature2012/DESRES-Trajectory_nature2012-A-M2-QNB-all.1/nature2012-A-M2-QNB-all/nature2012-A-M2-QNB-all-083.dcd"
OUTPUT_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/M2R-inactive-QNB-nature2012/condition-A/rep_1/Prod_83/Prod_83_rewrapped.dcd"
python wrapAlign.py $TOP_FILE $TRAJ_FILE $OUTPUT_FILE

cd /scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/M2R-inactive-QNB-nature2012/condition-A/rep_1
mkdir Prod_84
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/DI-pipeline-tools
TOP_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/M2R-inactive-QNB-nature2012/condition-A/step5_assembly.pdb"
TRAJ_FILE="/scratch/PI/rondror/DesRes-Simulations/ordered-from-DesRes/nature2012/DESRES-Trajectory_nature2012-A-M2-QNB-all.1/nature2012-A-M2-QNB-all/nature2012-A-M2-QNB-all-084.dcd"
OUTPUT_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/M2R-inactive-QNB-nature2012/condition-A/rep_1/Prod_84/Prod_84_rewrapped.dcd"
python wrapAlign.py $TOP_FILE $TRAJ_FILE $OUTPUT_FILE

cd /scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/M2R-inactive-QNB-nature2012/condition-A/rep_1
mkdir Prod_85
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/DI-pipeline-tools
TOP_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/M2R-inactive-QNB-nature2012/condition-A/step5_assembly.pdb"
TRAJ_FILE="/scratch/PI/rondror/DesRes-Simulations/ordered-from-DesRes/nature2012/DESRES-Trajectory_nature2012-A-M2-QNB-all.1/nature2012-A-M2-QNB-all/nature2012-A-M2-QNB-all-085.dcd"
OUTPUT_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/M2R-inactive-QNB-nature2012/condition-A/rep_1/Prod_85/Prod_85_rewrapped.dcd"
python wrapAlign.py $TOP_FILE $TRAJ_FILE $OUTPUT_FILE

cd /scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/M2R-inactive-QNB-nature2012/condition-A/rep_1
mkdir Prod_86
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/DI-pipeline-tools
TOP_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/M2R-inactive-QNB-nature2012/condition-A/step5_assembly.pdb"
TRAJ_FILE="/scratch/PI/rondror/DesRes-Simulations/ordered-from-DesRes/nature2012/DESRES-Trajectory_nature2012-A-M2-QNB-all.1/nature2012-A-M2-QNB-all/nature2012-A-M2-QNB-all-086.dcd"
OUTPUT_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/M2R-inactive-QNB-nature2012/condition-A/rep_1/Prod_86/Prod_86_rewrapped.dcd"
python wrapAlign.py $TOP_FILE $TRAJ_FILE $OUTPUT_FILE

cd /scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/M2R-inactive-QNB-nature2012/condition-A/rep_1
mkdir Prod_87
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/DI-pipeline-tools
TOP_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/M2R-inactive-QNB-nature2012/condition-A/step5_assembly.pdb"
TRAJ_FILE="/scratch/PI/rondror/DesRes-Simulations/ordered-from-DesRes/nature2012/DESRES-Trajectory_nature2012-A-M2-QNB-all.1/nature2012-A-M2-QNB-all/nature2012-A-M2-QNB-all-087.dcd"
OUTPUT_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/M2R-inactive-QNB-nature2012/condition-A/rep_1/Prod_87/Prod_87_rewrapped.dcd"
python wrapAlign.py $TOP_FILE $TRAJ_FILE $OUTPUT_FILE

cd /scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/M2R-inactive-QNB-nature2012/condition-A/rep_1
mkdir Prod_88
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/DI-pipeline-tools
TOP_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/M2R-inactive-QNB-nature2012/condition-A/step5_assembly.pdb"
TRAJ_FILE="/scratch/PI/rondror/DesRes-Simulations/ordered-from-DesRes/nature2012/DESRES-Trajectory_nature2012-A-M2-QNB-all.1/nature2012-A-M2-QNB-all/nature2012-A-M2-QNB-all-088.dcd"
OUTPUT_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/M2R-inactive-QNB-nature2012/condition-A/rep_1/Prod_88/Prod_88_rewrapped.dcd"
python wrapAlign.py $TOP_FILE $TRAJ_FILE $OUTPUT_FILE

cd /scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/M2R-inactive-QNB-nature2012/condition-A/rep_1
mkdir Prod_89
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/DI-pipeline-tools
TOP_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/M2R-inactive-QNB-nature2012/condition-A/step5_assembly.pdb"
TRAJ_FILE="/scratch/PI/rondror/DesRes-Simulations/ordered-from-DesRes/nature2012/DESRES-Trajectory_nature2012-A-M2-QNB-all.1/nature2012-A-M2-QNB-all/nature2012-A-M2-QNB-all-089.dcd"
OUTPUT_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/M2R-inactive-QNB-nature2012/condition-A/rep_1/Prod_89/Prod_89_rewrapped.dcd"
python wrapAlign.py $TOP_FILE $TRAJ_FILE $OUTPUT_FILE

cd /scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/M2R-inactive-QNB-nature2012/condition-A/rep_1
mkdir Prod_90
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/DI-pipeline-tools
TOP_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/M2R-inactive-QNB-nature2012/condition-A/step5_assembly.pdb"
TRAJ_FILE="/scratch/PI/rondror/DesRes-Simulations/ordered-from-DesRes/nature2012/DESRES-Trajectory_nature2012-A-M2-QNB-all.1/nature2012-A-M2-QNB-all/nature2012-A-M2-QNB-all-090.dcd"
OUTPUT_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/M2R-inactive-QNB-nature2012/condition-A/rep_1/Prod_90/Prod_90_rewrapped.dcd"
python wrapAlign.py $TOP_FILE $TRAJ_FILE $OUTPUT_FILE

cd /scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/M2R-inactive-QNB-nature2012/condition-A/rep_1
mkdir Prod_91
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/DI-pipeline-tools
TOP_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/M2R-inactive-QNB-nature2012/condition-A/step5_assembly.pdb"
TRAJ_FILE="/scratch/PI/rondror/DesRes-Simulations/ordered-from-DesRes/nature2012/DESRES-Trajectory_nature2012-A-M2-QNB-all.1/nature2012-A-M2-QNB-all/nature2012-A-M2-QNB-all-091.dcd"
OUTPUT_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/M2R-inactive-QNB-nature2012/condition-A/rep_1/Prod_91/Prod_91_rewrapped.dcd"
python wrapAlign.py $TOP_FILE $TRAJ_FILE $OUTPUT_FILE

