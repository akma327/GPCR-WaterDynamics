# 032917_venn_diagram_flareplot_crystal_vs_simulation.sh


# MOR INACTIVE ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

# Crystal Structure with frequencies

FOOTPRINT_TABLE="/scratch/PI/rondror/akma327/DynamicNetworks/results/non-state-decomposition/residue-resolution-combined-rep/032717_crystal_vs_simulation/MOR_inactive/crystal/MOR_inactive_crystal_filtered.txt"
EXP_REP_ID="MOR:inactive:bFNA-antagonist-bound_to_K233"
OUTPUT_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/interaction-footprint-analysis/residue-resolution-evobundle-input/032717_crystal_vs_simulation/MOR_inactive/MOR_inactive_crystal.json"
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/analysis/interaction-footprint-analysis
python footprint_summary_evobundle.py $FOOTPRINT_TABLE $EXP_REP_ID $OUTPUT_FILE -receptor B2AR -no-conserve  -cutoff 0.0 -inter


# Crystal structure with 0.5 frequencies for all - just schematic purpose 


FOOTPRINT_TABLE="/scratch/PI/rondror/akma327/DynamicNetworks/results/non-state-decomposition/residue-resolution-combined-rep/032717_crystal_vs_simulation/MOR_inactive/crystal/MOR_inactive_crystal_samefreq_filtered.txt"
EXP_REP_ID="MOR:inactive:bFNA-antagonist-bound_to_K233"
OUTPUT_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/interaction-footprint-analysis/residue-resolution-evobundle-input/032717_crystal_vs_simulation/MOR_inactive/MOR_inactive_crystal_samefreq.json"
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/analysis/interaction-footprint-analysis
python footprint_summary_evobundle.py $FOOTPRINT_TABLE $EXP_REP_ID $OUTPUT_FILE -receptor B2AR -no-conserve  -cutoff 0.0 -inter



# Simulation 

FOOTPRINT_TABLE="/scratch/PI/rondror/akma327/DynamicNetworks/results/non-state-decomposition/residue-resolution-combined-rep/032717_crystal_vs_simulation/MOR_inactive/simulation/MOR_inactive_simulation_filtered.txt"
EXP_REP_ID="MOR:inactive:bFNA-antagonist-bound_to_K233"
OUTPUT_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/interaction-footprint-analysis/residue-resolution-evobundle-input/032717_crystal_vs_simulation/MOR_inactive/MOR_inactive_simulation_cutoff_0.json"
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/analysis/interaction-footprint-analysis
python footprint_summary_evobundle.py $FOOTPRINT_TABLE $EXP_REP_ID $OUTPUT_FILE -receptor B2AR -no-conserve  -cutoff 0.0 -inter


FOOTPRINT_TABLE="/scratch/PI/rondror/akma327/DynamicNetworks/results/non-state-decomposition/residue-resolution-combined-rep/032717_crystal_vs_simulation/MOR_inactive/simulation/MOR_inactive_simulation_filtered.txt"
EXP_REP_ID="MOR:inactive:bFNA-antagonist-bound_to_K233"
OUTPUT_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/interaction-footprint-analysis/residue-resolution-evobundle-input/032717_crystal_vs_simulation/MOR_inactive/MOR_inactive_simulation_cutoff_25.json"
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/analysis/interaction-footprint-analysis
python footprint_summary_evobundle.py $FOOTPRINT_TABLE $EXP_REP_ID $OUTPUT_FILE -receptor B2AR -no-conserve  -cutoff 0.25 -inter


FOOTPRINT_TABLE="/scratch/PI/rondror/akma327/DynamicNetworks/results/non-state-decomposition/residue-resolution-combined-rep/032717_crystal_vs_simulation/MOR_inactive/simulation/MOR_inactive_simulation_filtered.txt"
EXP_REP_ID="MOR:inactive:bFNA-antagonist-bound_to_K233"
OUTPUT_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/interaction-footprint-analysis/residue-resolution-evobundle-input/032717_crystal_vs_simulation/MOR_inactive/MOR_inactive_simulation_cutoff_50.json"
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/analysis/interaction-footprint-analysis
python footprint_summary_evobundle.py $FOOTPRINT_TABLE $EXP_REP_ID $OUTPUT_FILE -receptor B2AR -no-conserve  -cutoff 0.50 -inter


