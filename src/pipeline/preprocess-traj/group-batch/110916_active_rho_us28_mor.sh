# 110916_active_rho_us28_mor.sh

REP_SOURCE_PATH="/scratch/PI/rondror/MD_simulations/amber/rhodopsin/2x72/rep1"
EQ_ID="Eq"
FRAG_ID="Prod"
OUTPUT_EXP_COND_PATH="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/Rhodopsin-active-unrestrained-unpublished/2x72-E113Q-M257Y-constitutively-active/rep_1"
OUTPUT_SCRIPT_FILE_PATH="/scratch/PI/rondror/akma327/DynamicNetworks/src/pipeline/preprocess-traj/batch/Rho-active-unrestrained-unpublished-rep_1.sh"
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/pipeline/preprocess-traj
python preprocessAmberDirStruct.py $REP_SOURCE_PATH $EQ_ID $FRAG_ID $OUTPUT_EXP_COND_PATH $OUTPUT_SCRIPT_FILE_PATH 


REP_SOURCE_PATH="/scratch/PI/rondror/MD_simulations/amber/rhodopsin/2x72/rep2"
EQ_ID="Eq"
FRAG_ID="Prod"
OUTPUT_EXP_COND_PATH="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/Rhodopsin-active-unrestrained-unpublished/2x72-E113Q-M257Y-constitutively-active/rep_2"
OUTPUT_SCRIPT_FILE_PATH="/scratch/PI/rondror/akma327/DynamicNetworks/src/pipeline/preprocess-traj/batch/Rho-active-unrestrained-unpublished-rep_2.sh"
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/pipeline/preprocess-traj
python preprocessAmberDirStruct.py $REP_SOURCE_PATH $EQ_ID $FRAG_ID $OUTPUT_EXP_COND_PATH $OUTPUT_SCRIPT_FILE_PATH 


REP_SOURCE_PATH="/scratch/PI/rondror/MD_simulations/amber/rhodopsin/2x72/rep3"
EQ_ID="Eq"
FRAG_ID="Prod"
OUTPUT_EXP_COND_PATH="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/Rhodopsin-active-unrestrained-unpublished/2x72-E113Q-M257Y-constitutively-active/rep_3"
OUTPUT_SCRIPT_FILE_PATH="/scratch/PI/rondror/akma327/DynamicNetworks/src/pipeline/preprocess-traj/batch/Rho-active-unrestrained-unpublished-rep_3.sh"
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/pipeline/preprocess-traj
python preprocessAmberDirStruct.py $REP_SOURCE_PATH $EQ_ID $FRAG_ID $OUTPUT_EXP_COND_PATH $OUTPUT_SCRIPT_FILE_PATH 



cp /scratch/PI/rondror/MD_simulations/amber/rhodopsin/2x72/prep/2x72_aligned_prepped_dowsed_dabbled.pdb /scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/Rhodopsin-active-unrestrained-unpublished/step5_assembly.pdb


# 11/24/16 Added unrestrained and restrained US28 simulation with protein fractalkine ligand

# US28-active-unrestrained 

REP_SOURCE_PATH="/scratch/PI/rondror/MD_simulations/amber/US28/4xt1/4xt1_A_B_wCLR_100ns_equil/rep1"
EQ_ID="Eq"
FRAG_ID="Prod"
OUTPUT_EXP_COND_PATH="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/US28-active-unrestrained-unpublished/fractalkine-bound/rep_1"
OUTPUT_SCRIPT_FILE_PATH="/scratch/PI/rondror/akma327/DynamicNetworks/src/pipeline/preprocess-traj/batch/US28-active-unrestrained-fractalkine-unpublished-rep_1.sh"
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/pipeline/preprocess-traj
python preprocessAmberDirStruct.py $REP_SOURCE_PATH $EQ_ID $FRAG_ID $OUTPUT_EXP_COND_PATH $OUTPUT_SCRIPT_FILE_PATH 

REP_SOURCE_PATH="/scratch/PI/rondror/MD_simulations/amber/US28/4xt1/4xt1_A_B_wCLR_100ns_equil/rep2"
EQ_ID="Eq"
FRAG_ID="Prod"
OUTPUT_EXP_COND_PATH="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/US28-active-unrestrained-unpublished/fractalkine-bound/rep_2"
OUTPUT_SCRIPT_FILE_PATH="/scratch/PI/rondror/akma327/DynamicNetworks/src/pipeline/preprocess-traj/batch/US28-active-unrestrained-fractalkine-unpublished-rep_2.sh"
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/pipeline/preprocess-traj
python preprocessAmberDirStruct.py $REP_SOURCE_PATH $EQ_ID $FRAG_ID $OUTPUT_EXP_COND_PATH $OUTPUT_SCRIPT_FILE_PATH 


REP_SOURCE_PATH="/scratch/PI/rondror/MD_simulations/amber/US28/4xt1/4xt1_A_B_wCLR_100ns_equil/rep3"
EQ_ID="Eq"
FRAG_ID="Prod"
OUTPUT_EXP_COND_PATH="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/US28-active-unrestrained-unpublished/fractalkine-bound/rep_3"
OUTPUT_SCRIPT_FILE_PATH="/scratch/PI/rondror/akma327/DynamicNetworks/src/pipeline/preprocess-traj/batch/US28-active-unrestrained-fractalkine-unpublished-rep_3.sh"
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/pipeline/preprocess-traj
python preprocessAmberDirStruct.py $REP_SOURCE_PATH $EQ_ID $FRAG_ID $OUTPUT_EXP_COND_PATH $OUTPUT_SCRIPT_FILE_PATH 


