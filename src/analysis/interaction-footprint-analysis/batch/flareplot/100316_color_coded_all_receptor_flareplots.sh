# Generate individual flare plots for all inactive and active experiement 
# conditions. Color coded by receptor. Will have to manually adjust "wb_combined"
# colors in utils.py for footprint_summary_evobundle.py

# Inactive

# B2AR-inactive
FOOTPRINT_TABLE="/scratch/PI/rondror/akma327/DynamicNetworks/results/state-decomposition/residue-resolution/100316_state_decomp_union_wb_freq/dor_inactive_polar_network/inactive_receptors/inactive_state_decomp_residue_resolution.txt"	
EXP_REP_ID="B2AR:inactive:carazalol:10us:D79-,D130-,Inactive"
OUTPUT_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/interaction-footprint-analysis/residue-resolution-evobundle-input/100316/wb_combined/inactive-dor-network/B2AR:inactive:carazalol:10us:D79-,D130-,Inactive.json"
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/analysis/interaction-footprint-analysis
python footprint_summary_evobundle.py $FOOTPRINT_TABLE $EXP_REP_ID $OUTPUT_FILE -no-conserve

# D4R-inactive
FOOTPRINT_TABLE="/scratch/PI/rondror/akma327/DynamicNetworks/results/state-decomposition/residue-resolution/100316_state_decomp_union_wb_freq/dor_inactive_polar_network/inactive_receptors/inactive_state_decomp_residue_resolution.txt"	
EXP_REP_ID="D4R:inactive:nemanopride:deprotonated:1.3us"
OUTPUT_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/interaction-footprint-analysis/residue-resolution-evobundle-input/100316/wb_combined/inactive-dor-network/D4R:inactive:nemanopride:deprotonated:1.3us.json"
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/analysis/interaction-footprint-analysis
python footprint_summary_evobundle.py $FOOTPRINT_TABLE $EXP_REP_ID $OUTPUT_FILE -no-conserve

FOOTPRINT_TABLE="/scratch/PI/rondror/akma327/DynamicNetworks/results/state-decomposition/residue-resolution/100316_state_decomp_union_wb_freq/dor_inactive_polar_network/inactive_receptors/inactive_state_decomp_residue_resolution.txt"	
EXP_REP_ID="D4R:inactive:nemanopride:deprotonated:1.5us"
OUTPUT_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/interaction-footprint-analysis/residue-resolution-evobundle-input/100316/wb_combined/inactive-dor-network/D4R:inactive:nemanopride:deprotonated:1.5us.json"
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/analysis/interaction-footprint-analysis
python footprint_summary_evobundle.py $FOOTPRINT_TABLE $EXP_REP_ID $OUTPUT_FILE -no-conserve

FOOTPRINT_TABLE="/scratch/PI/rondror/akma327/DynamicNetworks/results/state-decomposition/residue-resolution/100316_state_decomp_union_wb_freq/dor_inactive_polar_network/inactive_receptors/inactive_state_decomp_residue_resolution.txt"	
EXP_REP_ID="D4R:inactive:nemanopride:deprotonated:1.50us"
OUTPUT_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/interaction-footprint-analysis/residue-resolution-evobundle-input/100316/wb_combined/inactive-dor-network/D4R:inactive:nemanopride:deprotonated:1.50us.json"
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/analysis/interaction-footprint-analysis
python footprint_summary_evobundle.py $FOOTPRINT_TABLE $EXP_REP_ID $OUTPUT_FILE -no-conserve


# M2R-inactive

FOOTPRINT_TABLE="/scratch/PI/rondror/akma327/DynamicNetworks/results/state-decomposition/residue-resolution/100316_state_decomp_union_wb_freq/dor_inactive_polar_network/inactive_receptors/inactive_state_decomp_residue_resolution.txt"	
EXP_REP_ID="M2R:inactive:QNB-orthosteric:16.4us"
OUTPUT_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/interaction-footprint-analysis/residue-resolution-evobundle-input/100316/wb_combined/inactive-dor-network/M2R:inactive:QNB-orthosteric:16.4us.json"
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/analysis/interaction-footprint-analysis
python footprint_summary_evobundle.py $FOOTPRINT_TABLE $EXP_REP_ID $OUTPUT_FILE -no-conserve

