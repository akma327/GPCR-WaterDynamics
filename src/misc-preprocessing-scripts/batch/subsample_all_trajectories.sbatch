#!/bin/bash

#Sbatch for: Computing Binary Dictionary for EXP_NUM:10 REP_ID:rep_1 Interaction:-hbbb
#################
#set a job name
#SBATCH --job-name=subsample_combine_traj
#SBATCH --mail-user=akma327@stanford.edu --mail-type=ALL
#################
# A file for job output, you can check job progress
#SBATCH --output=subsample_combine_traj_PROGRESS.out
#################
# A file for errors from the job
#SBATCH --error=subsample_combine_traj_ERROR.out
#################
#SBATCH --time=4:00:00
#################
#SBATCH --partition=rondror
#SBATCH --qos=rondror
#################
#number of nodes you are requesting
#SBATCH --tasks=1
#SBATCH --ntasks-per-socket=1
#SBATCH --mem=70000
#################

python subsample_all_trajectories.py

# TOP_FILE="/scratch/PI/rondror/DesRes-Simulations/subsampled_desres_traj/B2AR-active-Gs-BI-science2015/condition-22/rep_1/science2015-22-all.mae"
# TRAJ_DIR="/scratch/PI/rondror/DesRes-Simulations/Downloaded/Gprot_Science2015_Dror_Desres/science2015/DESRES-Trajectory_science2015-22-all/science2015-22-all"
# FILETYPE="dcd"
# OUTPUT_DIR="/scratch/PI/rondror/DesRes-Simulations/subsampled_desres_traj/B2AR-active-Gs-BI-science2015/condition-22/rep_1/stitched.dcd"
# cd /scratch/PI/rondror/akma327/DynamicNetworks/src/misc-preprocessing-scripts
# python subsample_combine_traj.py $TOP_FILE $TRAJ_DIR $FILETYPE $OUTPUT_DIR