FOOTPRINT_TABLE="/scratch/PI/rondror/akma327/DynamicNetworks/results/non-state-decomposition/residue-resolution-combined-rep/032717_crystal_vs_simulation/MOR_inactive/simulation/MOR_inactive_simulation_filtered.txt"
EXP_REP_ID="MOR:inactive:bFNA-antagonist-bound_to_K233"
OUTPUT_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/interaction-footprint-analysis/residue-resolution-evobundle-input/032717_crystal_vs_simulation/MOR_inactive/MOR_inactive_simulation_cutoff_75.json"
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/analysis/interaction-footprint-analysis
python footprint_summary_evobundle.py $FOOTPRINT_TABLE $EXP_REP_ID $OUTPUT_FILE -receptor B2AR -no-conserve  -cutoff 0.75 -inter



### GENERATE VENN DIAGRAM FLAREPLOTS


# Show all three colors for crystal vs simulation (magenta, orange, and cyan)
POLAR_NETWORK_JSON1="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/interaction-footprint-analysis/residue-resolution-evobundle-input/032717_crystal_vs_simulation/MOR_inactive/MOR_inactive_crystal.json"
POLAR_NETWORK_JSON2="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/interaction-footprint-analysis/residue-resolution-evobundle-input/032717_crystal_vs_simulation/MOR_inactive/MOR_inactive_simulation_cutoff_0.json"
OUTPUT_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/interaction-footprint-analysis/residue-resolution-evobundle-input/032717_crystal_vs_simulation/MOR_inactive/venn_diagram/crys_and_sim/MOR_inactive_crystal_vs_simulation_cutoff_0.json"
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/analysis/interaction-footprint-analysis
python venn_diagram_flareplot.py $POLAR_NETWORK_JSON1 $POLAR_NETWORK_JSON2 $OUTPUT_FILE



POLAR_NETWORK_JSON1="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/interaction-footprint-analysis/residue-resolution-evobundle-input/032717_crystal_vs_simulation/MOR_inactive/MOR_inactive_crystal.json"
POLAR_NETWORK_JSON2="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/interaction-footprint-analysis/residue-resolution-evobundle-input/032717_crystal_vs_simulation/MOR_inactive/MOR_inactive_simulation_cutoff_25.json"
OUTPUT_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/interaction-footprint-analysis/residue-resolution-evobundle-input/032717_crystal_vs_simulation/MOR_inactive/venn_diagram/crys_and_sim/MOR_inactive_crystal_vs_simulation_cutoff_25.json"
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/analysis/interaction-footprint-analysis
python venn_diagram_flareplot.py $POLAR_NETWORK_JSON1 $POLAR_NETWORK_JSON2 $OUTPUT_FILE



POLAR_NETWORK_JSON1="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/interaction-footprint-analysis/residue-resolution-evobundle-input/032717_crystal_vs_simulation/MOR_inactive/MOR_inactive_crystal.json"
POLAR_NETWORK_JSON2="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/interaction-footprint-analysis/residue-resolution-evobundle-input/032717_crystal_vs_simulation/MOR_inactive/MOR_inactive_simulation_cutoff_50.json"
OUTPUT_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/interaction-footprint-analysis/residue-resolution-evobundle-input/032717_crystal_vs_simulation/MOR_inactive/venn_diagram/crys_and_sim/MOR_inactive_crystal_vs_simulation_cutoff_50.json"
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/analysis/interaction-footprint-analysis
python venn_diagram_flareplot.py $POLAR_NETWORK_JSON1 $POLAR_NETWORK_JSON2 $OUTPUT_FILE



POLAR_NETWORK_JSON1="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/interaction-footprint-analysis/residue-resolution-evobundle-input/032717_crystal_vs_simulation/MOR_inactive/MOR_inactive_crystal.json"
POLAR_NETWORK_JSON2="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/interaction-footprint-analysis/residue-resolution-evobundle-input/032717_crystal_vs_simulation/MOR_inactive/MOR_inactive_simulation_cutoff_75.json"
OUTPUT_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/interaction-footprint-analysis/residue-resolution-evobundle-input/032717_crystal_vs_simulation/MOR_inactive/venn_diagram/crys_and_sim/MOR_inactive_crystal_vs_simulation_cutoff_75.json"
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/analysis/interaction-footprint-analysis
python venn_diagram_flareplot.py $POLAR_NETWORK_JSON1 $POLAR_NETWORK_JSON2 $OUTPUT_FILE

