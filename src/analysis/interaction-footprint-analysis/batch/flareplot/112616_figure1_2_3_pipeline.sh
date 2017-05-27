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
FOOTPRINT_TABLE="/scratch/PI/rondror/akma327/DynamicNetworks/results/state-decomposition/residue-resolution/112616_state_decomp_union_wb_freq/inactive_receptors/inactive_state_decomp_residue_resolution.txt"
EXP_REP_ID="B2AR:inactive:carazalol:10us:D79-,D130-,Inactive"
OUTPUT_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/interaction-footprint-analysis/residue-resolution-evobundle-input/112616/inactive_receptors_50cutoff/B2AR:inactive:carazalol:10us:D79-,D130-,Inactive.json"
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/analysis/interaction-footprint-analysis
python footprint_summary_evobundle.py $FOOTPRINT_TABLE $EXP_REP_ID $OUTPUT_FILE -receptor B2AR -no-conserve  -cutoff 0.5 -inter



# D4R-inactive
FOOTPRINT_TABLE="/scratch/PI/rondror/akma327/DynamicNetworks/results/state-decomposition/residue-resolution/112616_state_decomp_union_wb_freq/inactive_receptors/inactive_state_decomp_residue_resolution.txt"
EXP_REP_ID="D4R:inactive:nemanopride:deprotonated:1.3us"
OUTPUT_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/interaction-footprint-analysis/residue-resolution-evobundle-input/112616/inactive_receptors_50cutoff/D4R:inactive:nemanopride:deprotonated:1.3us.json"
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/analysis/interaction-footprint-analysis
python footprint_summary_evobundle.py $FOOTPRINT_TABLE $EXP_REP_ID $OUTPUT_FILE -receptor D4R -no-conserve  -cutoff 0.5 -inter

FOOTPRINT_TABLE="/scratch/PI/rondror/akma327/DynamicNetworks/results/state-decomposition/residue-resolution/112616_state_decomp_union_wb_freq/inactive_receptors/inactive_state_decomp_residue_resolution.txt"
EXP_REP_ID="D4R:inactive:nemanopride:deprotonated:1.5us"
OUTPUT_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/interaction-footprint-analysis/residue-resolution-evobundle-input/112616/inactive_receptors_50cutoff/D4R:inactive:nemanopride:deprotonated:1.5us.json"
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/analysis/interaction-footprint-analysis
python footprint_summary_evobundle.py $FOOTPRINT_TABLE $EXP_REP_ID $OUTPUT_FILE -receptor D4R -no-conserve  -cutoff 0.5 -inter

FOOTPRINT_TABLE="/scratch/PI/rondror/akma327/DynamicNetworks/results/state-decomposition/residue-resolution/112616_state_decomp_union_wb_freq/inactive_receptors/inactive_state_decomp_residue_resolution.txt"
EXP_REP_ID="D4R:inactive:nemanopride:deprotonated:1.50us"
OUTPUT_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/interaction-footprint-analysis/residue-resolution-evobundle-input/112616/inactive_receptors_50cutoff/D4R:inactive:nemanopride:deprotonated:1.50us.json"
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/analysis/interaction-footprint-analysis
python footprint_summary_evobundle.py $FOOTPRINT_TABLE $EXP_REP_ID $OUTPUT_FILE -receptor D4R -no-conserve  -cutoff 0.5 -inter


# M2R-inactive

FOOTPRINT_TABLE="/scratch/PI/rondror/akma327/DynamicNetworks/results/state-decomposition/residue-resolution/112616_state_decomp_union_wb_freq/inactive_receptors/inactive_state_decomp_residue_resolution.txt"	
EXP_REP_ID="M2R:inactive:QNB-orthosteric:16.4us"
OUTPUT_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/interaction-footprint-analysis/residue-resolution-evobundle-input/112616/inactive_receptors_50cutoff/M2R:inactive:QNB-orthosteric:16.4us.json"
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/analysis/interaction-footprint-analysis
python footprint_summary_evobundle.py $FOOTPRINT_TABLE $EXP_REP_ID $OUTPUT_FILE -receptor M2R -no-conserve  -cutoff 0.5 -inter

FOOTPRINT_TABLE="/scratch/PI/rondror/akma327/DynamicNetworks/results/state-decomposition/residue-resolution/112616_state_decomp_union_wb_freq/inactive_receptors/inactive_state_decomp_residue_resolution.txt"
EXP_REP_ID="M2R:inactive:QNB-orthosteric-no-allosteric:10us"
OUTPUT_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/interaction-footprint-analysis/residue-resolution-evobundle-input/112616/inactive_receptors_50cutoff/M2R:inactive:QNB-orthosteric-no-allosteric:10us.json"
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/analysis/interaction-footprint-analysis
python footprint_summary_evobundle.py $FOOTPRINT_TABLE $EXP_REP_ID $OUTPUT_FILE -receptor M2R -no-conserve  -cutoff 0.5 -inter

# MOR-inactive

FOOTPRINT_TABLE="/scratch/PI/rondror/akma327/DynamicNetworks/results/state-decomposition/residue-resolution/112616_state_decomp_union_wb_freq/inactive_receptors/inactive_state_decomp_residue_resolution.txt"
EXP_REP_ID="MOR:inactive:bFNA-antagonist-bound_to_K233:1.21us"
OUTPUT_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/interaction-footprint-analysis/residue-resolution-evobundle-input/112616/inactive_receptors_50cutoff/MOR:inactive:bFNA-antagonist-bound_to_K233:1.21us.json"
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/analysis/interaction-footprint-analysis
python footprint_summary_evobundle.py $FOOTPRINT_TABLE $EXP_REP_ID $OUTPUT_FILE -receptor MOR -no-conserve  -cutoff 0.5 -inter

FOOTPRINT_TABLE="/scratch/PI/rondror/akma327/DynamicNetworks/results/state-decomposition/residue-resolution/112616_state_decomp_union_wb_freq/inactive_receptors/inactive_state_decomp_residue_resolution.txt"
EXP_REP_ID="MOR:inactive:bFNA-antagonist-bound_to_K233:1.42us"
OUTPUT_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/interaction-footprint-analysis/residue-resolution-evobundle-input/112616/inactive_receptors_50cutoff/MOR:inactive:bFNA-antagonist-bound_to_K233:1.42us.json"
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/analysis/interaction-footprint-analysis
python footprint_summary_evobundle.py $FOOTPRINT_TABLE $EXP_REP_ID $OUTPUT_FILE -receptor MOR -no-conserve  -cutoff 0.5 -inter


FOOTPRINT_TABLE="/scratch/PI/rondror/akma327/DynamicNetworks/results/state-decomposition/residue-resolution/112616_state_decomp_union_wb_freq/inactive_receptors/inactive_state_decomp_residue_resolution.txt"
EXP_REP_ID="MOR:inactive:bFNA-antagonist-bound_to_K233:0.63us"
OUTPUT_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/interaction-footprint-analysis/residue-resolution-evobundle-input/112616/inactive_receptors_50cutoff/MOR:inactive:bFNA-antagonist-bound_to_K233:0.63us.json"
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/analysis/interaction-footprint-analysis
python footprint_summary_evobundle.py $FOOTPRINT_TABLE $EXP_REP_ID $OUTPUT_FILE -receptor MOR -no-conserve  -cutoff 0.5 -inter


# DOR-inactive

FOOTPRINT_TABLE="/scratch/PI/rondror/akma327/DynamicNetworks/results/state-decomposition/residue-resolution/112616_state_decomp_union_wb_freq/inactive_receptors/inactive_state_decomp_residue_resolution.txt"
EXP_REP_ID="DOR:inactive:naltrindole:3.0us"
OUTPUT_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/interaction-footprint-analysis/residue-resolution-evobundle-input/112616/inactive_receptors_50cutoff/DOR:inactive:naltrindole:3.0us.json"
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/analysis/interaction-footprint-analysis
python footprint_summary_evobundle.py $FOOTPRINT_TABLE $EXP_REP_ID $OUTPUT_FILE -receptor DOR -no-conserve  -cutoff 0.5 -inter

FOOTPRINT_TABLE="/scratch/PI/rondror/akma327/DynamicNetworks/results/state-decomposition/residue-resolution/112616_state_decomp_union_wb_freq/inactive_receptors/inactive_state_decomp_residue_resolution.txt"
EXP_REP_ID="DOR:inactive:naltrindole:1.3us"
OUTPUT_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/interaction-footprint-analysis/residue-resolution-evobundle-input/112616/inactive_receptors_50cutoff/DOR:inactive:naltrindole:1.3us.json"
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/analysis/interaction-footprint-analysis
python footprint_summary_evobundle.py $FOOTPRINT_TABLE $EXP_REP_ID $OUTPUT_FILE -receptor DOR -no-conserve  -cutoff 0.5 -inter


FOOTPRINT_TABLE="/scratch/PI/rondror/akma327/DynamicNetworks/results/state-decomposition/residue-resolution/112616_state_decomp_union_wb_freq/inactive_receptors/inactive_state_decomp_residue_resolution.txt"
EXP_REP_ID="DOR:inactive:naltrindole:2.0us"
OUTPUT_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/interaction-footprint-analysis/residue-resolution-evobundle-input/112616/inactive_receptors_50cutoff/DOR:inactive:naltrindole:2.0us.json"
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/analysis/interaction-footprint-analysis
python footprint_summary_evobundle.py $FOOTPRINT_TABLE $EXP_REP_ID $OUTPUT_FILE -receptor DOR -no-conserve  -cutoff 0.5 -inter



# Active

# MOR-active-noNb-BU72-nB_interface_restrained

FOOTPRINT_TABLE="/scratch/PI/rondror/akma327/DynamicNetworks/results/state-decomposition/residue-resolution/112616_state_decomp_union_wb_freq/active_receptors/active_state_decomp_residue_resolution.txt"
EXP_REP_ID="MOR:active-noNb:BU72-nB_interface_restrained:3.0us"
OUTPUT_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/interaction-footprint-analysis/residue-resolution-evobundle-input/112616/active_receptors_50cutoff/MOR:active-noNb:BU72-nB_interface_restrained:3.0us.json"
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/analysis/interaction-footprint-analysis
python footprint_summary_evobundle.py $FOOTPRINT_TABLE $EXP_REP_ID $OUTPUT_FILE -receptor MOR -no-conserve  -cutoff 0.5 -inter

FOOTPRINT_TABLE="/scratch/PI/rondror/akma327/DynamicNetworks/results/state-decomposition/residue-resolution/112616_state_decomp_union_wb_freq/active_receptors/active_state_decomp_residue_resolution.txt"
EXP_REP_ID="MOR:active-noNb:BU72-nB_interface_restrained:2.7us"
OUTPUT_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/interaction-footprint-analysis/residue-resolution-evobundle-input/112616/active_receptors_50cutoff/MOR:active-noNb:BU72-nB_interface_restrained:2.7us.json"
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/analysis/interaction-footprint-analysis
python footprint_summary_evobundle.py $FOOTPRINT_TABLE $EXP_REP_ID $OUTPUT_FILE -receptor MOR -no-conserve  -cutoff 0.5 -inter


FOOTPRINT_TABLE="/scratch/PI/rondror/akma327/DynamicNetworks/results/state-decomposition/residue-resolution/112616_state_decomp_union_wb_freq/active_receptors/active_state_decomp_residue_resolution.txt"
EXP_REP_ID="MOR:active-noNb:BU72-nB_interface_restrained:2.9us"
OUTPUT_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/interaction-footprint-analysis/residue-resolution-evobundle-input/112616/active_receptors_50cutoff/MOR:active-noNb:BU72-nB_interface_restrained:2.9us.json"
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/analysis/interaction-footprint-analysis
python footprint_summary_evobundle.py $FOOTPRINT_TABLE $EXP_REP_ID $OUTPUT_FILE -receptor MOR -no-conserve  -cutoff 0.5 -inter


# B2AR-active-Gs-science2015

FOOTPRINT_TABLE="/scratch/PI/rondror/akma327/DynamicNetworks/results/state-decomposition/residue-resolution/112616_state_decomp_union_wb_freq/active_receptors/active_state_decomp_residue_resolution.txt"
EXP_REP_ID="B2AR:active:long-isoform-B2AR-heterotrimeric-Gs:no_ligand:50us:with_membrane"
OUTPUT_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/interaction-footprint-analysis/residue-resolution-evobundle-input/112616/active_receptors_50cutoff/B2AR:active:long-isoform-B2AR-heterotrimeric-Gs:no_ligand:50us:with_membrane.json"
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/analysis/interaction-footprint-analysis
python footprint_summary_evobundle.py $FOOTPRINT_TABLE $EXP_REP_ID $OUTPUT_FILE -receptor B2AR -no-conserve  -cutoff 0.5 -inter

FOOTPRINT_TABLE="/scratch/PI/rondror/akma327/DynamicNetworks/results/state-decomposition/residue-resolution/112616_state_decomp_union_wb_freq/active_receptors/active_state_decomp_residue_resolution.txt"
EXP_REP_ID="B2AR:active:long-isoform-B2AR-heterotrimeric-Gs:no_ligand:10us:with_membrane"
OUTPUT_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/interaction-footprint-analysis/residue-resolution-evobundle-input/112616/active_receptors_50cutoff/B2AR:active:long-isoform-B2AR-heterotrimeric-Gs:no_ligand:10us:with_membrane.json"
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/analysis/interaction-footprint-analysis
python footprint_summary_evobundle.py $FOOTPRINT_TABLE $EXP_REP_ID $OUTPUT_FILE -receptor B2AR -no-conserve  -cutoff 0.5 -inter

FOOTPRINT_TABLE="/scratch/PI/rondror/akma327/DynamicNetworks/results/state-decomposition/residue-resolution/112616_state_decomp_union_wb_freq/active_receptors/active_state_decomp_residue_resolution.txt"
EXP_REP_ID="B2AR:active:long-isoform-B2AR-heterotrimeric-Gs:no_ligand:10.0us:with_membrane"
OUTPUT_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/interaction-footprint-analysis/residue-resolution-evobundle-input/112616/active_receptors_50cutoff/B2AR:active:long-isoform-B2AR-heterotrimeric-Gs:no_ligand:10.0us:with_membrane.json"
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/analysis/interaction-footprint-analysis
python footprint_summary_evobundle.py $FOOTPRINT_TABLE $EXP_REP_ID $OUTPUT_FILE -receptor B2AR -no-conserve  -cutoff 0.5 -inter


