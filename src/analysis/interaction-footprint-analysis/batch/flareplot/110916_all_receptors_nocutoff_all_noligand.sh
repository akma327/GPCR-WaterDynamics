# Generate individual flare plots for all inactive and active experiement 
# conditions. Color coded by receptor. Will have to manually adjust "wb_combined"
# colors in utils.py for footprint_summary_evobundle.py


# Computes figure 3 flare plots for all receptors
# No threshold requency
# Show entire protein region 
# No ligand included

# Inactive

# B2AR-inactive
# FOOTPRINT_TABLE="/scratch/PI/rondror/akma327/DynamicNetworks/results/state-decomposition/residue-resolution/110416_lax_angle_state_decomp_union_wb_freq/inactive_receptors/inactive_state_decomp_residue_resolution.txt"
# EXP_REP_ID="B2AR:inactive:carazalol:10us:D79-,D130-,Inactive"
# OUTPUT_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/interaction-footprint-analysis/residue-resolution-evobundle-input/110916_all_notcutoff_inter_noligand/inactive_receptors/B2AR:inactive:carazalol:10us:D79-,D130-,Inactive.json"
# cd /scratch/PI/rondror/akma327/DynamicNetworks/src/analysis/interaction-footprint-analysis
# python footprint_summary_evobundle.py $FOOTPRINT_TABLE $EXP_REP_ID $OUTPUT_FILE -receptor B2AR -no-conserve   -inter



# # D4R-inactive
# FOOTPRINT_TABLE="/scratch/PI/rondror/akma327/DynamicNetworks/results/state-decomposition/residue-resolution/110416_lax_angle_state_decomp_union_wb_freq/inactive_receptors/inactive_state_decomp_residue_resolution.txt"
# EXP_REP_ID="D4R:inactive:nemanopride:deprotonated:1.3us"
# OUTPUT_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/interaction-footprint-analysis/residue-resolution-evobundle-input/110916_all_notcutoff_inter_noligand/inactive_receptors/D4R:inactive:nemanopride:deprotonated:1.3us.json"
# cd /scratch/PI/rondror/akma327/DynamicNetworks/src/analysis/interaction-footprint-analysis
# python footprint_summary_evobundle.py $FOOTPRINT_TABLE $EXP_REP_ID $OUTPUT_FILE -receptor D4R -no-conserve   -inter

# FOOTPRINT_TABLE="/scratch/PI/rondror/akma327/DynamicNetworks/results/state-decomposition/residue-resolution/110416_lax_angle_state_decomp_union_wb_freq/inactive_receptors/inactive_state_decomp_residue_resolution.txt"
# EXP_REP_ID="D4R:inactive:nemanopride:deprotonated:1.5us"
# OUTPUT_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/interaction-footprint-analysis/residue-resolution-evobundle-input/110916_all_notcutoff_inter_noligand/inactive_receptors/D4R:inactive:nemanopride:deprotonated:1.5us.json"
# cd /scratch/PI/rondror/akma327/DynamicNetworks/src/analysis/interaction-footprint-analysis
# python footprint_summary_evobundle.py $FOOTPRINT_TABLE $EXP_REP_ID $OUTPUT_FILE -receptor D4R -no-conserve   -inter

# FOOTPRINT_TABLE="/scratch/PI/rondror/akma327/DynamicNetworks/results/state-decomposition/residue-resolution/110416_lax_angle_state_decomp_union_wb_freq/inactive_receptors/inactive_state_decomp_residue_resolution.txt"
# EXP_REP_ID="D4R:inactive:nemanopride:deprotonated:1.50us"
# OUTPUT_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/interaction-footprint-analysis/residue-resolution-evobundle-input/110916_all_notcutoff_inter_noligand/inactive_receptors/D4R:inactive:nemanopride:deprotonated:1.50us.json"
# cd /scratch/PI/rondror/akma327/DynamicNetworks/src/analysis/interaction-footprint-analysis
# python footprint_summary_evobundle.py $FOOTPRINT_TABLE $EXP_REP_ID $OUTPUT_FILE -receptor D4R -no-conserve   -inter


# # M2R-inactive

# FOOTPRINT_TABLE="/scratch/PI/rondror/akma327/DynamicNetworks/results/state-decomposition/residue-resolution/110416_lax_angle_state_decomp_union_wb_freq/inactive_receptors/inactive_state_decomp_residue_resolution.txt"	
# EXP_REP_ID="M2R:inactive:QNB-orthosteric:16.4us"
# OUTPUT_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/interaction-footprint-analysis/residue-resolution-evobundle-input/110916_all_notcutoff_inter_noligand/inactive_receptors/M2R:inactive:QNB-orthosteric:16.4us.json"
# cd /scratch/PI/rondror/akma327/DynamicNetworks/src/analysis/interaction-footprint-analysis
# python footprint_summary_evobundle.py $FOOTPRINT_TABLE $EXP_REP_ID $OUTPUT_FILE -receptor M2R -no-conserve   -inter

# FOOTPRINT_TABLE="/scratch/PI/rondror/akma327/DynamicNetworks/results/state-decomposition/residue-resolution/110416_lax_angle_state_decomp_union_wb_freq/inactive_receptors/inactive_state_decomp_residue_resolution.txt"
# EXP_REP_ID="M2R:inactive:QNB-orthosteric-no-allosteric:10us"
# OUTPUT_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/interaction-footprint-analysis/residue-resolution-evobundle-input/110916_all_notcutoff_inter_noligand/inactive_receptors/M2R:inactive:QNB-orthosteric-no-allosteric:10us.json"
# cd /scratch/PI/rondror/akma327/DynamicNetworks/src/analysis/interaction-footprint-analysis
# python footprint_summary_evobundle.py $FOOTPRINT_TABLE $EXP_REP_ID $OUTPUT_FILE -receptor M2R -no-conserve   -inter

# # MOR-inactive

# FOOTPRINT_TABLE="/scratch/PI/rondror/akma327/DynamicNetworks/results/state-decomposition/residue-resolution/110416_lax_angle_state_decomp_union_wb_freq/inactive_receptors/inactive_state_decomp_residue_resolution.txt"
# EXP_REP_ID="MOR:inactive:bFNA-antagonist-bound_to_K233:1.21us"
# OUTPUT_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/interaction-footprint-analysis/residue-resolution-evobundle-input/110916_all_notcutoff_inter_noligand/inactive_receptors/MOR:inactive:bFNA-antagonist-bound_to_K233:1.21us.json"
# cd /scratch/PI/rondror/akma327/DynamicNetworks/src/analysis/interaction-footprint-analysis
# python footprint_summary_evobundle.py $FOOTPRINT_TABLE $EXP_REP_ID $OUTPUT_FILE -receptor MOR -no-conserve   -inter

# FOOTPRINT_TABLE="/scratch/PI/rondror/akma327/DynamicNetworks/results/state-decomposition/residue-resolution/110416_lax_angle_state_decomp_union_wb_freq/inactive_receptors/inactive_state_decomp_residue_resolution.txt"
# EXP_REP_ID="MOR:inactive:bFNA-antagonist-bound_to_K233:1.42us"
# OUTPUT_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/interaction-footprint-analysis/residue-resolution-evobundle-input/110916_all_notcutoff_inter_noligand/inactive_receptors/MOR:inactive:bFNA-antagonist-bound_to_K233:1.42us.json"
# cd /scratch/PI/rondror/akma327/DynamicNetworks/src/analysis/interaction-footprint-analysis
# python footprint_summary_evobundle.py $FOOTPRINT_TABLE $EXP_REP_ID $OUTPUT_FILE -receptor MOR -no-conserve   -inter


