# Water Density Fragment computation for aligned AMBER Trajectories

# MOR-active 

SIMULATION_TOOL="-amber"
TOP="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/AlignedAmberTraj/MOR-active-noNb-BU72-nature2015/condition-nb-interface-restrained-BU72/step5_assembly.pdb"
TRAJ_DIR="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/AlignedAmberTraj/MOR-active-noNb-BU72-nature2015/condition-nb-interface-restrained-BU72/rep_1"
OUTPUT_DIR="/scratch/PI/rondror/akma327/DynamicNetworks/data/water-density/MOR-active-noNb-BU72-nature2015/condition-nb-interface-restrained-BU72/rep_1"
JOB_FOLDER="/scratch/PI/rondror/akma327/DynamicNetworks/src/analysis/water-density/jobs/MOR-active-noNb-BU72-nature2015/condition-nb-interface-restrained-BU72/rep_1"
python ../fragment_water_density.py $SIMULATION_TOOL $TOP $TRAJ_DIR $OUTPUT_DIR $JOB_FOLDER


SIMULATION_TOOL="-amber"
TOP="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/AlignedAmberTraj/MOR-active-noNb-BU72-nature2015/condition-nb-interface-restrained-BU72/step5_assembly.pdb"
TRAJ_DIR="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/AlignedAmberTraj/MOR-active-noNb-BU72-nature2015/condition-nb-interface-restrained-BU72/rep_2"
OUTPUT_DIR="/scratch/PI/rondror/akma327/DynamicNetworks/data/water-density/MOR-active-noNb-BU72-nature2015/condition-nb-interface-restrained-BU72/rep_2"
JOB_FOLDER="/scratch/PI/rondror/akma327/DynamicNetworks/src/analysis/water-density/jobs/MOR-active-noNb-BU72-nature2015/condition-nb-interface-restrained-BU72/rep_2"
python ../fragment_water_density.py $SIMULATION_TOOL $TOP $TRAJ_DIR $OUTPUT_DIR $JOB_FOLDER


SIMULATION_TOOL="-amber"
TOP="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/AlignedAmberTraj/MOR-active-noNb-BU72-nature2015/condition-nb-interface-restrained-BU72/step5_assembly.pdb"
TRAJ_DIR="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/AlignedAmberTraj/MOR-active-noNb-BU72-nature2015/condition-nb-interface-restrained-BU72/rep_3"
OUTPUT_DIR="/scratch/PI/rondror/akma327/DynamicNetworks/data/water-density/MOR-active-noNb-BU72-nature2015/condition-nb-interface-restrained-BU72/rep_3"
JOB_FOLDER="/scratch/PI/rondror/akma327/DynamicNetworks/src/analysis/water-density/jobs/MOR-active-noNb-BU72-nature2015/condition-nb-interface-restrained-BU72/rep_3"
python ../fragment_water_density.py $SIMULATION_TOOL $TOP $TRAJ_DIR $OUTPUT_DIR $JOB_FOLDER


# MOR-inactive - 1 job per node

SIMULATION_TOOL="-amber"
TOP="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/AlignedAmberTraj/MOR-inactive-bFNA-nature2015/condition-bFNA-bound/step5_assembly.pdb"
TRAJ_DIR="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/AlignedAmberTraj/MOR-inactive-bFNA-nature2015/condition-bFNA-bound/rep_1"
OUTPUT_DIR="/scratch/PI/rondror/akma327/DynamicNetworks/data/water-density/MOR-inactive-bFNA-nature2015/condition-bFNA-bound/rep_1"
JOB_FOLDER="/scratch/PI/rondror/akma327/DynamicNetworks/src/analysis/water-density/jobs/MOR-inactive-bFNA-nature2015/condition-bFNA-bound/rep_1"
python ../fragment_water_density.py $SIMULATION_TOOL $TOP $TRAJ_DIR $OUTPUT_DIR $JOB_FOLDER


SIMULATION_TOOL="-amber"
TOP="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/AlignedAmberTraj/MOR-inactive-bFNA-nature2015/condition-bFNA-bound/step5_assembly.pdb"
TRAJ_DIR="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/AlignedAmberTraj/MOR-inactive-bFNA-nature2015/condition-bFNA-bound/rep_2"
OUTPUT_DIR="/scratch/PI/rondror/akma327/DynamicNetworks/data/water-density/MOR-inactive-bFNA-nature2015/condition-bFNA-bound/rep_2"
JOB_FOLDER="/scratch/PI/rondror/akma327/DynamicNetworks/src/analysis/water-density/jobs/MOR-inactive-bFNA-nature2015/condition-bFNA-bound/rep_2"
python ../fragment_water_density.py $SIMULATION_TOOL $TOP $TRAJ_DIR $OUTPUT_DIR $JOB_FOLDER


SIMULATION_TOOL="-amber"
TOP="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/AlignedAmberTraj/MOR-inactive-bFNA-nature2015/condition-bFNA-bound/step5_assembly.pdb"
TRAJ_DIR="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/AlignedAmberTraj/MOR-inactive-bFNA-nature2015/condition-bFNA-bound/rep_3"
OUTPUT_DIR="/scratch/PI/rondror/akma327/DynamicNetworks/data/water-density/MOR-inactive-bFNA-nature2015/condition-bFNA-bound/rep_3"
JOB_FOLDER="/scratch/PI/rondror/akma327/DynamicNetworks/src/analysis/water-density/jobs/MOR-inactive-bFNA-nature2015/condition-bFNA-bound/rep_3"
python ../fragment_water_density.py $SIMULATION_TOOL $TOP $TRAJ_DIR $OUTPUT_DIR $JOB_FOLDER