FOOTPRINT_TABLE="/scratch/PI/rondror/akma327/DynamicNetworks/results/state-decomposition/residue-resolution/112616_state_decomp_union_wb_freq/active_receptors/active_state_decomp_residue_resolution.txt"
EXP_REP_ID="B2AR:active:short-isoform-B2AR-heterotrimeric-Gs:no_ligand:5us:with_membrane"
OUTPUT_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/interaction-footprint-analysis/residue-resolution-evobundle-input/112616/active_receptors_50cutoff/B2AR:active:short-isoform-B2AR-heterotrimeric-Gs:no_ligand:5us:with_membrane.json"
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/analysis/interaction-footprint-analysis
python footprint_summary_evobundle.py $FOOTPRINT_TABLE $EXP_REP_ID $OUTPUT_FILE -receptor B2AR -no-conserve  -cutoff 0.5 -inter


# B2AR-active-pnas2011b

FOOTPRINT_TABLE="/scratch/PI/rondror/akma327/DynamicNetworks/results/state-decomposition/residue-resolution/112616_state_decomp_union_wb_freq/active_receptors/active_state_decomp_residue_resolution.txt"
EXP_REP_ID="B2AR:active:agonist-bound-nanobody-complex:3.6us:D70+,D130+,H172+,C341_palm"
OUTPUT_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/interaction-footprint-analysis/residue-resolution-evobundle-input/112616/active_receptors_50cutoff/B2AR:active:agonist-bound-nanobody-complex:3.6us:D70+,D130+,H172+,C341_palm.json"
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/analysis/interaction-footprint-analysis
python footprint_summary_evobundle.py $FOOTPRINT_TABLE $EXP_REP_ID $OUTPUT_FILE -receptor B2AR -no-conserve  -cutoff 0.5 -inter


FOOTPRINT_TABLE="/scratch/PI/rondror/akma327/DynamicNetworks/results/state-decomposition/residue-resolution/112616_state_decomp_union_wb_freq/active_receptors/active_state_decomp_residue_resolution.txt"
EXP_REP_ID="B2AR:active:agonist-bound-nanobody-complex:6.5us:D70+,D130+,H172+,C341_palm"
OUTPUT_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/interaction-footprint-analysis/residue-resolution-evobundle-input/112616/active_receptors_50cutoff/B2AR:active:agonist-bound-nanobody-complex:6.5us:D70+,D130+,H172+,C341_palm.json"
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/analysis/interaction-footprint-analysis
python footprint_summary_evobundle.py $FOOTPRINT_TABLE $EXP_REP_ID $OUTPUT_FILE -receptor B2AR -no-conserve  -cutoff 0.5 -inter



# MOR-active-unpublished
FOOTPRINT_TABLE="/scratch/PI/rondror/akma327/DynamicNetworks/results/state-decomposition/residue-resolution/112616_state_decomp_union_wb_freq/active_receptors/active_state_decomp_residue_resolution.txt"
EXP_REP_ID="MOR:active:unpublished-rep_1"
OUTPUT_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/interaction-footprint-analysis/residue-resolution-evobundle-input/112616/active_receptors_50cutoff/MOR:active:unpublished-rep_1.json"
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/analysis/interaction-footprint-analysis
python footprint_summary_evobundle.py $FOOTPRINT_TABLE $EXP_REP_ID $OUTPUT_FILE -receptor MOR -no-conserve  -cutoff 0.5 -inter

FOOTPRINT_TABLE="/scratch/PI/rondror/akma327/DynamicNetworks/results/state-decomposition/residue-resolution/112616_state_decomp_union_wb_freq/active_receptors/active_state_decomp_residue_resolution.txt"
EXP_REP_ID="MOR:active:unpublished-rep_2"
OUTPUT_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/interaction-footprint-analysis/residue-resolution-evobundle-input/112616/active_receptors_50cutoff/MOR:active:unpublished-rep_2.json"
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/analysis/interaction-footprint-analysis
python footprint_summary_evobundle.py $FOOTPRINT_TABLE $EXP_REP_ID $OUTPUT_FILE -receptor MOR -no-conserve  -cutoff 0.5 -inter

FOOTPRINT_TABLE="/scratch/PI/rondror/akma327/DynamicNetworks/results/state-decomposition/residue-resolution/112616_state_decomp_union_wb_freq/active_receptors/active_state_decomp_residue_resolution.txt"
EXP_REP_ID="MOR:active:unpublished-rep_3"
OUTPUT_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/interaction-footprint-analysis/residue-resolution-evobundle-input/112616/active_receptors_50cutoff/MOR:active:unpublished-rep_3.json"
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/analysis/interaction-footprint-analysis
python footprint_summary_evobundle.py $FOOTPRINT_TABLE $EXP_REP_ID $OUTPUT_FILE -receptor MOR -no-conserve  -cutoff 0.5 -inter






# M2R-active-restrained-unpublished
FOOTPRINT_TABLE="/scratch/PI/rondror/akma327/DynamicNetworks/results/state-decomposition/residue-resolution/112616_state_decomp_union_wb_freq/active_receptors/active_state_decomp_residue_resolution.txt"
EXP_REP_ID="M2R:active:restrained:prot:Asp2x50:3x49-rep_1"
OUTPUT_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/interaction-footprint-analysis/residue-resolution-evobundle-input/112616/active_receptors_50cutoff/M2R:active:restrained:prot:Asp2x50:3x49-rep_1.json"
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/analysis/interaction-footprint-analysis
python footprint_summary_evobundle.py $FOOTPRINT_TABLE $EXP_REP_ID $OUTPUT_FILE -receptor M2R -no-conserve  -cutoff 0.5 -inter


FOOTPRINT_TABLE="/scratch/PI/rondror/akma327/DynamicNetworks/results/state-decomposition/residue-resolution/112616_state_decomp_union_wb_freq/active_receptors/active_state_decomp_residue_resolution.txt"
EXP_REP_ID="M2R:active:restrained:prot:Asp2x50:3x49-rep_2"
OUTPUT_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/interaction-footprint-analysis/residue-resolution-evobundle-input/112616/active_receptors_50cutoff/M2R:active:restrained:prot:Asp2x50:3x49-rep_2.json"
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/analysis/interaction-footprint-analysis
python footprint_summary_evobundle.py $FOOTPRINT_TABLE $EXP_REP_ID $OUTPUT_FILE -receptor M2R -no-conserve  -cutoff 0.5 -inter


FOOTPRINT_TABLE="/scratch/PI/rondror/akma327/DynamicNetworks/results/state-decomposition/residue-resolution/112616_state_decomp_union_wb_freq/active_receptors/active_state_decomp_residue_resolution.txt"
EXP_REP_ID="M2R:active:restrained:prot:Asp2x50:3x49-rep_3"
OUTPUT_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/interaction-footprint-analysis/residue-resolution-evobundle-input/112616/active_receptors_50cutoff/M2R:active:restrained:prot:Asp2x50:3x49-rep_3.json"
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/analysis/interaction-footprint-analysis
python footprint_summary_evobundle.py $FOOTPRINT_TABLE $EXP_REP_ID $OUTPUT_FILE -receptor M2R -no-conserve  -cutoff 0.5 -inter


# M2R-active-unrestrained-unpublished
FOOTPRINT_TABLE="/scratch/PI/rondror/akma327/DynamicNetworks/results/state-decomposition/residue-resolution/112616_state_decomp_union_wb_freq/active_receptors/active_state_decomp_residue_resolution.txt"
EXP_REP_ID="M2R:active:unrestrained:prot:Asp2x50:3x49-rep_1"
OUTPUT_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/interaction-footprint-analysis/residue-resolution-evobundle-input/112616/active_receptors_50cutoff/M2R:active:unrestrained:prot:Asp2x50:3x49-rep_1.json"
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/analysis/interaction-footprint-analysis
python footprint_summary_evobundle.py $FOOTPRINT_TABLE $EXP_REP_ID $OUTPUT_FILE -receptor M2R -no-conserve  -cutoff 0.5 -inter

FOOTPRINT_TABLE="/scratch/PI/rondror/akma327/DynamicNetworks/results/state-decomposition/residue-resolution/112616_state_decomp_union_wb_freq/active_receptors/active_state_decomp_residue_resolution.txt"
EXP_REP_ID="M2R:active:unrestrained:prot:Asp2x50:3x49-rep_2"
OUTPUT_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/interaction-footprint-analysis/residue-resolution-evobundle-input/112616/active_receptors_50cutoff/M2R:active:unrestrained:prot:Asp2x50:3x49-rep_2.json"
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/analysis/interaction-footprint-analysis
python footprint_summary_evobundle.py $FOOTPRINT_TABLE $EXP_REP_ID $OUTPUT_FILE -receptor M2R -no-conserve  -cutoff 0.5 -inter


FOOTPRINT_TABLE="/scratch/PI/rondror/akma327/DynamicNetworks/results/state-decomposition/residue-resolution/112616_state_decomp_union_wb_freq/active_receptors/active_state_decomp_residue_resolution.txt"
EXP_REP_ID="M2R:active:unrestrained:prot:Asp2x50:3x49-rep_3"
OUTPUT_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/interaction-footprint-analysis/residue-resolution-evobundle-input/112616/active_receptors_50cutoff/M2R:active:unrestrained:prot:Asp2x50:3x49-rep_3.json"
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/analysis/interaction-footprint-analysis
python footprint_summary_evobundle.py $FOOTPRINT_TABLE $EXP_REP_ID $OUTPUT_FILE -receptor M2R -no-conserve  -cutoff 0.5 -inter


# US28-active-unrestrained-unpublished
FOOTPRINT_TABLE="/scratch/PI/rondror/akma327/DynamicNetworks/results/state-decomposition/residue-resolution/112616_state_decomp_union_wb_freq/active_receptors/active_state_decomp_residue_resolution.txt"
EXP_REP_ID="US28:active:unrestrained-rep_1"
OUTPUT_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/interaction-footprint-analysis/residue-resolution-evobundle-input/112616/active_receptors_50cutoff/US28:active:unrestrained-rep_1.json"
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/analysis/interaction-footprint-analysis
python footprint_summary_evobundle.py $FOOTPRINT_TABLE $EXP_REP_ID $OUTPUT_FILE -receptor US28 -no-conserve  -cutoff 0.5 -inter

FOOTPRINT_TABLE="/scratch/PI/rondror/akma327/DynamicNetworks/results/state-decomposition/residue-resolution/112616_state_decomp_union_wb_freq/active_receptors/active_state_decomp_residue_resolution.txt"
EXP_REP_ID="US28:active:unrestrained-rep_2"
OUTPUT_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/interaction-footprint-analysis/residue-resolution-evobundle-input/112616/active_receptors_50cutoff/US28:active:unrestrained-rep_2.json"
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/analysis/interaction-footprint-analysis
python footprint_summary_evobundle.py $FOOTPRINT_TABLE $EXP_REP_ID $OUTPUT_FILE -receptor US28 -no-conserve  -cutoff 0.5 -inter


FOOTPRINT_TABLE="/scratch/PI/rondror/akma327/DynamicNetworks/results/state-decomposition/residue-resolution/112616_state_decomp_union_wb_freq/active_receptors/active_state_decomp_residue_resolution.txt"
EXP_REP_ID="US28:active:unrestrained-rep_3"
OUTPUT_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/interaction-footprint-analysis/residue-resolution-evobundle-input/112616/active_receptors_50cutoff/US28:active:unrestrained-rep_3.json"
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/analysis/interaction-footprint-analysis
python footprint_summary_evobundle.py $FOOTPRINT_TABLE $EXP_REP_ID $OUTPUT_FILE -receptor US28 -no-conserve  -cutoff 0.5 -inter


# US28-active-restrained-unpublished
FOOTPRINT_TABLE="/scratch/PI/rondror/akma327/DynamicNetworks/results/state-decomposition/residue-resolution/112616_state_decomp_union_wb_freq/active_receptors/active_state_decomp_residue_resolution.txt"
EXP_REP_ID="US28:active:restrained-rep_1"
OUTPUT_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/interaction-footprint-analysis/residue-resolution-evobundle-input/112616/active_receptors_50cutoff/US28:active:restrained-rep_1.json"
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/analysis/interaction-footprint-analysis
python footprint_summary_evobundle.py $FOOTPRINT_TABLE $EXP_REP_ID $OUTPUT_FILE -receptor US28 -no-conserve  -cutoff 0.5 -inter


FOOTPRINT_TABLE="/scratch/PI/rondror/akma327/DynamicNetworks/results/state-decomposition/residue-resolution/112616_state_decomp_union_wb_freq/active_receptors/active_state_decomp_residue_resolution.txt"
EXP_REP_ID="US28:active:restrained-rep_2"
OUTPUT_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/interaction-footprint-analysis/residue-resolution-evobundle-input/112616/active_receptors_50cutoff/US28:active:restrained-rep_2.json"
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/analysis/interaction-footprint-analysis
python footprint_summary_evobundle.py $FOOTPRINT_TABLE $EXP_REP_ID $OUTPUT_FILE -receptor US28 -no-conserve  -cutoff 0.5 -inter


FOOTPRINT_TABLE="/scratch/PI/rondror/akma327/DynamicNetworks/results/state-decomposition/residue-resolution/112616_state_decomp_union_wb_freq/active_receptors/active_state_decomp_residue_resolution.txt"
EXP_REP_ID="US28:active:restrained-rep_3"
OUTPUT_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/interaction-footprint-analysis/residue-resolution-evobundle-input/112616/active_receptors_50cutoff/US28:active:restrained-rep_3.json"
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/analysis/interaction-footprint-analysis
python footprint_summary_evobundle.py $FOOTPRINT_TABLE $EXP_REP_ID $OUTPUT_FILE -receptor US28 -no-conserve  -cutoff 0.5 -inter


# Rhodopsin-active-unrestrained-unpublished

FOOTPRINT_TABLE="/scratch/PI/rondror/akma327/DynamicNetworks/results/state-decomposition/residue-resolution/112616_state_decomp_union_wb_freq/active_receptors/active_state_decomp_residue_resolution.txt"
EXP_REP_ID="RHO:active:unrestrained-rep_1"
OUTPUT_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/interaction-footprint-analysis/residue-resolution-evobundle-input/112616/active_receptors_50cutoff/RHO:active:unrestrained-rep_1.json"
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/analysis/interaction-footprint-analysis
python footprint_summary_evobundle.py $FOOTPRINT_TABLE $EXP_REP_ID $OUTPUT_FILE -receptor RHO -no-conserve -cutoff 0.5 -inter

FOOTPRINT_TABLE="/scratch/PI/rondror/akma327/DynamicNetworks/results/state-decomposition/residue-resolution/112616_state_decomp_union_wb_freq/active_receptors/active_state_decomp_residue_resolution.txt"
EXP_REP_ID="RHO:active:unrestrained-rep_2"
OUTPUT_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/interaction-footprint-analysis/residue-resolution-evobundle-input/112616/active_receptors_50cutoff//RHO:active:unrestrained-rep_2.json"
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/analysis/interaction-footprint-analysis
python footprint_summary_evobundle.py $FOOTPRINT_TABLE $EXP_REP_ID $OUTPUT_FILE -receptor RHO -no-conserve -cutoff 0.5 -inter