# Show only colors for crystal (magenta, orange)

POLAR_NETWORK_JSON1="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/interaction-footprint-analysis/residue-resolution-evobundle-input/032717_crystal_vs_simulation/MOR_inactive/MOR_inactive_crystal.json"
POLAR_NETWORK_JSON2="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/interaction-footprint-analysis/residue-resolution-evobundle-input/032717_crystal_vs_simulation/MOR_inactive/MOR_inactive_simulation_cutoff_0.json"
OUTPUT_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/interaction-footprint-analysis/residue-resolution-evobundle-input/032717_crystal_vs_simulation/MOR_inactive/venn_diagram/crys_only/MOR_inactive_crystal_cutoff_0.json"
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/analysis/interaction-footprint-analysis
python venn_diagram_flareplot.py $POLAR_NETWORK_JSON1 $POLAR_NETWORK_JSON2 $OUTPUT_FILE -crys



POLAR_NETWORK_JSON1="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/interaction-footprint-analysis/residue-resolution-evobundle-input/032717_crystal_vs_simulation/MOR_inactive/MOR_inactive_crystal.json"
POLAR_NETWORK_JSON2="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/interaction-footprint-analysis/residue-resolution-evobundle-input/032717_crystal_vs_simulation/MOR_inactive/MOR_inactive_simulation_cutoff_25.json"
OUTPUT_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/interaction-footprint-analysis/residue-resolution-evobundle-input/032717_crystal_vs_simulation/MOR_inactive/venn_diagram/crys_only/MOR_inactive_crystal_cutoff_25.json"
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/analysis/interaction-footprint-analysis
python venn_diagram_flareplot.py $POLAR_NETWORK_JSON1 $POLAR_NETWORK_JSON2 $OUTPUT_FILE -crys



POLAR_NETWORK_JSON1="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/interaction-footprint-analysis/residue-resolution-evobundle-input/032717_crystal_vs_simulation/MOR_inactive/MOR_inactive_crystal.json"
POLAR_NETWORK_JSON2="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/interaction-footprint-analysis/residue-resolution-evobundle-input/032717_crystal_vs_simulation/MOR_inactive/MOR_inactive_simulation_cutoff_50.json"
OUTPUT_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/interaction-footprint-analysis/residue-resolution-evobundle-input/032717_crystal_vs_simulation/MOR_inactive/venn_diagram/crys_only/MOR_inactive_crystal_cutoff_50.json"
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/analysis/interaction-footprint-analysis
python venn_diagram_flareplot.py $POLAR_NETWORK_JSON1 $POLAR_NETWORK_JSON2 $OUTPUT_FILE -crys



POLAR_NETWORK_JSON1="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/interaction-footprint-analysis/residue-resolution-evobundle-input/032717_crystal_vs_simulation/MOR_inactive/MOR_inactive_crystal.json"
POLAR_NETWORK_JSON2="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/interaction-footprint-analysis/residue-resolution-evobundle-input/032717_crystal_vs_simulation/MOR_inactive/MOR_inactive_simulation_cutoff_75.json"
OUTPUT_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/interaction-footprint-analysis/residue-resolution-evobundle-input/032717_crystal_vs_simulation/MOR_inactive/venn_diagram/crys_only/MOR_inactive_crystal_cutoff_75.json"
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/analysis/interaction-footprint-analysis
python venn_diagram_flareplot.py $POLAR_NETWORK_JSON1 $POLAR_NETWORK_JSON2 $OUTPUT_FILE -crys



# Show only colors for simulation (cyan)
POLAR_NETWORK_JSON1="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/interaction-footprint-analysis/residue-resolution-evobundle-input/032717_crystal_vs_simulation/MOR_inactive/MOR_inactive_crystal.json"
POLAR_NETWORK_JSON2="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/interaction-footprint-analysis/residue-resolution-evobundle-input/032717_crystal_vs_simulation/MOR_inactive/MOR_inactive_simulation_cutoff_0.json"
OUTPUT_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/interaction-footprint-analysis/residue-resolution-evobundle-input/032717_crystal_vs_simulation/MOR_inactive/venn_diagram/sim_only/MOR_inactive_simulation_cutoff_0.json"
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/analysis/interaction-footprint-analysis
python venn_diagram_flareplot.py $POLAR_NETWORK_JSON1 $POLAR_NETWORK_JSON2 $OUTPUT_FILE -sim



