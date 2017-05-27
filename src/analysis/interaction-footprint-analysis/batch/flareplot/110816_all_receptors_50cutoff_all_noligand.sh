# Generate individual flare plots for all inactive and active experiement 
# conditions. Color coded by receptor. Will have to manually adjust "wb_combined"
# colors in utils.py for footprint_summary_evobundle.py


# Computes figure 1 and 2 flare plots for all receptors
# Threshold frequency to be greater than 0.50
# Show entire protein region 
# No ligand included

# Combine replicates for B2AR-active-Gs long isoform (3 reps),
# MOR-active (3 Reps), MOR-inactive (3 Reps), B2AR-inactive (1 rep)

# Intersect MOR and B2AR active, and MOR B2AR inactive

# Venn Diagram with overall-active and overall-inactive

# Inactive

# B2AR-inactive
FOOTPRINT_TABLE="/scratch/PI/rondror/akma327/DynamicNetworks/results/state-decomposition/residue-resolution/110416_lax_angle_state_decomp_union_wb_freq/inactive_receptors/inactive_state_decomp_residue_resolution.txt"
EXP_REP_ID="B2AR:inactive:carazalol:10us:D79-,D130-,Inactive"
OUTPUT_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/interaction-footprint-analysis/residue-resolution-evobundle-input/110816_all_freq50_inter_noligand/inactive_receptors/B2AR:inactive:carazalol:10us:D79-,D130-,Inactive.json"
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/analysis/interaction-footprint-analysis
python footprint_summary_evobundle.py $FOOTPRINT_TABLE $EXP_REP_ID $OUTPUT_FILE -receptor B2AR -no-conserve  -cutoff 0.5 -inter



# D4R-inactive
FOOTPRINT_TABLE="/scratch/PI/rondror/akma327/DynamicNetworks/results/state-decomposition/residue-resolution/110416_lax_angle_state_decomp_union_wb_freq/inactive_receptors/inactive_state_decomp_residue_resolution.txt"
EXP_REP_ID="D4R:inactive:nemanopride:deprotonated:1.3us"
OUTPUT_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/interaction-footprint-analysis/residue-resolution-evobundle-input/110816_all_freq50_inter_noligand/inactive_receptors/D4R:inactive:nemanopride:deprotonated:1.3us.json"
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/analysis/interaction-footprint-analysis
python footprint_summary_evobundle.py $FOOTPRINT_TABLE $EXP_REP_ID $OUTPUT_FILE -receptor D4R -no-conserve  -cutoff 0.5 -inter

FOOTPRINT_TABLE="/scratch/PI/rondror/akma327/DynamicNetworks/results/state-decomposition/residue-resolution/110416_lax_angle_state_decomp_union_wb_freq/inactive_receptors/inactive_state_decomp_residue_resolution.txt"
EXP_REP_ID="D4R:inactive:nemanopride:deprotonated:1.5us"
OUTPUT_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/interaction-footprint-analysis/residue-resolution-evobundle-input/110816_all_freq50_inter_noligand/inactive_receptors/D4R:inactive:nemanopride:deprotonated:1.5us.json"
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/analysis/interaction-footprint-analysis
python footprint_summary_evobundle.py $FOOTPRINT_TABLE $EXP_REP_ID $OUTPUT_FILE -receptor D4R -no-conserve  -cutoff 0.5 -inter

FOOTPRINT_TABLE="/scratch/PI/rondror/akma327/DynamicNetworks/results/state-decomposition/residue-resolution/110416_lax_angle_state_decomp_union_wb_freq/inactive_receptors/inactive_state_decomp_residue_resolution.txt"
EXP_REP_ID="D4R:inactive:nemanopride:deprotonated:1.50us"
OUTPUT_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/interaction-footprint-analysis/residue-resolution-evobundle-input/110816_all_freq50_inter_noligand/inactive_receptors/D4R:inactive:nemanopride:deprotonated:1.50us.json"
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/analysis/interaction-footprint-analysis
python footprint_summary_evobundle.py $FOOTPRINT_TABLE $EXP_REP_ID $OUTPUT_FILE -receptor D4R -no-conserve  -cutoff 0.5 -inter


# M2R-inactive

FOOTPRINT_TABLE="/scratch/PI/rondror/akma327/DynamicNetworks/results/state-decomposition/residue-resolution/110416_lax_angle_state_decomp_union_wb_freq/inactive_receptors/inactive_state_decomp_residue_resolution.txt"	
EXP_REP_ID="M2R:inactive:QNB-orthosteric:16.4us"
OUTPUT_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/interaction-footprint-analysis/residue-resolution-evobundle-input/110816_all_freq50_inter_noligand/inactive_receptors/M2R:inactive:QNB-orthosteric:16.4us.json"
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/analysis/interaction-footprint-analysis
python footprint_summary_evobundle.py $FOOTPRINT_TABLE $EXP_REP_ID $OUTPUT_FILE -receptor M2R -no-conserve  -cutoff 0.5 -inter

FOOTPRINT_TABLE="/scratch/PI/rondror/akma327/DynamicNetworks/results/state-decomposition/residue-resolution/110416_lax_angle_state_decomp_union_wb_freq/inactive_receptors/inactive_state_decomp_residue_resolution.txt"
EXP_REP_ID="M2R:inactive:QNB-orthosteric-no-allosteric:10us"
OUTPUT_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/interaction-footprint-analysis/residue-resolution-evobundle-input/110816_all_freq50_inter_noligand/inactive_receptors/M2R:inactive:QNB-orthosteric-no-allosteric:10us.json"
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/analysis/interaction-footprint-analysis
python footprint_summary_evobundle.py $FOOTPRINT_TABLE $EXP_REP_ID $OUTPUT_FILE -receptor M2R -no-conserve  -cutoff 0.5 -inter

# MOR-inactive