FOOTPRINT_TABLE="/scratch/PI/rondror/akma327/DynamicNetworks/results/state-decomposition/residue-resolution/112616_state_decomp_union_wb_freq/active_receptors/active_state_decomp_residue_resolution.txt"
EXP_REP_ID="RHO:active:unrestrained-rep_3"
OUTPUT_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/interaction-footprint-analysis/residue-resolution-evobundle-input/112616/active_receptors_50cutoff/RHO:active:unrestrained-rep_3.json"
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/analysis/interaction-footprint-analysis
python footprint_summary_evobundle.py $FOOTPRINT_TABLE $EXP_REP_ID $OUTPUT_FILE -receptor RHO -no-conserve -cutoff 0.5 -inter






### B2AR-active-Gs aggregate
POLAR_NETWORK_JSON1="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/interaction-footprint-analysis/residue-resolution-evobundle-input/112616/active_receptors_50cutoff/B2AR:active:long-isoform-B2AR-heterotrimeric-Gs:no_ligand:10.0us:with_membrane.json"
POLAR_NETWORK_JSON2="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/interaction-footprint-analysis/residue-resolution-evobundle-input/112616/active_receptors_50cutoff/B2AR:active:long-isoform-B2AR-heterotrimeric-Gs:no_ligand:10us:with_membrane.json"
VENN_DIAGRAM_SECTOR="-intersect1"
OUTPUT_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/interaction-footprint-analysis/residue-resolution-evobundle-input/112616/112616_fig2_intersect/b2ar-active-rep1,2.json"
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/analysis/interaction-footprint-analysis
python venn_diagram_compare_polar_networks.py $POLAR_NETWORK_JSON1 $POLAR_NETWORK_JSON2 $VENN_DIAGRAM_SECTOR $OUTPUT_FILE

POLAR_NETWORK_JSON1="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/interaction-footprint-analysis/residue-resolution-evobundle-input/112616/112616_fig2_intersect/b2ar-active-rep1,2.json"
POLAR_NETWORK_JSON2="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/interaction-footprint-analysis/residue-resolution-evobundle-input/112616/active_receptors_50cutoff/B2AR:active:long-isoform-B2AR-heterotrimeric-Gs:no_ligand:50us:with_membrane.json"
VENN_DIAGRAM_SECTOR="-intersect1"
OUTPUT_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/interaction-footprint-analysis/residue-resolution-evobundle-input/112616/112616_fig2_intersect/b2ar-active-aggregate.json"
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/analysis/interaction-footprint-analysis
python venn_diagram_compare_polar_networks.py $POLAR_NETWORK_JSON1 $POLAR_NETWORK_JSON2 $VENN_DIAGRAM_SECTOR $OUTPUT_FILE

# MOR-active aggregate
POLAR_NETWORK_JSON1="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/interaction-footprint-analysis/residue-resolution-evobundle-input/112616/active_receptors_50cutoff/MOR:active-noNb:BU72-nB_interface_restrained:2.7us.json"
POLAR_NETWORK_JSON2="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/interaction-footprint-analysis/residue-resolution-evobundle-input/112616/active_receptors_50cutoff/MOR:active-noNb:BU72-nB_interface_restrained:2.9us.json"
VENN_DIAGRAM_SECTOR="-intersect1"
OUTPUT_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/interaction-footprint-analysis/residue-resolution-evobundle-input/112616/112616_fig2_intersect/mor-active-rep1,2.json"
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/analysis/interaction-footprint-analysis
python venn_diagram_compare_polar_networks.py $POLAR_NETWORK_JSON1 $POLAR_NETWORK_JSON2 $VENN_DIAGRAM_SECTOR $OUTPUT_FILE

POLAR_NETWORK_JSON1="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/interaction-footprint-analysis/residue-resolution-evobundle-input/112616/112616_fig2_intersect/mor-active-rep1,2.json"
POLAR_NETWORK_JSON2="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/interaction-footprint-analysis/residue-resolution-evobundle-input/112616/active_receptors_50cutoff/MOR:active-noNb:BU72-nB_interface_restrained:3.0us.json"
VENN_DIAGRAM_SECTOR="-intersect1"
OUTPUT_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/interaction-footprint-analysis/residue-resolution-evobundle-input/112616/112616_fig2_intersect/mor-active-aggregate.json"
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/analysis/interaction-footprint-analysis
python venn_diagram_compare_polar_networks.py $POLAR_NETWORK_JSON1 $POLAR_NETWORK_JSON2 $VENN_DIAGRAM_SECTOR $OUTPUT_FILE


# MOR-inactive aggregate
POLAR_NETWORK_JSON1="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/interaction-footprint-analysis/residue-resolution-evobundle-input/112616/inactive_receptors_50cutoff/MOR:inactive:bFNA-antagonist-bound_to_K233:0.63us.json"
POLAR_NETWORK_JSON2="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/interaction-footprint-analysis/residue-resolution-evobundle-input/112616/inactive_receptors_50cutoff/MOR:inactive:bFNA-antagonist-bound_to_K233:1.21us.json"
VENN_DIAGRAM_SECTOR="-intersect1"
OUTPUT_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/interaction-footprint-analysis/residue-resolution-evobundle-input/112616/112616_fig2_intersect/mor-inactive-rep1,2.json"
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/analysis/interaction-footprint-analysis
python venn_diagram_compare_polar_networks.py $POLAR_NETWORK_JSON1 $POLAR_NETWORK_JSON2 $VENN_DIAGRAM_SECTOR $OUTPUT_FILE

POLAR_NETWORK_JSON1="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/interaction-footprint-analysis/residue-resolution-evobundle-input/112616/112616_fig2_intersect/mor-inactive-rep1,2.json"
POLAR_NETWORK_JSON2="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/interaction-footprint-analysis/residue-resolution-evobundle-input/112616/inactive_receptors_50cutoff/MOR:inactive:bFNA-antagonist-bound_to_K233:1.42us.json"
VENN_DIAGRAM_SECTOR="-intersect1"
OUTPUT_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/interaction-footprint-analysis/residue-resolution-evobundle-input/112616/112616_fig2_intersect/mor-inactive-aggregate.json"
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/analysis/interaction-footprint-analysis
python venn_diagram_compare_polar_networks.py $POLAR_NETWORK_JSON1 $POLAR_NETWORK_JSON2 $VENN_DIAGRAM_SECTOR $OUTPUT_FILE


rm /scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/interaction-footprint-analysis/residue-resolution-evobundle-input/112616/112616_fig2_intersect/b2ar-active-rep1,2.json
rm /scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/interaction-footprint-analysis/residue-resolution-evobundle-input/112616/112616_fig2_intersect/mor-active-rep1,2.json
rm /scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/interaction-footprint-analysis/residue-resolution-evobundle-input/112616/112616_fig2_intersect/mor-inactive-rep1,2.json

cp /scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/interaction-footprint-analysis/residue-resolution-evobundle-input/112616/inactive_receptors_50cutoff/B2AR:inactive:carazalol:10us:D79-,D130-,Inactive.json /scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/interaction-footprint-analysis/residue-resolution-evobundle-input/112616/112616_fig2_intersect/b2ar-inactive-aggregate.json



# Intersecting MOR and B2AR representatives for active and inactive

POLAR_NETWORK_JSON1="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/interaction-footprint-analysis/residue-resolution-evobundle-input/112616/112616_fig2_intersect/b2ar-active-aggregate.json"
POLAR_NETWORK_JSON2="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/interaction-footprint-analysis/residue-resolution-evobundle-input/112616/112616_fig2_intersect/mor-active-aggregate.json"
VENN_DIAGRAM_SECTOR="-intersect1"
OUTPUT_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/interaction-footprint-analysis/residue-resolution-evobundle-input/112616/112616_fig2_intersect/mor-b2ar-active-both.json"
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/analysis/interaction-footprint-analysis
python venn_diagram_compare_polar_networks.py $POLAR_NETWORK_JSON1 $POLAR_NETWORK_JSON2 $VENN_DIAGRAM_SECTOR $OUTPUT_FILE


POLAR_NETWORK_JSON1="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/interaction-footprint-analysis/residue-resolution-evobundle-input/112616/112616_fig2_intersect/mor-inactive-aggregate.json"
POLAR_NETWORK_JSON2="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/interaction-footprint-analysis/residue-resolution-evobundle-input/112616/112616_fig2_intersect/b2ar-inactive-aggregate.json"
VENN_DIAGRAM_SECTOR="-intersect1"
OUTPUT_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/interaction-footprint-analysis/residue-resolution-evobundle-input/112616/112616_fig2_intersect/mor-b2ar-inactive-both.json"
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/analysis/interaction-footprint-analysis
python venn_diagram_compare_polar_networks.py $POLAR_NETWORK_JSON1 $POLAR_NETWORK_JSON2 $VENN_DIAGRAM_SECTOR $OUTPUT_FILE



# Intersecting active and inactive

POLAR_NETWORK_JSON1="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/interaction-footprint-analysis/residue-resolution-evobundle-input/112616/112616_fig2_intersect/mor-b2ar-active-both.json"
POLAR_NETWORK_JSON2="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/interaction-footprint-analysis/residue-resolution-evobundle-input/112616/112616_fig2_intersect/mor-b2ar-inactive-both.json"
VENN_DIAGRAM_SECTOR="-first"
OUTPUT_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/interaction-footprint-analysis/residue-resolution-evobundle-input/112616/112616_fig2_intersect/active-only.json"
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/analysis/interaction-footprint-analysis
python venn_diagram_compare_polar_networks.py $POLAR_NETWORK_JSON1 $POLAR_NETWORK_JSON2 $VENN_DIAGRAM_SECTOR $OUTPUT_FILE


POLAR_NETWORK_JSON1="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/interaction-footprint-analysis/residue-resolution-evobundle-input/112616/112616_fig2_intersect/mor-b2ar-active-both.json"
POLAR_NETWORK_JSON2="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/interaction-footprint-analysis/residue-resolution-evobundle-input/112616/112616_fig2_intersect/mor-b2ar-inactive-both.json"
VENN_DIAGRAM_SECTOR="-second"
OUTPUT_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/interaction-footprint-analysis/residue-resolution-evobundle-input/112616/112616_fig2_intersect/inactive-only.json"
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/analysis/interaction-footprint-analysis
python venn_diagram_compare_polar_networks.py $POLAR_NETWORK_JSON1 $POLAR_NETWORK_JSON2 $VENN_DIAGRAM_SECTOR $OUTPUT_FILE


POLAR_NETWORK_JSON1="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/interaction-footprint-analysis/residue-resolution-evobundle-input/112616/112616_fig2_intersect/mor-b2ar-active-both.json"
POLAR_NETWORK_JSON2="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/interaction-footprint-analysis/residue-resolution-evobundle-input/112616/112616_fig2_intersect/mor-b2ar-inactive-both.json"
VENN_DIAGRAM_SECTOR="-intersect1"
OUTPUT_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/interaction-footprint-analysis/residue-resolution-evobundle-input/112616/112616_fig2_intersect/both.json"
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/analysis/interaction-footprint-analysis
python venn_diagram_compare_polar_networks.py $POLAR_NETWORK_JSON1 $POLAR_NETWORK_JSON2 $VENN_DIAGRAM_SECTOR $OUTPUT_FILE



cd /scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/interaction-footprint-analysis/residue-resolution-evobundle-input/112616/112616_fig2_intersect
rm *aggregate*
rm mor-b2ar-active-both.json
rm mor-b2ar-inactive-both.json




# 11416 Figure 2 part 2 (Do comparison between MOR-active MOR-inactive then B2AR-active B2AR-inactive)


### B2AR-active-Gs aggregate
POLAR_NETWORK_JSON1="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/interaction-footprint-analysis/residue-resolution-evobundle-input/112616/active_receptors_50cutoff/B2AR:active:long-isoform-B2AR-heterotrimeric-Gs:no_ligand:10.0us:with_membrane.json"
POLAR_NETWORK_JSON2="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/interaction-footprint-analysis/residue-resolution-evobundle-input/112616/active_receptors_50cutoff/B2AR:active:long-isoform-B2AR-heterotrimeric-Gs:no_ligand:10us:with_membrane.json"
VENN_DIAGRAM_SECTOR="-intersect1"
OUTPUT_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/interaction-footprint-analysis/residue-resolution-evobundle-input/112616/112616_figure2_intra_receptor_compare/b2ar-active-rep1,2.json"
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/analysis/interaction-footprint-analysis
python venn_diagram_compare_polar_networks.py $POLAR_NETWORK_JSON1 $POLAR_NETWORK_JSON2 $VENN_DIAGRAM_SECTOR $OUTPUT_FILE

POLAR_NETWORK_JSON1="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/interaction-footprint-analysis/residue-resolution-evobundle-input/112616/112616_figure2_intra_receptor_compare/b2ar-active-rep1,2.json"
POLAR_NETWORK_JSON2="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/interaction-footprint-analysis/residue-resolution-evobundle-input/112616/active_receptors_50cutoff/B2AR:active:long-isoform-B2AR-heterotrimeric-Gs:no_ligand:50us:with_membrane.json"
VENN_DIAGRAM_SECTOR="-intersect1"
OUTPUT_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/interaction-footprint-analysis/residue-resolution-evobundle-input/112616/112616_figure2_intra_receptor_compare/b2ar-active-aggregate.json"
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/analysis/interaction-footprint-analysis
python venn_diagram_compare_polar_networks.py $POLAR_NETWORK_JSON1 $POLAR_NETWORK_JSON2 $VENN_DIAGRAM_SECTOR $OUTPUT_FILE

# MOR-active aggregate
POLAR_NETWORK_JSON1="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/interaction-footprint-analysis/residue-resolution-evobundle-input/112616/active_receptors_50cutoff/MOR:active-noNb:BU72-nB_interface_restrained:2.7us.json"
POLAR_NETWORK_JSON2="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/interaction-footprint-analysis/residue-resolution-evobundle-input/112616/active_receptors_50cutoff/MOR:active-noNb:BU72-nB_interface_restrained:2.9us.json"
VENN_DIAGRAM_SECTOR="-intersect1"
OUTPUT_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/interaction-footprint-analysis/residue-resolution-evobundle-input/112616/112616_figure2_intra_receptor_compare/mor-active-rep1,2.json"
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/analysis/interaction-footprint-analysis
python venn_diagram_compare_polar_networks.py $POLAR_NETWORK_JSON1 $POLAR_NETWORK_JSON2 $VENN_DIAGRAM_SECTOR $OUTPUT_FILE

