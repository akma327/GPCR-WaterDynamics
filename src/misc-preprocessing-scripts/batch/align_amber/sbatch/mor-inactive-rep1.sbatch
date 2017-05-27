#!/bin/bash

#Sbatch for: Align Amber Trajectories MOR-inactive-rep1
#################
#set a job name
#SBATCH --job-name=align_mor_inactive_rep1
#SBATCH --mail-user=akma327@stanford.edu --mail-type=ALL
#################
# A file for job output, you can check job progress
#SBATCH --output=align_mor_active_rep1_PROGRESS.out
#################
# A file for errors from the job
#SBATCH --error=align_mor_inactive_rep1_ERROR.out
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


bash /scratch/PI/rondror/akma327/DynamicNetworks/src/misc-preprocessing-scripts/batch/subsample_amber/sh/mor-inactive-rep1.sh