# FOOTPRINT_TABLE="/scratch/PI/rondror/akma327/DynamicNetworks/results/state-decomposition/residue-resolution/110416_lax_angle_state_decomp_union_wb_freq/inactive_receptors/inactive_state_decomp_residue_resolution.txt"
# EXP_REP_ID="MOR:inactive:bFNA-antagonist-bound_to_K233:0.63us"
# OUTPUT_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/interaction-footprint-analysis/residue-resolution-evobundle-input/110916_all_notcutoff_inter_noligand/inactive_receptors/MOR:inactive:bFNA-antagonist-bound_to_K233:0.63us.json"
# cd /scratch/PI/rondror/akma327/DynamicNetworks/src/analysis/interaction-footprint-analysis
# python footprint_summary_evobundle.py $FOOTPRINT_TABLE $EXP_REP_ID $OUTPUT_FILE -receptor MOR -no-conserve   -inter


# # DOR-inactive

# FOOTPRINT_TABLE="/scratch/PI/rondror/akma327/DynamicNetworks/results/state-decomposition/residue-resolution/110416_lax_angle_state_decomp_union_wb_freq/inactive_receptors/inactive_state_decomp_residue_resolution.txt"
# EXP_REP_ID="DOR:inactive:naltrindole:3.0us"
# OUTPUT_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/interaction-footprint-analysis/residue-resolution-evobundle-input/110916_all_notcutoff_inter_noligand/inactive_receptors/DOR:inactive:naltrindole:3.0us.json"
# cd /scratch/PI/rondror/akma327/DynamicNetworks/src/analysis/interaction-footprint-analysis
# python footprint_summary_evobundle.py $FOOTPRINT_TABLE $EXP_REP_ID $OUTPUT_FILE -receptor DOR -no-conserve   -inter

# FOOTPRINT_TABLE="/scratch/PI/rondror/akma327/DynamicNetworks/results/state-decomposition/residue-resolution/110416_lax_angle_state_decomp_union_wb_freq/inactive_receptors/inactive_state_decomp_residue_resolution.txt"
# EXP_REP_ID="DOR:inactive:naltrindole:1.3us"
# OUTPUT_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/interaction-footprint-analysis/residue-resolution-evobundle-input/110916_all_notcutoff_inter_noligand/inactive_receptors/DOR:inactive:naltrindole:1.3us.json"
# cd /scratch/PI/rondror/akma327/DynamicNetworks/src/analysis/interaction-footprint-analysis
# python footprint_summary_evobundle.py $FOOTPRINT_TABLE $EXP_REP_ID $OUTPUT_FILE -receptor DOR -no-conserve   -inter


# FOOTPRINT_TABLE="/scratch/PI/rondror/akma327/DynamicNetworks/results/state-decomposition/residue-resolution/110416_lax_angle_state_decomp_union_wb_freq/inactive_receptors/inactive_state_decomp_residue_resolution.txt"
# EXP_REP_ID="DOR:inactive:naltrindole:2.0us"
# OUTPUT_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/interaction-footprint-analysis/residue-resolution-evobundle-input/110916_all_notcutoff_inter_noligand/inactive_receptors/DOR:inactive:naltrindole:2.0us.json"
# cd /scratch/PI/rondror/akma327/DynamicNetworks/src/analysis/interaction-footprint-analysis
# python footprint_summary_evobundle.py $FOOTPRINT_TABLE $EXP_REP_ID $OUTPUT_FILE -receptor DOR -no-conserve   -inter



# # Active

# # MOR-active-noNb-BU72-nB_interface_restrained

# FOOTPRINT_TABLE="/scratch/PI/rondror/akma327/DynamicNetworks/results/state-decomposition/residue-resolution/110416_lax_angle_state_decomp_union_wb_freq/active_receptors/active_state_decomp_residue_resolution.txt"
# EXP_REP_ID="MOR:active-noNb:BU72-nB_interface_restrained:3.0us"
# OUTPUT_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/interaction-footprint-analysis/residue-resolution-evobundle-input/110916_all_notcutoff_inter_noligand/active_receptors/MOR:active-noNb:BU72-nB_interface_restrained:3.0us.json"
# cd /scratch/PI/rondror/akma327/DynamicNetworks/src/analysis/interaction-footprint-analysis
# python footprint_summary_evobundle.py $FOOTPRINT_TABLE $EXP_REP_ID $OUTPUT_FILE -receptor MOR -no-conserve   -inter

# FOOTPRINT_TABLE="/scratch/PI/rondror/akma327/DynamicNetworks/results/state-decomposition/residue-resolution/110416_lax_angle_state_decomp_union_wb_freq/active_receptors/active_state_decomp_residue_resolution.txt"
# EXP_REP_ID="MOR:active-noNb:BU72-nB_interface_restrained:2.7us"
# OUTPUT_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/interaction-footprint-analysis/residue-resolution-evobundle-input/110916_all_notcutoff_inter_noligand/active_receptors/MOR:active-noNb:BU72-nB_interface_restrained:2.7us.json"
# cd /scratch/PI/rondror/akma327/DynamicNetworks/src/analysis/interaction-footprint-analysis
# python footprint_summary_evobundle.py $FOOTPRINT_TABLE $EXP_REP_ID $OUTPUT_FILE -receptor MOR -no-conserve   -inter


# FOOTPRINT_TABLE="/scratch/PI/rondror/akma327/DynamicNetworks/results/state-decomposition/residue-resolution/110416_lax_angle_state_decomp_union_wb_freq/active_receptors/active_state_decomp_residue_resolution.txt"
# EXP_REP_ID="MOR:active-noNb:BU72-nB_interface_restrained:2.9us"
# OUTPUT_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/interaction-footprint-analysis/residue-resolution-evobundle-input/110916_all_notcutoff_inter_noligand/active_receptors/MOR:active-noNb:BU72-nB_interface_restrained:2.9us.json"
# cd /scratch/PI/rondror/akma327/DynamicNetworks/src/analysis/interaction-footprint-analysis
# python footprint_summary_evobundle.py $FOOTPRINT_TABLE $EXP_REP_ID $OUTPUT_FILE -receptor MOR -no-conserve   -inter


# # B2AR-active-Gs-science2015

# FOOTPRINT_TABLE="/scratch/PI/rondror/akma327/DynamicNetworks/results/state-decomposition/residue-resolution/110416_lax_angle_state_decomp_union_wb_freq/active_receptors/active_state_decomp_residue_resolution.txt"
# EXP_REP_ID="B2AR:active:long-isoform-B2AR-heterotrimeric-Gs:no_ligand:50us:with_membrane"
# OUTPUT_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/interaction-footprint-analysis/residue-resolution-evobundle-input/110916_all_notcutoff_inter_noligand/active_receptors/B2AR:active:long-isoform-B2AR-heterotrimeric-Gs:no_ligand:50us:with_membrane.json"
# cd /scratch/PI/rondror/akma327/DynamicNetworks/src/analysis/interaction-footprint-analysis
# python footprint_summary_evobundle.py $FOOTPRINT_TABLE $EXP_REP_ID $OUTPUT_FILE -receptor B2AR -no-conserve   -inter

