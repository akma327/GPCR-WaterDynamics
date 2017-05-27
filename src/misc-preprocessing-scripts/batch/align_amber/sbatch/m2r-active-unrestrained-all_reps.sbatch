#!/bin/bash

#Sbatch for: Align Amber Trajectories M2R-active-unrestrained-all_reps
#################
#set a job name
#SBATCH --job-name=align_m2r_active_unrestrained_all_reps
#SBATCH --mail-user=akma327@stanford.edu --mail-type=ALL
#################
# A file for job output, you can check job progress
#SBATCH --output=align_m2r_active_unrestrained_all_reps_PROGRESS.out
#################
# A file for errors from the job
#SBATCH --error=align_m2r_active_unrestrained_all_reps_ERROR.out
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

bash /scratch/PI/rondror/akma327/DynamicNetworks/src/misc-preprocessing-scripts/batch/align_amber/sh/m2r-active-unrestrained-rep1.sh &

bash /scratch/PI/rondror/akma327/DynamicNetworks/src/misc-preprocessing-scripts/batch/align_amber/sh/m2r-active-unrestrained-rep2.sh &

bash /scratch/PI/rondror/akma327/DynamicNetworks/src/misc-preprocessing-scripts/batch/align_amber/sh/m2r-active-unrestrained-rep3.sh &


wait