FOOTPRINT_TABLE="/scratch/PI/rondror/akma327/DynamicNetworks/results/state-decomposition/residue-resolution/110416_lax_angle_state_decomp_union_wb_freq/inactive_receptors/inactive_state_decomp_residue_resolution.txt"
EXP_REP_ID="MOR:inactive:bFNA-antagonist-bound_to_K233:1.21us"
OUTPUT_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/interaction-footprint-analysis/residue-resolution-evobundle-input/110816_all_freq50_inter_noligand/inactive_receptors/MOR:inactive:bFNA-antagonist-bound_to_K233:1.21us.json"
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/analysis/interaction-footprint-analysis
python footprint_summary_evobundle.py $FOOTPRINT_TABLE $EXP_REP_ID $OUTPUT_FILE -receptor MOR -no-conserve  -cutoff 0.5 -inter

FOOTPRINT_TABLE="/scratch/PI/rondror/akma327/DynamicNetworks/results/state-decomposition/residue-resolution/110416_lax_angle_state_decomp_union_wb_freq/inactive_receptors/inactive_state_decomp_residue_resolution.txt"
EXP_REP_ID="MOR:inactive:bFNA-antagonist-bound_to_K233:1.42us"
OUTPUT_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/interaction-footprint-analysis/residue-resolution-evobundle-input/110816_all_freq50_inter_noligand/inactive_receptors/MOR:inactive:bFNA-antagonist-bound_to_K233:1.42us.json"
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/analysis/interaction-footprint-analysis
python footprint_summary_evobundle.py $FOOTPRINT_TABLE $EXP_REP_ID $OUTPUT_FILE -receptor MOR -no-conserve  -cutoff 0.5 -inter


FOOTPRINT_TABLE="/scratch/PI/rondror/akma327/DynamicNetworks/results/state-decomposition/residue-resolution/110416_lax_angle_state_decomp_union_wb_freq/inactive_receptors/inactive_state_decomp_residue_resolution.txt"
EXP_REP_ID="MOR:inactive:bFNA-antagonist-bound_to_K233:0.63us"
OUTPUT_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/interaction-footprint-analysis/residue-resolution-evobundle-input/110816_all_freq50_inter_noligand/inactive_receptors/MOR:inactive:bFNA-antagonist-bound_to_K233:0.63us.json"
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/analysis/interaction-footprint-analysis
python footprint_summary_evobundle.py $FOOTPRINT_TABLE $EXP_REP_ID $OUTPUT_FILE -receptor MOR -no-conserve  -cutoff 0.5 -inter


# DOR-inactive

FOOTPRINT_TABLE="/scratch/PI/rondror/akma327/DynamicNetworks/results/state-decomposition/residue-resolution/110416_lax_angle_state_decomp_union_wb_freq/inactive_receptors/inactive_state_decomp_residue_resolution.txt"
EXP_REP_ID="DOR:inactive:naltrindole:3.0us"
OUTPUT_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/interaction-footprint-analysis/residue-resolution-evobundle-input/110816_all_freq50_inter_noligand/inactive_receptors/DOR:inactive:naltrindole:3.0us.json"
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/analysis/interaction-footprint-analysis
python footprint_summary_evobundle.py $FOOTPRINT_TABLE $EXP_REP_ID $OUTPUT_FILE -receptor DOR -no-conserve  -cutoff 0.5 -inter

FOOTPRINT_TABLE="/scratch/PI/rondror/akma327/DynamicNetworks/results/state-decomposition/residue-resolution/110416_lax_angle_state_decomp_union_wb_freq/inactive_receptors/inactive_state_decomp_residue_resolution.txt"
EXP_REP_ID="DOR:inactive:naltrindole:1.3us"
OUTPUT_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/interaction-footprint-analysis/residue-resolution-evobundle-input/110816_all_freq50_inter_noligand/inactive_receptors/DOR:inactive:naltrindole:1.3us.json"
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/analysis/interaction-footprint-analysis
python footprint_summary_evobundle.py $FOOTPRINT_TABLE $EXP_REP_ID $OUTPUT_FILE -receptor DOR -no-conserve  -cutoff 0.5 -inter


FOOTPRINT_TABLE="/scratch/PI/rondror/akma327/DynamicNetworks/results/state-decomposition/residue-resolution/110416_lax_angle_state_decomp_union_wb_freq/inactive_receptors/inactive_state_decomp_residue_resolution.txt"
EXP_REP_ID="DOR:inactive:naltrindole:2.0us"
OUTPUT_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/interaction-footprint-analysis/residue-resolution-evobundle-input/110816_all_freq50_inter_noligand/inactive_receptors/DOR:inactive:naltrindole:2.0us.json"
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/analysis/interaction-footprint-analysis
python footprint_summary_evobundle.py $FOOTPRINT_TABLE $EXP_REP_ID $OUTPUT_FILE -receptor DOR -no-conserve  -cutoff 0.5 -inter



# Active

# MOR-active-noNb-BU72-nB_interface_restrained

FOOTPRINT_TABLE="/scratch/PI/rondror/akma327/DynamicNetworks/results/state-decomposition/residue-resolution/110416_lax_angle_state_decomp_union_wb_freq/active_receptors/active_state_decomp_residue_resolution.txt"
EXP_REP_ID="MOR:active-noNb:BU72-nB_interface_restrained:3.0us"
OUTPUT_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/interaction-footprint-analysis/residue-resolution-evobundle-input/110816_all_freq50_inter_noligand/active_receptors/MOR:active-noNb:BU72-nB_interface_restrained:3.0us.json"
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/analysis/interaction-footprint-analysis
python footprint_summary_evobundle.py $FOOTPRINT_TABLE $EXP_REP_ID $OUTPUT_FILE -receptor MOR -no-conserve  -cutoff 0.5 -inter