# FOOTPRINT_TABLE="/scratch/PI/rondror/akma327/DynamicNetworks/results/state-decomposition/residue-resolution/110416_lax_angle_state_decomp_union_wb_freq/active_receptors/active_state_decomp_residue_resolution.txt"
# EXP_REP_ID="B2AR:active:long-isoform-B2AR-heterotrimeric-Gs:no_ligand:10us:with_membrane"
# OUTPUT_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/interaction-footprint-analysis/residue-resolution-evobundle-input/110916_all_notcutoff_inter_noligand/active_receptors/B2AR:active:long-isoform-B2AR-heterotrimeric-Gs:no_ligand:10us:with_membrane.json"
# cd /scratch/PI/rondror/akma327/DynamicNetworks/src/analysis/interaction-footprint-analysis
# python footprint_summary_evobundle.py $FOOTPRINT_TABLE $EXP_REP_ID $OUTPUT_FILE -receptor B2AR -no-conserve   -inter

# FOOTPRINT_TABLE="/scratch/PI/rondror/akma327/DynamicNetworks/results/state-decomposition/residue-resolution/110416_lax_angle_state_decomp_union_wb_freq/active_receptors/active_state_decomp_residue_resolution.txt"
# EXP_REP_ID="B2AR:active:long-isoform-B2AR-heterotrimeric-Gs:no_ligand:10.0us:with_membrane"
# OUTPUT_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/interaction-footprint-analysis/residue-resolution-evobundle-input/110916_all_notcutoff_inter_noligand/active_receptors/B2AR:active:long-isoform-B2AR-heterotrimeric-Gs:no_ligand:10.0us:with_membrane.json"
# cd /scratch/PI/rondror/akma327/DynamicNetworks/src/analysis/interaction-footprint-analysis
# python footprint_summary_evobundle.py $FOOTPRINT_TABLE $EXP_REP_ID $OUTPUT_FILE -receptor B2AR -no-conserve   -inter


# FOOTPRINT_TABLE="/scratch/PI/rondror/akma327/DynamicNetworks/results/state-decomposition/residue-resolution/110416_lax_angle_state_decomp_union_wb_freq/active_receptors/active_state_decomp_residue_resolution.txt"
# EXP_REP_ID="B2AR:active:short-isoform-B2AR-heterotrimeric-Gs:no_ligand:5us:with_membrane"
# OUTPUT_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/interaction-footprint-analysis/residue-resolution-evobundle-input/110916_all_notcutoff_inter_noligand/active_receptors/B2AR:active:short-isoform-B2AR-heterotrimeric-Gs:no_ligand:5us:with_membrane.json"
# cd /scratch/PI/rondror/akma327/DynamicNetworks/src/analysis/interaction-footprint-analysis
# python footprint_summary_evobundle.py $FOOTPRINT_TABLE $EXP_REP_ID $OUTPUT_FILE -receptor B2AR -no-conserve   -inter


# # B2AR-active-pnas2011b

# FOOTPRINT_TABLE="/scratch/PI/rondror/akma327/DynamicNetworks/results/state-decomposition/residue-resolution/110416_lax_angle_state_decomp_union_wb_freq/active_receptors/active_state_decomp_residue_resolution.txt"
# EXP_REP_ID="B2AR:active:agonist-bound-nanobody-complex:3.6us:D70+,D130+,H172+,C341_palm"
# OUTPUT_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/interaction-footprint-analysis/residue-resolution-evobundle-input/110916_all_notcutoff_inter_noligand/active_receptors/B2AR:active:agonist-bound-nanobody-complex:3.6us:D70+,D130+,H172+,C341_palm.json"
# cd /scratch/PI/rondror/akma327/DynamicNetworks/src/analysis/interaction-footprint-analysis
# python footprint_summary_evobundle.py $FOOTPRINT_TABLE $EXP_REP_ID $OUTPUT_FILE -receptor B2AR -no-conserve   -inter


# FOOTPRINT_TABLE="/scratch/PI/rondror/akma327/DynamicNetworks/results/state-decomposition/residue-resolution/110416_lax_angle_state_decomp_union_wb_freq/active_receptors/active_state_decomp_residue_resolution.txt"
# EXP_REP_ID="B2AR:active:agonist-bound-nanobody-complex:6.5us:D70+,D130+,H172+,C341_palm"
# OUTPUT_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/interaction-footprint-analysis/residue-resolution-evobundle-input/110916_all_notcutoff_inter_noligand/active_receptors/B2AR:active:agonist-bound-nanobody-complex:6.5us:D70+,D130+,H172+,C341_palm.json"
# cd /scratch/PI/rondror/akma327/DynamicNetworks/src/analysis/interaction-footprint-analysis
# python footprint_summary_evobundle.py $FOOTPRINT_TABLE $EXP_REP_ID $OUTPUT_FILE -receptor B2AR -no-conserve   -inter



# # MOR-active-unpublished
# FOOTPRINT_TABLE="/scratch/PI/rondror/akma327/DynamicNetworks/results/state-decomposition/residue-resolution/110416_lax_angle_state_decomp_union_wb_freq/active_receptors/active_state_decomp_residue_resolution.txt"
# EXP_REP_ID="MOR:active:unpublished-rep_1"
# OUTPUT_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/interaction-footprint-analysis/residue-resolution-evobundle-input/110916_all_notcutoff_inter_noligand/active_receptors/MOR:active:unpublished-rep_1.json"
# cd /scratch/PI/rondror/akma327/DynamicNetworks/src/analysis/interaction-footprint-analysis
# python footprint_summary_evobundle.py $FOOTPRINT_TABLE $EXP_REP_ID $OUTPUT_FILE -receptor MOR -no-conserve   -inter

# FOOTPRINT_TABLE="/scratch/PI/rondror/akma327/DynamicNetworks/results/state-decomposition/residue-resolution/110416_lax_angle_state_decomp_union_wb_freq/active_receptors/active_state_decomp_residue_resolution.txt"
# EXP_REP_ID="MOR:active:unpublished-rep_2"
# OUTPUT_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/interaction-footprint-analysis/residue-resolution-evobundle-input/110916_all_notcutoff_inter_noligand/active_receptors/MOR:active:unpublished-rep_2.json"
# cd /scratch/PI/rondror/akma327/DynamicNetworks/src/analysis/interaction-footprint-analysis
# python footprint_summary_evobundle.py $FOOTPRINT_TABLE $EXP_REP_ID $OUTPUT_FILE -receptor MOR -no-conserve   -inter

# FOOTPRINT_TABLE="/scratch/PI/rondror/akma327/DynamicNetworks/results/state-decomposition/residue-resolution/110416_lax_angle_state_decomp_union_wb_freq/active_receptors/active_state_decomp_residue_resolution.txt"
# EXP_REP_ID="MOR:active:unpublished-rep_3"
# OUTPUT_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/interaction-footprint-analysis/residue-resolution-evobundle-input/110916_all_notcutoff_inter_noligand/active_receptors/MOR:active:unpublished-rep_3.json"
# cd /scratch/PI/rondror/akma327/DynamicNetworks/src/analysis/interaction-footprint-analysis
# python footprint_summary_evobundle.py $FOOTPRINT_TABLE $EXP_REP_ID $OUTPUT_FILE -receptor MOR -no-conserve   -inter