# US28-active-restrained

REP_SOURCE_PATH="/scratch/PI/rondror/MD_simulations/amber/US28/4xt1-restrained/nanobody_restraints_w_fractalkine/v2/rep1"
EQ_ID="Eq"
FRAG_ID="Prod"
OUTPUT_EXP_COND_PATH="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/US28-active-restrained-unpublished/fractalkine/rep_1"
OUTPUT_SCRIPT_FILE_PATH="/scratch/PI/rondror/akma327/DynamicNetworks/src/pipeline/preprocess-traj/batch/US28-active-restrained-fractalkine-unpublished-rep_1.sh"
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/pipeline/preprocess-traj
python preprocessAmberDirStruct.py $REP_SOURCE_PATH $EQ_ID $FRAG_ID $OUTPUT_EXP_COND_PATH $OUTPUT_SCRIPT_FILE_PATH


REP_SOURCE_PATH="/scratch/PI/rondror/MD_simulations/amber/US28/4xt1-restrained/nanobody_restraints_w_fractalkine/v2/rep2"
EQ_ID="Eq"
FRAG_ID="Prod"
OUTPUT_EXP_COND_PATH="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/US28-active-restrained-unpublished/fractalkine/rep_2"
OUTPUT_SCRIPT_FILE_PATH="/scratch/PI/rondror/akma327/DynamicNetworks/src/pipeline/preprocess-traj/batch/US28-active-restrained-fractalkine-unpublished-rep_2.sh"
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/pipeline/preprocess-traj
python preprocessAmberDirStruct.py $REP_SOURCE_PATH $EQ_ID $FRAG_ID $OUTPUT_EXP_COND_PATH $OUTPUT_SCRIPT_FILE_PATH


REP_SOURCE_PATH="/scratch/PI/rondror/MD_simulations/amber/US28/4xt1-restrained/nanobody_restraints_w_fractalkine/v2/rep3"
EQ_ID="Eq"
FRAG_ID="Prod"
OUTPUT_EXP_COND_PATH="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/US28-active-restrained-unpublished/fractalkine/rep_3"
OUTPUT_SCRIPT_FILE_PATH="/scratch/PI/rondror/akma327/DynamicNetworks/src/pipeline/preprocess-traj/batch/US28-active-restrained-fractalkine-unpublished-rep_3.sh"
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/pipeline/preprocess-traj
python preprocessAmberDirStruct.py $REP_SOURCE_PATH $EQ_ID $FRAG_ID $OUTPUT_EXP_COND_PATH $OUTPUT_SCRIPT_FILE_PATH




# M2R-active-unrestrained

REP_SOURCE_PATH="/scratch/PI/rondror/MD_simulations/amber/muscarinic/M2activeV1/m2act_ixo/unrestrained/1"
EQ_ID="Eq"
FRAG_ID="Prod"
OUTPUT_EXP_COND_PATH="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/M2R-active-unrestrained-unpublished/condition-prot-asp2x50-3x49/rep_1"
OUTPUT_SCRIPT_FILE_PATH="/scratch/PI/rondror/akma327/DynamicNetworks/src/pipeline/preprocess-traj/batch/M2R-active-unrestrained-unpublished-rep_1.sh"
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/pipeline/preprocess-traj
python preprocessAmberDirStruct.py $REP_SOURCE_PATH $EQ_ID $FRAG_ID $OUTPUT_EXP_COND_PATH $OUTPUT_SCRIPT_FILE_PATH 


REP_SOURCE_PATH="/scratch/PI/rondror/MD_simulations/amber/muscarinic/M2activeV1/m2act_ixo/unrestrained/2"
EQ_ID="Eq"
FRAG_ID="Prod"
OUTPUT_EXP_COND_PATH="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/M2R-active-unrestrained-unpublished/condition-prot-asp2x50-3x49/rep_2"
OUTPUT_SCRIPT_FILE_PATH="/scratch/PI/rondror/akma327/DynamicNetworks/src/pipeline/preprocess-traj/batch/M2R-active-unrestrained-unpublished-rep_2.sh"
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/pipeline/preprocess-traj
python preprocessAmberDirStruct.py $REP_SOURCE_PATH $EQ_ID $FRAG_ID $OUTPUT_EXP_COND_PATH $OUTPUT_SCRIPT_FILE_PATH 



REP_SOURCE_PATH="/scratch/PI/rondror/MD_simulations/amber/muscarinic/M2activeV1/m2act_ixo/unrestrained/3"
EQ_ID="Eq"
FRAG_ID="Prod"
OUTPUT_EXP_COND_PATH="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/M2R-active-unrestrained-unpublished/condition-prot-asp2x50-3x49/rep_3"
OUTPUT_SCRIPT_FILE_PATH="/scratch/PI/rondror/akma327/DynamicNetworks/src/pipeline/preprocess-traj/batch/M2R-active-unrestrained-unpublished-rep_3.sh"
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/pipeline/preprocess-traj
python preprocessAmberDirStruct.py $REP_SOURCE_PATH $EQ_ID $FRAG_ID $OUTPUT_EXP_COND_PATH $OUTPUT_SCRIPT_FILE_PATH 