FOOTPRINT_TABLE="/scratch/PI/rondror/akma327/DynamicNetworks/results/state-decomposition/residue-resolution/110416_lax_angle_state_decomp_union_wb_freq/active_receptors/active_state_decomp_residue_resolution.txt"
EXP_REP_ID="MOR:active-noNb:BU72-nB_interface_restrained:2.7us"
OUTPUT_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/interaction-footprint-analysis/residue-resolution-evobundle-input/110816_all_freq50_inter_noligand/active_receptors/MOR:active-noNb:BU72-nB_interface_restrained:2.7us.json"
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/analysis/interaction-footprint-analysis
python footprint_summary_evobundle.py $FOOTPRINT_TABLE $EXP_REP_ID $OUTPUT_FILE -receptor MOR -no-conserve  -cutoff 0.5 -inter


FOOTPRINT_TABLE="/scratch/PI/rondror/akma327/DynamicNetworks/results/state-decomposition/residue-resolution/110416_lax_angle_state_decomp_union_wb_freq/active_receptors/active_state_decomp_residue_resolution.txt"
EXP_REP_ID="MOR:active-noNb:BU72-nB_interface_restrained:2.9us"
OUTPUT_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/interaction-footprint-analysis/residue-resolution-evobundle-input/110816_all_freq50_inter_noligand/active_receptors/MOR:active-noNb:BU72-nB_interface_restrained:2.9us.json"
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/analysis/interaction-footprint-analysis
python footprint_summary_evobundle.py $FOOTPRINT_TABLE $EXP_REP_ID $OUTPUT_FILE -receptor MOR -no-conserve  -cutoff 0.5 -inter


# B2AR-active-Gs-science2015

FOOTPRINT_TABLE="/scratch/PI/rondror/akma327/DynamicNetworks/results/state-decomposition/residue-resolution/110416_lax_angle_state_decomp_union_wb_freq/active_receptors/active_state_decomp_residue_resolution.txt"
EXP_REP_ID="B2AR:active:long-isoform-B2AR-heterotrimeric-Gs:no_ligand:50us:with_membrane"
OUTPUT_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/interaction-footprint-analysis/residue-resolution-evobundle-input/110816_all_freq50_inter_noligand/active_receptors/B2AR:active:long-isoform-B2AR-heterotrimeric-Gs:no_ligand:50us:with_membrane.json"
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/analysis/interaction-footprint-analysis
python footprint_summary_evobundle.py $FOOTPRINT_TABLE $EXP_REP_ID $OUTPUT_FILE -receptor B2AR -no-conserve  -cutoff 0.5 -inter

FOOTPRINT_TABLE="/scratch/PI/rondror/akma327/DynamicNetworks/results/state-decomposition/residue-resolution/110416_lax_angle_state_decomp_union_wb_freq/active_receptors/active_state_decomp_residue_resolution.txt"
EXP_REP_ID="B2AR:active:long-isoform-B2AR-heterotrimeric-Gs:no_ligand:10us:with_membrane"
OUTPUT_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/interaction-footprint-analysis/residue-resolution-evobundle-input/110816_all_freq50_inter_noligand/active_receptors/B2AR:active:long-isoform-B2AR-heterotrimeric-Gs:no_ligand:10us:with_membrane.json"
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/analysis/interaction-footprint-analysis
python footprint_summary_evobundle.py $FOOTPRINT_TABLE $EXP_REP_ID $OUTPUT_FILE -receptor B2AR -no-conserve  -cutoff 0.5 -inter

FOOTPRINT_TABLE="/scratch/PI/rondror/akma327/DynamicNetworks/results/state-decomposition/residue-resolution/110416_lax_angle_state_decomp_union_wb_freq/active_receptors/active_state_decomp_residue_resolution.txt"
EXP_REP_ID="B2AR:active:long-isoform-B2AR-heterotrimeric-Gs:no_ligand:10.0us:with_membrane"
OUTPUT_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/interaction-footprint-analysis/residue-resolution-evobundle-input/110816_all_freq50_inter_noligand/active_receptors/B2AR:active:long-isoform-B2AR-heterotrimeric-Gs:no_ligand:10.0us:with_membrane.json"
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/analysis/interaction-footprint-analysis
python footprint_summary_evobundle.py $FOOTPRINT_TABLE $EXP_REP_ID $OUTPUT_FILE -receptor B2AR -no-conserve  -cutoff 0.5 -inter


FOOTPRINT_TABLE="/scratch/PI/rondror/akma327/DynamicNetworks/results/state-decomposition/residue-resolution/110416_lax_angle_state_decomp_union_wb_freq/active_receptors/active_state_decomp_residue_resolution.txt"
EXP_REP_ID="B2AR:active:short-isoform-B2AR-heterotrimeric-Gs:no_ligand:5us:with_membrane"
OUTPUT_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/interaction-footprint-analysis/residue-resolution-evobundle-input/110816_all_freq50_inter_noligand/active_receptors/B2AR:active:short-isoform-B2AR-heterotrimeric-Gs:no_ligand:5us:with_membrane.json"
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/analysis/interaction-footprint-analysis
python footprint_summary_evobundle.py $FOOTPRINT_TABLE $EXP_REP_ID $OUTPUT_FILE -receptor B2AR -no-conserve  -cutoff 0.5 -inter


# B2AR-active-pnas2011b

FOOTPRINT_TABLE="/scratch/PI/rondror/akma327/DynamicNetworks/results/state-decomposition/residue-resolution/110416_lax_angle_state_decomp_union_wb_freq/active_receptors/active_state_decomp_residue_resolution.txt"
EXP_REP_ID="B2AR:active:agonist-bound-nanobody-complex:3.6us:D70+,D130+,H172+,C341_palm"
OUTPUT_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/interaction-footprint-analysis/residue-resolution-evobundle-input/110816_all_freq50_inter_noligand/active_receptors/B2AR:active:agonist-bound-nanobody-complex:3.6us:D70+,D130+,H172+,C341_palm.json"
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/analysis/interaction-footprint-analysis
python footprint_summary_evobundle.py $FOOTPRINT_TABLE $EXP_REP_ID $OUTPUT_FILE -receptor B2AR -no-conserve  -cutoff 0.5 -inter


