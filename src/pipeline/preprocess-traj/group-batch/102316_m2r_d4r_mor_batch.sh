# 10/23/16
# Reimage and realign remaining M2R, D4R, and MOR trajectories


# MOR active with Nb no restraints (unpublished) Asp2x50 and 3x49 protonated

REP_SOURCE_PATH="/scratch/PI/rondror/MD_simulations/amber/MOR_active_waters/mor_active_refine196_agonist_prot_D114_D164_Nbinterface_restrained/rep1"
EQ_ID="Eq"
FRAG_ID="Prod"
OUTPUT_EXP_COND_PATH="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/MOR-active-Nb-unpublished/condition-prot-D114-D164-nb-interface-restrained/rep_1"
OUTPUT_SCRIPT_FILE_PATH="/scratch/PI/rondror/akma327/DynamicNetworks/src/pipeline/preprocess-traj/batch/MOR-active-prot-D114-D164-nb-interface-restrained-rep_1.sh"
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/pipeline/preprocess-traj
python preprocessAmberDirStruct.py $REP_SOURCE_PATH $EQ_ID $FRAG_ID $OUTPUT_EXP_COND_PATH $OUTPUT_SCRIPT_FILE_PATH 

REP_SOURCE_PATH="/scratch/PI/rondror/MD_simulations/amber/MOR_active_waters/mor_active_refine196_agonist_prot_D114_D164_Nbinterface_restrained/rep2"
EQ_ID="Eq"
FRAG_ID="Prod"
OUTPUT_EXP_COND_PATH="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/MOR-active-Nb-unpublished/condition-prot-D114-D164-nb-interface-restrained/rep_2"
OUTPUT_SCRIPT_FILE_PATH="/scratch/PI/rondror/akma327/DynamicNetworks/src/pipeline/preprocess-traj/batch/MOR-active-prot-D114-D164-nb-interface-restrained-rep_2.sh"
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/pipeline/preprocess-traj
python preprocessAmberDirStruct.py $REP_SOURCE_PATH $EQ_ID $FRAG_ID $OUTPUT_EXP_COND_PATH $OUTPUT_SCRIPT_FILE_PATH 

REP_SOURCE_PATH="/scratch/PI/rondror/MD_simulations/amber/MOR_active_waters/mor_active_refine196_agonist_prot_D114_D164_Nbinterface_restrained/rep3"
EQ_ID="Eq"
FRAG_ID="Prod"
OUTPUT_EXP_COND_PATH="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/MOR-active-Nb-unpublished/condition-prot-D114-D164-nb-interface-restrained/rep_3"
OUTPUT_SCRIPT_FILE_PATH="/scratch/PI/rondror/akma327/DynamicNetworks/src/pipeline/preprocess-traj/batch/MOR-active-prot-D114-D164-nb-interface-restrained-rep_3.sh"
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/pipeline/preprocess-traj
python preprocessAmberDirStruct.py $REP_SOURCE_PATH $EQ_ID $FRAG_ID $OUTPUT_EXP_COND_PATH $OUTPUT_SCRIPT_FILE_PATH 

cp /scratch/PI/rondror/MD_simulations/amber/MOR_active_waters/mor_active_refine196_agonist_prot_D114_D164_Nbinterface_restrained/prep/system.pdb /scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/MOR-active-Nb-unpublished/condition-prot-D114-D164-nb-interface-restrained/step5_assembly.pdb

# M2R active with restraints (unpublished) Asp2x50 and 3x49 protonated

REP_SOURCE_PATH="/scratch/PI/rondror/MD_simulations/amber/muscarinic/M2activeV1/m2act_ixo/1"
EQ_ID="Eq"
FRAG_ID="Prod"
OUTPUT_EXP_COND_PATH="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/M2R-active-restrained-unpublished/condition-prot-asp2x50-3x49/rep_1"
OUTPUT_SCRIPT_FILE_PATH="/scratch/PI/rondror/akma327/DynamicNetworks/src/pipeline/preprocess-traj/batch/M2R-active-prot-asp2x50-3x49-rep_1.sh"
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/pipeline/preprocess-traj
python preprocessAmberDirStruct.py $REP_SOURCE_PATH $EQ_ID $FRAG_ID $OUTPUT_EXP_COND_PATH $OUTPUT_SCRIPT_FILE_PATH 