FOOTPRINT_TABLE="/scratch/PI/rondror/akma327/DynamicNetworks/results/state-decomposition/residue-resolution/100316_state_decomp_union_wb_freq/dor_inactive_polar_network/inactive_receptors/inactive_state_decomp_residue_resolution.txt"	
EXP_REP_ID="M2R:inactive:QNB-orthosteric-no-allosteric:10us"
OUTPUT_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/interaction-footprint-analysis/residue-resolution-evobundle-input/100316/wb_combined/inactive-dor-network/M2R:inactive:QNB-orthosteric-no-allosteric:10us.json"
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/analysis/interaction-footprint-analysis
python footprint_summary_evobundle.py $FOOTPRINT_TABLE $EXP_REP_ID $OUTPUT_FILE -no-conserve

# MOR-inactive

FOOTPRINT_TABLE="/scratch/PI/rondror/akma327/DynamicNetworks/results/state-decomposition/residue-resolution/100316_state_decomp_union_wb_freq/dor_inactive_polar_network/inactive_receptors/inactive_state_decomp_residue_resolution.txt"	
EXP_REP_ID="MOR:inactive:bFNA-antagonist-bound_to_K233:1.21us"
OUTPUT_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/interaction-footprint-analysis/residue-resolution-evobundle-input/100316/wb_combined/inactive-dor-network/MOR:inactive:bFNA-antagonist-bound_to_K233:1.21us.json"
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/analysis/interaction-footprint-analysis
python footprint_summary_evobundle.py $FOOTPRINT_TABLE $EXP_REP_ID $OUTPUT_FILE -no-conserve

FOOTPRINT_TABLE="/scratch/PI/rondror/akma327/DynamicNetworks/results/state-decomposition/residue-resolution/100316_state_decomp_union_wb_freq/dor_inactive_polar_network/inactive_receptors/inactive_state_decomp_residue_resolution.txt"	
EXP_REP_ID="MOR:inactive:bFNA-antagonist-bound_to_K233:1.42us"
OUTPUT_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/interaction-footprint-analysis/residue-resolution-evobundle-input/100316/wb_combined/inactive-dor-network/MOR:inactive:bFNA-antagonist-bound_to_K233:1.42us.json"
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/analysis/interaction-footprint-analysis
python footprint_summary_evobundle.py $FOOTPRINT_TABLE $EXP_REP_ID $OUTPUT_FILE -no-conserve


FOOTPRINT_TABLE="/scratch/PI/rondror/akma327/DynamicNetworks/results/state-decomposition/residue-resolution/100316_state_decomp_union_wb_freq/dor_inactive_polar_network/inactive_receptors/inactive_state_decomp_residue_resolution.txt"	
EXP_REP_ID="MOR:inactive:bFNA-antagonist-bound_to_K233:0.63us"
OUTPUT_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/interaction-footprint-analysis/residue-resolution-evobundle-input/100316/wb_combined/inactive-dor-network/MOR:inactive:bFNA-antagonist-bound_to_K233:0.63us.json"
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/analysis/interaction-footprint-analysis
python footprint_summary_evobundle.py $FOOTPRINT_TABLE $EXP_REP_ID $OUTPUT_FILE -no-conserve


# DOR-inactive

FOOTPRINT_TABLE="/scratch/PI/rondror/akma327/DynamicNetworks/results/state-decomposition/residue-resolution/100316_state_decomp_union_wb_freq/dor_inactive_polar_network/inactive_receptors/inactive_state_decomp_residue_resolution.txt"	
EXP_REP_ID="DOR:inactive:naltrindole:3.0us"
OUTPUT_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/interaction-footprint-analysis/residue-resolution-evobundle-input/100316/wb_combined/inactive-dor-network/DOR:inactive:naltrindole:3.0us.json"
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/analysis/interaction-footprint-analysis
python footprint_summary_evobundle.py $FOOTPRINT_TABLE $EXP_REP_ID $OUTPUT_FILE -no-conserve

FOOTPRINT_TABLE="/scratch/PI/rondror/akma327/DynamicNetworks/results/state-decomposition/residue-resolution/100316_state_decomp_union_wb_freq/dor_inactive_polar_network/inactive_receptors/inactive_state_decomp_residue_resolution.txt"	
EXP_REP_ID="DOR:inactive:naltrindole:1.3us"
OUTPUT_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/interaction-footprint-analysis/residue-resolution-evobundle-input/100316/wb_combined/inactive-dor-network/DOR:inactive:naltrindole:1.3us.json"
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/analysis/interaction-footprint-analysis
python footprint_summary_evobundle.py $FOOTPRINT_TABLE $EXP_REP_ID $OUTPUT_FILE -no-conserve