POLAR_NETWORK_JSON1="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/interaction-footprint-analysis/residue-resolution-evobundle-input/032717_crystal_vs_simulation/MOR_inactive/MOR_inactive_crystal.json"
POLAR_NETWORK_JSON2="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/interaction-footprint-analysis/residue-resolution-evobundle-input/032717_crystal_vs_simulation/MOR_inactive/MOR_inactive_simulation_cutoff_25.json"
OUTPUT_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/interaction-footprint-analysis/residue-resolution-evobundle-input/032717_crystal_vs_simulation/MOR_inactive/venn_diagram/sim_only/MOR_inactive_simulation_cutoff_25.json"
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/analysis/interaction-footprint-analysis
python venn_diagram_flareplot.py $POLAR_NETWORK_JSON1 $POLAR_NETWORK_JSON2 $OUTPUT_FILE -sim



POLAR_NETWORK_JSON1="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/interaction-footprint-analysis/residue-resolution-evobundle-input/032717_crystal_vs_simulation/MOR_inactive/MOR_inactive_crystal.json"
POLAR_NETWORK_JSON2="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/interaction-footprint-analysis/residue-resolution-evobundle-input/032717_crystal_vs_simulation/MOR_inactive/MOR_inactive_simulation_cutoff_50.json"
OUTPUT_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/interaction-footprint-analysis/residue-resolution-evobundle-input/032717_crystal_vs_simulation/MOR_inactive/venn_diagram/sim_only/MOR_inactive_simulation_cutoff_50.json"
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/analysis/interaction-footprint-analysis
python venn_diagram_flareplot.py $POLAR_NETWORK_JSON1 $POLAR_NETWORK_JSON2 $OUTPUT_FILE -sim



POLAR_NETWORK_JSON1="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/interaction-footprint-analysis/residue-resolution-evobundle-input/032717_crystal_vs_simulation/MOR_inactive/MOR_inactive_crystal.json"
POLAR_NETWORK_JSON2="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/interaction-footprint-analysis/residue-resolution-evobundle-input/032717_crystal_vs_simulation/MOR_inactive/MOR_inactive_simulation_cutoff_75.json"
OUTPUT_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/interaction-footprint-analysis/residue-resolution-evobundle-input/032717_crystal_vs_simulation/MOR_inactive/venn_diagram/sim_only/MOR_inactive_simulation_cutoff_75.json"
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/analysis/interaction-footprint-analysis
python venn_diagram_flareplot.py $POLAR_NETWORK_JSON1 $POLAR_NETWORK_JSON2 $OUTPUT_FILE -sim









# MOR ACTIVE ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~


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


# GENERATE VENN DIAGRAM FLAREPLOTS

# Show all three colors for crystal vs simulation (magenta, orange, and cyan)
POLAR_NETWORK_JSON1="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/interaction-footprint-analysis/residue-resolution-evobundle-input/032717_crystal_vs_simulation/MOR_active/MOR_active_crystal.json"
POLAR_NETWORK_JSON2="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/interaction-footprint-analysis/residue-resolution-evobundle-input/032717_crystal_vs_simulation/MOR_active/MOR_active_simulation_cutoff_0.json"
OUTPUT_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/interaction-footprint-analysis/residue-resolution-evobundle-input/032717_crystal_vs_simulation/MOR_active/venn_diagram/crys_and_sim/MOR_active_crystal_vs_simulation_cutoff_0.json"
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/analysis/interaction-footprint-analysis
python venn_diagram_flareplot.py $POLAR_NETWORK_JSON1 $POLAR_NETWORK_JSON2 $OUTPUT_FILE



POLAR_NETWORK_JSON1="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/interaction-footprint-analysis/residue-resolution-evobundle-input/032717_crystal_vs_simulation/MOR_active/MOR_active_crystal.json"
POLAR_NETWORK_JSON2="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/interaction-footprint-analysis/residue-resolution-evobundle-input/032717_crystal_vs_simulation/MOR_active/MOR_active_simulation_cutoff_25.json"
OUTPUT_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/interaction-footprint-analysis/residue-resolution-evobundle-input/032717_crystal_vs_simulation/MOR_active/venn_diagram/crys_and_sim/MOR_active_crystal_vs_simulation_cutoff_25.json"
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/analysis/interaction-footprint-analysis
python venn_diagram_flareplot.py $POLAR_NETWORK_JSON1 $POLAR_NETWORK_JSON2 $OUTPUT_FILE