POLAR_NETWORK_JSON1="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/interaction-footprint-analysis/residue-resolution-evobundle-input/112616/112616_figure2_intra_receptor_compare/mor-active-rep1,2.json"
POLAR_NETWORK_JSON2="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/interaction-footprint-analysis/residue-resolution-evobundle-input/112616/active_receptors_50cutoff/MOR:active-noNb:BU72-nB_interface_restrained:3.0us.json"
VENN_DIAGRAM_SECTOR="-intersect1"
OUTPUT_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/interaction-footprint-analysis/residue-resolution-evobundle-input/112616/112616_figure2_intra_receptor_compare/mor-active-aggregate.json"
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/analysis/interaction-footprint-analysis
python venn_diagram_compare_polar_networks.py $POLAR_NETWORK_JSON1 $POLAR_NETWORK_JSON2 $VENN_DIAGRAM_SECTOR $OUTPUT_FILE


# MOR-inactive aggregate
POLAR_NETWORK_JSON1="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/interaction-footprint-analysis/residue-resolution-evobundle-input/112616/inactive_receptors_50cutoff/MOR:inactive:bFNA-antagonist-bound_to_K233:0.63us.json"
POLAR_NETWORK_JSON2="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/interaction-footprint-analysis/residue-resolution-evobundle-input/112616/inactive_receptors_50cutoff/MOR:inactive:bFNA-antagonist-bound_to_K233:1.21us.json"
VENN_DIAGRAM_SECTOR="-intersect1"
OUTPUT_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/interaction-footprint-analysis/residue-resolution-evobundle-input/112616/112616_figure2_intra_receptor_compare/mor-inactive-rep1,2.json"
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/analysis/interaction-footprint-analysis
python venn_diagram_compare_polar_networks.py $POLAR_NETWORK_JSON1 $POLAR_NETWORK_JSON2 $VENN_DIAGRAM_SECTOR $OUTPUT_FILE

POLAR_NETWORK_JSON1="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/interaction-footprint-analysis/residue-resolution-evobundle-input/112616/112616_figure2_intra_receptor_compare/mor-inactive-rep1,2.json"
POLAR_NETWORK_JSON2="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/interaction-footprint-analysis/residue-resolution-evobundle-input/112616/inactive_receptors_50cutoff/MOR:inactive:bFNA-antagonist-bound_to_K233:1.42us.json"
VENN_DIAGRAM_SECTOR="-intersect1"
OUTPUT_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/interaction-footprint-analysis/residue-resolution-evobundle-input/112616/112616_figure2_intra_receptor_compare/mor-inactive-aggregate.json"
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/analysis/interaction-footprint-analysis
python venn_diagram_compare_polar_networks.py $POLAR_NETWORK_JSON1 $POLAR_NETWORK_JSON2 $VENN_DIAGRAM_SECTOR $OUTPUT_FILE

rm /scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/interaction-footprint-analysis/residue-resolution-evobundle-input/112616/112616_figure2_intra_receptor_compare/b2ar-active-rep1,2.json
rm /scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/interaction-footprint-analysis/residue-resolution-evobundle-input/112616/112616_figure2_intra_receptor_compare/mor-active-rep1,2.json
rm /scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/interaction-footprint-analysis/residue-resolution-evobundle-input/112616/112616_figure2_intra_receptor_compare/mor-inactive-rep1,2.json
cp /scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/interaction-footprint-analysis/residue-resolution-evobundle-input/112616/inactive_receptors_50cutoff/B2AR:inactive:carazalol:10us:D79-,D130-,Inactive.json /scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/interaction-footprint-analysis/residue-resolution-evobundle-input/112616/112616_figure2_intra_receptor_compare/b2ar-inactive-aggregate.json



# Intersecting MOR-active and Inactive

POLAR_NETWORK_JSON1="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/interaction-footprint-analysis/residue-resolution-evobundle-input/112616/112616_figure2_intra_receptor_compare/mor-active-aggregate.json"
POLAR_NETWORK_JSON2="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/interaction-footprint-analysis/residue-resolution-evobundle-input/112616/112616_figure2_intra_receptor_compare/mor-inactive-aggregate.json"
VENN_DIAGRAM_SECTOR="-first"
OUTPUT_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/interaction-footprint-analysis/residue-resolution-evobundle-input/112616/112616_figure2_intra_receptor_compare/mor-active-only.json"
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/analysis/interaction-footprint-analysis
python venn_diagram_compare_polar_networks.py $POLAR_NETWORK_JSON1 $POLAR_NETWORK_JSON2 $VENN_DIAGRAM_SECTOR $OUTPUT_FILE

POLAR_NETWORK_JSON1="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/interaction-footprint-analysis/residue-resolution-evobundle-input/112616/112616_figure2_intra_receptor_compare/mor-active-aggregate.json"
POLAR_NETWORK_JSON2="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/interaction-footprint-analysis/residue-resolution-evobundle-input/112616/112616_figure2_intra_receptor_compare/mor-inactive-aggregate.json"
VENN_DIAGRAM_SECTOR="-second"
OUTPUT_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/interaction-footprint-analysis/residue-resolution-evobundle-input/112616/112616_figure2_intra_receptor_compare/mor-inactive-only.json"
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/analysis/interaction-footprint-analysis
python venn_diagram_compare_polar_networks.py $POLAR_NETWORK_JSON1 $POLAR_NETWORK_JSON2 $VENN_DIAGRAM_SECTOR $OUTPUT_FILE

POLAR_NETWORK_JSON1="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/interaction-footprint-analysis/residue-resolution-evobundle-input/112616/112616_figure2_intra_receptor_compare/mor-active-aggregate.json"
POLAR_NETWORK_JSON2="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/interaction-footprint-analysis/residue-resolution-evobundle-input/112616/112616_figure2_intra_receptor_compare/mor-inactive-aggregate.json"
VENN_DIAGRAM_SECTOR="-intersect1"
OUTPUT_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/interaction-footprint-analysis/residue-resolution-evobundle-input/112616/112616_figure2_intra_receptor_compare/mor-both.json"
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/analysis/interaction-footprint-analysis
python venn_diagram_compare_polar_networks.py $POLAR_NETWORK_JSON1 $POLAR_NETWORK_JSON2 $VENN_DIAGRAM_SECTOR $OUTPUT_FILE


# Intersecting B2AR-active and Inactive

POLAR_NETWORK_JSON1="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/interaction-footprint-analysis/residue-resolution-evobundle-input/112616/112616_figure2_intra_receptor_compare/b2ar-active-aggregate.json"
POLAR_NETWORK_JSON2="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/interaction-footprint-analysis/residue-resolution-evobundle-input/112616/112616_figure2_intra_receptor_compare/b2ar-inactive-aggregate.json"
VENN_DIAGRAM_SECTOR="-first"
OUTPUT_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/interaction-footprint-analysis/residue-resolution-evobundle-input/112616/112616_figure2_intra_receptor_compare/b2ar-active-only.json"
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/analysis/interaction-footprint-analysis
python venn_diagram_compare_polar_networks.py $POLAR_NETWORK_JSON1 $POLAR_NETWORK_JSON2 $VENN_DIAGRAM_SECTOR $OUTPUT_FILE


POLAR_NETWORK_JSON1="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/interaction-footprint-analysis/residue-resolution-evobundle-input/112616/112616_figure2_intra_receptor_compare/b2ar-active-aggregate.json"
POLAR_NETWORK_JSON2="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/interaction-footprint-analysis/residue-resolution-evobundle-input/112616/112616_figure2_intra_receptor_compare/b2ar-inactive-aggregate.json"
VENN_DIAGRAM_SECTOR="-second"
OUTPUT_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/interaction-footprint-analysis/residue-resolution-evobundle-input/112616/112616_figure2_intra_receptor_compare/b2ar-inactive-only.json"
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/analysis/interaction-footprint-analysis
python venn_diagram_compare_polar_networks.py $POLAR_NETWORK_JSON1 $POLAR_NETWORK_JSON2 $VENN_DIAGRAM_SECTOR $OUTPUT_FILE


POLAR_NETWORK_JSON1="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/interaction-footprint-analysis/residue-resolution-evobundle-input/112616/112616_figure2_intra_receptor_compare/b2ar-active-aggregate.json"
POLAR_NETWORK_JSON2="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/interaction-footprint-analysis/residue-resolution-evobundle-input/112616/112616_figure2_intra_receptor_compare/b2ar-inactive-aggregate.json"
VENN_DIAGRAM_SECTOR="-intersect1"
OUTPUT_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/interaction-footprint-analysis/residue-resolution-evobundle-input/112616/112616_figure2_intra_receptor_compare/b2ar-both.json"
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/analysis/interaction-footprint-analysis
python venn_diagram_compare_polar_networks.py $POLAR_NETWORK_JSON1 $POLAR_NETWORK_JSON2 $VENN_DIAGRAM_SECTOR $OUTPUT_FILE


cd /scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/interaction-footprint-analysis/residue-resolution-evobundle-input/112616/112616_figure2_intra_receptor_compare

rm *aggregate*




# Generate individual flare plots for all inactive and active experiement 
# conditions. Color coded by receptor. Will have to manually adjust "wb_combined"
# colors in utils.py for footprint_summary_evobundle.py


# Computes figure 3 flare plots for all receptors
# No threshold requency
# Show entire protein region 
# No ligand included

# Inactive

# B2AR-inactive
FOOTPRINT_TABLE="/scratch/PI/rondror/akma327/DynamicNetworks/results/state-decomposition/residue-resolution/112616_state_decomp_union_wb_freq/inactive_receptors/inactive_state_decomp_residue_resolution.txt"
EXP_REP_ID="B2AR:inactive:carazalol:10us:D79-,D130-,Inactive"
OUTPUT_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/interaction-footprint-analysis/residue-resolution-evobundle-input/112616/inactive_receptors_nocutoff/B2AR:inactive:carazalol:10us:D79-,D130-,Inactive.json"
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/analysis/interaction-footprint-analysis
python footprint_summary_evobundle.py $FOOTPRINT_TABLE $EXP_REP_ID $OUTPUT_FILE -receptor B2AR -no-conserve   -inter



# D4R-inactive
FOOTPRINT_TABLE="/scratch/PI/rondror/akma327/DynamicNetworks/results/state-decomposition/residue-resolution/112616_state_decomp_union_wb_freq/inactive_receptors/inactive_state_decomp_residue_resolution.txt"
EXP_REP_ID="D4R:inactive:nemanopride:deprotonated:1.3us"
OUTPUT_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/interaction-footprint-analysis/residue-resolution-evobundle-input/112616/inactive_receptors_nocutoff/D4R:inactive:nemanopride:deprotonated:1.3us.json"
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/analysis/interaction-footprint-analysis
python footprint_summary_evobundle.py $FOOTPRINT_TABLE $EXP_REP_ID $OUTPUT_FILE -receptor D4R -no-conserve   -inter

FOOTPRINT_TABLE="/scratch/PI/rondror/akma327/DynamicNetworks/results/state-decomposition/residue-resolution/112616_state_decomp_union_wb_freq/inactive_receptors/inactive_state_decomp_residue_resolution.txt"
EXP_REP_ID="D4R:inactive:nemanopride:deprotonated:1.5us"
OUTPUT_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/interaction-footprint-analysis/residue-resolution-evobundle-input/112616/inactive_receptors_nocutoff/D4R:inactive:nemanopride:deprotonated:1.5us.json"
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/analysis/interaction-footprint-analysis
python footprint_summary_evobundle.py $FOOTPRINT_TABLE $EXP_REP_ID $OUTPUT_FILE -receptor D4R -no-conserve   -inter

FOOTPRINT_TABLE="/scratch/PI/rondror/akma327/DynamicNetworks/results/state-decomposition/residue-resolution/112616_state_decomp_union_wb_freq/inactive_receptors/inactive_state_decomp_residue_resolution.txt"
EXP_REP_ID="D4R:inactive:nemanopride:deprotonated:1.50us"
OUTPUT_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/interaction-footprint-analysis/residue-resolution-evobundle-input/112616/inactive_receptors_nocutoff/D4R:inactive:nemanopride:deprotonated:1.50us.json"
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/analysis/interaction-footprint-analysis
python footprint_summary_evobundle.py $FOOTPRINT_TABLE $EXP_REP_ID $OUTPUT_FILE -receptor D4R -no-conserve   -inter


# M2R-inactive

FOOTPRINT_TABLE="/scratch/PI/rondror/akma327/DynamicNetworks/results/state-decomposition/residue-resolution/112616_state_decomp_union_wb_freq/inactive_receptors/inactive_state_decomp_residue_resolution.txt"	
EXP_REP_ID="M2R:inactive:QNB-orthosteric:16.4us"
OUTPUT_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/interaction-footprint-analysis/residue-resolution-evobundle-input/112616/inactive_receptors_nocutoff/M2R:inactive:QNB-orthosteric:16.4us.json"
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/analysis/interaction-footprint-analysis
python footprint_summary_evobundle.py $FOOTPRINT_TABLE $EXP_REP_ID $OUTPUT_FILE -receptor M2R -no-conserve   -inter

FOOTPRINT_TABLE="/scratch/PI/rondror/akma327/DynamicNetworks/results/state-decomposition/residue-resolution/112616_state_decomp_union_wb_freq/inactive_receptors/inactive_state_decomp_residue_resolution.txt"
EXP_REP_ID="M2R:inactive:QNB-orthosteric-no-allosteric:10us"
OUTPUT_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/interaction-footprint-analysis/residue-resolution-evobundle-input/112616/inactive_receptors_nocutoff/M2R:inactive:QNB-orthosteric-no-allosteric:10us.json"
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/analysis/interaction-footprint-analysis
python footprint_summary_evobundle.py $FOOTPRINT_TABLE $EXP_REP_ID $OUTPUT_FILE -receptor M2R -no-conserve   -inter

# MOR-inactive

FOOTPRINT_TABLE="/scratch/PI/rondror/akma327/DynamicNetworks/results/state-decomposition/residue-resolution/112616_state_decomp_union_wb_freq/inactive_receptors/inactive_state_decomp_residue_resolution.txt"
EXP_REP_ID="MOR:inactive:bFNA-antagonist-bound_to_K233:1.21us"
OUTPUT_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/interaction-footprint-analysis/residue-resolution-evobundle-input/112616/inactive_receptors_nocutoff/MOR:inactive:bFNA-antagonist-bound_to_K233:1.21us.json"
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/analysis/interaction-footprint-analysis
python footprint_summary_evobundle.py $FOOTPRINT_TABLE $EXP_REP_ID $OUTPUT_FILE -receptor MOR -no-conserve   -inter