FOOTPRINT_TABLE="/scratch/PI/rondror/akma327/DynamicNetworks/results/state-decomposition/residue-resolution/100316_state_decomp_union_wb_freq/dor_inactive_polar_network/inactive_receptors/inactive_state_decomp_residue_resolution.txt"	
EXP_REP_ID="DOR:inactive:naltrindole:2.0us"
OUTPUT_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/interaction-footprint-analysis/residue-resolution-evobundle-input/100316/wb_combined/inactive-dor-network/DOR:inactive:naltrindole:2.0us.json"
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/analysis/interaction-footprint-analysis
python footprint_summary_evobundle.py $FOOTPRINT_TABLE $EXP_REP_ID $OUTPUT_FILE -no-conserve



# Active

# MOR-active

FOOTPRINT_TABLE="/scratch/PI/rondror/akma327/DynamicNetworks/results/state-decomposition/residue-resolution/100316_state_decomp_union_wb_freq/mor_active_polar_network/active_receptors/active_state_decomp_residue_resolution.txt"	
EXP_REP_ID="MOR:active-noNb:BU72-nB_interface_restrained:3.0us"
OUTPUT_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/interaction-footprint-analysis/residue-resolution-evobundle-input/100316/wb_combined/active-mor-network/MOR:active-noNb:BU72-nB_interface_restrained:3.0us.json"
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/analysis/interaction-footprint-analysis
python footprint_summary_evobundle.py $FOOTPRINT_TABLE $EXP_REP_ID $OUTPUT_FILE -no-conserve

FOOTPRINT_TABLE="/scratch/PI/rondror/akma327/DynamicNetworks/results/state-decomposition/residue-resolution/100316_state_decomp_union_wb_freq/mor_active_polar_network/active_receptors/active_state_decomp_residue_resolution.txt"	
EXP_REP_ID="MOR:active-noNb:BU72-nB_interface_restrained:2.7us"
OUTPUT_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/interaction-footprint-analysis/residue-resolution-evobundle-input/100316/wb_combined/active-mor-network/MOR:active-noNb:BU72-nB_interface_restrained:2.7us.json"
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/analysis/interaction-footprint-analysis
python footprint_summary_evobundle.py $FOOTPRINT_TABLE $EXP_REP_ID $OUTPUT_FILE -no-conserve


FOOTPRINT_TABLE="/scratch/PI/rondror/akma327/DynamicNetworks/results/state-decomposition/residue-resolution/100316_state_decomp_union_wb_freq/mor_active_polar_network/active_receptors/active_state_decomp_residue_resolution.txt"	
EXP_REP_ID="MOR:active-noNb:BU72-nB_interface_restrained:2.9us"
OUTPUT_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/interaction-footprint-analysis/residue-resolution-evobundle-input/100316/wb_combined/active-mor-network/MOR:active-noNb:BU72-nB_interface_restrained:2.9us.json"
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/analysis/interaction-footprint-analysis
python footprint_summary_evobundle.py $FOOTPRINT_TABLE $EXP_REP_ID $OUTPUT_FILE -no-conserve


# B2AR-active-Gs-science2015

FOOTPRINT_TABLE="/scratch/PI/rondror/akma327/DynamicNetworks/results/state-decomposition/residue-resolution/100316_state_decomp_union_wb_freq/mor_active_polar_network/active_receptors/active_state_decomp_residue_resolution.txt"	
EXP_REP_ID="B2AR:active:long-isoform-B2AR-heterotrimeric-Gs:no_ligand:50us:with_membrane"
OUTPUT_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/interaction-footprint-analysis/residue-resolution-evobundle-input/100316/wb_combined/active-mor-network/B2AR:active:long-isoform-B2AR-heterotrimeric-Gs:no_ligand:50us:with_membrane.json"
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/analysis/interaction-footprint-analysis
python footprint_summary_evobundle.py $FOOTPRINT_TABLE $EXP_REP_ID $OUTPUT_FILE -no-conserve