# # M2R-active-unpublished
# FOOTPRINT_TABLE="/scratch/PI/rondror/akma327/DynamicNetworks/results/state-decomposition/residue-resolution/110416_lax_angle_state_decomp_union_wb_freq/active_receptors/active_state_decomp_residue_resolution.txt"
# EXP_REP_ID="M2R:active:restrained:prot:Asp2x50:3x49-rep_1"
# OUTPUT_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/interaction-footprint-analysis/residue-resolution-evobundle-input/110916_all_notcutoff_inter_noligand/active_receptors/M2R:active:restrained:prot:Asp2x50:3x49-rep_1.json"
# cd /scratch/PI/rondror/akma327/DynamicNetworks/src/analysis/interaction-footprint-analysis
# python footprint_summary_evobundle.py $FOOTPRINT_TABLE $EXP_REP_ID $OUTPUT_FILE -receptor M2R -no-conserve   -inter


# FOOTPRINT_TABLE="/scratch/PI/rondror/akma327/DynamicNetworks/results/state-decomposition/residue-resolution/110416_lax_angle_state_decomp_union_wb_freq/active_receptors/active_state_decomp_residue_resolution.txt"
# EXP_REP_ID="M2R:active:restrained:prot:Asp2x50:3x49-rep_2"
# OUTPUT_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/interaction-footprint-analysis/residue-resolution-evobundle-input/110916_all_notcutoff_inter_noligand/active_receptors/M2R:active:restrained:prot:Asp2x50:3x49-rep_2.json"
# cd /scratch/PI/rondror/akma327/DynamicNetworks/src/analysis/interaction-footprint-analysis
# python footprint_summary_evobundle.py $FOOTPRINT_TABLE $EXP_REP_ID $OUTPUT_FILE -receptor M2R -no-conserve   -inter


# FOOTPRINT_TABLE="/scratch/PI/rondror/akma327/DynamicNetworks/results/state-decomposition/residue-resolution/110416_lax_angle_state_decomp_union_wb_freq/active_receptors/active_state_decomp_residue_resolution.txt"
# EXP_REP_ID="M2R:active:restrained:prot:Asp2x50:3x49-rep_3"
# OUTPUT_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/interaction-footprint-analysis/residue-resolution-evobundle-input/110916_all_notcutoff_inter_noligand/active_receptors/M2R:active:restrained:prot:Asp2x50:3x49-rep_3.json"
# cd /scratch/PI/rondror/akma327/DynamicNetworks/src/analysis/interaction-footprint-analysis
# python footprint_summary_evobundle.py $FOOTPRINT_TABLE $EXP_REP_ID $OUTPUT_FILE -receptor M2R -no-conserve   -inter


# Rhodopsin-active-unrestrained-unpublished

FOOTPRINT_TABLE="/scratch/PI/rondror/akma327/DynamicNetworks/results/state-decomposition/residue-resolution/110916_state_decomp_union_wb_freq/active_receptors/active_state_decomp_residue_resolution.txt"
EXP_REP_ID="RHO:active:unrestrained-rep_1"
OUTPUT_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/interaction-footprint-analysis/residue-resolution-evobundle-input/110916_all_notcutoff_inter_noligand/active_receptors/RHO:active:unrestrained-rep_1.json"
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/analysis/interaction-footprint-analysis
python footprint_summary_evobundle.py $FOOTPRINT_TABLE $EXP_REP_ID $OUTPUT_FILE -receptor RHO -no-conserve -inter

FOOTPRINT_TABLE="/scratch/PI/rondror/akma327/DynamicNetworks/results/state-decomposition/residue-resolution/110916_state_decomp_union_wb_freq/active_receptors/active_state_decomp_residue_resolution.txt"
EXP_REP_ID="RHO:active:unrestrained-rep_2"
OUTPUT_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/interaction-footprint-analysis/residue-resolution-evobundle-input/110916_all_notcutoff_inter_noligand/active_receptors/RHO:active:unrestrained-rep_2.json"
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/analysis/interaction-footprint-analysis
python footprint_summary_evobundle.py $FOOTPRINT_TABLE $EXP_REP_ID $OUTPUT_FILE -receptor RHO -no-conserve -inter


FOOTPRINT_TABLE="/scratch/PI/rondror/akma327/DynamicNetworks/results/state-decomposition/residue-resolution/110916_state_decomp_union_wb_freq/active_receptors/active_state_decomp_residue_resolution.txt"
EXP_REP_ID="RHO:active:unrestrained-rep_3"
OUTPUT_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/interaction-footprint-analysis/residue-resolution-evobundle-input/110916_all_notcutoff_inter_noligand/active_receptors/RHO:active:unrestrained-rep_3.json"
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/analysis/interaction-footprint-analysis
python footprint_summary_evobundle.py $FOOTPRINT_TABLE $EXP_REP_ID $OUTPUT_FILE -receptor RHO -no-conserve -inter




### Figure 3 Intersections

# POLAR_NETWORK_JSON1="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/interaction-footprint-analysis/residue-resolution-evobundle-input/110916_all_notcutoff_inter_noligand/inactive_receptors/B2AR:inactive:carazalol:10us:D79-,D130-,Inactive.json"
# POLAR_NETWORK_JSON2="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/interaction-footprint-analysis/residue-resolution-evobundle-input/110816_all_freq50_inter_noligand/110816_intersect/inactive-only.json"
# VENN_DIAGRAM_SECTOR="-intersect1"
# OUTPUT_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/interaction-footprint-analysis/residue-resolution-evobundle-input/110916_all_notcutoff_inter_noligand/figure3/inactive_receptors/B2AR:inactive:carazalol:10us:D79-,D130-,Inactive.json"
# cd /scratch/PI/rondror/akma327/DynamicNetworks/src/analysis/interaction-footprint-analysis
# python venn_diagram_compare_polar_networks.py $POLAR_NETWORK_JSON1 $POLAR_NETWORK_JSON2 $VENN_DIAGRAM_SECTOR $OUTPUT_FILE

# # D4R-inactive

# POLAR_NETWORK_JSON1="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/interaction-footprint-analysis/residue-resolution-evobundle-input/110916_all_notcutoff_inter_noligand/inactive_receptors/D4R:inactive:nemanopride:deprotonated:1.3us.json"
# POLAR_NETWORK_JSON2="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/interaction-footprint-analysis/residue-resolution-evobundle-input/110816_all_freq50_inter_noligand/110816_intersect/inactive-only.json"
# VENN_DIAGRAM_SECTOR="-intersect1"
# OUTPUT_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/interaction-footprint-analysis/residue-resolution-evobundle-input/110916_all_notcutoff_inter_noligand/figure3/inactive_receptors/D4R:inactive:nemanopride:deprotonated:1.3us.json"
# cd /scratch/PI/rondror/akma327/DynamicNetworks/src/analysis/interaction-footprint-analysis
# python venn_diagram_compare_polar_networks.py $POLAR_NETWORK_JSON1 $POLAR_NETWORK_JSON2 $VENN_DIAGRAM_SECTOR $OUTPUT_FILE