FOOTPRINT_TABLE="/scratch/PI/rondror/akma327/DynamicNetworks/results/state-decomposition/residue-resolution/112616_state_decomp_union_wb_freq/inactive_receptors/inactive_state_decomp_residue_resolution.txt"
EXP_REP_ID="MOR:inactive:bFNA-antagonist-bound_to_K233:1.42us"
OUTPUT_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/interaction-footprint-analysis/residue-resolution-evobundle-input/112616/inactive_receptors_nocutoff/MOR:inactive:bFNA-antagonist-bound_to_K233:1.42us.json"
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/analysis/interaction-footprint-analysis
python footprint_summary_evobundle.py $FOOTPRINT_TABLE $EXP_REP_ID $OUTPUT_FILE -receptor MOR -no-conserve   -inter


FOOTPRINT_TABLE="/scratch/PI/rondror/akma327/DynamicNetworks/results/state-decomposition/residue-resolution/112616_state_decomp_union_wb_freq/inactive_receptors/inactive_state_decomp_residue_resolution.txt"
EXP_REP_ID="MOR:inactive:bFNA-antagonist-bound_to_K233:0.63us"
OUTPUT_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/interaction-footprint-analysis/residue-resolution-evobundle-input/112616/inactive_receptors_nocutoff/MOR:inactive:bFNA-antagonist-bound_to_K233:0.63us.json"
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/analysis/interaction-footprint-analysis
python footprint_summary_evobundle.py $FOOTPRINT_TABLE $EXP_REP_ID $OUTPUT_FILE -receptor MOR -no-conserve   -inter


# DOR-inactive

FOOTPRINT_TABLE="/scratch/PI/rondror/akma327/DynamicNetworks/results/state-decomposition/residue-resolution/112616_state_decomp_union_wb_freq/inactive_receptors/inactive_state_decomp_residue_resolution.txt"
EXP_REP_ID="DOR:inactive:naltrindole:3.0us"
OUTPUT_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/interaction-footprint-analysis/residue-resolution-evobundle-input/112616/inactive_receptors_nocutoff/DOR:inactive:naltrindole:3.0us.json"
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/analysis/interaction-footprint-analysis
python footprint_summary_evobundle.py $FOOTPRINT_TABLE $EXP_REP_ID $OUTPUT_FILE -receptor DOR -no-conserve   -inter

FOOTPRINT_TABLE="/scratch/PI/rondror/akma327/DynamicNetworks/results/state-decomposition/residue-resolution/112616_state_decomp_union_wb_freq/inactive_receptors/inactive_state_decomp_residue_resolution.txt"
EXP_REP_ID="DOR:inactive:naltrindole:1.3us"
OUTPUT_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/interaction-footprint-analysis/residue-resolution-evobundle-input/112616/inactive_receptors_nocutoff/DOR:inactive:naltrindole:1.3us.json"
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/analysis/interaction-footprint-analysis
python footprint_summary_evobundle.py $FOOTPRINT_TABLE $EXP_REP_ID $OUTPUT_FILE -receptor DOR -no-conserve   -inter


FOOTPRINT_TABLE="/scratch/PI/rondror/akma327/DynamicNetworks/results/state-decomposition/residue-resolution/112616_state_decomp_union_wb_freq/inactive_receptors/inactive_state_decomp_residue_resolution.txt"
EXP_REP_ID="DOR:inactive:naltrindole:2.0us"
OUTPUT_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/interaction-footprint-analysis/residue-resolution-evobundle-input/112616/inactive_receptors_nocutoff/DOR:inactive:naltrindole:2.0us.json"
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/analysis/interaction-footprint-analysis
python footprint_summary_evobundle.py $FOOTPRINT_TABLE $EXP_REP_ID $OUTPUT_FILE -receptor DOR -no-conserve   -inter



# Active

# MOR-active-noNb-BU72-nB_interface_restrained

FOOTPRINT_TABLE="/scratch/PI/rondror/akma327/DynamicNetworks/results/state-decomposition/residue-resolution/112616_state_decomp_union_wb_freq/active_receptors/active_state_decomp_residue_resolution.txt"
EXP_REP_ID="MOR:active-noNb:BU72-nB_interface_restrained:3.0us"
OUTPUT_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/interaction-footprint-analysis/residue-resolution-evobundle-input/112616/active_receptors_nocutoff/MOR:active-noNb:BU72-nB_interface_restrained:3.0us.json"
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/analysis/interaction-footprint-analysis
python footprint_summary_evobundle.py $FOOTPRINT_TABLE $EXP_REP_ID $OUTPUT_FILE -receptor MOR -no-conserve   -inter

FOOTPRINT_TABLE="/scratch/PI/rondror/akma327/DynamicNetworks/results/state-decomposition/residue-resolution/112616_state_decomp_union_wb_freq/active_receptors/active_state_decomp_residue_resolution.txt"
EXP_REP_ID="MOR:active-noNb:BU72-nB_interface_restrained:2.7us"
OUTPUT_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/interaction-footprint-analysis/residue-resolution-evobundle-input/112616/active_receptors_nocutoff/MOR:active-noNb:BU72-nB_interface_restrained:2.7us.json"
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/analysis/interaction-footprint-analysis
python footprint_summary_evobundle.py $FOOTPRINT_TABLE $EXP_REP_ID $OUTPUT_FILE -receptor MOR -no-conserve   -inter


FOOTPRINT_TABLE="/scratch/PI/rondror/akma327/DynamicNetworks/results/state-decomposition/residue-resolution/112616_state_decomp_union_wb_freq/active_receptors/active_state_decomp_residue_resolution.txt"
EXP_REP_ID="MOR:active-noNb:BU72-nB_interface_restrained:2.9us"
OUTPUT_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/interaction-footprint-analysis/residue-resolution-evobundle-input/112616/active_receptors_nocutoff/MOR:active-noNb:BU72-nB_interface_restrained:2.9us.json"
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/analysis/interaction-footprint-analysis
python footprint_summary_evobundle.py $FOOTPRINT_TABLE $EXP_REP_ID $OUTPUT_FILE -receptor MOR -no-conserve   -inter


# B2AR-active-Gs-science2015

FOOTPRINT_TABLE="/scratch/PI/rondror/akma327/DynamicNetworks/results/state-decomposition/residue-resolution/112616_state_decomp_union_wb_freq/active_receptors/active_state_decomp_residue_resolution.txt"
EXP_REP_ID="B2AR:active:long-isoform-B2AR-heterotrimeric-Gs:no_ligand:50us:with_membrane"
OUTPUT_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/interaction-footprint-analysis/residue-resolution-evobundle-input/112616/active_receptors_nocutoff/B2AR:active:long-isoform-B2AR-heterotrimeric-Gs:no_ligand:50us:with_membrane.json"
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/analysis/interaction-footprint-analysis
python footprint_summary_evobundle.py $FOOTPRINT_TABLE $EXP_REP_ID $OUTPUT_FILE -receptor B2AR -no-conserve   -inter

FOOTPRINT_TABLE="/scratch/PI/rondror/akma327/DynamicNetworks/results/state-decomposition/residue-resolution/112616_state_decomp_union_wb_freq/active_receptors/active_state_decomp_residue_resolution.txt"
EXP_REP_ID="B2AR:active:long-isoform-B2AR-heterotrimeric-Gs:no_ligand:10us:with_membrane"
OUTPUT_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/interaction-footprint-analysis/residue-resolution-evobundle-input/112616/active_receptors_nocutoff/B2AR:active:long-isoform-B2AR-heterotrimeric-Gs:no_ligand:10us:with_membrane.json"
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/analysis/interaction-footprint-analysis
python footprint_summary_evobundle.py $FOOTPRINT_TABLE $EXP_REP_ID $OUTPUT_FILE -receptor B2AR -no-conserve   -inter

FOOTPRINT_TABLE="/scratch/PI/rondror/akma327/DynamicNetworks/results/state-decomposition/residue-resolution/112616_state_decomp_union_wb_freq/active_receptors/active_state_decomp_residue_resolution.txt"
EXP_REP_ID="B2AR:active:long-isoform-B2AR-heterotrimeric-Gs:no_ligand:10.0us:with_membrane"
OUTPUT_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/interaction-footprint-analysis/residue-resolution-evobundle-input/112616/active_receptors_nocutoff/B2AR:active:long-isoform-B2AR-heterotrimeric-Gs:no_ligand:10.0us:with_membrane.json"
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/analysis/interaction-footprint-analysis
python footprint_summary_evobundle.py $FOOTPRINT_TABLE $EXP_REP_ID $OUTPUT_FILE -receptor B2AR -no-conserve   -inter


FOOTPRINT_TABLE="/scratch/PI/rondror/akma327/DynamicNetworks/results/state-decomposition/residue-resolution/112616_state_decomp_union_wb_freq/active_receptors/active_state_decomp_residue_resolution.txt"
EXP_REP_ID="B2AR:active:short-isoform-B2AR-heterotrimeric-Gs:no_ligand:5us:with_membrane"
OUTPUT_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/interaction-footprint-analysis/residue-resolution-evobundle-input/112616/active_receptors_nocutoff/B2AR:active:short-isoform-B2AR-heterotrimeric-Gs:no_ligand:5us:with_membrane.json"
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/analysis/interaction-footprint-analysis
python footprint_summary_evobundle.py $FOOTPRINT_TABLE $EXP_REP_ID $OUTPUT_FILE -receptor B2AR -no-conserve   -inter


# B2AR-active-pnas2011b

FOOTPRINT_TABLE="/scratch/PI/rondror/akma327/DynamicNetworks/results/state-decomposition/residue-resolution/112616_state_decomp_union_wb_freq/active_receptors/active_state_decomp_residue_resolution.txt"
EXP_REP_ID="B2AR:active:agonist-bound-nanobody-complex:3.6us:D70+,D130+,H172+,C341_palm"
OUTPUT_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/interaction-footprint-analysis/residue-resolution-evobundle-input/112616/active_receptors_nocutoff/B2AR:active:agonist-bound-nanobody-complex:3.6us:D70+,D130+,H172+,C341_palm.json"
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/analysis/interaction-footprint-analysis
python footprint_summary_evobundle.py $FOOTPRINT_TABLE $EXP_REP_ID $OUTPUT_FILE -receptor B2AR -no-conserve   -inter


FOOTPRINT_TABLE="/scratch/PI/rondror/akma327/DynamicNetworks/results/state-decomposition/residue-resolution/112616_state_decomp_union_wb_freq/active_receptors/active_state_decomp_residue_resolution.txt"
EXP_REP_ID="B2AR:active:agonist-bound-nanobody-complex:6.5us:D70+,D130+,H172+,C341_palm"
OUTPUT_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/interaction-footprint-analysis/residue-resolution-evobundle-input/112616/active_receptors_nocutoff/B2AR:active:agonist-bound-nanobody-complex:6.5us:D70+,D130+,H172+,C341_palm.json"
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/analysis/interaction-footprint-analysis
python footprint_summary_evobundle.py $FOOTPRINT_TABLE $EXP_REP_ID $OUTPUT_FILE -receptor B2AR -no-conserve   -inter



# MOR-active-unpublished
FOOTPRINT_TABLE="/scratch/PI/rondror/akma327/DynamicNetworks/results/state-decomposition/residue-resolution/112616_state_decomp_union_wb_freq/active_receptors/active_state_decomp_residue_resolution.txt"
EXP_REP_ID="MOR:active:unpublished-rep_1"
OUTPUT_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/interaction-footprint-analysis/residue-resolution-evobundle-input/112616/active_receptors_nocutoff/MOR:active:unpublished-rep_1.json"
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/analysis/interaction-footprint-analysis
python footprint_summary_evobundle.py $FOOTPRINT_TABLE $EXP_REP_ID $OUTPUT_FILE -receptor MOR -no-conserve   -inter

FOOTPRINT_TABLE="/scratch/PI/rondror/akma327/DynamicNetworks/results/state-decomposition/residue-resolution/112616_state_decomp_union_wb_freq/active_receptors/active_state_decomp_residue_resolution.txt"
EXP_REP_ID="MOR:active:unpublished-rep_2"
OUTPUT_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/interaction-footprint-analysis/residue-resolution-evobundle-input/112616/active_receptors_nocutoff/MOR:active:unpublished-rep_2.json"
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/analysis/interaction-footprint-analysis
python footprint_summary_evobundle.py $FOOTPRINT_TABLE $EXP_REP_ID $OUTPUT_FILE -receptor MOR -no-conserve   -inter

FOOTPRINT_TABLE="/scratch/PI/rondror/akma327/DynamicNetworks/results/state-decomposition/residue-resolution/112616_state_decomp_union_wb_freq/active_receptors/active_state_decomp_residue_resolution.txt"
EXP_REP_ID="MOR:active:unpublished-rep_3"
OUTPUT_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/interaction-footprint-analysis/residue-resolution-evobundle-input/112616/active_receptors_nocutoff/MOR:active:unpublished-rep_3.json"
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/analysis/interaction-footprint-analysis
python footprint_summary_evobundle.py $FOOTPRINT_TABLE $EXP_REP_ID $OUTPUT_FILE -receptor MOR -no-conserve   -inter






# M2R-active-restrained-unpublished
FOOTPRINT_TABLE="/scratch/PI/rondror/akma327/DynamicNetworks/results/state-decomposition/residue-resolution/112616_state_decomp_union_wb_freq/active_receptors/active_state_decomp_residue_resolution.txt"
EXP_REP_ID="M2R:active:restrained:prot:Asp2x50:3x49-rep_1"
OUTPUT_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/interaction-footprint-analysis/residue-resolution-evobundle-input/112616/active_receptors_nocutoff/M2R:active:restrained:prot:Asp2x50:3x49-rep_1.json"
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/analysis/interaction-footprint-analysis
python footprint_summary_evobundle.py $FOOTPRINT_TABLE $EXP_REP_ID $OUTPUT_FILE -receptor M2R -no-conserve   -inter


FOOTPRINT_TABLE="/scratch/PI/rondror/akma327/DynamicNetworks/results/state-decomposition/residue-resolution/112616_state_decomp_union_wb_freq/active_receptors/active_state_decomp_residue_resolution.txt"
EXP_REP_ID="M2R:active:restrained:prot:Asp2x50:3x49-rep_2"
OUTPUT_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/interaction-footprint-analysis/residue-resolution-evobundle-input/112616/active_receptors_nocutoff/M2R:active:restrained:prot:Asp2x50:3x49-rep_2.json"
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/analysis/interaction-footprint-analysis
python footprint_summary_evobundle.py $FOOTPRINT_TABLE $EXP_REP_ID $OUTPUT_FILE -receptor M2R -no-conserve   -inter


