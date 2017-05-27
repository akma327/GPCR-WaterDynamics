# 09/21/16
# Generate flare plots for MOR-active and DOR-inactive with the state decomposed 
# residue resolution tables. Make one set of tables with wb and wb2 separated, 
# and another set where all water bridges are combined. 

# DOR-inactive wb and wb2 separate

FOOTPRINT_TABLE="/scratch/PI/rondror/akma327/DynamicNetworks/results/state-decomposition/residue-resolution/080816/dor_inactive_polar_network/inactive_receptors/inactive_state_decomp_residue_resolution.txt"
EXP_REP_ID="DOR:inactive:naltrindole:3.0us,Inactive"
OUTPUT_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/interaction-footprint-analysis/residue-resolution-evobundle-input/092116/wb_separate/inactive-dor-network/DOR-inactive-naltrindole-unpublished-condition-naltrindole-bound-rep_1.json"
EXP_REP_PDB="4N6H"
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/analysis/interaction-footprint-analysis
python footprint_summary_evobundle.py $FOOTPRINT_TABLE $EXP_REP_ID $OUTPUT_FILE -intra-pdb $EXP_REP_PDB -no-conserve

FOOTPRINT_TABLE="/scratch/PI/rondror/akma327/DynamicNetworks/results/state-decomposition/residue-resolution/080816/dor_inactive_polar_network/inactive_receptors/inactive_state_decomp_residue_resolution.txt"
EXP_REP_ID="DOR:inactive:naltrindole:1.3us,Inactive"
OUTPUT_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/interaction-footprint-analysis/residue-resolution-evobundle-input/092116/wb_separate/inactive-dor-network/DOR-inactive-naltrindole-unpublished-condition-naltrindole-bound-rep_2.json"
EXP_REP_PDB="4N6H"
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/analysis/interaction-footprint-analysis
python footprint_summary_evobundle.py $FOOTPRINT_TABLE $EXP_REP_ID $OUTPUT_FILE -intra-pdb $EXP_REP_PDB -no-conserve

FOOTPRINT_TABLE="/scratch/PI/rondror/akma327/DynamicNetworks/results/state-decomposition/residue-resolution/080816/dor_inactive_polar_network/inactive_receptors/inactive_state_decomp_residue_resolution.txt"
EXP_REP_ID="DOR:inactive:naltrindole:2.0us,Inactive"
OUTPUT_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/interaction-footprint-analysis/residue-resolution-evobundle-input/092116/wb_separate/inactive-dor-network/DOR-inactive-naltrindole-unpublished-condition-naltrindole-bound-rep_3.json"
EXP_REP_PDB="4N6H"
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/analysis/interaction-footprint-analysis
python footprint_summary_evobundle.py $FOOTPRINT_TABLE $EXP_REP_ID $OUTPUT_FILE -intra-pdb $EXP_REP_PDB -no-conserve



# DOR-inactive wb and wb2 combined

FOOTPRINT_TABLE="/scratch/PI/rondror/akma327/DynamicNetworks/results/state-decomposition/residue-resolution/inactive_state_decomp_residue_resolution.txt"
EXP_REP_ID="DOR:inactive:naltrindole:3.0us,Inactive"
OUTPUT_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/interaction-footprint-analysis/residue-resolution-evobundle-input/092116/wb_combined/inactive-dor-network/DOR-inactive-naltrindole-unpublished-condition-naltrindole-bound-rep_1.json"
EXP_REP_PDB="4N6H"
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/analysis/interaction-footprint-analysis
python footprint_summary_evobundle.py $FOOTPRINT_TABLE $EXP_REP_ID $OUTPUT_FILE -intra-pdb $EXP_REP_PDB -no-conserve

FOOTPRINT_TABLE="/scratch/PI/rondror/akma327/DynamicNetworks/results/state-decomposition/residue-resolution/inactive_state_decomp_residue_resolution.txt"
EXP_REP_ID="DOR:inactive:naltrindole:1.3us,Inactive"
OUTPUT_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/interaction-footprint-analysis/residue-resolution-evobundle-input/092116/wb_combined/inactive-dor-network/DOR-inactive-naltrindole-unpublished-condition-naltrindole-bound-rep_2.json"
EXP_REP_PDB="4N6H"
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/analysis/interaction-footprint-analysis
python footprint_summary_evobundle.py $FOOTPRINT_TABLE $EXP_REP_ID $OUTPUT_FILE -intra-pdb $EXP_REP_PDB -no-conserve

FOOTPRINT_TABLE="/scratch/PI/rondror/akma327/DynamicNetworks/results/state-decomposition/residue-resolution/inactive_state_decomp_residue_resolution.txt"
EXP_REP_ID="DOR:inactive:naltrindole:2.0us,Inactive"
OUTPUT_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/interaction-footprint-analysis/residue-resolution-evobundle-input/092116/wb_combined/inactive-dor-network/DOR-inactive-naltrindole-unpublished-condition-naltrindole-bound-rep_3.json"
EXP_REP_PDB="4N6H"
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/analysis/interaction-footprint-analysis
python footprint_summary_evobundle.py $FOOTPRINT_TABLE $EXP_REP_ID $OUTPUT_FILE -intra-pdb $EXP_REP_PDB -no-conserve