FOOTPRINT_TABLE="/scratch/PI/rondror/akma327/DynamicNetworks/results/state-decomposition/residue-resolution/110416_lax_angle_state_decomp_union_wb_freq/active_receptors/active_state_decomp_residue_resolution.txt"
EXP_REP_ID="B2AR:active:agonist-bound-nanobody-complex:6.5us:D70+,D130+,H172+,C341_palm"
OUTPUT_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/interaction-footprint-analysis/residue-resolution-evobundle-input/110816_all_freq50_inter_noligand/active_receptors/B2AR:active:agonist-bound-nanobody-complex:6.5us:D70+,D130+,H172+,C341_palm.json"
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/analysis/interaction-footprint-analysis
python footprint_summary_evobundle.py $FOOTPRINT_TABLE $EXP_REP_ID $OUTPUT_FILE -receptor B2AR -no-conserve  -cutoff 0.5 -inter



# MOR-active-unpublished
FOOTPRINT_TABLE="/scratch/PI/rondror/akma327/DynamicNetworks/results/state-decomposition/residue-resolution/110416_lax_angle_state_decomp_union_wb_freq/active_receptors/active_state_decomp_residue_resolution.txt"
EXP_REP_ID="MOR:active:unpublished-rep_1"
OUTPUT_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/interaction-footprint-analysis/residue-resolution-evobundle-input/110816_all_freq50_inter_noligand/active_receptors/MOR:active:unpublished-rep_1.json"
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/analysis/interaction-footprint-analysis
python footprint_summary_evobundle.py $FOOTPRINT_TABLE $EXP_REP_ID $OUTPUT_FILE -receptor MOR -no-conserve  -cutoff 0.5 -inter

FOOTPRINT_TABLE="/scratch/PI/rondror/akma327/DynamicNetworks/results/state-decomposition/residue-resolution/110416_lax_angle_state_decomp_union_wb_freq/active_receptors/active_state_decomp_residue_resolution.txt"
EXP_REP_ID="MOR:active:unpublished-rep_2"
OUTPUT_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/interaction-footprint-analysis/residue-resolution-evobundle-input/110816_all_freq50_inter_noligand/active_receptors/MOR:active:unpublished-rep_2.json"
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/analysis/interaction-footprint-analysis
python footprint_summary_evobundle.py $FOOTPRINT_TABLE $EXP_REP_ID $OUTPUT_FILE -receptor MOR -no-conserve  -cutoff 0.5 -inter

FOOTPRINT_TABLE="/scratch/PI/rondror/akma327/DynamicNetworks/results/state-decomposition/residue-resolution/110416_lax_angle_state_decomp_union_wb_freq/active_receptors/active_state_decomp_residue_resolution.txt"
EXP_REP_ID="MOR:active:unpublished-rep_3"
OUTPUT_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/interaction-footprint-analysis/residue-resolution-evobundle-input/110816_all_freq50_inter_noligand/active_receptors/MOR:active:unpublished-rep_3.json"
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/analysis/interaction-footprint-analysis
python footprint_summary_evobundle.py $FOOTPRINT_TABLE $EXP_REP_ID $OUTPUT_FILE -receptor MOR -no-conserve  -cutoff 0.5 -inter






# M2R-active-unpublished
FOOTPRINT_TABLE="/scratch/PI/rondror/akma327/DynamicNetworks/results/state-decomposition/residue-resolution/110416_lax_angle_state_decomp_union_wb_freq/active_receptors/active_state_decomp_residue_resolution.txt"
EXP_REP_ID="M2R:active:restrained:prot:Asp2x50:3x49-rep_1"
OUTPUT_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/interaction-footprint-analysis/residue-resolution-evobundle-input/110816_all_freq50_inter_noligand/active_receptors/M2R:active:restrained:prot:Asp2x50:3x49-rep_1.json"
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/analysis/interaction-footprint-analysis
python footprint_summary_evobundle.py $FOOTPRINT_TABLE $EXP_REP_ID $OUTPUT_FILE -receptor M2R -no-conserve  -cutoff 0.5 -inter


FOOTPRINT_TABLE="/scratch/PI/rondror/akma327/DynamicNetworks/results/state-decomposition/residue-resolution/110416_lax_angle_state_decomp_union_wb_freq/active_receptors/active_state_decomp_residue_resolution.txt"
EXP_REP_ID="M2R:active:restrained:prot:Asp2x50:3x49-rep_2"
OUTPUT_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/interaction-footprint-analysis/residue-resolution-evobundle-input/110816_all_freq50_inter_noligand/active_receptors/M2R:active:restrained:prot:Asp2x50:3x49-rep_2.json"
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/analysis/interaction-footprint-analysis
python footprint_summary_evobundle.py $FOOTPRINT_TABLE $EXP_REP_ID $OUTPUT_FILE -receptor M2R -no-conserve  -cutoff 0.5 -inter


FOOTPRINT_TABLE="/scratch/PI/rondror/akma327/DynamicNetworks/results/state-decomposition/residue-resolution/110416_lax_angle_state_decomp_union_wb_freq/active_receptors/active_state_decomp_residue_resolution.txt"
EXP_REP_ID="M2R:active:restrained:prot:Asp2x50:3x49-rep_3"
OUTPUT_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/interaction-footprint-analysis/residue-resolution-evobundle-input/110816_all_freq50_inter_noligand/active_receptors/M2R:active:restrained:prot:Asp2x50:3x49-rep_3.json"
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/analysis/interaction-footprint-analysis
python footprint_summary_evobundle.py $FOOTPRINT_TABLE $EXP_REP_ID $OUTPUT_FILE -receptor M2R -no-conserve  -cutoff 0.5 -inter






