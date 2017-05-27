#!/bin/bash

#Sbatch for: Preprocessing DESRES directory structure and populating with rewrapped trajectories and topology
#################
#set a job name
#SBATCH --job-name=BATCH_Preprocess_DESRES_Traj_and_Top3
#SBATCH --mail-user=akma327@stanford.edu --mail-type=ALL
#################
# A file for job output, you can check job progress
#SBATCH --output=BATCH_Preprocess_DESRES_Traj_and_Top3_PROGRESS.out
#################
# A file for errors from the job
#SBATCH --error=BATCH_Preprocess_DESRES_Traj_and_Top3_ERROR.out
#################
#SBATCH --time=6:00:00
#################
#SBATCH --partition=rondror
#SBATCH --qos=rondror
#################
#number of nodes you are requesting
#SBATCH --tasks=12
#SBATCH --ntasks-per-socket=6
#################

# bash <script to populate a single replicate of desired experiment condition>

# bash A2A-active-NEC-rep_1.sh &
# bash A2A-active-NEC-rep_2.sh &
# bash A2A-active-NEC-rep_3.sh &
# bash A2A-active-NEC-rep_4.sh &
# bash A2A-active-NEC-rep_5.sh &

bash A2A-inactive-ZMA-rep_1.sh &
bash A2A-inactive-ZMA-rep_2.sh &
bash A2A-inactive-ZMA-rep_3.sh &
bash A2A-inactive-ZMA-rep_4.sh &
bash A2A-inactive-ZMA-rep_5.sh &


# bash M2R-active-unrestrained-unpublished-rep_1.sh &
# bash M2R-active-unrestrained-unpublished-rep_2.sh &
# bash M2R-active-unrestrained-unpublished-rep_3.sh &

# bash US28-active-restrained-fractalkine-unpublished-rep_1.sh &
# bash US28-active-restrained-fractalkine-unpublished-rep_2.sh &
# bash US28-active-restrained-fractalkine-unpublished-rep_3.sh &

# bash US28-active-unrestrained-fractalkine-unpublished-rep_1.sh &
# bash US28-active-unrestrained-fractalkine-unpublished-rep_2.sh &
# bash US28-active-unrestrained-fractalkine-unpublished-rep_3.sh &

# bash Rho-active-unrestrained-unpublished-rep_1.sh &
# bash Rho-active-unrestrained-unpublished-rep_2.sh &
# bash Rho-active-unrestrained-unpublished-rep_3.sh &

# bash D4R-inactive-nemanopride-unpublished-rep_1.sh &
# bash D4R-inactive-nemanopride-unpublished-rep_2.sh &
# bash D4R-inactive-nemanopride-unpublished-rep_3.sh &

# bash M2R-active-prot-asp2x50-3x49-rep_1.sh &
# bash M2R-active-prot-asp2x50-3x49-rep_2.sh &
# bash M2R-active-prot-asp2x50-3x49-rep_3.sh &

# bash PAR1-inactive-vorapaxar-nature2012b-condA.sh &
# bash PAR1-inactive-vorapaxar-nature2012b-condB.sh & 

wait

# bash B2AR-inactive-carazalol-cell2013b-cond1.sh &
# bash B2AR-inactive-carazalol-cell2013b-cond2.sh &
# bash B2AR-inactive-carazalol-cell2013b-cond5.sh &
# bash B2AR-inactive-carazalol-cell2013b-cond6.sh &
# bash B2AR-inactive-carazalol-cell2013b-cond12.sh &

# bash M3R-inactive-tiotropium-nature2012-condC.sh &

# bash B2AR-inactive-carazalol-nature2011-condA.sh &
# bash B2AR-inactive-carazalol-nature2011-condB.sh &

# bash B2AR-active-noNb-BI-nature2011-condC.sh &
# bash B2AR-active-noNb-BI-nature2011-condD.sh &

# bash PAR1-inactive-vorapaxar-nature2012b-condA.sh &
# bash PAR1-inactive-vorapaxar-nature2012b-condB.sh &

# bash B2AR-active-Nb-BI-pnas2011b-condL-rep_1.sh &
# bash B2AR-active-Nb-BI-pnas2011b-condL-rep_2.sh &
# bash B2AR-active-Nb-BI-pnas2011b-condM.sh &
# bash B2AR-active-Nb-BI-pnas2011b-condN-rep_1.sh &
# bash B2AR-active-Nb-BI-pnas2011b-condN-rep_2.sh &
# bash B2AR-active-Nb-BI-pnas2011b-condO.sh &
# bash B2AR-active-Nb-BI-pnas2011b-condP.sh &
# bash B2AR-active-Nb-BI-pnas2011b-condQ-rep_1.sh &
# bash B2AR-active-Nb-BI-pnas2011b-condQ-rep_2.sh &

# bash D4R-rep_1.sh &
# bash D4R-rep_2.sh &
# bash D4R-rep_3.sh &

# bash B2AR-active-Gs-BI-science2015-cond22.sh &
# bash B2AR-active-Gs-BI-science2015-cond23.sh &
# bash B2AR-active-Gs-BI-science2015-cond24.sh &
# bash B2AR-active-Gs-BI-science2015-cond65.sh &
# wait 