POLAR_NETWORK_JSON1="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/interaction-footprint-analysis/residue-resolution-evobundle-input/032717_crystal_vs_simulation/MOR_active/MOR_active_crystal.json"
POLAR_NETWORK_JSON2="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/interaction-footprint-analysis/residue-resolution-evobundle-input/032717_crystal_vs_simulation/MOR_active/MOR_active_simulation_cutoff_50.json"
OUTPUT_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/interaction-footprint-analysis/residue-resolution-evobundle-input/032717_crystal_vs_simulation/MOR_active/venn_diagram/crys_and_sim/MOR_active_crystal_vs_simulation_cutoff_50.json"
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/analysis/interaction-footprint-analysis
python venn_diagram_flareplot.py $POLAR_NETWORK_JSON1 $POLAR_NETWORK_JSON2 $OUTPUT_FILE



POLAR_NETWORK_JSON1="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/interaction-footprint-analysis/residue-resolution-evobundle-input/032717_crystal_vs_simulation/MOR_active/MOR_active_crystal.json"
POLAR_NETWORK_JSON2="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/interaction-footprint-analysis/residue-resolution-evobundle-input/032717_crystal_vs_simulation/MOR_active/MOR_active_simulation_cutoff_75.json"
OUTPUT_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/interaction-footprint-analysis/residue-resolution-evobundle-input/032717_crystal_vs_simulation/MOR_active/venn_diagram/crys_and_sim/MOR_active_crystal_vs_simulation_cutoff_75.json"
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/analysis/interaction-footprint-analysis
python venn_diagram_flareplot.py $POLAR_NETWORK_JSON1 $POLAR_NETWORK_JSON2 $OUTPUT_FILE

# Show only colors for crystal (magenta, orange)

POLAR_NETWORK_JSON1="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/interaction-footprint-analysis/residue-resolution-evobundle-input/032717_crystal_vs_simulation/MOR_active/MOR_active_crystal.json"
POLAR_NETWORK_JSON2="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/interaction-footprint-analysis/residue-resolution-evobundle-input/032717_crystal_vs_simulation/MOR_active/MOR_active_simulation_cutoff_0.json"
OUTPUT_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/interaction-footprint-analysis/residue-resolution-evobundle-input/032717_crystal_vs_simulation/MOR_active/venn_diagram/crys_only/MOR_active_crystal_cutoff_0.json"
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/analysis/interaction-footprint-analysis
python venn_diagram_flareplot.py $POLAR_NETWORK_JSON1 $POLAR_NETWORK_JSON2 $OUTPUT_FILE -crys



POLAR_NETWORK_JSON1="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/interaction-footprint-analysis/residue-resolution-evobundle-input/032717_crystal_vs_simulation/MOR_active/MOR_active_crystal.json"
POLAR_NETWORK_JSON2="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/interaction-footprint-analysis/residue-resolution-evobundle-input/032717_crystal_vs_simulation/MOR_active/MOR_active_simulation_cutoff_25.json"
OUTPUT_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/interaction-footprint-analysis/residue-resolution-evobundle-input/032717_crystal_vs_simulation/MOR_active/venn_diagram/crys_only/MOR_active_crystal_cutoff_25.json"
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/analysis/interaction-footprint-analysis
python venn_diagram_flareplot.py $POLAR_NETWORK_JSON1 $POLAR_NETWORK_JSON2 $OUTPUT_FILE -crys



POLAR_NETWORK_JSON1="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/interaction-footprint-analysis/residue-resolution-evobundle-input/032717_crystal_vs_simulation/MOR_active/MOR_active_crystal.json"
POLAR_NETWORK_JSON2="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/interaction-footprint-analysis/residue-resolution-evobundle-input/032717_crystal_vs_simulation/MOR_active/MOR_active_simulation_cutoff_50.json"
OUTPUT_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/interaction-footprint-analysis/residue-resolution-evobundle-input/032717_crystal_vs_simulation/MOR_active/venn_diagram/crys_only/MOR_active_crystal_cutoff_50.json"
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/analysis/interaction-footprint-analysis
python venn_diagram_flareplot.py $POLAR_NETWORK_JSON1 $POLAR_NETWORK_JSON2 $OUTPUT_FILE -crys