### B2AR-active-Gs aggregate
POLAR_NETWORK_JSON1="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/interaction-footprint-analysis/residue-resolution-evobundle-input/110816_all_freq50_inter_noligand/active_receptors/B2AR:active:long-isoform-B2AR-heterotrimeric-Gs:no_ligand:10.0us:with_membrane.json"
POLAR_NETWORK_JSON2="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/interaction-footprint-analysis/residue-resolution-evobundle-input/110816_all_freq50_inter_noligand/active_receptors/B2AR:active:long-isoform-B2AR-heterotrimeric-Gs:no_ligand:10us:with_membrane.json"
VENN_DIAGRAM_SECTOR="-intersect1"
OUTPUT_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/interaction-footprint-analysis/residue-resolution-evobundle-input/110816_all_freq50_inter_noligand/110816_intersect/b2ar-active-rep1,2.json"
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/analysis/interaction-footprint-analysis
python venn_diagram_compare_polar_networks.py $POLAR_NETWORK_JSON1 $POLAR_NETWORK_JSON2 $VENN_DIAGRAM_SECTOR $OUTPUT_FILE

POLAR_NETWORK_JSON1="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/interaction-footprint-analysis/residue-resolution-evobundle-input/110816_all_freq50_inter_noligand/110816_intersect/b2ar-active-rep1,2.json"
POLAR_NETWORK_JSON2="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/interaction-footprint-analysis/residue-resolution-evobundle-input/110816_all_freq50_inter_noligand/active_receptors/B2AR:active:long-isoform-B2AR-heterotrimeric-Gs:no_ligand:50us:with_membrane.json"
VENN_DIAGRAM_SECTOR="-intersect1"
OUTPUT_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/interaction-footprint-analysis/residue-resolution-evobundle-input/110816_all_freq50_inter_noligand/110816_intersect/b2ar-active-aggregate.json"
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/analysis/interaction-footprint-analysis
python venn_diagram_compare_polar_networks.py $POLAR_NETWORK_JSON1 $POLAR_NETWORK_JSON2 $VENN_DIAGRAM_SECTOR $OUTPUT_FILE

# MOR-active aggregate
POLAR_NETWORK_JSON1="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/interaction-footprint-analysis/residue-resolution-evobundle-input/110816_all_freq50_inter_noligand/active_receptors/MOR:active-noNb:BU72-nB_interface_restrained:2.7us.json"
POLAR_NETWORK_JSON2="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/interaction-footprint-analysis/residue-resolution-evobundle-input/110816_all_freq50_inter_noligand/active_receptors/MOR:active-noNb:BU72-nB_interface_restrained:2.9us.json"
VENN_DIAGRAM_SECTOR="-intersect1"
OUTPUT_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/interaction-footprint-analysis/residue-resolution-evobundle-input/110816_all_freq50_inter_noligand/110816_intersect/mor-active-rep1,2.json"
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/analysis/interaction-footprint-analysis
python venn_diagram_compare_polar_networks.py $POLAR_NETWORK_JSON1 $POLAR_NETWORK_JSON2 $VENN_DIAGRAM_SECTOR $OUTPUT_FILE

POLAR_NETWORK_JSON1="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/interaction-footprint-analysis/residue-resolution-evobundle-input/110816_all_freq50_inter_noligand/110816_intersect/mor-active-rep1,2.json"
POLAR_NETWORK_JSON2="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/interaction-footprint-analysis/residue-resolution-evobundle-input/110816_all_freq50_inter_noligand/active_receptors/MOR:active-noNb:BU72-nB_interface_restrained:3.0us.json"
VENN_DIAGRAM_SECTOR="-intersect1"
OUTPUT_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/interaction-footprint-analysis/residue-resolution-evobundle-input/110816_all_freq50_inter_noligand/110816_intersect/mor-active-aggregate.json"
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/analysis/interaction-footprint-analysis
python venn_diagram_compare_polar_networks.py $POLAR_NETWORK_JSON1 $POLAR_NETWORK_JSON2 $VENN_DIAGRAM_SECTOR $OUTPUT_FILE


# MOR-inactive aggregate
POLAR_NETWORK_JSON1="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/interaction-footprint-analysis/residue-resolution-evobundle-input/110816_all_freq50_inter_noligand/inactive_receptors/MOR:inactive:bFNA-antagonist-bound_to_K233:0.63us.json"
POLAR_NETWORK_JSON2="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/interaction-footprint-analysis/residue-resolution-evobundle-input/110816_all_freq50_inter_noligand/inactive_receptors/MOR:inactive:bFNA-antagonist-bound_to_K233:1.21us.json"
VENN_DIAGRAM_SECTOR="-intersect1"
OUTPUT_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/interaction-footprint-analysis/residue-resolution-evobundle-input/110816_all_freq50_inter_noligand/110816_intersect/mor-inactive-rep1,2.json"
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/analysis/interaction-footprint-analysis
python venn_diagram_compare_polar_networks.py $POLAR_NETWORK_JSON1 $POLAR_NETWORK_JSON2 $VENN_DIAGRAM_SECTOR $OUTPUT_FILE

POLAR_NETWORK_JSON1="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/interaction-footprint-analysis/residue-resolution-evobundle-input/110816_all_freq50_inter_noligand/110816_intersect/mor-inactive-rep1,2.json"
POLAR_NETWORK_JSON2="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/interaction-footprint-analysis/residue-resolution-evobundle-input/110816_all_freq50_inter_noligand/inactive_receptors/MOR:inactive:bFNA-antagonist-bound_to_K233:1.42us.json"
VENN_DIAGRAM_SECTOR="-intersect1"
OUTPUT_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/interaction-footprint-analysis/residue-resolution-evobundle-input/110816_all_freq50_inter_noligand/110816_intersect/mor-inactive-aggregate.json"
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/analysis/interaction-footprint-analysis
python venn_diagram_compare_polar_networks.py $POLAR_NETWORK_JSON1 $POLAR_NETWORK_JSON2 $VENN_DIAGRAM_SECTOR $OUTPUT_FILE


rm /scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/interaction-footprint-analysis/residue-resolution-evobundle-input/110816_all_freq50_inter_noligand/110816_intersect/b2ar-active-rep1,2.json
rm /scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/interaction-footprint-analysis/residue-resolution-evobundle-input/110816_all_freq50_inter_noligand/110816_intersect/mor-active-rep1,2.json
rm /scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/interaction-footprint-analysis/residue-resolution-evobundle-input/110816_all_freq50_inter_noligand/110816_intersect/mor-inactive-rep1,2.json