FOOTPRINT_TABLE="/scratch/PI/rondror/akma327/DynamicNetworks/results/state-decomposition/residue-resolution/100316_state_decomp_union_wb_freq/mor_active_polar_network/active_receptors/active_state_decomp_residue_resolution.txt"	
EXP_REP_ID="B2AR:active:long-isoform-B2AR-heterotrimeric-Gs:no_ligand:10us:with_membrane"
OUTPUT_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/interaction-footprint-analysis/residue-resolution-evobundle-input/100316/wb_combined/active-mor-network/B2AR:active:long-isoform-B2AR-heterotrimeric-Gs:no_ligand:10us:with_membrane.json"
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/analysis/interaction-footprint-analysis
python footprint_summary_evobundle.py $FOOTPRINT_TABLE $EXP_REP_ID $OUTPUT_FILE -no-conserve

FOOTPRINT_TABLE="/scratch/PI/rondror/akma327/DynamicNetworks/results/state-decomposition/residue-resolution/100316_state_decomp_union_wb_freq/mor_active_polar_network/active_receptors/active_state_decomp_residue_resolution.txt"	
EXP_REP_ID="B2AR:active:long-isoform-B2AR-heterotrimeric-Gs:no_ligand:10.0us:with_membrane"
OUTPUT_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/interaction-footprint-analysis/residue-resolution-evobundle-input/100316/wb_combined/active-mor-network/B2AR:active:long-isoform-B2AR-heterotrimeric-Gs:no_ligand:10.0us:with_membrane.json"
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/analysis/interaction-footprint-analysis
python footprint_summary_evobundle.py $FOOTPRINT_TABLE $EXP_REP_ID $OUTPUT_FILE -no-conserve


FOOTPRINT_TABLE="/scratch/PI/rondror/akma327/DynamicNetworks/results/state-decomposition/residue-resolution/100316_state_decomp_union_wb_freq/mor_active_polar_network/active_receptors/active_state_decomp_residue_resolution.txt"	
EXP_REP_ID="B2AR:active:short-isoform-B2AR-heterotrimeric-Gs:no_ligand:5us:with_membrane"
OUTPUT_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/interaction-footprint-analysis/residue-resolution-evobundle-input/100316/wb_combined/active-mor-network/B2AR:active:short-isoform-B2AR-heterotrimeric-Gs:no_ligand:5us:with_membrane.json"
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/analysis/interaction-footprint-analysis
python footprint_summary_evobundle.py $FOOTPRINT_TABLE $EXP_REP_ID $OUTPUT_FILE -no-conserve


# B2AR-active-pnas2011b

FOOTPRINT_TABLE="/scratch/PI/rondror/akma327/DynamicNetworks/results/state-decomposition/residue-resolution/100316_state_decomp_union_wb_freq/mor_active_polar_network/active_receptors/active_state_decomp_residue_resolution.txt"	
EXP_REP_ID="B2AR:active:agonist-bound-nanobody-complex:3.6us:D70+,D130+,H172+,C341_palm"
OUTPUT_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/interaction-footprint-analysis/residue-resolution-evobundle-input/100316/wb_combined/active-mor-network/B2AR:active:agonist-bound-nanobody-complex:3.6us:D70+,D130+,H172+,C341_palm.json"
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/analysis/interaction-footprint-analysis
python footprint_summary_evobundle.py $FOOTPRINT_TABLE $EXP_REP_ID $OUTPUT_FILE -no-conserve


FOOTPRINT_TABLE="/scratch/PI/rondror/akma327/DynamicNetworks/results/state-decomposition/residue-resolution/100316_state_decomp_union_wb_freq/mor_active_polar_network/active_receptors/active_state_decomp_residue_resolution.txt"	
EXP_REP_ID="B2AR:active:agonist-bound-nanobody-complex:6.5us:D70+,D130+,H172+,C341_palm"
OUTPUT_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/interaction-footprint-analysis/residue-resolution-evobundle-input/100316/wb_combined/active-mor-network/B2AR:active:agonist-bound-nanobody-complex:6.5us:D70+,D130+,H172+,C341_palm.json"
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/analysis/interaction-footprint-analysis
python footprint_summary_evobundle.py $FOOTPRINT_TABLE $EXP_REP_ID $OUTPUT_FILE -no-conserve