POLAR_NETWORK_JSON1="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/interaction-footprint-analysis/residue-resolution-evobundle-input/032717_crystal_vs_simulation/MOR_active/MOR_active_crystal.json"
POLAR_NETWORK_JSON2="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/interaction-footprint-analysis/residue-resolution-evobundle-input/032717_crystal_vs_simulation/MOR_active/MOR_active_simulation_cutoff_75.json"
OUTPUT_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/interaction-footprint-analysis/residue-resolution-evobundle-input/032717_crystal_vs_simulation/MOR_active/venn_diagram/crys_only/MOR_active_crystal_cutoff_75.json"
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/analysis/interaction-footprint-analysis
python venn_diagram_flareplot.py $POLAR_NETWORK_JSON1 $POLAR_NETWORK_JSON2 $OUTPUT_FILE -crys



# Show only colors for simulation (cyan)
POLAR_NETWORK_JSON1="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/interaction-footprint-analysis/residue-resolution-evobundle-input/032717_crystal_vs_simulation/MOR_active/MOR_active_crystal.json"
POLAR_NETWORK_JSON2="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/interaction-footprint-analysis/residue-resolution-evobundle-input/032717_crystal_vs_simulation/MOR_active/MOR_active_simulation_cutoff_0.json"
OUTPUT_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/interaction-footprint-analysis/residue-resolution-evobundle-input/032717_crystal_vs_simulation/MOR_active/venn_diagram/sim_only/MOR_active_simulation_cutoff_0.json"
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/analysis/interaction-footprint-analysis
python venn_diagram_flareplot.py $POLAR_NETWORK_JSON1 $POLAR_NETWORK_JSON2 $OUTPUT_FILE -sim



POLAR_NETWORK_JSON1="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/interaction-footprint-analysis/residue-resolution-evobundle-input/032717_crystal_vs_simulation/MOR_active/MOR_active_crystal.json"
POLAR_NETWORK_JSON2="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/interaction-footprint-analysis/residue-resolution-evobundle-input/032717_crystal_vs_simulation/MOR_active/MOR_active_simulation_cutoff_25.json"
OUTPUT_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/interaction-footprint-analysis/residue-resolution-evobundle-input/032717_crystal_vs_simulation/MOR_active/venn_diagram/sim_only/MOR_active_simulation_cutoff_25.json"
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/analysis/interaction-footprint-analysis
python venn_diagram_flareplot.py $POLAR_NETWORK_JSON1 $POLAR_NETWORK_JSON2 $OUTPUT_FILE -sim



POLAR_NETWORK_JSON1="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/interaction-footprint-analysis/residue-resolution-evobundle-input/032717_crystal_vs_simulation/MOR_active/MOR_active_crystal.json"
POLAR_NETWORK_JSON2="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/interaction-footprint-analysis/residue-resolution-evobundle-input/032717_crystal_vs_simulation/MOR_active/MOR_active_simulation_cutoff_50.json"
OUTPUT_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/interaction-footprint-analysis/residue-resolution-evobundle-input/032717_crystal_vs_simulation/MOR_active/venn_diagram/sim_only/MOR_active_simulation_cutoff_50.json"
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/analysis/interaction-footprint-analysis
python venn_diagram_flareplot.py $POLAR_NETWORK_JSON1 $POLAR_NETWORK_JSON2 $OUTPUT_FILE -sim



POLAR_NETWORK_JSON1="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/interaction-footprint-analysis/residue-resolution-evobundle-input/032717_crystal_vs_simulation/MOR_active/MOR_active_crystal.json"
POLAR_NETWORK_JSON2="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/interaction-footprint-analysis/residue-resolution-evobundle-input/032717_crystal_vs_simulation/MOR_active/MOR_active_simulation_cutoff_75.json"
OUTPUT_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/interaction-footprint-analysis/residue-resolution-evobundle-input/032717_crystal_vs_simulation/MOR_active/venn_diagram/sim_only/MOR_active_simulation_cutoff_75.json"
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/analysis/interaction-footprint-analysis
python venn_diagram_flareplot.py $POLAR_NETWORK_JSON1 $POLAR_NETWORK_JSON2 $OUTPUT_FILE -sim