cp /scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/interaction-footprint-analysis/residue-resolution-evobundle-input/110816_all_freq50_inter_noligand/inactive_receptors/B2AR:inactive:carazalol:10us:D79-,D130-,Inactive.json /scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/interaction-footprint-analysis/residue-resolution-evobundle-input/110816_all_freq50_inter_noligand/110816_intersect/b2ar-inactive-aggregate.json



# Intersecting MOR and B2AR representatives for active and inactive

POLAR_NETWORK_JSON1="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/interaction-footprint-analysis/residue-resolution-evobundle-input/110816_all_freq50_inter_noligand/110816_intersect/b2ar-active-aggregate.json"
POLAR_NETWORK_JSON2="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/interaction-footprint-analysis/residue-resolution-evobundle-input/110816_all_freq50_inter_noligand/110816_intersect/mor-active-aggregate.json"
VENN_DIAGRAM_SECTOR="-intersect1"
OUTPUT_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/interaction-footprint-analysis/residue-resolution-evobundle-input/110816_all_freq50_inter_noligand/110816_intersect/mor-b2ar-active-both.json"
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/analysis/interaction-footprint-analysis
python venn_diagram_compare_polar_networks.py $POLAR_NETWORK_JSON1 $POLAR_NETWORK_JSON2 $VENN_DIAGRAM_SECTOR $OUTPUT_FILE


POLAR_NETWORK_JSON1="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/interaction-footprint-analysis/residue-resolution-evobundle-input/110816_all_freq50_inter_noligand/110816_intersect/mor-inactive-aggregate.json"
POLAR_NETWORK_JSON2="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/interaction-footprint-analysis/residue-resolution-evobundle-input/110816_all_freq50_inter_noligand/110816_intersect/b2ar-inactive-aggregate.json"
VENN_DIAGRAM_SECTOR="-intersect1"
OUTPUT_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/interaction-footprint-analysis/residue-resolution-evobundle-input/110816_all_freq50_inter_noligand/110816_intersect/mor-b2ar-inactive-both.json"
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/analysis/interaction-footprint-analysis
python venn_diagram_compare_polar_networks.py $POLAR_NETWORK_JSON1 $POLAR_NETWORK_JSON2 $VENN_DIAGRAM_SECTOR $OUTPUT_FILE



# Intersecting active and inactive

POLAR_NETWORK_JSON1="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/interaction-footprint-analysis/residue-resolution-evobundle-input/110816_all_freq50_inter_noligand/110816_intersect/mor-b2ar-active-both.json"
POLAR_NETWORK_JSON2="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/interaction-footprint-analysis/residue-resolution-evobundle-input/110816_all_freq50_inter_noligand/110816_intersect/mor-b2ar-inactive-both.json"
VENN_DIAGRAM_SECTOR="-first"
OUTPUT_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/interaction-footprint-analysis/residue-resolution-evobundle-input/110816_all_freq50_inter_noligand/110816_intersect/active-only.json"
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/analysis/interaction-footprint-analysis
python venn_diagram_compare_polar_networks.py $POLAR_NETWORK_JSON1 $POLAR_NETWORK_JSON2 $VENN_DIAGRAM_SECTOR $OUTPUT_FILE


POLAR_NETWORK_JSON1="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/interaction-footprint-analysis/residue-resolution-evobundle-input/110816_all_freq50_inter_noligand/110816_intersect/mor-b2ar-active-both.json"
POLAR_NETWORK_JSON2="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/interaction-footprint-analysis/residue-resolution-evobundle-input/110816_all_freq50_inter_noligand/110816_intersect/mor-b2ar-inactive-both.json"
VENN_DIAGRAM_SECTOR="-second"
OUTPUT_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/interaction-footprint-analysis/residue-resolution-evobundle-input/110816_all_freq50_inter_noligand/110816_intersect/inactive-only.json"
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/analysis/interaction-footprint-analysis
python venn_diagram_compare_polar_networks.py $POLAR_NETWORK_JSON1 $POLAR_NETWORK_JSON2 $VENN_DIAGRAM_SECTOR $OUTPUT_FILE


POLAR_NETWORK_JSON1="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/interaction-footprint-analysis/residue-resolution-evobundle-input/110816_all_freq50_inter_noligand/110816_intersect/mor-b2ar-active-both.json"
POLAR_NETWORK_JSON2="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/interaction-footprint-analysis/residue-resolution-evobundle-input/110816_all_freq50_inter_noligand/110816_intersect/mor-b2ar-inactive-both.json"
VENN_DIAGRAM_SECTOR="-intersect1"
OUTPUT_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/interaction-footprint-analysis/residue-resolution-evobundle-input/110816_all_freq50_inter_noligand/110816_intersect/both.json"
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/analysis/interaction-footprint-analysis
python venn_diagram_compare_polar_networks.py $POLAR_NETWORK_JSON1 $POLAR_NETWORK_JSON2 $VENN_DIAGRAM_SECTOR $OUTPUT_FILE



cd /scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/interaction-footprint-analysis/residue-resolution-evobundle-input/110816_all_freq50_inter_noligand/110816_intersect
rm *aggregate*
rm mor-b2ar-active-both.json
rm mor-b2ar-inactive-both.json




# 11416 Figure 2 part 2 (Do comparison between MOR-active MOR-inactive then B2AR-active B2AR-inactive)


### B2AR-active-Gs aggregate
POLAR_NETWORK_JSON1="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/interaction-footprint-analysis/residue-resolution-evobundle-input/110816_all_freq50_inter_noligand/active_receptors/B2AR:active:long-isoform-B2AR-heterotrimeric-Gs:no_ligand:10.0us:with_membrane.json"
POLAR_NETWORK_JSON2="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/interaction-footprint-analysis/residue-resolution-evobundle-input/110816_all_freq50_inter_noligand/active_receptors/B2AR:active:long-isoform-B2AR-heterotrimeric-Gs:no_ligand:10us:with_membrane.json"
VENN_DIAGRAM_SECTOR="-intersect1"
OUTPUT_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/interaction-footprint-analysis/residue-resolution-evobundle-input/110816_all_freq50_inter_noligand/111416_figure2/b2ar-active-rep1,2.json"
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/analysis/interaction-footprint-analysis
python venn_diagram_compare_polar_networks.py $POLAR_NETWORK_JSON1 $POLAR_NETWORK_JSON2 $VENN_DIAGRAM_SECTOR $OUTPUT_FILE