REP_SOURCE_PATH="/scratch/PI/rondror/MD_simulations/amber/muscarinic/M2activeV1/m2act_ixo/2"
EQ_ID="Eq"
FRAG_ID="Prod"
OUTPUT_EXP_COND_PATH="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/M2R-active-restrained-unpublished/condition-prot-asp2x50-3x49/rep_2"
OUTPUT_SCRIPT_FILE_PATH="/scratch/PI/rondror/akma327/DynamicNetworks/src/pipeline/preprocess-traj/batch/M2R-active-prot-asp2x50-3x49-rep_2.sh"
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/pipeline/preprocess-traj
python preprocessAmberDirStruct.py $REP_SOURCE_PATH $EQ_ID $FRAG_ID $OUTPUT_EXP_COND_PATH $OUTPUT_SCRIPT_FILE_PATH 


REP_SOURCE_PATH="/scratch/PI/rondror/MD_simulations/amber/muscarinic/M2activeV1/m2act_ixo/3"
EQ_ID="Eq"
FRAG_ID="Prod"
OUTPUT_EXP_COND_PATH="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/M2R-active-restrained-unpublished/condition-prot-asp2x50-3x49/rep_3"
OUTPUT_SCRIPT_FILE_PATH="/scratch/PI/rondror/akma327/DynamicNetworks/src/pipeline/preprocess-traj/batch/M2R-active-prot-asp2x50-3x49-rep_3.sh"
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/pipeline/preprocess-traj
python preprocessAmberDirStruct.py $REP_SOURCE_PATH $EQ_ID $FRAG_ID $OUTPUT_EXP_COND_PATH $OUTPUT_SCRIPT_FILE_PATH 

cp /scratch/PI/rondror/MD_simulations/amber/muscarinic/M2activeV1/m2act_ixo/system.psf /scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/M2R-active-restrained-unpublished/condition-prot-asp2x50-3x49/system.psf




# D4R-inactive-nemanopride-unpublished

REP_SOURCE_PATH="/scratch/PI/rondror/MD_simulations/amber/robin_D4_dopamine/nemonapride/deprotonated/production/03/1"
EQ_ID="Eq"
FRAG_ID="Prod"
OUTPUT_EXP_COND_PATH="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/D4R-inactive-nemanopride-unpublished/condition-antagonist-bound/rep_1"
OUTPUT_SCRIPT_FILE_PATH="/scratch/PI/rondror/akma327/DynamicNetworks/src/pipeline/preprocess-traj/batch/D4R-inactive-nemanopride-unpublished-rep_1.sh"
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/pipeline/preprocess-traj
python preprocessAmberDirStruct.py $REP_SOURCE_PATH $EQ_ID $FRAG_ID $OUTPUT_EXP_COND_PATH $OUTPUT_SCRIPT_FILE_PATH 


REP_SOURCE_PATH="/scratch/PI/rondror/MD_simulations/amber/robin_D4_dopamine/nemonapride/deprotonated/production/03/2"
EQ_ID="Eq"
FRAG_ID="Prod"
OUTPUT_EXP_COND_PATH="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/D4R-inactive-nemanopride-unpublished/condition-antagonist-bound/rep_2"
OUTPUT_SCRIPT_FILE_PATH="/scratch/PI/rondror/akma327/DynamicNetworks/src/pipeline/preprocess-traj/batch/D4R-inactive-nemanopride-unpublished-rep_2.sh"
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/pipeline/preprocess-traj
python preprocessAmberDirStruct.py $REP_SOURCE_PATH $EQ_ID $FRAG_ID $OUTPUT_EXP_COND_PATH $OUTPUT_SCRIPT_FILE_PATH 


REP_SOURCE_PATH="/scratch/PI/rondror/MD_simulations/amber/robin_D4_dopamine/nemonapride/deprotonated/production/03/3"
EQ_ID="Eq"
FRAG_ID="Prod"
OUTPUT_EXP_COND_PATH="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/D4R-inactive-nemanopride-unpublished/condition-antagonist-bound/rep_3"
OUTPUT_SCRIPT_FILE_PATH="/scratch/PI/rondror/akma327/DynamicNetworks/src/pipeline/preprocess-traj/batch/D4R-inactive-nemanopride-unpublished-rep_3.sh"
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/pipeline/preprocess-traj
python preprocessAmberDirStruct.py $REP_SOURCE_PATH $EQ_ID $FRAG_ID $OUTPUT_EXP_COND_PATH $OUTPUT_SCRIPT_FILE_PATH 



