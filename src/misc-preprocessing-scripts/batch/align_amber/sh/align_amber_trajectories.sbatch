#!/bin/bash

#Sbatch for: Align Amber Trajectories
#################
#set a job name
#SBATCH --job-name=align_amber_trajectories
#SBATCH --mail-user=akma327@stanford.edu --mail-type=ALL
#################
# A file for job output, you can check job progress
#SBATCH --output=align_amber_trajectories_PROGRESS.out
#################
# A file for errors from the job
#SBATCH --error=align_amber_trajectories_ERROR.out
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


bash a2a-active-NEC-rep1.sh &
bash a2a-active-NEC-rep2.sh &
bash a2a-active-NEC-rep3.sh &
bash a2a-active-NEC-rep4.sh &
bash a2a-active-NEC-rep5.sh &

bash a2a-inactive-ZMA-rep1.sh &
bash a2a-inactive-ZMA-rep2.sh &
bash a2a-inactive-ZMA-rep3.sh &
bash a2a-inactive-ZMA-rep4.sh &
bash a2a-inactive-ZMA-rep5.sh &



wait