POLAR_NETWORK_JSON1="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/interaction-footprint-analysis/residue-resolution-evobundle-input/110816_all_freq50_inter_noligand/111416_figure2/b2ar-active-rep1,2.json"
POLAR_NETWORK_JSON2="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/interaction-footprint-analysis/residue-resolution-evobundle-input/110816_all_freq50_inter_noligand/active_receptors/B2AR:active:long-isoform-B2AR-heterotrimeric-Gs:no_ligand:50us:with_membrane.json"
VENN_DIAGRAM_SECTOR="-intersect1"
OUTPUT_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/interaction-footprint-analysis/residue-resolution-evobundle-input/110816_all_freq50_inter_noligand/111416_figure2/b2ar-active-aggregate.json"
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/analysis/interaction-footprint-analysis
python venn_diagram_compare_polar_networks.py $POLAR_NETWORK_JSON1 $POLAR_NETWORK_JSON2 $VENN_DIAGRAM_SECTOR $OUTPUT_FILE

# MOR-active aggregate
POLAR_NETWORK_JSON1="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/interaction-footprint-analysis/residue-resolution-evobundle-input/110816_all_freq50_inter_noligand/active_receptors/MOR:active-noNb:BU72-nB_interface_restrained:2.7us.json"
POLAR_NETWORK_JSON2="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/interaction-footprint-analysis/residue-resolution-evobundle-input/110816_all_freq50_inter_noligand/active_receptors/MOR:active-noNb:BU72-nB_interface_restrained:2.9us.json"
VENN_DIAGRAM_SECTOR="-intersect1"
OUTPUT_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/interaction-footprint-analysis/residue-resolution-evobundle-input/110816_all_freq50_inter_noligand/111416_figure2/mor-active-rep1,2.json"
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/analysis/interaction-footprint-analysis
python venn_diagram_compare_polar_networks.py $POLAR_NETWORK_JSON1 $POLAR_NETWORK_JSON2 $VENN_DIAGRAM_SECTOR $OUTPUT_FILE

POLAR_NETWORK_JSON1="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/interaction-footprint-analysis/residue-resolution-evobundle-input/110816_all_freq50_inter_noligand/111416_figure2/mor-active-rep1,2.json"
POLAR_NETWORK_JSON2="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/interaction-footprint-analysis/residue-resolution-evobundle-input/110816_all_freq50_inter_noligand/active_receptors/MOR:active-noNb:BU72-nB_interface_restrained:3.0us.json"
VENN_DIAGRAM_SECTOR="-intersect1"
OUTPUT_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/interaction-footprint-analysis/residue-resolution-evobundle-input/110816_all_freq50_inter_noligand/111416_figure2/mor-active-aggregate.json"
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/analysis/interaction-footprint-analysis
python venn_diagram_compare_polar_networks.py $POLAR_NETWORK_JSON1 $POLAR_NETWORK_JSON2 $VENN_DIAGRAM_SECTOR $OUTPUT_FILE


# MOR-inactive aggregate
POLAR_NETWORK_JSON1="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/interaction-footprint-analysis/residue-resolution-evobundle-input/110816_all_freq50_inter_noligand/inactive_receptors/MOR:inactive:bFNA-antagonist-bound_to_K233:0.63us.json"
POLAR_NETWORK_JSON2="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/interaction-footprint-analysis/residue-resolution-evobundle-input/110816_all_freq50_inter_noligand/inactive_receptors/MOR:inactive:bFNA-antagonist-bound_to_K233:1.21us.json"
VENN_DIAGRAM_SECTOR="-intersect1"
OUTPUT_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/interaction-footprint-analysis/residue-resolution-evobundle-input/110816_all_freq50_inter_noligand/111416_figure2/mor-inactive-rep1,2.json"
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/analysis/interaction-footprint-analysis
python venn_diagram_compare_polar_networks.py $POLAR_NETWORK_JSON1 $POLAR_NETWORK_JSON2 $VENN_DIAGRAM_SECTOR $OUTPUT_FILE

POLAR_NETWORK_JSON1="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/interaction-footprint-analysis/residue-resolution-evobundle-input/110816_all_freq50_inter_noligand/111416_figure2/mor-inactive-rep1,2.json"
POLAR_NETWORK_JSON2="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/interaction-footprint-analysis/residue-resolution-evobundle-input/110816_all_freq50_inter_noligand/inactive_receptors/MOR:inactive:bFNA-antagonist-bound_to_K233:1.42us.json"
VENN_DIAGRAM_SECTOR="-intersect1"
OUTPUT_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/interaction-footprint-analysis/residue-resolution-evobundle-input/110816_all_freq50_inter_noligand/111416_figure2/mor-inactive-aggregate.json"
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/analysis/interaction-footprint-analysis
python venn_diagram_compare_polar_networks.py $POLAR_NETWORK_JSON1 $POLAR_NETWORK_JSON2 $VENN_DIAGRAM_SECTOR $OUTPUT_FILE

rm /scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/interaction-footprint-analysis/residue-resolution-evobundle-input/110816_all_freq50_inter_noligand/111416_figure2/b2ar-active-rep1,2.json
rm /scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/interaction-footprint-analysis/residue-resolution-evobundle-input/110816_all_freq50_inter_noligand/111416_figure2/mor-active-rep1,2.json
rm /scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/interaction-footprint-analysis/residue-resolution-evobundle-input/110816_all_freq50_inter_noligand/111416_figure2/mor-inactive-rep1,2.json
cp /scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/interaction-footprint-analysis/residue-resolution-evobundle-input/110816_all_freq50_inter_noligand/inactive_receptors/B2AR:inactive:carazalol:10us:D79-,D130-,Inactive.json /scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/interaction-footprint-analysis/residue-resolution-evobundle-input/110816_all_freq50_inter_noligand/111416_figure2/b2ar-inactive-aggregate.json