# D4R-inactive

SIMULATION_TOOL="-amber"
TOP="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/AlignedAmberTraj/D4R-inactive-nemanopride-unpublished/condition-antagonist-bound/step5_assembly.pdb"
TRAJ_DIR="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/AlignedAmberTraj/D4R-inactive-nemanopride-unpublished/condition-antagonist-bound/rep_1"
OUTPUT_DIR="/scratch/PI/rondror/akma327/DynamicNetworks/data/water-density/D4R-inactive-nemanopride-unpublished/condition-antagonist-bound/rep_1"
JOB_FOLDER="/scratch/PI/rondror/akma327/DynamicNetworks/src/analysis/water-density/jobs/D4R-inactive-nemanopride-unpublished/condition-antagonist-bound/rep_1"
python ../fragment_water_density.py $SIMULATION_TOOL $TOP $TRAJ_DIR $OUTPUT_DIR $JOB_FOLDER


SIMULATION_TOOL="-amber"
TOP="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/AlignedAmberTraj/D4R-inactive-nemanopride-unpublished/condition-antagonist-bound/step5_assembly.pdb"
TRAJ_DIR="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/AlignedAmberTraj/D4R-inactive-nemanopride-unpublished/condition-antagonist-bound/rep_2"
OUTPUT_DIR="/scratch/PI/rondror/akma327/DynamicNetworks/data/water-density/D4R-inactive-nemanopride-unpublished/condition-antagonist-bound/rep_2"
JOB_FOLDER="/scratch/PI/rondror/akma327/DynamicNetworks/src/analysis/water-density/jobs/D4R-inactive-nemanopride-unpublished/condition-antagonist-bound/rep_2"
python ../fragment_water_density.py $SIMULATION_TOOL $TOP $TRAJ_DIR $OUTPUT_DIR $JOB_FOLDER



SIMULATION_TOOL="-amber"
TOP="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/AlignedAmberTraj/D4R-inactive-nemanopride-unpublished/condition-antagonist-bound/step5_assembly.pdb"
TRAJ_DIR="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/AlignedAmberTraj/D4R-inactive-nemanopride-unpublished/condition-antagonist-bound/rep_3"
OUTPUT_DIR="/scratch/PI/rondror/akma327/DynamicNetworks/data/water-density/D4R-inactive-nemanopride-unpublished/condition-antagonist-bound/rep_3"
JOB_FOLDER="/scratch/PI/rondror/akma327/DynamicNetworks/src/analysis/water-density/jobs/D4R-inactive-nemanopride-unpublished/condition-antagonist-bound/rep_3"
python ../fragment_water_density.py $SIMULATION_TOOL $TOP $TRAJ_DIR $OUTPUT_DIR $JOB_FOLDER


# DOR-inactive

SIMULATION_TOOL="-amber"
TOP="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/AlignedAmberTraj/DOR-inactive-naltrindole-unpublished/condition-naltrindole-bound/step5_assembly.pdb"
TRAJ_DIR="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/AlignedAmberTraj/DOR-inactive-naltrindole-unpublished/condition-naltrindole-bound/rep_1"
OUTPUT_DIR="/scratch/PI/rondror/akma327/DynamicNetworks/data/water-density/DOR-inactive-naltrindole-unpublished/condition-naltrindole-bound/rep_1"
JOB_FOLDER="/scratch/PI/rondror/akma327/DynamicNetworks/src/analysis/water-density/jobs/DOR-inactive-naltrindole-unpublished/condition-naltrindole-bound/rep_1"
python ../fragment_water_density.py $SIMULATION_TOOL $TOP $TRAJ_DIR $OUTPUT_DIR $JOB_FOLDER


SIMULATION_TOOL="-amber"
TOP="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/AlignedAmberTraj/DOR-inactive-naltrindole-unpublished/condition-naltrindole-bound/step5_assembly.pdb"
TRAJ_DIR="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/AlignedAmberTraj/DOR-inactive-naltrindole-unpublished/condition-naltrindole-bound/rep_2"
OUTPUT_DIR="/scratch/PI/rondror/akma327/DynamicNetworks/data/water-density/DOR-inactive-naltrindole-unpublished/condition-naltrindole-bound/rep_2"
JOB_FOLDER="/scratch/PI/rondror/akma327/DynamicNetworks/src/analysis/water-density/jobs/DOR-inactive-naltrindole-unpublished/condition-naltrindole-bound/rep_2"
python ../fragment_water_density.py $SIMULATION_TOOL $TOP $TRAJ_DIR $OUTPUT_DIR $JOB_FOLDER


SIMULATION_TOOL="-amber"
TOP="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/AlignedAmberTraj/DOR-inactive-naltrindole-unpublished/condition-naltrindole-bound/step5_assembly.pdb"
TRAJ_DIR="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/AlignedAmberTraj/DOR-inactive-naltrindole-unpublished/condition-naltrindole-bound/rep_3"
OUTPUT_DIR="/scratch/PI/rondror/akma327/DynamicNetworks/data/water-density/DOR-inactive-naltrindole-unpublished/condition-naltrindole-bound/rep_3"
JOB_FOLDER="/scratch/PI/rondror/akma327/DynamicNetworks/src/analysis/water-density/jobs/DOR-inactive-naltrindole-unpublished/condition-naltrindole-bound/rep_3"
python ../fragment_water_density.py $SIMULATION_TOOL $TOP $TRAJ_DIR $OUTPUT_DIR $JOB_FOLDER