FOOTPRINT_TABLE="/scratch/PI/rondror/akma327/DynamicNetworks/results/state-decomposition/residue-resolution/112616_state_decomp_union_wb_freq/active_receptors/active_state_decomp_residue_resolution.txt"
EXP_REP_ID="M2R:active:restrained:prot:Asp2x50:3x49-rep_3"
OUTPUT_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/interaction-footprint-analysis/residue-resolution-evobundle-input/112616/active_receptors_nocutoff/M2R:active:restrained:prot:Asp2x50:3x49-rep_3.json"
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/analysis/interaction-footprint-analysis
python footprint_summary_evobundle.py $FOOTPRINT_TABLE $EXP_REP_ID $OUTPUT_FILE -receptor M2R -no-conserve   -inter


# M2R-active-unrestrained-unpublished
FOOTPRINT_TABLE="/scratch/PI/rondror/akma327/DynamicNetworks/results/state-decomposition/residue-resolution/112616_state_decomp_union_wb_freq/active_receptors/active_state_decomp_residue_resolution.txt"
EXP_REP_ID="M2R:active:unrestrained:prot:Asp2x50:3x49-rep_1"
OUTPUT_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/interaction-footprint-analysis/residue-resolution-evobundle-input/112616/active_receptors_nocutoff/M2R:active:unrestrained:prot:Asp2x50:3x49-rep_1.json"
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/analysis/interaction-footprint-analysis
python footprint_summary_evobundle.py $FOOTPRINT_TABLE $EXP_REP_ID $OUTPUT_FILE -receptor M2R -no-conserve  -inter

FOOTPRINT_TABLE="/scratch/PI/rondror/akma327/DynamicNetworks/results/state-decomposition/residue-resolution/112616_state_decomp_union_wb_freq/active_receptors/active_state_decomp_residue_resolution.txt"
EXP_REP_ID="M2R:active:unrestrained:prot:Asp2x50:3x49-rep_2"
OUTPUT_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/interaction-footprint-analysis/residue-resolution-evobundle-input/112616/active_receptors_nocutoff/M2R:active:unrestrained:prot:Asp2x50:3x49-rep_2.json"
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/analysis/interaction-footprint-analysis
python footprint_summary_evobundle.py $FOOTPRINT_TABLE $EXP_REP_ID $OUTPUT_FILE -receptor M2R -no-conserve  -inter


FOOTPRINT_TABLE="/scratch/PI/rondror/akma327/DynamicNetworks/results/state-decomposition/residue-resolution/112616_state_decomp_union_wb_freq/active_receptors/active_state_decomp_residue_resolution.txt"
EXP_REP_ID="M2R:active:unrestrained:prot:Asp2x50:3x49-rep_3"
OUTPUT_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/interaction-footprint-analysis/residue-resolution-evobundle-input/112616/active_receptors_nocutoff/M2R:active:unrestrained:prot:Asp2x50:3x49-rep_3.json"
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/analysis/interaction-footprint-analysis
python footprint_summary_evobundle.py $FOOTPRINT_TABLE $EXP_REP_ID $OUTPUT_FILE -receptor M2R -no-conserve  -inter


# US28-active-unrestrained-unpublished
FOOTPRINT_TABLE="/scratch/PI/rondror/akma327/DynamicNetworks/results/state-decomposition/residue-resolution/112616_state_decomp_union_wb_freq/active_receptors/active_state_decomp_residue_resolution.txt"
EXP_REP_ID="US28:active:unrestrained-rep_1"
OUTPUT_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/interaction-footprint-analysis/residue-resolution-evobundle-input/112616/active_receptors_nocutoff/US28:active:unrestrained-rep_1.json"
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/analysis/interaction-footprint-analysis
python footprint_summary_evobundle.py $FOOTPRINT_TABLE $EXP_REP_ID $OUTPUT_FILE -receptor US28 -no-conserve  -inter

FOOTPRINT_TABLE="/scratch/PI/rondror/akma327/DynamicNetworks/results/state-decomposition/residue-resolution/112616_state_decomp_union_wb_freq/active_receptors/active_state_decomp_residue_resolution.txt"
EXP_REP_ID="US28:active:unrestrained-rep_2"
OUTPUT_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/interaction-footprint-analysis/residue-resolution-evobundle-input/112616/active_receptors_nocutoff/US28:active:unrestrained-rep_2.json"
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/analysis/interaction-footprint-analysis
python footprint_summary_evobundle.py $FOOTPRINT_TABLE $EXP_REP_ID $OUTPUT_FILE -receptor US28 -no-conserve  -inter


FOOTPRINT_TABLE="/scratch/PI/rondror/akma327/DynamicNetworks/results/state-decomposition/residue-resolution/112616_state_decomp_union_wb_freq/active_receptors/active_state_decomp_residue_resolution.txt"
EXP_REP_ID="US28:active:unrestrained-rep_3"
OUTPUT_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/interaction-footprint-analysis/residue-resolution-evobundle-input/112616/active_receptors_nocutoff/US28:active:unrestrained-rep_3.json"
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/analysis/interaction-footprint-analysis
python footprint_summary_evobundle.py $FOOTPRINT_TABLE $EXP_REP_ID $OUTPUT_FILE -receptor US28 -no-conserve  -inter


# US28-active-restrained-unpublished
FOOTPRINT_TABLE="/scratch/PI/rondror/akma327/DynamicNetworks/results/state-decomposition/residue-resolution/112616_state_decomp_union_wb_freq/active_receptors/active_state_decomp_residue_resolution.txt"
EXP_REP_ID="US28:active:restrained-rep_1"
OUTPUT_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/interaction-footprint-analysis/residue-resolution-evobundle-input/112616/active_receptors_nocutoff/US28:active:restrained-rep_1.json"
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/analysis/interaction-footprint-analysis
python footprint_summary_evobundle.py $FOOTPRINT_TABLE $EXP_REP_ID $OUTPUT_FILE -receptor US28 -no-conserve  -inter


FOOTPRINT_TABLE="/scratch/PI/rondror/akma327/DynamicNetworks/results/state-decomposition/residue-resolution/112616_state_decomp_union_wb_freq/active_receptors/active_state_decomp_residue_resolution.txt"
EXP_REP_ID="US28:active:restrained-rep_2"
OUTPUT_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/interaction-footprint-analysis/residue-resolution-evobundle-input/112616/active_receptors_nocutoff/US28:active:restrained-rep_2.json"
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/analysis/interaction-footprint-analysis
python footprint_summary_evobundle.py $FOOTPRINT_TABLE $EXP_REP_ID $OUTPUT_FILE -receptor US28 -no-conserve  -inter


FOOTPRINT_TABLE="/scratch/PI/rondror/akma327/DynamicNetworks/results/state-decomposition/residue-resolution/112616_state_decomp_union_wb_freq/active_receptors/active_state_decomp_residue_resolution.txt"
EXP_REP_ID="US28:active:restrained-rep_3"
OUTPUT_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/interaction-footprint-analysis/residue-resolution-evobundle-input/112616/active_receptors_nocutoff/US28:active:restrained-rep_3.json"
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/analysis/interaction-footprint-analysis
python footprint_summary_evobundle.py $FOOTPRINT_TABLE $EXP_REP_ID $OUTPUT_FILE -receptor US28 -no-conserve  -inter




# Rhodopsin-active-unrestrained-unpublished

FOOTPRINT_TABLE="/scratch/PI/rondror/akma327/DynamicNetworks/results/state-decomposition/residue-resolution/110916_state_decomp_union_wb_freq/active_receptors/active_state_decomp_residue_resolution.txt"
EXP_REP_ID="RHO:active:unrestrained-rep_1"
OUTPUT_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/interaction-footprint-analysis/residue-resolution-evobundle-input/112616/active_receptors_nocutoff/RHO:active:unrestrained-rep_1.json"
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/analysis/interaction-footprint-analysis
python footprint_summary_evobundle.py $FOOTPRINT_TABLE $EXP_REP_ID $OUTPUT_FILE -receptor RHO -no-conserve -inter

FOOTPRINT_TABLE="/scratch/PI/rondror/akma327/DynamicNetworks/results/state-decomposition/residue-resolution/110916_state_decomp_union_wb_freq/active_receptors/active_state_decomp_residue_resolution.txt"
EXP_REP_ID="RHO:active:unrestrained-rep_2"
OUTPUT_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/interaction-footprint-analysis/residue-resolution-evobundle-input/112616/active_receptors_nocutoff/RHO:active:unrestrained-rep_2.json"
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/analysis/interaction-footprint-analysis
python footprint_summary_evobundle.py $FOOTPRINT_TABLE $EXP_REP_ID $OUTPUT_FILE -receptor RHO -no-conserve -inter


FOOTPRINT_TABLE="/scratch/PI/rondror/akma327/DynamicNetworks/results/state-decomposition/residue-resolution/110916_state_decomp_union_wb_freq/active_receptors/active_state_decomp_residue_resolution.txt"
EXP_REP_ID="RHO:active:unrestrained-rep_3"
OUTPUT_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/interaction-footprint-analysis/residue-resolution-evobundle-input/112616/active_receptors_nocutoff/RHO:active:unrestrained-rep_3.json"
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/analysis/interaction-footprint-analysis
python footprint_summary_evobundle.py $FOOTPRINT_TABLE $EXP_REP_ID $OUTPUT_FILE -receptor RHO -no-conserve -inter






## Figure 3 Intersections


#B2AR-inactive
POLAR_NETWORK_JSON1="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/interaction-footprint-analysis/residue-resolution-evobundle-input/112616/inactive_receptors_nocutoff/B2AR:inactive:carazalol:10us:D79-,D130-,Inactive.json"
POLAR_NETWORK_JSON2="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/interaction-footprint-analysis/residue-resolution-evobundle-input/112616/112616_fig2_intersect/inactive-only.json"
VENN_DIAGRAM_SECTOR="-intersect1"
OUTPUT_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/interaction-footprint-analysis/residue-resolution-evobundle-input/112616/figure3/inactive_receptors/B2AR:inactive:carazalol:10us:D79-,D130-,Inactive.json"
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/analysis/interaction-footprint-analysis
python venn_diagram_compare_polar_networks.py $POLAR_NETWORK_JSON1 $POLAR_NETWORK_JSON2 $VENN_DIAGRAM_SECTOR $OUTPUT_FILE

# D4R-inactive

POLAR_NETWORK_JSON1="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/interaction-footprint-analysis/residue-resolution-evobundle-input/112616/inactive_receptors_nocutoff/D4R:inactive:nemanopride:deprotonated:1.3us.json"
POLAR_NETWORK_JSON2="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/interaction-footprint-analysis/residue-resolution-evobundle-input/112616/112616_fig2_intersect/inactive-only.json"
VENN_DIAGRAM_SECTOR="-intersect1"
OUTPUT_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/interaction-footprint-analysis/residue-resolution-evobundle-input/112616/figure3/inactive_receptors/D4R:inactive:nemanopride:deprotonated:1.3us.json"
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/analysis/interaction-footprint-analysis
python venn_diagram_compare_polar_networks.py $POLAR_NETWORK_JSON1 $POLAR_NETWORK_JSON2 $VENN_DIAGRAM_SECTOR $OUTPUT_FILE


POLAR_NETWORK_JSON1="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/interaction-footprint-analysis/residue-resolution-evobundle-input/112616/inactive_receptors_nocutoff/D4R:inactive:nemanopride:deprotonated:1.5us.json"
POLAR_NETWORK_JSON2="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/interaction-footprint-analysis/residue-resolution-evobundle-input/112616/112616_fig2_intersect/inactive-only.json"
VENN_DIAGRAM_SECTOR="-intersect1"
OUTPUT_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/interaction-footprint-analysis/residue-resolution-evobundle-input/112616/figure3/inactive_receptors/D4R:inactive:nemanopride:deprotonated:1.5us.json"
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/analysis/interaction-footprint-analysis
python venn_diagram_compare_polar_networks.py $POLAR_NETWORK_JSON1 $POLAR_NETWORK_JSON2 $VENN_DIAGRAM_SECTOR $OUTPUT_FILE


POLAR_NETWORK_JSON1="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/interaction-footprint-analysis/residue-resolution-evobundle-input/112616/inactive_receptors_nocutoff/D4R:inactive:nemanopride:deprotonated:1.50us.json"
POLAR_NETWORK_JSON2="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/interaction-footprint-analysis/residue-resolution-evobundle-input/112616/112616_fig2_intersect/inactive-only.json"
VENN_DIAGRAM_SECTOR="-intersect1"
OUTPUT_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/interaction-footprint-analysis/residue-resolution-evobundle-input/112616/figure3/inactive_receptors/D4R:inactive:nemanopride:deprotonated:1.50us.json"
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/analysis/interaction-footprint-analysis
python venn_diagram_compare_polar_networks.py $POLAR_NETWORK_JSON1 $POLAR_NETWORK_JSON2 $VENN_DIAGRAM_SECTOR $OUTPUT_FILE



# M2R-inactive

POLAR_NETWORK_JSON1="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/interaction-footprint-analysis/residue-resolution-evobundle-input/112616/inactive_receptors_nocutoff/M2R:inactive:QNB-orthosteric:16.4us.json"
POLAR_NETWORK_JSON2="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/interaction-footprint-analysis/residue-resolution-evobundle-input/112616/112616_fig2_intersect/inactive-only.json"
VENN_DIAGRAM_SECTOR="-intersect1"
OUTPUT_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/interaction-footprint-analysis/residue-resolution-evobundle-input/112616/figure3/inactive_receptors/M2R:inactive:QNB-orthosteric:16.4us.json"
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/analysis/interaction-footprint-analysis
python venn_diagram_compare_polar_networks.py $POLAR_NETWORK_JSON1 $POLAR_NETWORK_JSON2 $VENN_DIAGRAM_SECTOR $OUTPUT_FILE




POLAR_NETWORK_JSON1="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/interaction-footprint-analysis/residue-resolution-evobundle-input/112616/inactive_receptors_nocutoff/M2R:inactive:QNB-orthosteric-no-allosteric:10us.json"
POLAR_NETWORK_JSON2="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/interaction-footprint-analysis/residue-resolution-evobundle-input/112616/112616_fig2_intersect/inactive-only.json"
VENN_DIAGRAM_SECTOR="-intersect1"
OUTPUT_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/interaction-footprint-analysis/residue-resolution-evobundle-input/112616/figure3/inactive_receptors/M2R:inactive:QNB-orthosteric-no-allosteric:10us.json"
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/analysis/interaction-footprint-analysis
python venn_diagram_compare_polar_networks.py $POLAR_NETWORK_JSON1 $POLAR_NETWORK_JSON2 $VENN_DIAGRAM_SECTOR $OUTPUT_FILE