# POLAR_NETWORK_JSON1="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/interaction-footprint-analysis/residue-resolution-evobundle-input/110916_all_notcutoff_inter_noligand/inactive_receptors/D4R:inactive:nemanopride:deprotonated:1.5us.json"
# POLAR_NETWORK_JSON2="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/interaction-footprint-analysis/residue-resolution-evobundle-input/110816_all_freq50_inter_noligand/110816_intersect/inactive-only.json"
# VENN_DIAGRAM_SECTOR="-intersect1"
# OUTPUT_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/interaction-footprint-analysis/residue-resolution-evobundle-input/110916_all_notcutoff_inter_noligand/figure3/inactive_receptors/D4R:inactive:nemanopride:deprotonated:1.5us.json"
# cd /scratch/PI/rondror/akma327/DynamicNetworks/src/analysis/interaction-footprint-analysis
# python venn_diagram_compare_polar_networks.py $POLAR_NETWORK_JSON1 $POLAR_NETWORK_JSON2 $VENN_DIAGRAM_SECTOR $OUTPUT_FILE


# POLAR_NETWORK_JSON1="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/interaction-footprint-analysis/residue-resolution-evobundle-input/110916_all_notcutoff_inter_noligand/inactive_receptors/D4R:inactive:nemanopride:deprotonated:1.50us.json"
# POLAR_NETWORK_JSON2="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/interaction-footprint-analysis/residue-resolution-evobundle-input/110816_all_freq50_inter_noligand/110816_intersect/inactive-only.json"
# VENN_DIAGRAM_SECTOR="-intersect1"
# OUTPUT_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/interaction-footprint-analysis/residue-resolution-evobundle-input/110916_all_notcutoff_inter_noligand/figure3/inactive_receptors/D4R:inactive:nemanopride:deprotonated:1.50us.json"
# cd /scratch/PI/rondror/akma327/DynamicNetworks/src/analysis/interaction-footprint-analysis
# python venn_diagram_compare_polar_networks.py $POLAR_NETWORK_JSON1 $POLAR_NETWORK_JSON2 $VENN_DIAGRAM_SECTOR $OUTPUT_FILE



# # M2R-inactive

# POLAR_NETWORK_JSON1="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/interaction-footprint-analysis/residue-resolution-evobundle-input/110916_all_notcutoff_inter_noligand/inactive_receptors/M2R:inactive:QNB-orthosteric:16.4us.json"
# POLAR_NETWORK_JSON2="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/interaction-footprint-analysis/residue-resolution-evobundle-input/110816_all_freq50_inter_noligand/110816_intersect/inactive-only.json"
# VENN_DIAGRAM_SECTOR="-intersect1"
# OUTPUT_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/interaction-footprint-analysis/residue-resolution-evobundle-input/110916_all_notcutoff_inter_noligand/figure3/inactive_receptors/M2R:inactive:QNB-orthosteric:16.4us.json"
# cd /scratch/PI/rondror/akma327/DynamicNetworks/src/analysis/interaction-footprint-analysis
# python venn_diagram_compare_polar_networks.py $POLAR_NETWORK_JSON1 $POLAR_NETWORK_JSON2 $VENN_DIAGRAM_SECTOR $OUTPUT_FILE




# POLAR_NETWORK_JSON1="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/interaction-footprint-analysis/residue-resolution-evobundle-input/110916_all_notcutoff_inter_noligand/inactive_receptors/M2R:inactive:QNB-orthosteric-no-allosteric:10us.json"
# POLAR_NETWORK_JSON2="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/interaction-footprint-analysis/residue-resolution-evobundle-input/110816_all_freq50_inter_noligand/110816_intersect/inactive-only.json"
# VENN_DIAGRAM_SECTOR="-intersect1"
# OUTPUT_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/interaction-footprint-analysis/residue-resolution-evobundle-input/110916_all_notcutoff_inter_noligand/figure3/inactive_receptors/M2R:inactive:QNB-orthosteric-no-allosteric:10us.json"
# cd /scratch/PI/rondror/akma327/DynamicNetworks/src/analysis/interaction-footprint-analysis
# python venn_diagram_compare_polar_networks.py $POLAR_NETWORK_JSON1 $POLAR_NETWORK_JSON2 $VENN_DIAGRAM_SECTOR $OUTPUT_FILE




# # MOR-inactive

# POLAR_NETWORK_JSON1="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/interaction-footprint-analysis/residue-resolution-evobundle-input/110916_all_notcutoff_inter_noligand/inactive_receptors/MOR:inactive:bFNA-antagonist-bound_to_K233:1.21us.json"
# POLAR_NETWORK_JSON2="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/interaction-footprint-analysis/residue-resolution-evobundle-input/110816_all_freq50_inter_noligand/110816_intersect/inactive-only.json"
# VENN_DIAGRAM_SECTOR="-intersect1"
# OUTPUT_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/interaction-footprint-analysis/residue-resolution-evobundle-input/110916_all_notcutoff_inter_noligand/figure3/inactive_receptors/MOR:inactive:bFNA-antagonist-bound_to_K233:1.21us.json"
# cd /scratch/PI/rondror/akma327/DynamicNetworks/src/analysis/interaction-footprint-analysis
# python venn_diagram_compare_polar_networks.py $POLAR_NETWORK_JSON1 $POLAR_NETWORK_JSON2 $VENN_DIAGRAM_SECTOR $OUTPUT_FILE



# POLAR_NETWORK_JSON1="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/interaction-footprint-analysis/residue-resolution-evobundle-input/110916_all_notcutoff_inter_noligand/inactive_receptors/MOR:inactive:bFNA-antagonist-bound_to_K233:1.42us.json"
# POLAR_NETWORK_JSON2="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/interaction-footprint-analysis/residue-resolution-evobundle-input/110816_all_freq50_inter_noligand/110816_intersect/inactive-only.json"
# VENN_DIAGRAM_SECTOR="-intersect1"
# OUTPUT_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/interaction-footprint-analysis/residue-resolution-evobundle-input/110916_all_notcutoff_inter_noligand/figure3/inactive_receptors/MOR:inactive:bFNA-antagonist-bound_to_K233:1.42us.json"
# cd /scratch/PI/rondror/akma327/DynamicNetworks/src/analysis/interaction-footprint-analysis
# python venn_diagram_compare_polar_networks.py $POLAR_NETWORK_JSON1 $POLAR_NETWORK_JSON2 $VENN_DIAGRAM_SECTOR $OUTPUT_FILE


# POLAR_NETWORK_JSON1="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/interaction-footprint-analysis/residue-resolution-evobundle-input/110916_all_notcutoff_inter_noligand/inactive_receptors/MOR:inactive:bFNA-antagonist-bound_to_K233:0.63us.json"
# POLAR_NETWORK_JSON2="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/interaction-footprint-analysis/residue-resolution-evobundle-input/110816_all_freq50_inter_noligand/110816_intersect/inactive-only.json"
# VENN_DIAGRAM_SECTOR="-intersect1"
# OUTPUT_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/interaction-footprint-analysis/residue-resolution-evobundle-input/110916_all_notcutoff_inter_noligand/figure3/inactive_receptors/MOR:inactive:bFNA-antagonist-bound_to_K233:0.63us.json"
# cd /scratch/PI/rondror/akma327/DynamicNetworks/src/analysis/interaction-footprint-analysis
# python venn_diagram_compare_polar_networks.py $POLAR_NETWORK_JSON1 $POLAR_NETWORK_JSON2 $VENN_DIAGRAM_SECTOR $OUTPUT_FILE