# MOR-active wb and wb2 separate

FOOTPRINT_TABLE="/scratch/PI/rondror/akma327/DynamicNetworks/results/state-decomposition/residue-resolution/080816/mor_active_polar_network/active_receptors/active_state_decomp_residue_resolution.txt"
EXP_REP_ID="MOR:active-noNb:BU72-nB_interface_restrained:3.0us,Active"
OUTPUT_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/interaction-footprint-analysis/residue-resolution-evobundle-input/092116/wb_separate/active-mor-network/MOR-active-noNb-BU72-nature2015-rep_1.json"
EXP_REP_PDB="5C1M"
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/analysis/interaction-footprint-analysis
python footprint_summary_evobundle.py $FOOTPRINT_TABLE $EXP_REP_ID $OUTPUT_FILE -intra-pdb $EXP_REP_PDB -no-conserve

FOOTPRINT_TABLE="/scratch/PI/rondror/akma327/DynamicNetworks/results/state-decomposition/residue-resolution/080816/mor_active_polar_network/active_receptors/active_state_decomp_residue_resolution.txt"
EXP_REP_ID="MOR:active-noNb:BU72-nB_interface_restrained:2.7us,Active"
OUTPUT_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/interaction-footprint-analysis/residue-resolution-evobundle-input/092116/wb_separate/active-mor-network/MOR-active-noNb-BU72-nature2015-rep_2.json"
EXP_REP_PDB="5C1M"
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/analysis/interaction-footprint-analysis
python footprint_summary_evobundle.py $FOOTPRINT_TABLE $EXP_REP_ID $OUTPUT_FILE -intra-pdb $EXP_REP_PDB -no-conserve

FOOTPRINT_TABLE="/scratch/PI/rondror/akma327/DynamicNetworks/results/state-decomposition/residue-resolution/080816/mor_active_polar_network/active_receptors/active_state_decomp_residue_resolution.txt"
EXP_REP_ID="MOR:active-noNb:BU72-nB_interface_restrained:2.9us,Active"
OUTPUT_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/interaction-footprint-analysis/residue-resolution-evobundle-input/092116/wb_separate/active-mor-network/MOR-active-noNb-BU72-nature2015-rep_3.json"
EXP_REP_PDB="5C1M"
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/analysis/interaction-footprint-analysis
python footprint_summary_evobundle.py $FOOTPRINT_TABLE $EXP_REP_ID $OUTPUT_FILE -intra-pdb $EXP_REP_PDB -no-conserve

# MOR-active wb combined

FOOTPRINT_TABLE="/scratch/PI/rondror/akma327/DynamicNetworks/results/state-decomposition/residue-resolution/active_state_decomp_residue_resolution.txt"
EXP_REP_ID="MOR:active-noNb:BU72-nB_interface_restrained:3.0us,Active"
OUTPUT_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/interaction-footprint-analysis/residue-resolution-evobundle-input/092116/wb_combined/active-mor-network/MOR-active-noNb-BU72-nature2015-rep_1.json"
EXP_REP_PDB="5C1M"
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/analysis/interaction-footprint-analysis
python footprint_summary_evobundle.py $FOOTPRINT_TABLE $EXP_REP_ID $OUTPUT_FILE -intra-pdb $EXP_REP_PDB -no-conserve

FOOTPRINT_TABLE="/scratch/PI/rondror/akma327/DynamicNetworks/results/state-decomposition/residue-resolution/active_state_decomp_residue_resolution.txt"
EXP_REP_ID="MOR:active-noNb:BU72-nB_interface_restrained:2.7us,Active"
OUTPUT_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/interaction-footprint-analysis/residue-resolution-evobundle-input/092116/wb_combined/active-mor-network/MOR-active-noNb-BU72-nature2015-rep_2.json"
EXP_REP_PDB="5C1M"
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/analysis/interaction-footprint-analysis
python footprint_summary_evobundle.py $FOOTPRINT_TABLE $EXP_REP_ID $OUTPUT_FILE -intra-pdb $EXP_REP_PDB -no-conserve

FOOTPRINT_TABLE="/scratch/PI/rondror/akma327/DynamicNetworks/results/state-decomposition/residue-resolution/active_state_decomp_residue_resolution.txt"
EXP_REP_ID="MOR:active-noNb:BU72-nB_interface_restrained:2.9us,Active"
OUTPUT_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/interaction-footprint-analysis/residue-resolution-evobundle-input/092116/wb_combined/active-mor-network/MOR-active-noNb-BU72-nature2015-rep_3.json"
EXP_REP_PDB="5C1M"
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/analysis/interaction-footprint-analysis
python footprint_summary_evobundle.py $FOOTPRINT_TABLE $EXP_REP_ID $OUTPUT_FILE -intra-pdb $EXP_REP_PDB -no-conserve

