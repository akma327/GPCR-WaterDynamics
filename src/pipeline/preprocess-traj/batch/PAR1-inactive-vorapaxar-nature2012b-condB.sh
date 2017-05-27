# Converting .mae to .pdb file and placing in the output experimental condition path

cd /scratch/PI/rondror/akma327/DynamicNetworks/src/DI-pipeline-tools
MAE_PATH="/scratch/PI/rondror/DesRes-Simulations/Full/nature2012b/DESRES-Trajectory_nature2012b-B-02-all/nature2012b-B-02-all/nature2012b-B-02-all.mae"
OUTPUT_PDB_PATH="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/PAR1-inactive-vorapaxar-nature2012b/condition-B/step5_assembly.pdb"
python maeToPdb.py $MAE_PATH $OUTPUT_PDB_PATH

# Copy and rename .mae file to the output experimental condition path
cp /scratch/PI/rondror/DesRes-Simulations/Full/nature2012b/DESRES-Trajectory_nature2012b-B-02-all/nature2012b-B-02-all/nature2012b-B-02-all.mae /scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/PAR1-inactive-vorapaxar-nature2012b/condition-B/step5_assembly.mae

# Stripping waters from original pdb

TOPOLOGY_PATH="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/PAR1-inactive-vorapaxar-nature2012b/condition-B/step5_assembly.pdb"
OUTPUT_FILE_PATH="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/PAR1-inactive-vorapaxar-nature2012b/condition-B/step5_assembly_strip_waters.pdb"
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/DI-pipeline-tools
python stripWaters.py -top $TOPOLOGY_PATH $OUTPUT_FILE_PATH


# Rewrapping original .dcd files and placing copy in output experiment fragment folder path
cd /scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/PAR1-inactive-vorapaxar-nature2012b/condition-B/rep_1
mkdir Prod_0
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/DI-pipeline-tools
TOP_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/PAR1-inactive-vorapaxar-nature2012b/condition-B/step5_assembly.pdb"
TRAJ_FILE="/scratch/PI/rondror/DesRes-Simulations/Full/nature2012b/DESRES-Trajectory_nature2012b-B-02-all/nature2012b-B-02-all/nature2012b-B-02-all-000.dcd"
OUTPUT_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/PAR1-inactive-vorapaxar-nature2012b/condition-B/rep_1/Prod_0/Prod_0_rewrapped.dcd"
python wrapAlign.py $TOP_FILE $TRAJ_FILE $OUTPUT_FILE -crys

# Stripping water from rewrapped .dcd file and placing output file in same experiment fragment folder path
TRAJ_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/PAR1-inactive-vorapaxar-nature2012b/condition-B/rep_1/Prod_0/Prod_0_rewrapped.dcd"
OUTPUT_FILE_PATH="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/PAR1-inactive-vorapaxar-nature2012b/condition-B/rep_1/Prod_0/Prod_0_rewrapped_strip_waters.dcd"
python stripWaters.py -top $TOP_FILE -traj $TRAJ_FILE $OUTPUT_FILE_PATH


# Rewrapping original .dcd files and placing copy in output experiment fragment folder path
cd /scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/PAR1-inactive-vorapaxar-nature2012b/condition-B/rep_1
mkdir Prod_1
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/DI-pipeline-tools
TOP_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/PAR1-inactive-vorapaxar-nature2012b/condition-B/step5_assembly.pdb"
TRAJ_FILE="/scratch/PI/rondror/DesRes-Simulations/Full/nature2012b/DESRES-Trajectory_nature2012b-B-02-all/nature2012b-B-02-all/nature2012b-B-02-all-001.dcd"
OUTPUT_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/PAR1-inactive-vorapaxar-nature2012b/condition-B/rep_1/Prod_1/Prod_1_rewrapped.dcd"
python wrapAlign.py $TOP_FILE $TRAJ_FILE $OUTPUT_FILE

# Stripping water from rewrapped .dcd file and placing output file in same experiment fragment folder path
TRAJ_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/PAR1-inactive-vorapaxar-nature2012b/condition-B/rep_1/Prod_1/Prod_1_rewrapped.dcd"
OUTPUT_FILE_PATH="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/PAR1-inactive-vorapaxar-nature2012b/condition-B/rep_1/Prod_1/Prod_1_rewrapped_strip_waters.dcd"
python stripWaters.py -top $TOP_FILE -traj $TRAJ_FILE $OUTPUT_FILE_PATH


# Rewrapping original .dcd files and placing copy in output experiment fragment folder path
cd /scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/PAR1-inactive-vorapaxar-nature2012b/condition-B/rep_1
mkdir Prod_2
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/DI-pipeline-tools
TOP_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/PAR1-inactive-vorapaxar-nature2012b/condition-B/step5_assembly.pdb"
TRAJ_FILE="/scratch/PI/rondror/DesRes-Simulations/Full/nature2012b/DESRES-Trajectory_nature2012b-B-02-all/nature2012b-B-02-all/nature2012b-B-02-all-002.dcd"
OUTPUT_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/PAR1-inactive-vorapaxar-nature2012b/condition-B/rep_1/Prod_2/Prod_2_rewrapped.dcd"
python wrapAlign.py $TOP_FILE $TRAJ_FILE $OUTPUT_FILE