# # DOR-inactive
# POLAR_NETWORK_JSON1="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/interaction-footprint-analysis/residue-resolution-evobundle-input/110916_all_notcutoff_inter_noligand/inactive_receptors/DOR:inactive:naltrindole:3.0us.json"
# POLAR_NETWORK_JSON2="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/interaction-footprint-analysis/residue-resolution-evobundle-input/110816_all_freq50_inter_noligand/110816_intersect/inactive-only.json"
# VENN_DIAGRAM_SECTOR="-intersect1"
# OUTPUT_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/interaction-footprint-analysis/residue-resolution-evobundle-input/110916_all_notcutoff_inter_noligand/figure3/inactive_receptors/DOR:inactive:naltrindole:3.0us.json"
# cd /scratch/PI/rondror/akma327/DynamicNetworks/src/analysis/interaction-footprint-analysis
# python venn_diagram_compare_polar_networks.py $POLAR_NETWORK_JSON1 $POLAR_NETWORK_JSON2 $VENN_DIAGRAM_SECTOR $OUTPUT_FILE


# POLAR_NETWORK_JSON1="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/interaction-footprint-analysis/residue-resolution-evobundle-input/110916_all_notcutoff_inter_noligand/inactive_receptors/DOR:inactive:naltrindole:1.3us.json"
# POLAR_NETWORK_JSON2="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/interaction-footprint-analysis/residue-resolution-evobundle-input/110816_all_freq50_inter_noligand/110816_intersect/inactive-only.json"
# VENN_DIAGRAM_SECTOR="-intersect1"
# OUTPUT_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/interaction-footprint-analysis/residue-resolution-evobundle-input/110916_all_notcutoff_inter_noligand/figure3/inactive_receptors/DOR:inactive:naltrindole:1.3us.json"
# cd /scratch/PI/rondror/akma327/DynamicNetworks/src/analysis/interaction-footprint-analysis
# python venn_diagram_compare_polar_networks.py $POLAR_NETWORK_JSON1 $POLAR_NETWORK_JSON2 $VENN_DIAGRAM_SECTOR $OUTPUT_FILE


# POLAR_NETWORK_JSON1="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/interaction-footprint-analysis/residue-resolution-evobundle-input/110916_all_notcutoff_inter_noligand/inactive_receptors/DOR:inactive:naltrindole:2.0us.json"
# POLAR_NETWORK_JSON2="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/interaction-footprint-analysis/residue-resolution-evobundle-input/110816_all_freq50_inter_noligand/110816_intersect/inactive-only.json"
# VENN_DIAGRAM_SECTOR="-intersect1"
# OUTPUT_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/interaction-footprint-analysis/residue-resolution-evobundle-input/110916_all_notcutoff_inter_noligand/figure3/inactive_receptors/DOR:inactive:naltrindole:2.0us.json"
# cd /scratch/PI/rondror/akma327/DynamicNetworks/src/analysis/interaction-footprint-analysis
# python venn_diagram_compare_polar_networks.py $POLAR_NETWORK_JSON1 $POLAR_NETWORK_JSON2 $VENN_DIAGRAM_SECTOR $OUTPUT_FILE




# # Active

# # MOR-active

# POLAR_NETWORK_JSON1="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/interaction-footprint-analysis/residue-resolution-evobundle-input/110916_all_notcutoff_inter_noligand/active_receptors/MOR:active-noNb:BU72-nB_interface_restrained:3.0us.json"
# POLAR_NETWORK_JSON2="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/interaction-footprint-analysis/residue-resolution-evobundle-input/110816_all_freq50_inter_noligand/110816_intersect/active-only.json"
# VENN_DIAGRAM_SECTOR="-intersect1"
# OUTPUT_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/interaction-footprint-analysis/residue-resolution-evobundle-input/110916_all_notcutoff_inter_noligand/figure3/active_receptors/MOR:active-noNb:BU72-nB_interface_restrained:3.0us.json"
# cd /scratch/PI/rondror/akma327/DynamicNetworks/src/analysis/interaction-footprint-analysis
# python venn_diagram_compare_polar_networks.py $POLAR_NETWORK_JSON1 $POLAR_NETWORK_JSON2 $VENN_DIAGRAM_SECTOR $OUTPUT_FILE


# POLAR_NETWORK_JSON1="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/interaction-footprint-analysis/residue-resolution-evobundle-input/110916_all_notcutoff_inter_noligand/active_receptors/MOR:active-noNb:BU72-nB_interface_restrained:2.7us.json"
# POLAR_NETWORK_JSON2="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/interaction-footprint-analysis/residue-resolution-evobundle-input/110816_all_freq50_inter_noligand/110816_intersect/active-only.json"
# VENN_DIAGRAM_SECTOR="-intersect1"
# OUTPUT_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/interaction-footprint-analysis/residue-resolution-evobundle-input/110916_all_notcutoff_inter_noligand/figure3/active_receptors/MOR:active-noNb:BU72-nB_interface_restrained:2.7us.json"
# cd /scratch/PI/rondror/akma327/DynamicNetworks/src/analysis/interaction-footprint-analysis
# python venn_diagram_compare_polar_networks.py $POLAR_NETWORK_JSON1 $POLAR_NETWORK_JSON2 $VENN_DIAGRAM_SECTOR $OUTPUT_FILE


# POLAR_NETWORK_JSON1="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/interaction-footprint-analysis/residue-resolution-evobundle-input/110916_all_notcutoff_inter_noligand/active_receptors/MOR:active-noNb:BU72-nB_interface_restrained:2.9us.json"
# POLAR_NETWORK_JSON2="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/interaction-footprint-analysis/residue-resolution-evobundle-input/110816_all_freq50_inter_noligand/110816_intersect/active-only.json"
# VENN_DIAGRAM_SECTOR="-intersect1"
# OUTPUT_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/interaction-footprint-analysis/residue-resolution-evobundle-input/110916_all_notcutoff_inter_noligand/figure3/active_receptors/MOR:active-noNb:BU72-nB_interface_restrained:2.9us.json"
# cd /scratch/PI/rondror/akma327/DynamicNetworks/src/analysis/interaction-footprint-analysis
# python venn_diagram_compare_polar_networks.py $POLAR_NETWORK_JSON1 $POLAR_NETWORK_JSON2 $VENN_DIAGRAM_SECTOR $OUTPUT_FILE



# # B2AR-active

# POLAR_NETWORK_JSON1="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/interaction-footprint-analysis/residue-resolution-evobundle-input/110916_all_notcutoff_inter_noligand/active_receptors/B2AR:active:long-isoform-B2AR-heterotrimeric-Gs:no_ligand:50us:with_membrane.json"
# POLAR_NETWORK_JSON2="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/interaction-footprint-analysis/residue-resolution-evobundle-input/110816_all_freq50_inter_noligand/110816_intersect/active-only.json"
# VENN_DIAGRAM_SECTOR="-intersect1"
# OUTPUT_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/interaction-footprint-analysis/residue-resolution-evobundle-input/110916_all_notcutoff_inter_noligand/figure3/active_receptors/B2AR:active:long-isoform-B2AR-heterotrimeric-Gs:no_ligand:50us:with_membrane.json"
# cd /scratch/PI/rondror/akma327/DynamicNetworks/src/analysis/interaction-footprint-analysis
# python venn_diagram_compare_polar_networks.py $POLAR_NETWORK_JSON1 $POLAR_NETWORK_JSON2 $VENN_DIAGRAM_SECTOR $OUTPUT_FILE