# MOR-inactive

POLAR_NETWORK_JSON1="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/interaction-footprint-analysis/residue-resolution-evobundle-input/112616/inactive_receptors_nocutoff/MOR:inactive:bFNA-antagonist-bound_to_K233:1.21us.json"
POLAR_NETWORK_JSON2="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/interaction-footprint-analysis/residue-resolution-evobundle-input/112616/112616_fig2_intersect/inactive-only.json"
VENN_DIAGRAM_SECTOR="-intersect1"
OUTPUT_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/interaction-footprint-analysis/residue-resolution-evobundle-input/112616/figure3/inactive_receptors/MOR:inactive:bFNA-antagonist-bound_to_K233:1.21us.json"
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/analysis/interaction-footprint-analysis
python venn_diagram_compare_polar_networks.py $POLAR_NETWORK_JSON1 $POLAR_NETWORK_JSON2 $VENN_DIAGRAM_SECTOR $OUTPUT_FILE



POLAR_NETWORK_JSON1="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/interaction-footprint-analysis/residue-resolution-evobundle-input/112616/inactive_receptors_nocutoff/MOR:inactive:bFNA-antagonist-bound_to_K233:1.42us.json"
POLAR_NETWORK_JSON2="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/interaction-footprint-analysis/residue-resolution-evobundle-input/112616/112616_fig2_intersect/inactive-only.json"
VENN_DIAGRAM_SECTOR="-intersect1"
OUTPUT_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/interaction-footprint-analysis/residue-resolution-evobundle-input/112616/figure3/inactive_receptors/MOR:inactive:bFNA-antagonist-bound_to_K233:1.42us.json"
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/analysis/interaction-footprint-analysis
python venn_diagram_compare_polar_networks.py $POLAR_NETWORK_JSON1 $POLAR_NETWORK_JSON2 $VENN_DIAGRAM_SECTOR $OUTPUT_FILE


POLAR_NETWORK_JSON1="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/interaction-footprint-analysis/residue-resolution-evobundle-input/112616/inactive_receptors_nocutoff/MOR:inactive:bFNA-antagonist-bound_to_K233:0.63us.json"
POLAR_NETWORK_JSON2="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/interaction-footprint-analysis/residue-resolution-evobundle-input/112616/112616_fig2_intersect/inactive-only.json"
VENN_DIAGRAM_SECTOR="-intersect1"
OUTPUT_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/interaction-footprint-analysis/residue-resolution-evobundle-input/112616/figure3/inactive_receptors/MOR:inactive:bFNA-antagonist-bound_to_K233:0.63us.json"
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/analysis/interaction-footprint-analysis
python venn_diagram_compare_polar_networks.py $POLAR_NETWORK_JSON1 $POLAR_NETWORK_JSON2 $VENN_DIAGRAM_SECTOR $OUTPUT_FILE



# DOR-inactive
POLAR_NETWORK_JSON1="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/interaction-footprint-analysis/residue-resolution-evobundle-input/112616/inactive_receptors_nocutoff/DOR:inactive:naltrindole:3.0us.json"
POLAR_NETWORK_JSON2="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/interaction-footprint-analysis/residue-resolution-evobundle-input/112616/112616_fig2_intersect/inactive-only.json"
VENN_DIAGRAM_SECTOR="-intersect1"
OUTPUT_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/interaction-footprint-analysis/residue-resolution-evobundle-input/112616/figure3/inactive_receptors/DOR:inactive:naltrindole:3.0us.json"
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/analysis/interaction-footprint-analysis
python venn_diagram_compare_polar_networks.py $POLAR_NETWORK_JSON1 $POLAR_NETWORK_JSON2 $VENN_DIAGRAM_SECTOR $OUTPUT_FILE


POLAR_NETWORK_JSON1="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/interaction-footprint-analysis/residue-resolution-evobundle-input/112616/inactive_receptors_nocutoff/DOR:inactive:naltrindole:1.3us.json"
POLAR_NETWORK_JSON2="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/interaction-footprint-analysis/residue-resolution-evobundle-input/112616/112616_fig2_intersect/inactive-only.json"
VENN_DIAGRAM_SECTOR="-intersect1"
OUTPUT_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/interaction-footprint-analysis/residue-resolution-evobundle-input/112616/figure3/inactive_receptors/DOR:inactive:naltrindole:1.3us.json"
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/analysis/interaction-footprint-analysis
python venn_diagram_compare_polar_networks.py $POLAR_NETWORK_JSON1 $POLAR_NETWORK_JSON2 $VENN_DIAGRAM_SECTOR $OUTPUT_FILE


POLAR_NETWORK_JSON1="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/interaction-footprint-analysis/residue-resolution-evobundle-input/112616/inactive_receptors_nocutoff/DOR:inactive:naltrindole:2.0us.json"
POLAR_NETWORK_JSON2="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/interaction-footprint-analysis/residue-resolution-evobundle-input/112616/112616_fig2_intersect/inactive-only.json"
VENN_DIAGRAM_SECTOR="-intersect1"
OUTPUT_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/interaction-footprint-analysis/residue-resolution-evobundle-input/112616/figure3/inactive_receptors/DOR:inactive:naltrindole:2.0us.json"
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/analysis/interaction-footprint-analysis
python venn_diagram_compare_polar_networks.py $POLAR_NETWORK_JSON1 $POLAR_NETWORK_JSON2 $VENN_DIAGRAM_SECTOR $OUTPUT_FILE




# Active

# MOR-active

POLAR_NETWORK_JSON1="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/interaction-footprint-analysis/residue-resolution-evobundle-input/112616/active_receptors_nocutoff/MOR:active-noNb:BU72-nB_interface_restrained:3.0us.json"
POLAR_NETWORK_JSON2="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/interaction-footprint-analysis/residue-resolution-evobundle-input/112616/112616_fig2_intersect/active-only.json"
VENN_DIAGRAM_SECTOR="-intersect1"
OUTPUT_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/interaction-footprint-analysis/residue-resolution-evobundle-input/112616/figure3/active_receptors/MOR:active-noNb:BU72-nB_interface_restrained:3.0us.json"
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/analysis/interaction-footprint-analysis
python venn_diagram_compare_polar_networks.py $POLAR_NETWORK_JSON1 $POLAR_NETWORK_JSON2 $VENN_DIAGRAM_SECTOR $OUTPUT_FILE


POLAR_NETWORK_JSON1="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/interaction-footprint-analysis/residue-resolution-evobundle-input/112616/active_receptors_nocutoff/MOR:active-noNb:BU72-nB_interface_restrained:2.7us.json"
POLAR_NETWORK_JSON2="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/interaction-footprint-analysis/residue-resolution-evobundle-input/112616/112616_fig2_intersect/active-only.json"
VENN_DIAGRAM_SECTOR="-intersect1"
OUTPUT_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/interaction-footprint-analysis/residue-resolution-evobundle-input/112616/figure3/active_receptors/MOR:active-noNb:BU72-nB_interface_restrained:2.7us.json"
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/analysis/interaction-footprint-analysis
python venn_diagram_compare_polar_networks.py $POLAR_NETWORK_JSON1 $POLAR_NETWORK_JSON2 $VENN_DIAGRAM_SECTOR $OUTPUT_FILE


POLAR_NETWORK_JSON1="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/interaction-footprint-analysis/residue-resolution-evobundle-input/112616/active_receptors_nocutoff/MOR:active-noNb:BU72-nB_interface_restrained:2.9us.json"
POLAR_NETWORK_JSON2="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/interaction-footprint-analysis/residue-resolution-evobundle-input/112616/112616_fig2_intersect/active-only.json"
VENN_DIAGRAM_SECTOR="-intersect1"
OUTPUT_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/interaction-footprint-analysis/residue-resolution-evobundle-input/112616/figure3/active_receptors/MOR:active-noNb:BU72-nB_interface_restrained:2.9us.json"
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/analysis/interaction-footprint-analysis
python venn_diagram_compare_polar_networks.py $POLAR_NETWORK_JSON1 $POLAR_NETWORK_JSON2 $VENN_DIAGRAM_SECTOR $OUTPUT_FILE



# B2AR-active

POLAR_NETWORK_JSON1="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/interaction-footprint-analysis/residue-resolution-evobundle-input/112616/active_receptors_nocutoff/B2AR:active:long-isoform-B2AR-heterotrimeric-Gs:no_ligand:50us:with_membrane.json"
POLAR_NETWORK_JSON2="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/interaction-footprint-analysis/residue-resolution-evobundle-input/112616/112616_fig2_intersect/active-only.json"
VENN_DIAGRAM_SECTOR="-intersect1"
OUTPUT_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/interaction-footprint-analysis/residue-resolution-evobundle-input/112616/figure3/active_receptors/B2AR:active:long-isoform-B2AR-heterotrimeric-Gs:no_ligand:50us:with_membrane.json"
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/analysis/interaction-footprint-analysis
python venn_diagram_compare_polar_networks.py $POLAR_NETWORK_JSON1 $POLAR_NETWORK_JSON2 $VENN_DIAGRAM_SECTOR $OUTPUT_FILE


POLAR_NETWORK_JSON1="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/interaction-footprint-analysis/residue-resolution-evobundle-input/112616/active_receptors_nocutoff/B2AR:active:long-isoform-B2AR-heterotrimeric-Gs:no_ligand:10us:with_membrane.json"
POLAR_NETWORK_JSON2="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/interaction-footprint-analysis/residue-resolution-evobundle-input/112616/112616_fig2_intersect/active-only.json"
VENN_DIAGRAM_SECTOR="-intersect1"
OUTPUT_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/interaction-footprint-analysis/residue-resolution-evobundle-input/112616/figure3/active_receptors/B2AR:active:long-isoform-B2AR-heterotrimeric-Gs:no_ligand:10us:with_membrane.json"
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/analysis/interaction-footprint-analysis
python venn_diagram_compare_polar_networks.py $POLAR_NETWORK_JSON1 $POLAR_NETWORK_JSON2 $VENN_DIAGRAM_SECTOR $OUTPUT_FILE


POLAR_NETWORK_JSON1="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/interaction-footprint-analysis/residue-resolution-evobundle-input/112616/active_receptors_nocutoff/B2AR:active:long-isoform-B2AR-heterotrimeric-Gs:no_ligand:10.0us:with_membrane.json"
POLAR_NETWORK_JSON2="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/interaction-footprint-analysis/residue-resolution-evobundle-input/112616/112616_fig2_intersect/active-only.json"
VENN_DIAGRAM_SECTOR="-intersect1"
OUTPUT_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/interaction-footprint-analysis/residue-resolution-evobundle-input/112616/figure3/active_receptors/B2AR:active:long-isoform-B2AR-heterotrimeric-Gs:no_ligand:10.0us:with_membrane.json"
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/analysis/interaction-footprint-analysis
python venn_diagram_compare_polar_networks.py $POLAR_NETWORK_JSON1 $POLAR_NETWORK_JSON2 $VENN_DIAGRAM_SECTOR $OUTPUT_FILE


POLAR_NETWORK_JSON1="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/interaction-footprint-analysis/residue-resolution-evobundle-input/112616/active_receptors_nocutoff/B2AR:active:short-isoform-B2AR-heterotrimeric-Gs:no_ligand:5us:with_membrane.json"
POLAR_NETWORK_JSON2="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/interaction-footprint-analysis/residue-resolution-evobundle-input/112616/112616_fig2_intersect/active-only.json"
VENN_DIAGRAM_SECTOR="-intersect1"
OUTPUT_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/interaction-footprint-analysis/residue-resolution-evobundle-input/112616/figure3/active_receptors/B2AR:active:short-isoform-B2AR-heterotrimeric-Gs:no_ligand:5us:with_membrane.json"
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/analysis/interaction-footprint-analysis
python venn_diagram_compare_polar_networks.py $POLAR_NETWORK_JSON1 $POLAR_NETWORK_JSON2 $VENN_DIAGRAM_SECTOR $OUTPUT_FILE





# B2AR-active-pnas2011b

POLAR_NETWORK_JSON1="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/interaction-footprint-analysis/residue-resolution-evobundle-input/112616/active_receptors_nocutoff/B2AR:active:agonist-bound-nanobody-complex:3.6us:D70+,D130+,H172+,C341_palm.json"
POLAR_NETWORK_JSON2="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/interaction-footprint-analysis/residue-resolution-evobundle-input/112616/112616_fig2_intersect/active-only.json"
VENN_DIAGRAM_SECTOR="-intersect1"
OUTPUT_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/interaction-footprint-analysis/residue-resolution-evobundle-input/112616/figure3/active_receptors/B2AR:active:agonist-bound-nanobody-complex:3.6us:D70+,D130+,H172+,C341_palm.json"
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/analysis/interaction-footprint-analysis
python venn_diagram_compare_polar_networks.py $POLAR_NETWORK_JSON1 $POLAR_NETWORK_JSON2 $VENN_DIAGRAM_SECTOR $OUTPUT_FILE


POLAR_NETWORK_JSON1="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/interaction-footprint-analysis/residue-resolution-evobundle-input/112616/active_receptors_nocutoff/B2AR:active:agonist-bound-nanobody-complex:6.5us:D70+,D130+,H172+,C341_palm.json"
POLAR_NETWORK_JSON2="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/interaction-footprint-analysis/residue-resolution-evobundle-input/112616/112616_fig2_intersect/active-only.json"
VENN_DIAGRAM_SECTOR="-intersect1"
OUTPUT_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/interaction-footprint-analysis/residue-resolution-evobundle-input/112616/figure3/active_receptors/B2AR:active:agonist-bound-nanobody-complex:6.5us:D70+,D130+,H172+,C341_palm.json"
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/analysis/interaction-footprint-analysis
python venn_diagram_compare_polar_networks.py $POLAR_NETWORK_JSON1 $POLAR_NETWORK_JSON2 $VENN_DIAGRAM_SECTOR $OUTPUT_FILE




# MOR-active-unpublished
POLAR_NETWORK_JSON1="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/interaction-footprint-analysis/residue-resolution-evobundle-input/112616/active_receptors_nocutoff/MOR:active:unpublished-rep_1.json"
POLAR_NETWORK_JSON2="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/interaction-footprint-analysis/residue-resolution-evobundle-input/112616/112616_fig2_intersect/active-only.json"
VENN_DIAGRAM_SECTOR="-intersect1"
OUTPUT_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/interaction-footprint-analysis/residue-resolution-evobundle-input/112616/figure3/active_receptors/MOR:active:unpublished-rep_1.json"
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/analysis/interaction-footprint-analysis
python venn_diagram_compare_polar_networks.py $POLAR_NETWORK_JSON1 $POLAR_NETWORK_JSON2 $VENN_DIAGRAM_SECTOR $OUTPUT_FILE