# Stripping water from rewrapped .dcd file and placing output file in same experiment fragment folder path
TRAJ_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/PAR1-inactive-vorapaxar-nature2012b/condition-B/rep_1/Prod_2/Prod_2_rewrapped.dcd"
OUTPUT_FILE_PATH="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/PAR1-inactive-vorapaxar-nature2012b/condition-B/rep_1/Prod_2/Prod_2_rewrapped_strip_waters.dcd"
python stripWaters.py -top $TOP_FILE -traj $TRAJ_FILE $OUTPUT_FILE_PATH


# Rewrapping original .dcd files and placing copy in output experiment fragment folder path
cd /scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/PAR1-inactive-vorapaxar-nature2012b/condition-B/rep_1
mkdir Prod_3
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/DI-pipeline-tools
TOP_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/PAR1-inactive-vorapaxar-nature2012b/condition-B/step5_assembly.pdb"
TRAJ_FILE="/scratch/PI/rondror/DesRes-Simulations/Full/nature2012b/DESRES-Trajectory_nature2012b-B-02-all/nature2012b-B-02-all/nature2012b-B-02-all-003.dcd"
OUTPUT_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/PAR1-inactive-vorapaxar-nature2012b/condition-B/rep_1/Prod_3/Prod_3_rewrapped.dcd"
python wrapAlign.py $TOP_FILE $TRAJ_FILE $OUTPUT_FILE

# Stripping water from rewrapped .dcd file and placing output file in same experiment fragment folder path
TRAJ_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/PAR1-inactive-vorapaxar-nature2012b/condition-B/rep_1/Prod_3/Prod_3_rewrapped.dcd"
OUTPUT_FILE_PATH="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/PAR1-inactive-vorapaxar-nature2012b/condition-B/rep_1/Prod_3/Prod_3_rewrapped_strip_waters.dcd"
python stripWaters.py -top $TOP_FILE -traj $TRAJ_FILE $OUTPUT_FILE_PATH


# Rewrapping original .dcd files and placing copy in output experiment fragment folder path
cd /scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/PAR1-inactive-vorapaxar-nature2012b/condition-B/rep_1
mkdir Prod_4
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/DI-pipeline-tools
TOP_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/PAR1-inactive-vorapaxar-nature2012b/condition-B/step5_assembly.pdb"
TRAJ_FILE="/scratch/PI/rondror/DesRes-Simulations/Full/nature2012b/DESRES-Trajectory_nature2012b-B-02-all/nature2012b-B-02-all/nature2012b-B-02-all-004.dcd"
OUTPUT_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/PAR1-inactive-vorapaxar-nature2012b/condition-B/rep_1/Prod_4/Prod_4_rewrapped.dcd"
python wrapAlign.py $TOP_FILE $TRAJ_FILE $OUTPUT_FILE

# Stripping water from rewrapped .dcd file and placing output file in same experiment fragment folder path
TRAJ_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/PAR1-inactive-vorapaxar-nature2012b/condition-B/rep_1/Prod_4/Prod_4_rewrapped.dcd"
OUTPUT_FILE_PATH="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/PAR1-inactive-vorapaxar-nature2012b/condition-B/rep_1/Prod_4/Prod_4_rewrapped_strip_waters.dcd"
python stripWaters.py -top $TOP_FILE -traj $TRAJ_FILE $OUTPUT_FILE_PATH


# Rewrapping original .dcd files and placing copy in output experiment fragment folder path
cd /scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/PAR1-inactive-vorapaxar-nature2012b/condition-B/rep_1
mkdir Prod_5
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/DI-pipeline-tools
TOP_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/PAR1-inactive-vorapaxar-nature2012b/condition-B/step5_assembly.pdb"
TRAJ_FILE="/scratch/PI/rondror/DesRes-Simulations/Full/nature2012b/DESRES-Trajectory_nature2012b-B-02-all/nature2012b-B-02-all/nature2012b-B-02-all-005.dcd"
OUTPUT_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/PAR1-inactive-vorapaxar-nature2012b/condition-B/rep_1/Prod_5/Prod_5_rewrapped.dcd"
python wrapAlign.py $TOP_FILE $TRAJ_FILE $OUTPUT_FILE

# Stripping water from rewrapped .dcd file and placing output file in same experiment fragment folder path
TRAJ_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/PAR1-inactive-vorapaxar-nature2012b/condition-B/rep_1/Prod_5/Prod_5_rewrapped.dcd"
OUTPUT_FILE_PATH="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/PAR1-inactive-vorapaxar-nature2012b/condition-B/rep_1/Prod_5/Prod_5_rewrapped_strip_waters.dcd"
python stripWaters.py -top $TOP_FILE -traj $TRAJ_FILE $OUTPUT_FILE_PATH