# POLAR_NETWORK_JSON1="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/interaction-footprint-analysis/residue-resolution-evobundle-input/110916_all_notcutoff_inter_noligand/active_receptors/B2AR:active:long-isoform-B2AR-heterotrimeric-Gs:no_ligand:10us:with_membrane.json"
# POLAR_NETWORK_JSON2="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/interaction-footprint-analysis/residue-resolution-evobundle-input/110816_all_freq50_inter_noligand/110816_intersect/active-only.json"
# VENN_DIAGRAM_SECTOR="-intersect1"
# OUTPUT_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/interaction-footprint-analysis/residue-resolution-evobundle-input/110916_all_notcutoff_inter_noligand/figure3/active_receptors/B2AR:active:long-isoform-B2AR-heterotrimeric-Gs:no_ligand:10us:with_membrane.json"
# cd /scratch/PI/rondror/akma327/DynamicNetworks/src/analysis/interaction-footprint-analysis
# python venn_diagram_compare_polar_networks.py $POLAR_NETWORK_JSON1 $POLAR_NETWORK_JSON2 $VENN_DIAGRAM_SECTOR $OUTPUT_FILE


# POLAR_NETWORK_JSON1="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/interaction-footprint-analysis/residue-resolution-evobundle-input/110916_all_notcutoff_inter_noligand/active_receptors/B2AR:active:long-isoform-B2AR-heterotrimeric-Gs:no_ligand:10.0us:with_membrane.json"
# POLAR_NETWORK_JSON2="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/interaction-footprint-analysis/residue-resolution-evobundle-input/110816_all_freq50_inter_noligand/110816_intersect/active-only.json"
# VENN_DIAGRAM_SECTOR="-intersect1"
# OUTPUT_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/interaction-footprint-analysis/residue-resolution-evobundle-input/110916_all_notcutoff_inter_noligand/figure3/active_receptors/B2AR:active:long-isoform-B2AR-heterotrimeric-Gs:no_ligand:10.0us:with_membrane.json"
# cd /scratch/PI/rondror/akma327/DynamicNetworks/src/analysis/interaction-footprint-analysis
# python venn_diagram_compare_polar_networks.py $POLAR_NETWORK_JSON1 $POLAR_NETWORK_JSON2 $VENN_DIAGRAM_SECTOR $OUTPUT_FILE


# POLAR_NETWORK_JSON1="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/interaction-footprint-analysis/residue-resolution-evobundle-input/110916_all_notcutoff_inter_noligand/active_receptors/B2AR:active:short-isoform-B2AR-heterotrimeric-Gs:no_ligand:5us:with_membrane.json"
# POLAR_NETWORK_JSON2="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/interaction-footprint-analysis/residue-resolution-evobundle-input/110816_all_freq50_inter_noligand/110816_intersect/active-only.json"
# VENN_DIAGRAM_SECTOR="-intersect1"
# OUTPUT_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/interaction-footprint-analysis/residue-resolution-evobundle-input/110916_all_notcutoff_inter_noligand/figure3/active_receptors/B2AR:active:short-isoform-B2AR-heterotrimeric-Gs:no_ligand:5us:with_membrane.json"
# cd /scratch/PI/rondror/akma327/DynamicNetworks/src/analysis/interaction-footprint-analysis
# python venn_diagram_compare_polar_networks.py $POLAR_NETWORK_JSON1 $POLAR_NETWORK_JSON2 $VENN_DIAGRAM_SECTOR $OUTPUT_FILE





# # B2AR-active-pnas2011b

# POLAR_NETWORK_JSON1="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/interaction-footprint-analysis/residue-resolution-evobundle-input/110916_all_notcutoff_inter_noligand/active_receptors/B2AR:active:agonist-bound-nanobody-complex:3.6us:D70+,D130+,H172+,C341_palm.json"
# POLAR_NETWORK_JSON2="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/interaction-footprint-analysis/residue-resolution-evobundle-input/110816_all_freq50_inter_noligand/110816_intersect/active-only.json"
# VENN_DIAGRAM_SECTOR="-intersect1"
# OUTPUT_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/interaction-footprint-analysis/residue-resolution-evobundle-input/110916_all_notcutoff_inter_noligand/figure3/active_receptors/B2AR:active:agonist-bound-nanobody-complex:3.6us:D70+,D130+,H172+,C341_palm.json"
# cd /scratch/PI/rondror/akma327/DynamicNetworks/src/analysis/interaction-footprint-analysis
# python venn_diagram_compare_polar_networks.py $POLAR_NETWORK_JSON1 $POLAR_NETWORK_JSON2 $VENN_DIAGRAM_SECTOR $OUTPUT_FILE


# POLAR_NETWORK_JSON1="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/interaction-footprint-analysis/residue-resolution-evobundle-input/110916_all_notcutoff_inter_noligand/active_receptors/B2AR:active:agonist-bound-nanobody-complex:6.5us:D70+,D130+,H172+,C341_palm.json"
# POLAR_NETWORK_JSON2="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/interaction-footprint-analysis/residue-resolution-evobundle-input/110816_all_freq50_inter_noligand/110816_intersect/active-only.json"
# VENN_DIAGRAM_SECTOR="-intersect1"
# OUTPUT_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/interaction-footprint-analysis/residue-resolution-evobundle-input/110916_all_notcutoff_inter_noligand/figure3/active_receptors/B2AR:active:agonist-bound-nanobody-complex:6.5us:D70+,D130+,H172+,C341_palm.json"
# cd /scratch/PI/rondror/akma327/DynamicNetworks/src/analysis/interaction-footprint-analysis
# python venn_diagram_compare_polar_networks.py $POLAR_NETWORK_JSON1 $POLAR_NETWORK_JSON2 $VENN_DIAGRAM_SECTOR $OUTPUT_FILE




# # MOR-active-unpublished
# POLAR_NETWORK_JSON1="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/interaction-footprint-analysis/residue-resolution-evobundle-input/110916_all_notcutoff_inter_noligand/active_receptors/MOR:active:unpublished-rep_1.json"
# POLAR_NETWORK_JSON2="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/interaction-footprint-analysis/residue-resolution-evobundle-input/110816_all_freq50_inter_noligand/110816_intersect/active-only.json"
# VENN_DIAGRAM_SECTOR="-intersect1"
# OUTPUT_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/interaction-footprint-analysis/residue-resolution-evobundle-input/110916_all_notcutoff_inter_noligand/figure3/active_receptors/MOR:active:unpublished-rep_1.json"
# cd /scratch/PI/rondror/akma327/DynamicNetworks/src/analysis/interaction-footprint-analysis
# python venn_diagram_compare_polar_networks.py $POLAR_NETWORK_JSON1 $POLAR_NETWORK_JSON2 $VENN_DIAGRAM_SECTOR $OUTPUT_FILE


# POLAR_NETWORK_JSON1="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/interaction-footprint-analysis/residue-resolution-evobundle-input/110916_all_notcutoff_inter_noligand/active_receptors/MOR:active:unpublished-rep_2.json"
# POLAR_NETWORK_JSON2="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/interaction-footprint-analysis/residue-resolution-evobundle-input/110816_all_freq50_inter_noligand/110816_intersect/active-only.json"
# VENN_DIAGRAM_SECTOR="-intersect1"
# OUTPUT_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/interaction-footprint-analysis/residue-resolution-evobundle-input/110916_all_notcutoff_inter_noligand/figure3/active_receptors/MOR:active:unpublished-rep_2.json"
# cd /scratch/PI/rondror/akma327/DynamicNetworks/src/analysis/interaction-footprint-analysis
# python venn_diagram_compare_polar_networks.py $POLAR_NETWORK_JSON1 $POLAR_NETWORK_JSON2 $VENN_DIAGRAM_SECTOR $OUTPUT_FILE