POLAR_NETWORK_JSON1="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/interaction-footprint-analysis/residue-resolution-evobundle-input/112616/active_receptors_nocutoff/MOR:active:unpublished-rep_2.json"
POLAR_NETWORK_JSON2="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/interaction-footprint-analysis/residue-resolution-evobundle-input/112616/112616_fig2_intersect/active-only.json"
VENN_DIAGRAM_SECTOR="-intersect1"
OUTPUT_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/interaction-footprint-analysis/residue-resolution-evobundle-input/112616/figure3/active_receptors/MOR:active:unpublished-rep_2.json"
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/analysis/interaction-footprint-analysis
python venn_diagram_compare_polar_networks.py $POLAR_NETWORK_JSON1 $POLAR_NETWORK_JSON2 $VENN_DIAGRAM_SECTOR $OUTPUT_FILE


POLAR_NETWORK_JSON1="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/interaction-footprint-analysis/residue-resolution-evobundle-input/112616/active_receptors_nocutoff/MOR:active:unpublished-rep_3.json"
POLAR_NETWORK_JSON2="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/interaction-footprint-analysis/residue-resolution-evobundle-input/112616/112616_fig2_intersect/active-only.json"
VENN_DIAGRAM_SECTOR="-intersect1"
OUTPUT_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/interaction-footprint-analysis/residue-resolution-evobundle-input/112616/figure3/active_receptors/MOR:active:unpublished-rep_3.json"
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/analysis/interaction-footprint-analysis
python venn_diagram_compare_polar_networks.py $POLAR_NETWORK_JSON1 $POLAR_NETWORK_JSON2 $VENN_DIAGRAM_SECTOR $OUTPUT_FILE


# M2R-active-restrained-unpublished

POLAR_NETWORK_JSON1="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/interaction-footprint-analysis/residue-resolution-evobundle-input/112616/active_receptors_nocutoff/M2R:active:restrained:prot:Asp2x50:3x49-rep_1.json"
POLAR_NETWORK_JSON2="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/interaction-footprint-analysis/residue-resolution-evobundle-input/112616/112616_fig2_intersect/active-only.json"
VENN_DIAGRAM_SECTOR="-intersect1"
OUTPUT_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/interaction-footprint-analysis/residue-resolution-evobundle-input/112616/figure3/active_receptors/M2R:active:restrained:prot:Asp2x50:3x49-rep_1.json"
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/analysis/interaction-footprint-analysis
python venn_diagram_compare_polar_networks.py $POLAR_NETWORK_JSON1 $POLAR_NETWORK_JSON2 $VENN_DIAGRAM_SECTOR $OUTPUT_FILE


POLAR_NETWORK_JSON1="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/interaction-footprint-analysis/residue-resolution-evobundle-input/112616/active_receptors_nocutoff/M2R:active:restrained:prot:Asp2x50:3x49-rep_2.json"
POLAR_NETWORK_JSON2="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/interaction-footprint-analysis/residue-resolution-evobundle-input/112616/112616_fig2_intersect/active-only.json"
VENN_DIAGRAM_SECTOR="-intersect1"
OUTPUT_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/interaction-footprint-analysis/residue-resolution-evobundle-input/112616/figure3/active_receptors/M2R:active:restrained:prot:Asp2x50:3x49-rep_2.json"
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/analysis/interaction-footprint-analysis
python venn_diagram_compare_polar_networks.py $POLAR_NETWORK_JSON1 $POLAR_NETWORK_JSON2 $VENN_DIAGRAM_SECTOR $OUTPUT_FILE


POLAR_NETWORK_JSON1="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/interaction-footprint-analysis/residue-resolution-evobundle-input/112616/active_receptors_nocutoff/M2R:active:restrained:prot:Asp2x50:3x49-rep_3.json"
POLAR_NETWORK_JSON2="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/interaction-footprint-analysis/residue-resolution-evobundle-input/112616/112616_fig2_intersect/active-only.json"
VENN_DIAGRAM_SECTOR="-intersect1"
OUTPUT_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/interaction-footprint-analysis/residue-resolution-evobundle-input/112616/figure3/active_receptors/M2R:active:restrained:prot:Asp2x50:3x49-rep_3.json"
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/analysis/interaction-footprint-analysis
python venn_diagram_compare_polar_networks.py $POLAR_NETWORK_JSON1 $POLAR_NETWORK_JSON2 $VENN_DIAGRAM_SECTOR $OUTPUT_FILE


# M2R-active-unrestrained-unpublished
POLAR_NETWORK_JSON1="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/interaction-footprint-analysis/residue-resolution-evobundle-input/112616/active_receptors_nocutoff/M2R:active:unrestrained:prot:Asp2x50:3x49-rep_1.json"
POLAR_NETWORK_JSON2="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/interaction-footprint-analysis/residue-resolution-evobundle-input/112616/112616_fig2_intersect/active-only.json"
VENN_DIAGRAM_SECTOR="-intersect1"
OUTPUT_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/interaction-footprint-analysis/residue-resolution-evobundle-input/112616/figure3/active_receptors/M2R:active:unrestrained:prot:Asp2x50:3x49-rep_1.json"
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/analysis/interaction-footprint-analysis
python venn_diagram_compare_polar_networks.py $POLAR_NETWORK_JSON1 $POLAR_NETWORK_JSON2 $VENN_DIAGRAM_SECTOR $OUTPUT_FILE

POLAR_NETWORK_JSON1="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/interaction-footprint-analysis/residue-resolution-evobundle-input/112616/active_receptors_nocutoff/M2R:active:unrestrained:prot:Asp2x50:3x49-rep_2.json"
POLAR_NETWORK_JSON2="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/interaction-footprint-analysis/residue-resolution-evobundle-input/112616/112616_fig2_intersect/active-only.json"
VENN_DIAGRAM_SECTOR="-intersect1"
OUTPUT_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/interaction-footprint-analysis/residue-resolution-evobundle-input/112616/figure3/active_receptors/M2R:active:unrestrained:prot:Asp2x50:3x49-rep_2.json"
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/analysis/interaction-footprint-analysis
python venn_diagram_compare_polar_networks.py $POLAR_NETWORK_JSON1 $POLAR_NETWORK_JSON2 $VENN_DIAGRAM_SECTOR $OUTPUT_FILE


POLAR_NETWORK_JSON1="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/interaction-footprint-analysis/residue-resolution-evobundle-input/112616/active_receptors_nocutoff/M2R:active:unrestrained:prot:Asp2x50:3x49-rep_3.json"
POLAR_NETWORK_JSON2="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/interaction-footprint-analysis/residue-resolution-evobundle-input/112616/112616_fig2_intersect/active-only.json"
VENN_DIAGRAM_SECTOR="-intersect1"
OUTPUT_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/interaction-footprint-analysis/residue-resolution-evobundle-input/112616/figure3/active_receptors/M2R:active:unrestrained:prot:Asp2x50:3x49-rep_3.json"
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/analysis/interaction-footprint-analysis
python venn_diagram_compare_polar_networks.py $POLAR_NETWORK_JSON1 $POLAR_NETWORK_JSON2 $VENN_DIAGRAM_SECTOR $OUTPUT_FILE


# US28-active-unrestrained-unpublished
POLAR_NETWORK_JSON1="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/interaction-footprint-analysis/residue-resolution-evobundle-input/112616/active_receptors_nocutoff/US28:active:unrestrained-rep_1.json"
POLAR_NETWORK_JSON2="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/interaction-footprint-analysis/residue-resolution-evobundle-input/112616/112616_fig2_intersect/active-only.json"
VENN_DIAGRAM_SECTOR="-intersect1"
OUTPUT_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/interaction-footprint-analysis/residue-resolution-evobundle-input/112616/figure3/active_receptors/US28:active:unrestrained-rep_1.json"
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/analysis/interaction-footprint-analysis
python venn_diagram_compare_polar_networks.py $POLAR_NETWORK_JSON1 $POLAR_NETWORK_JSON2 $VENN_DIAGRAM_SECTOR $OUTPUT_FILE


# POLAR_NETWORK_JSON1="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/interaction-footprint-analysis/residue-resolution-evobundle-input/112616/active_receptors_nocutoff/US28:active:unrestrained-rep_2.json"
# POLAR_NETWORK_JSON2="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/interaction-footprint-analysis/residue-resolution-evobundle-input/112616/112616_fig2_intersect/active-only.json"
# VENN_DIAGRAM_SECTOR="-intersect1"
# OUTPUT_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/interaction-footprint-analysis/residue-resolution-evobundle-input/112616/figure3/active_receptors/US28:active:unrestrained-rep_2.json"
# cd /scratch/PI/rondror/akma327/DynamicNetworks/src/analysis/interaction-footprint-analysis
# python venn_diagram_compare_polar_networks.py $POLAR_NETWORK_JSON1 $POLAR_NETWORK_JSON2 $VENN_DIAGRAM_SECTOR $OUTPUT_FILE


POLAR_NETWORK_JSON1="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/interaction-footprint-analysis/residue-resolution-evobundle-input/112616/active_receptors_nocutoff/US28:active:unrestrained-rep_3.json"
POLAR_NETWORK_JSON2="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/interaction-footprint-analysis/residue-resolution-evobundle-input/112616/112616_fig2_intersect/active-only.json"
VENN_DIAGRAM_SECTOR="-intersect1"
OUTPUT_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/interaction-footprint-analysis/residue-resolution-evobundle-input/112616/figure3/active_receptors/US28:active:unrestrained-rep_3.json"
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/analysis/interaction-footprint-analysis
python venn_diagram_compare_polar_networks.py $POLAR_NETWORK_JSON1 $POLAR_NETWORK_JSON2 $VENN_DIAGRAM_SECTOR $OUTPUT_FILE



# US28-active-restrained-unpublished
POLAR_NETWORK_JSON1="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/interaction-footprint-analysis/residue-resolution-evobundle-input/112616/active_receptors_nocutoff/US28:active:restrained-rep_1.json"
POLAR_NETWORK_JSON2="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/interaction-footprint-analysis/residue-resolution-evobundle-input/112616/112616_fig2_intersect/active-only.json"
VENN_DIAGRAM_SECTOR="-intersect1"
OUTPUT_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/interaction-footprint-analysis/residue-resolution-evobundle-input/112616/figure3/active_receptors/US28:active:restrained-rep_1.json"
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/analysis/interaction-footprint-analysis
python venn_diagram_compare_polar_networks.py $POLAR_NETWORK_JSON1 $POLAR_NETWORK_JSON2 $VENN_DIAGRAM_SECTOR $OUTPUT_FILE


POLAR_NETWORK_JSON1="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/interaction-footprint-analysis/residue-resolution-evobundle-input/112616/active_receptors_nocutoff/US28:active:restrained-rep_2.json"
POLAR_NETWORK_JSON2="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/interaction-footprint-analysis/residue-resolution-evobundle-input/112616/112616_fig2_intersect/active-only.json"
VENN_DIAGRAM_SECTOR="-intersect1"
OUTPUT_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/interaction-footprint-analysis/residue-resolution-evobundle-input/112616/figure3/active_receptors/US28:active:restrained-rep_2.json"
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/analysis/interaction-footprint-analysis
python venn_diagram_compare_polar_networks.py $POLAR_NETWORK_JSON1 $POLAR_NETWORK_JSON2 $VENN_DIAGRAM_SECTOR $OUTPUT_FILE


POLAR_NETWORK_JSON1="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/interaction-footprint-analysis/residue-resolution-evobundle-input/112616/active_receptors_nocutoff/US28:active:restrained-rep_3.json"
POLAR_NETWORK_JSON2="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/interaction-footprint-analysis/residue-resolution-evobundle-input/112616/112616_fig2_intersect/active-only.json"
VENN_DIAGRAM_SECTOR="-intersect1"
OUTPUT_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/interaction-footprint-analysis/residue-resolution-evobundle-input/112616/figure3/active_receptors/US28:active:restrained-rep_3.json"
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/analysis/interaction-footprint-analysis
python venn_diagram_compare_polar_networks.py $POLAR_NETWORK_JSON1 $POLAR_NETWORK_JSON2 $VENN_DIAGRAM_SECTOR $OUTPUT_FILE


# RHO-active-unrestrained-unpublished

POLAR_NETWORK_JSON1="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/interaction-footprint-analysis/residue-resolution-evobundle-input/112616/active_receptors_nocutoff/RHO:active:unrestrained-rep_1.json"
POLAR_NETWORK_JSON2="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/interaction-footprint-analysis/residue-resolution-evobundle-input/112616/112616_fig2_intersect/active-only.json"
VENN_DIAGRAM_SECTOR="-intersect1"
OUTPUT_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/interaction-footprint-analysis/residue-resolution-evobundle-input/112616/figure3/active_receptors/RHO:active:unrestrained-rep_1.json"
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/analysis/interaction-footprint-analysis
python venn_diagram_compare_polar_networks.py $POLAR_NETWORK_JSON1 $POLAR_NETWORK_JSON2 $VENN_DIAGRAM_SECTOR $OUTPUT_FILE


POLAR_NETWORK_JSON1="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/interaction-footprint-analysis/residue-resolution-evobundle-input/112616/active_receptors_nocutoff/RHO:active:unrestrained-rep_2.json"
POLAR_NETWORK_JSON2="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/interaction-footprint-analysis/residue-resolution-evobundle-input/112616/112616_fig2_intersect/active-only.json"
VENN_DIAGRAM_SECTOR="-intersect1"
OUTPUT_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/interaction-footprint-analysis/residue-resolution-evobundle-input/112616/figure3/active_receptors/RHO:active:unrestrained-rep_2.json"
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/analysis/interaction-footprint-analysis
python venn_diagram_compare_polar_networks.py $POLAR_NETWORK_JSON1 $POLAR_NETWORK_JSON2 $VENN_DIAGRAM_SECTOR $OUTPUT_FILE


POLAR_NETWORK_JSON1="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/interaction-footprint-analysis/residue-resolution-evobundle-input/112616/active_receptors_nocutoff/RHO:active:unrestrained-rep_3.json"
POLAR_NETWORK_JSON2="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/interaction-footprint-analysis/residue-resolution-evobundle-input/112616/112616_fig2_intersect/active-only.json"
VENN_DIAGRAM_SECTOR="-intersect1"
OUTPUT_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/interaction-footprint-analysis/residue-resolution-evobundle-input/112616/figure3/active_receptors/RHO:active:unrestrained-rep_3.json"
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/analysis/interaction-footprint-analysis
python venn_diagram_compare_polar_networks.py $POLAR_NETWORK_JSON1 $POLAR_NETWORK_JSON2 $VENN_DIAGRAM_SECTOR $OUTPUT_FILE






