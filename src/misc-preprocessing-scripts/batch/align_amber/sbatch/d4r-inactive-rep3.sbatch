#!/bin/bash

#Sbatch for: Align Amber Trajectories D4R-inactive-rep3
#################
#set a job name
#SBATCH --job-name=align_dor_inactive_rep3
#SBATCH --mail-user=akma327@stanford.edu --mail-type=ALL
#################
# A file for job output, you can check job progress
#SBATCH --output=align_d4r_active_rep3_PROGRESS.out
#################
# A file for errors from the job
#SBATCH --error=align_d4r_inactive_rep3_ERROR.out
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


bash /scratch/PI/rondror/akma327/DynamicNetworks/src/misc-preprocessing-scripts/batch/subsample_amber/sh/d4r-inactive-rep3.sh