# POLAR_NETWORK_JSON1="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/interaction-footprint-analysis/residue-resolution-evobundle-input/110916_all_notcutoff_inter_noligand/active_receptors/MOR:active:unpublished-rep_3.json"
# POLAR_NETWORK_JSON2="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/interaction-footprint-analysis/residue-resolution-evobundle-input/110816_all_freq50_inter_noligand/110816_intersect/active-only.json"
# VENN_DIAGRAM_SECTOR="-intersect1"
# OUTPUT_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/interaction-footprint-analysis/residue-resolution-evobundle-input/110916_all_notcutoff_inter_noligand/figure3/active_receptors/MOR:active:unpublished-rep_3.json"
# cd /scratch/PI/rondror/akma327/DynamicNetworks/src/analysis/interaction-footprint-analysis
# python venn_diagram_compare_polar_networks.py $POLAR_NETWORK_JSON1 $POLAR_NETWORK_JSON2 $VENN_DIAGRAM_SECTOR $OUTPUT_FILE


# # M2R-active-unpublished

# POLAR_NETWORK_JSON1="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/interaction-footprint-analysis/residue-resolution-evobundle-input/110916_all_notcutoff_inter_noligand/active_receptors/M2R:active:restrained:prot:Asp2x50:3x49-rep_1.json"
# POLAR_NETWORK_JSON2="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/interaction-footprint-analysis/residue-resolution-evobundle-input/110816_all_freq50_inter_noligand/110816_intersect/active-only.json"
# VENN_DIAGRAM_SECTOR="-intersect1"
# OUTPUT_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/interaction-footprint-analysis/residue-resolution-evobundle-input/110916_all_notcutoff_inter_noligand/figure3/active_receptors/M2R:active:restrained:prot:Asp2x50:3x49-rep_1.json"
# cd /scratch/PI/rondror/akma327/DynamicNetworks/src/analysis/interaction-footprint-analysis
# python venn_diagram_compare_polar_networks.py $POLAR_NETWORK_JSON1 $POLAR_NETWORK_JSON2 $VENN_DIAGRAM_SECTOR $OUTPUT_FILE


# POLAR_NETWORK_JSON1="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/interaction-footprint-analysis/residue-resolution-evobundle-input/110916_all_notcutoff_inter_noligand/active_receptors/M2R:active:restrained:prot:Asp2x50:3x49-rep_2.json"
# POLAR_NETWORK_JSON2="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/interaction-footprint-analysis/residue-resolution-evobundle-input/110816_all_freq50_inter_noligand/110816_intersect/active-only.json"
# VENN_DIAGRAM_SECTOR="-intersect1"
# OUTPUT_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/interaction-footprint-analysis/residue-resolution-evobundle-input/110916_all_notcutoff_inter_noligand/figure3/active_receptors/M2R:active:restrained:prot:Asp2x50:3x49-rep_2.json"
# cd /scratch/PI/rondror/akma327/DynamicNetworks/src/analysis/interaction-footprint-analysis
# python venn_diagram_compare_polar_networks.py $POLAR_NETWORK_JSON1 $POLAR_NETWORK_JSON2 $VENN_DIAGRAM_SECTOR $OUTPUT_FILE


# POLAR_NETWORK_JSON1="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/interaction-footprint-analysis/residue-resolution-evobundle-input/110916_all_notcutoff_inter_noligand/active_receptors/M2R:active:restrained:prot:Asp2x50:3x49-rep_3.json"
# POLAR_NETWORK_JSON2="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/interaction-footprint-analysis/residue-resolution-evobundle-input/110816_all_freq50_inter_noligand/110816_intersect/active-only.json"
# VENN_DIAGRAM_SECTOR="-intersect1"
# OUTPUT_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/interaction-footprint-analysis/residue-resolution-evobundle-input/110916_all_notcutoff_inter_noligand/figure3/active_receptors/M2R:active:restrained:prot:Asp2x50:3x49-rep_3.json"
# cd /scratch/PI/rondror/akma327/DynamicNetworks/src/analysis/interaction-footprint-analysis
# python venn_diagram_compare_polar_networks.py $POLAR_NETWORK_JSON1 $POLAR_NETWORK_JSON2 $VENN_DIAGRAM_SECTOR $OUTPUT_FILE


# RHO-active-unrestrained-unpublished

POLAR_NETWORK_JSON1="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/interaction-footprint-analysis/residue-resolution-evobundle-input/110916_all_notcutoff_inter_noligand/active_receptors/RHO:active:unrestrained-rep_1.json"
POLAR_NETWORK_JSON2="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/interaction-footprint-analysis/residue-resolution-evobundle-input/110816_all_freq50_inter_noligand/110816_intersect/active-only.json"
VENN_DIAGRAM_SECTOR="-intersect1"
OUTPUT_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/interaction-footprint-analysis/residue-resolution-evobundle-input/110916_all_notcutoff_inter_noligand/figure3/active_receptors/RHO:active:unrestrained-rep_1.json"
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/analysis/interaction-footprint-analysis
python venn_diagram_compare_polar_networks.py $POLAR_NETWORK_JSON1 $POLAR_NETWORK_JSON2 $VENN_DIAGRAM_SECTOR $OUTPUT_FILE


POLAR_NETWORK_JSON1="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/interaction-footprint-analysis/residue-resolution-evobundle-input/110916_all_notcutoff_inter_noligand/active_receptors/RHO:active:unrestrained-rep_2.json"
POLAR_NETWORK_JSON2="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/interaction-footprint-analysis/residue-resolution-evobundle-input/110816_all_freq50_inter_noligand/110816_intersect/active-only.json"
VENN_DIAGRAM_SECTOR="-intersect1"
OUTPUT_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/interaction-footprint-analysis/residue-resolution-evobundle-input/110916_all_notcutoff_inter_noligand/figure3/active_receptors/RHO:active:unrestrained-rep_2.json"
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/analysis/interaction-footprint-analysis
python venn_diagram_compare_polar_networks.py $POLAR_NETWORK_JSON1 $POLAR_NETWORK_JSON2 $VENN_DIAGRAM_SECTOR $OUTPUT_FILE


POLAR_NETWORK_JSON1="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/interaction-footprint-analysis/residue-resolution-evobundle-input/110916_all_notcutoff_inter_noligand/active_receptors/RHO:active:unrestrained-rep_3.json"
POLAR_NETWORK_JSON2="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/interaction-footprint-analysis/residue-resolution-evobundle-input/110816_all_freq50_inter_noligand/110816_intersect/active-only.json"
VENN_DIAGRAM_SECTOR="-intersect1"
OUTPUT_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/interaction-footprint-analysis/residue-resolution-evobundle-input/110916_all_notcutoff_inter_noligand/figure3/active_receptors/RHO:active:unrestrained-rep_3.json"
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/analysis/interaction-footprint-analysis
python venn_diagram_compare_polar_networks.py $POLAR_NETWORK_JSON1 $POLAR_NETWORK_JSON2 $VENN_DIAGRAM_SECTOR $OUTPUT_FILE




