# 032717_MOR_active_crystal_vs_simulation.sh


# Crystal Structure with frequencies

FOOTPRINT_TABLE="/scratch/PI/rondror/akma327/DynamicNetworks/results/non-state-decomposition/residue-resolution-combined-rep/032717_crystal_vs_simulation/MOR_active/crystal/MOR_active_crystal_filtered.txt"
EXP_REP_ID="MOR:active-noNb:BU72-nB_interface_restrained"
OUTPUT_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/interaction-footprint-analysis/residue-resolution-evobundle-input/032717_crystal_vs_simulation/MOR_active/MOR_active_crystal.json"
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/analysis/interaction-footprint-analysis
python footprint_summary_evobundle.py $FOOTPRINT_TABLE $EXP_REP_ID $OUTPUT_FILE -receptor B2AR -no-conserve  -cutoff 0.0 -inter


# Crystal structure with 0.5 frequencies for all - just schematic purpose 


FOOTPRINT_TABLE="/scratch/PI/rondror/akma327/DynamicNetworks/results/non-state-decomposition/residue-resolution-combined-rep/032717_crystal_vs_simulation/MOR_active/crystal/MOR_active_crystal_samefreq_filtered.txt"
EXP_REP_ID="MOR:active-noNb:BU72-nB_interface_restrained"
OUTPUT_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/interaction-footprint-analysis/residue-resolution-evobundle-input/032717_crystal_vs_simulation/MOR_active/MOR_active_crystal_samefreq.json"
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/analysis/interaction-footprint-analysis
python footprint_summary_evobundle.py $FOOTPRINT_TABLE $EXP_REP_ID $OUTPUT_FILE -receptor B2AR -no-conserve  -cutoff 0.0 -inter



# Simulation 

FOOTPRINT_TABLE="/scratch/PI/rondror/akma327/DynamicNetworks/results/non-state-decomposition/residue-resolution-combined-rep/032717_crystal_vs_simulation/MOR_active/simulation/MOR_active_simulation_filtered.txt"
EXP_REP_ID="MOR:active-noNb:BU72-nB_interface_restrained"
OUTPUT_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/interaction-footprint-analysis/residue-resolution-evobundle-input/032717_crystal_vs_simulation/MOR_active/MOR_active_simulation_cutoff_0.json"
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/analysis/interaction-footprint-analysis
python footprint_summary_evobundle.py $FOOTPRINT_TABLE $EXP_REP_ID $OUTPUT_FILE -receptor B2AR -no-conserve  -cutoff 0.0 -inter


FOOTPRINT_TABLE="/scratch/PI/rondror/akma327/DynamicNetworks/results/non-state-decomposition/residue-resolution-combined-rep/032717_crystal_vs_simulation/MOR_active/simulation/MOR_active_simulation_filtered.txt"
EXP_REP_ID="MOR:active-noNb:BU72-nB_interface_restrained"
OUTPUT_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/interaction-footprint-analysis/residue-resolution-evobundle-input/032717_crystal_vs_simulation/MOR_active/MOR_active_simulation_cutoff_25.json"
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/analysis/interaction-footprint-analysis
python footprint_summary_evobundle.py $FOOTPRINT_TABLE $EXP_REP_ID $OUTPUT_FILE -receptor B2AR -no-conserve  -cutoff 0.25 -inter


FOOTPRINT_TABLE="/scratch/PI/rondror/akma327/DynamicNetworks/results/non-state-decomposition/residue-resolution-combined-rep/032717_crystal_vs_simulation/MOR_active/simulation/MOR_active_simulation_filtered.txt"
EXP_REP_ID="MOR:active-noNb:BU72-nB_interface_restrained"
OUTPUT_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/interaction-footprint-analysis/residue-resolution-evobundle-input/032717_crystal_vs_simulation/MOR_active/MOR_active_simulation_cutoff_50.json"
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/analysis/interaction-footprint-analysis
python footprint_summary_evobundle.py $FOOTPRINT_TABLE $EXP_REP_ID $OUTPUT_FILE -receptor B2AR -no-conserve  -cutoff 0.50 -inter


FOOTPRINT_TABLE="/scratch/PI/rondror/akma327/DynamicNetworks/results/non-state-decomposition/residue-resolution-combined-rep/032717_crystal_vs_simulation/MOR_active/simulation/MOR_active_simulation_filtered.txt"
EXP_REP_ID="MOR:active-noNb:BU72-nB_interface_restrained"
OUTPUT_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/interaction-footprint-analysis/residue-resolution-evobundle-input/032717_crystal_vs_simulation/MOR_active/MOR_active_simulation_cutoff_75.json"
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/analysis/interaction-footprint-analysis
python footprint_summary_evobundle.py $FOOTPRINT_TABLE $EXP_REP_ID $OUTPUT_FILE -receptor B2AR -no-conserve  -cutoff 0.75 -inter