# Intersecting MOR-active and Inactive

POLAR_NETWORK_JSON1="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/interaction-footprint-analysis/residue-resolution-evobundle-input/110816_all_freq50_inter_noligand/111416_figure2/mor-active-aggregate.json"
POLAR_NETWORK_JSON2="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/interaction-footprint-analysis/residue-resolution-evobundle-input/110816_all_freq50_inter_noligand/111416_figure2/mor-inactive-aggregate.json"
VENN_DIAGRAM_SECTOR="-first"
OUTPUT_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/interaction-footprint-analysis/residue-resolution-evobundle-input/110816_all_freq50_inter_noligand/111416_figure2/mor-active-only.json"
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/analysis/interaction-footprint-analysis
python venn_diagram_compare_polar_networks.py $POLAR_NETWORK_JSON1 $POLAR_NETWORK_JSON2 $VENN_DIAGRAM_SECTOR $OUTPUT_FILE

POLAR_NETWORK_JSON1="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/interaction-footprint-analysis/residue-resolution-evobundle-input/110816_all_freq50_inter_noligand/111416_figure2/mor-active-aggregate.json"
POLAR_NETWORK_JSON2="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/interaction-footprint-analysis/residue-resolution-evobundle-input/110816_all_freq50_inter_noligand/111416_figure2/mor-inactive-aggregate.json"
VENN_DIAGRAM_SECTOR="-second"
OUTPUT_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/interaction-footprint-analysis/residue-resolution-evobundle-input/110816_all_freq50_inter_noligand/111416_figure2/mor-inactive-only.json"
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/analysis/interaction-footprint-analysis
python venn_diagram_compare_polar_networks.py $POLAR_NETWORK_JSON1 $POLAR_NETWORK_JSON2 $VENN_DIAGRAM_SECTOR $OUTPUT_FILE

POLAR_NETWORK_JSON1="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/interaction-footprint-analysis/residue-resolution-evobundle-input/110816_all_freq50_inter_noligand/111416_figure2/mor-active-aggregate.json"
POLAR_NETWORK_JSON2="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/interaction-footprint-analysis/residue-resolution-evobundle-input/110816_all_freq50_inter_noligand/111416_figure2/mor-inactive-aggregate.json"
VENN_DIAGRAM_SECTOR="-intersect1"
OUTPUT_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/interaction-footprint-analysis/residue-resolution-evobundle-input/110816_all_freq50_inter_noligand/111416_figure2/mor-both.json"
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/analysis/interaction-footprint-analysis
python venn_diagram_compare_polar_networks.py $POLAR_NETWORK_JSON1 $POLAR_NETWORK_JSON2 $VENN_DIAGRAM_SECTOR $OUTPUT_FILE


# Intersecting B2AR-active and Inactive

POLAR_NETWORK_JSON1="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/interaction-footprint-analysis/residue-resolution-evobundle-input/110816_all_freq50_inter_noligand/111416_figure2/b2ar-active-aggregate.json"
POLAR_NETWORK_JSON2="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/interaction-footprint-analysis/residue-resolution-evobundle-input/110816_all_freq50_inter_noligand/111416_figure2/b2ar-inactive-aggregate.json"
VENN_DIAGRAM_SECTOR="-first"
OUTPUT_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/interaction-footprint-analysis/residue-resolution-evobundle-input/110816_all_freq50_inter_noligand/111416_figure2/b2ar-active-only.json"
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/analysis/interaction-footprint-analysis
python venn_diagram_compare_polar_networks.py $POLAR_NETWORK_JSON1 $POLAR_NETWORK_JSON2 $VENN_DIAGRAM_SECTOR $OUTPUT_FILE


POLAR_NETWORK_JSON1="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/interaction-footprint-analysis/residue-resolution-evobundle-input/110816_all_freq50_inter_noligand/111416_figure2/b2ar-active-aggregate.json"
POLAR_NETWORK_JSON2="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/interaction-footprint-analysis/residue-resolution-evobundle-input/110816_all_freq50_inter_noligand/111416_figure2/b2ar-inactive-aggregate.json"
VENN_DIAGRAM_SECTOR="-second"
OUTPUT_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/interaction-footprint-analysis/residue-resolution-evobundle-input/110816_all_freq50_inter_noligand/111416_figure2/b2ar-inactive-only.json"
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/analysis/interaction-footprint-analysis
python venn_diagram_compare_polar_networks.py $POLAR_NETWORK_JSON1 $POLAR_NETWORK_JSON2 $VENN_DIAGRAM_SECTOR $OUTPUT_FILE


POLAR_NETWORK_JSON1="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/interaction-footprint-analysis/residue-resolution-evobundle-input/110816_all_freq50_inter_noligand/111416_figure2/b2ar-active-aggregate.json"
POLAR_NETWORK_JSON2="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/interaction-footprint-analysis/residue-resolution-evobundle-input/110816_all_freq50_inter_noligand/111416_figure2/b2ar-inactive-aggregate.json"
VENN_DIAGRAM_SECTOR="-intersect1"
OUTPUT_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/interaction-footprint-analysis/residue-resolution-evobundle-input/110816_all_freq50_inter_noligand/111416_figure2/b2ar-both.json"
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/analysis/interaction-footprint-analysis
python venn_diagram_compare_polar_networks.py $POLAR_NETWORK_JSON1 $POLAR_NETWORK_JSON2 $VENN_DIAGRAM_SECTOR $OUTPUT_FILE


cd /scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/interaction-footprint-analysis/residue-resolution-evobundle-input/110816_all_freq50_inter_noligand/111416_figure2

rm *aggregate*






