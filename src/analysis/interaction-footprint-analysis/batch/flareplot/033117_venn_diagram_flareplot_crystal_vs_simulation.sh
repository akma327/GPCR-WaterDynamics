# 033117_venn_diagram_flareplot_crystal_vs_simulation.sh


# B2AR INACTIVE ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

# Crystal Structure with frequencies

FOOTPRINT_TABLE="/scratch/PI/rondror/akma327/DynamicNetworks/results/non-state-decomposition/residue-resolution-combined-rep/033117_crystal_vs_simulation/B2AR_inactive/crystal/B2AR_inactive_crystal_filtered.txt"
EXP_REP_ID="B2AR:inactive:carazalol:D79-:D130-"
OUTPUT_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/interaction-footprint-analysis/residue-resolution-evobundle-input/033117_crystal_vs_simulation/B2AR_inactive/B2AR_inactive_crystal.json"
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/analysis/interaction-footprint-analysis
python footprint_summary_evobundle.py $FOOTPRINT_TABLE $EXP_REP_ID $OUTPUT_FILE -receptor B2AR -no-conserve  -cutoff 0.0 -inter


# Crystal structure with 0.5 frequencies for all - just schematic purpose 


FOOTPRINT_TABLE="/scratch/PI/rondror/akma327/DynamicNetworks/results/non-state-decomposition/residue-resolution-combined-rep/033117_crystal_vs_simulation/B2AR_inactive/crystal/B2AR_inactive_crystal_samefreq_filtered.txt"
EXP_REP_ID="B2AR:inactive:carazalol:D79-:D130-"
OUTPUT_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/interaction-footprint-analysis/residue-resolution-evobundle-input/033117_crystal_vs_simulation/B2AR_inactive/B2AR_inactive_crystal_samefreq.json"
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/analysis/interaction-footprint-analysis
python footprint_summary_evobundle.py $FOOTPRINT_TABLE $EXP_REP_ID $OUTPUT_FILE -receptor B2AR -no-conserve  -cutoff 0.0 -inter



# Simulation 

FOOTPRINT_TABLE="/scratch/PI/rondror/akma327/DynamicNetworks/results/non-state-decomposition/residue-resolution-combined-rep/033117_crystal_vs_simulation/B2AR_inactive/simulation/B2AR_inactive_simulation_filtered.txt"
EXP_REP_ID="B2AR:inactive:carazalol:D79-:D130-"
OUTPUT_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/interaction-footprint-analysis/residue-resolution-evobundle-input/033117_crystal_vs_simulation/B2AR_inactive/B2AR_inactive_simulation_cutoff_0.json"
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/analysis/interaction-footprint-analysis
python footprint_summary_evobundle.py $FOOTPRINT_TABLE $EXP_REP_ID $OUTPUT_FILE -receptor B2AR -no-conserve  -cutoff 0.0 -inter


FOOTPRINT_TABLE="/scratch/PI/rondror/akma327/DynamicNetworks/results/non-state-decomposition/residue-resolution-combined-rep/033117_crystal_vs_simulation/B2AR_inactive/simulation/B2AR_inactive_simulation_filtered.txt"
EXP_REP_ID="B2AR:inactive:carazalol:D79-:D130-"
OUTPUT_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/interaction-footprint-analysis/residue-resolution-evobundle-input/033117_crystal_vs_simulation/B2AR_inactive/B2AR_inactive_simulation_cutoff_15.json"
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/analysis/interaction-footprint-analysis
python footprint_summary_evobundle.py $FOOTPRINT_TABLE $EXP_REP_ID $OUTPUT_FILE -receptor B2AR -no-conserve  -cutoff 0.15 -inter


FOOTPRINT_TABLE="/scratch/PI/rondror/akma327/DynamicNetworks/results/non-state-decomposition/residue-resolution-combined-rep/033117_crystal_vs_simulation/B2AR_inactive/simulation/B2AR_inactive_simulation_filtered.txt"
EXP_REP_ID="B2AR:inactive:carazalol:D79-:D130-"
OUTPUT_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/interaction-footprint-analysis/residue-resolution-evobundle-input/033117_crystal_vs_simulation/B2AR_inactive/B2AR_inactive_simulation_cutoff_25.json"
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/analysis/interaction-footprint-analysis
python footprint_summary_evobundle.py $FOOTPRINT_TABLE $EXP_REP_ID $OUTPUT_FILE -receptor B2AR -no-conserve  -cutoff 0.25 -inter


FOOTPRINT_TABLE="/scratch/PI/rondror/akma327/DynamicNetworks/results/non-state-decomposition/residue-resolution-combined-rep/033117_crystal_vs_simulation/B2AR_inactive/simulation/B2AR_inactive_simulation_filtered.txt"
EXP_REP_ID="B2AR:inactive:carazalol:D79-:D130-"
OUTPUT_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/interaction-footprint-analysis/residue-resolution-evobundle-input/033117_crystal_vs_simulation/B2AR_inactive/B2AR_inactive_simulation_cutoff_50.json"
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/analysis/interaction-footprint-analysis
python footprint_summary_evobundle.py $FOOTPRINT_TABLE $EXP_REP_ID $OUTPUT_FILE -receptor B2AR -no-conserve  -cutoff 0.50 -inter


FOOTPRINT_TABLE="/scratch/PI/rondror/akma327/DynamicNetworks/results/non-state-decomposition/residue-resolution-combined-rep/033117_crystal_vs_simulation/B2AR_inactive/simulation/B2AR_inactive_simulation_filtered.txt"
EXP_REP_ID="B2AR:inactive:carazalol:D79-:D130-"
OUTPUT_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/interaction-footprint-analysis/residue-resolution-evobundle-input/033117_crystal_vs_simulation/B2AR_inactive/B2AR_inactive_simulation_cutoff_75.json"
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/analysis/interaction-footprint-analysis
python footprint_summary_evobundle.py $FOOTPRINT_TABLE $EXP_REP_ID $OUTPUT_FILE -receptor B2AR -no-conserve  -cutoff 0.75 -inter


FOOTPRINT_TABLE="/scratch/PI/rondror/akma327/DynamicNetworks/results/non-state-decomposition/residue-resolution-combined-rep/033117_crystal_vs_simulation/B2AR_inactive/simulation/B2AR_inactive_simulation_filtered.txt"
EXP_REP_ID="B2AR:inactive:carazalol:D79-:D130-"
OUTPUT_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/interaction-footprint-analysis/residue-resolution-evobundle-input/033117_crystal_vs_simulation/B2AR_inactive/B2AR_inactive_simulation_cutoff_95.json"
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/analysis/interaction-footprint-analysis
python footprint_summary_evobundle.py $FOOTPRINT_TABLE $EXP_REP_ID $OUTPUT_FILE -receptor B2AR -no-conserve  -cutoff 0.95 -inter



### GENERATE VENN DIAGRAM FLAREPLOTS


# Show all three colors for crystal vs simulation (magenta, orange, and cyan)
POLAR_NETWORK_JSON1="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/interaction-footprint-analysis/residue-resolution-evobundle-input/033117_crystal_vs_simulation/B2AR_inactive/B2AR_inactive_crystal.json"
POLAR_NETWORK_JSON2="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/interaction-footprint-analysis/residue-resolution-evobundle-input/033117_crystal_vs_simulation/B2AR_inactive/B2AR_inactive_simulation_cutoff_0.json"
OUTPUT_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/interaction-footprint-analysis/residue-resolution-evobundle-input/033117_crystal_vs_simulation/B2AR_inactive/venn_diagram/crys_and_sim/B2AR_inactive_crystal_vs_simulation_cutoff_0.json"
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/analysis/interaction-footprint-analysis
python venn_diagram_flareplot.py $POLAR_NETWORK_JSON1 $POLAR_NETWORK_JSON2 $OUTPUT_FILE


POLAR_NETWORK_JSON1="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/interaction-footprint-analysis/residue-resolution-evobundle-input/033117_crystal_vs_simulation/B2AR_inactive/B2AR_inactive_crystal.json"
POLAR_NETWORK_JSON2="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/interaction-footprint-analysis/residue-resolution-evobundle-input/033117_crystal_vs_simulation/B2AR_inactive/B2AR_inactive_simulation_cutoff_15.json"
OUTPUT_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/interaction-footprint-analysis/residue-resolution-evobundle-input/033117_crystal_vs_simulation/B2AR_inactive/venn_diagram/crys_and_sim/B2AR_inactive_crystal_vs_simulation_cutoff_15.json"
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/analysis/interaction-footprint-analysis
python venn_diagram_flareplot.py $POLAR_NETWORK_JSON1 $POLAR_NETWORK_JSON2 $OUTPUT_FILE


POLAR_NETWORK_JSON1="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/interaction-footprint-analysis/residue-resolution-evobundle-input/033117_crystal_vs_simulation/B2AR_inactive/B2AR_inactive_crystal.json"
POLAR_NETWORK_JSON2="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/interaction-footprint-analysis/residue-resolution-evobundle-input/033117_crystal_vs_simulation/B2AR_inactive/B2AR_inactive_simulation_cutoff_25.json"
OUTPUT_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/interaction-footprint-analysis/residue-resolution-evobundle-input/033117_crystal_vs_simulation/B2AR_inactive/venn_diagram/crys_and_sim/B2AR_inactive_crystal_vs_simulation_cutoff_25.json"
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/analysis/interaction-footprint-analysis
python venn_diagram_flareplot.py $POLAR_NETWORK_JSON1 $POLAR_NETWORK_JSON2 $OUTPUT_FILE



POLAR_NETWORK_JSON1="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/interaction-footprint-analysis/residue-resolution-evobundle-input/033117_crystal_vs_simulation/B2AR_inactive/B2AR_inactive_crystal.json"
POLAR_NETWORK_JSON2="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/interaction-footprint-analysis/residue-resolution-evobundle-input/033117_crystal_vs_simulation/B2AR_inactive/B2AR_inactive_simulation_cutoff_50.json"
OUTPUT_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/interaction-footprint-analysis/residue-resolution-evobundle-input/033117_crystal_vs_simulation/B2AR_inactive/venn_diagram/crys_and_sim/B2AR_inactive_crystal_vs_simulation_cutoff_50.json"
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/analysis/interaction-footprint-analysis
python venn_diagram_flareplot.py $POLAR_NETWORK_JSON1 $POLAR_NETWORK_JSON2 $OUTPUT_FILE



POLAR_NETWORK_JSON1="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/interaction-footprint-analysis/residue-resolution-evobundle-input/033117_crystal_vs_simulation/B2AR_inactive/B2AR_inactive_crystal.json"
POLAR_NETWORK_JSON2="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/interaction-footprint-analysis/residue-resolution-evobundle-input/033117_crystal_vs_simulation/B2AR_inactive/B2AR_inactive_simulation_cutoff_75.json"
OUTPUT_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/interaction-footprint-analysis/residue-resolution-evobundle-input/033117_crystal_vs_simulation/B2AR_inactive/venn_diagram/crys_and_sim/B2AR_inactive_crystal_vs_simulation_cutoff_75.json"
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/analysis/interaction-footprint-analysis
python venn_diagram_flareplot.py $POLAR_NETWORK_JSON1 $POLAR_NETWORK_JSON2 $OUTPUT_FILE


POLAR_NETWORK_JSON1="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/interaction-footprint-analysis/residue-resolution-evobundle-input/033117_crystal_vs_simulation/B2AR_inactive/B2AR_inactive_crystal.json"
POLAR_NETWORK_JSON2="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/interaction-footprint-analysis/residue-resolution-evobundle-input/033117_crystal_vs_simulation/B2AR_inactive/B2AR_inactive_simulation_cutoff_95.json"
OUTPUT_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/interaction-footprint-analysis/residue-resolution-evobundle-input/033117_crystal_vs_simulation/B2AR_inactive/venn_diagram/crys_and_sim/B2AR_inactive_crystal_vs_simulation_cutoff_95.json"
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/analysis/interaction-footprint-analysis
python venn_diagram_flareplot.py $POLAR_NETWORK_JSON1 $POLAR_NETWORK_JSON2 $OUTPUT_FILE


# Show only colors for crystal (magenta, orange)

POLAR_NETWORK_JSON1="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/interaction-footprint-analysis/residue-resolution-evobundle-input/033117_crystal_vs_simulation/B2AR_inactive/B2AR_inactive_crystal.json"
POLAR_NETWORK_JSON2="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/interaction-footprint-analysis/residue-resolution-evobundle-input/033117_crystal_vs_simulation/B2AR_inactive/B2AR_inactive_simulation_cutoff_0.json"
OUTPUT_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/interaction-footprint-analysis/residue-resolution-evobundle-input/033117_crystal_vs_simulation/B2AR_inactive/venn_diagram/crys_only/B2AR_inactive_crystal_cutoff_0.json"
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/analysis/interaction-footprint-analysis
python venn_diagram_flareplot.py $POLAR_NETWORK_JSON1 $POLAR_NETWORK_JSON2 $OUTPUT_FILE -crys



POLAR_NETWORK_JSON1="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/interaction-footprint-analysis/residue-resolution-evobundle-input/033117_crystal_vs_simulation/B2AR_inactive/B2AR_inactive_crystal.json"
POLAR_NETWORK_JSON2="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/interaction-footprint-analysis/residue-resolution-evobundle-input/033117_crystal_vs_simulation/B2AR_inactive/B2AR_inactive_simulation_cutoff_15.json"
OUTPUT_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/interaction-footprint-analysis/residue-resolution-evobundle-input/033117_crystal_vs_simulation/B2AR_inactive/venn_diagram/crys_only/B2AR_inactive_crystal_cutoff_15.json"
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/analysis/interaction-footprint-analysis
python venn_diagram_flareplot.py $POLAR_NETWORK_JSON1 $POLAR_NETWORK_JSON2 $OUTPUT_FILE -crys



POLAR_NETWORK_JSON1="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/interaction-footprint-analysis/residue-resolution-evobundle-input/033117_crystal_vs_simulation/B2AR_inactive/B2AR_inactive_crystal.json"
POLAR_NETWORK_JSON2="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/interaction-footprint-analysis/residue-resolution-evobundle-input/033117_crystal_vs_simulation/B2AR_inactive/B2AR_inactive_simulation_cutoff_25.json"
OUTPUT_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/interaction-footprint-analysis/residue-resolution-evobundle-input/033117_crystal_vs_simulation/B2AR_inactive/venn_diagram/crys_only/B2AR_inactive_crystal_cutoff_25.json"
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/analysis/interaction-footprint-analysis
python venn_diagram_flareplot.py $POLAR_NETWORK_JSON1 $POLAR_NETWORK_JSON2 $OUTPUT_FILE -crys



POLAR_NETWORK_JSON1="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/interaction-footprint-analysis/residue-resolution-evobundle-input/033117_crystal_vs_simulation/B2AR_inactive/B2AR_inactive_crystal.json"
POLAR_NETWORK_JSON2="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/interaction-footprint-analysis/residue-resolution-evobundle-input/033117_crystal_vs_simulation/B2AR_inactive/B2AR_inactive_simulation_cutoff_50.json"
OUTPUT_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/interaction-footprint-analysis/residue-resolution-evobundle-input/033117_crystal_vs_simulation/B2AR_inactive/venn_diagram/crys_only/B2AR_inactive_crystal_cutoff_50.json"
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/analysis/interaction-footprint-analysis
python venn_diagram_flareplot.py $POLAR_NETWORK_JSON1 $POLAR_NETWORK_JSON2 $OUTPUT_FILE -crys



POLAR_NETWORK_JSON1="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/interaction-footprint-analysis/residue-resolution-evobundle-input/033117_crystal_vs_simulation/B2AR_inactive/B2AR_inactive_crystal.json"
POLAR_NETWORK_JSON2="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/interaction-footprint-analysis/residue-resolution-evobundle-input/033117_crystal_vs_simulation/B2AR_inactive/B2AR_inactive_simulation_cutoff_75.json"
OUTPUT_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/interaction-footprint-analysis/residue-resolution-evobundle-input/033117_crystal_vs_simulation/B2AR_inactive/venn_diagram/crys_only/B2AR_inactive_crystal_cutoff_75.json"
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/analysis/interaction-footprint-analysis
python venn_diagram_flareplot.py $POLAR_NETWORK_JSON1 $POLAR_NETWORK_JSON2 $OUTPUT_FILE -crys



POLAR_NETWORK_JSON1="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/interaction-footprint-analysis/residue-resolution-evobundle-input/033117_crystal_vs_simulation/B2AR_inactive/B2AR_inactive_crystal.json"
POLAR_NETWORK_JSON2="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/interaction-footprint-analysis/residue-resolution-evobundle-input/033117_crystal_vs_simulation/B2AR_inactive/B2AR_inactive_simulation_cutoff_95.json"
OUTPUT_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/interaction-footprint-analysis/residue-resolution-evobundle-input/033117_crystal_vs_simulation/B2AR_inactive/venn_diagram/crys_only/B2AR_inactive_crystal_cutoff_95.json"
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/analysis/interaction-footprint-analysis
python venn_diagram_flareplot.py $POLAR_NETWORK_JSON1 $POLAR_NETWORK_JSON2 $OUTPUT_FILE -crys





# Show only colors for simulation (cyan)
POLAR_NETWORK_JSON1="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/interaction-footprint-analysis/residue-resolution-evobundle-input/033117_crystal_vs_simulation/B2AR_inactive/B2AR_inactive_crystal.json"
POLAR_NETWORK_JSON2="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/interaction-footprint-analysis/residue-resolution-evobundle-input/033117_crystal_vs_simulation/B2AR_inactive/B2AR_inactive_simulation_cutoff_0.json"
OUTPUT_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/interaction-footprint-analysis/residue-resolution-evobundle-input/033117_crystal_vs_simulation/B2AR_inactive/venn_diagram/sim_only/B2AR_inactive_simulation_cutoff_0.json"
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/analysis/interaction-footprint-analysis
python venn_diagram_flareplot.py $POLAR_NETWORK_JSON1 $POLAR_NETWORK_JSON2 $OUTPUT_FILE -sim



POLAR_NETWORK_JSON1="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/interaction-footprint-analysis/residue-resolution-evobundle-input/033117_crystal_vs_simulation/B2AR_inactive/B2AR_inactive_crystal.json"
POLAR_NETWORK_JSON2="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/interaction-footprint-analysis/residue-resolution-evobundle-input/033117_crystal_vs_simulation/B2AR_inactive/B2AR_inactive_simulation_cutoff_15.json"
OUTPUT_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/interaction-footprint-analysis/residue-resolution-evobundle-input/033117_crystal_vs_simulation/B2AR_inactive/venn_diagram/sim_only/B2AR_inactive_simulation_cutoff_15.json"
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/analysis/interaction-footprint-analysis
python venn_diagram_flareplot.py $POLAR_NETWORK_JSON1 $POLAR_NETWORK_JSON2 $OUTPUT_FILE -sim



POLAR_NETWORK_JSON1="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/interaction-footprint-analysis/residue-resolution-evobundle-input/033117_crystal_vs_simulation/B2AR_inactive/B2AR_inactive_crystal.json"
POLAR_NETWORK_JSON2="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/interaction-footprint-analysis/residue-resolution-evobundle-input/033117_crystal_vs_simulation/B2AR_inactive/B2AR_inactive_simulation_cutoff_25.json"
OUTPUT_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/interaction-footprint-analysis/residue-resolution-evobundle-input/033117_crystal_vs_simulation/B2AR_inactive/venn_diagram/sim_only/B2AR_inactive_simulation_cutoff_25.json"
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/analysis/interaction-footprint-analysis
python venn_diagram_flareplot.py $POLAR_NETWORK_JSON1 $POLAR_NETWORK_JSON2 $OUTPUT_FILE -sim



POLAR_NETWORK_JSON1="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/interaction-footprint-analysis/residue-resolution-evobundle-input/033117_crystal_vs_simulation/B2AR_inactive/B2AR_inactive_crystal.json"
POLAR_NETWORK_JSON2="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/interaction-footprint-analysis/residue-resolution-evobundle-input/033117_crystal_vs_simulation/B2AR_inactive/B2AR_inactive_simulation_cutoff_50.json"
OUTPUT_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/interaction-footprint-analysis/residue-resolution-evobundle-input/033117_crystal_vs_simulation/B2AR_inactive/venn_diagram/sim_only/B2AR_inactive_simulation_cutoff_50.json"
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/analysis/interaction-footprint-analysis
python venn_diagram_flareplot.py $POLAR_NETWORK_JSON1 $POLAR_NETWORK_JSON2 $OUTPUT_FILE -sim



POLAR_NETWORK_JSON1="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/interaction-footprint-analysis/residue-resolution-evobundle-input/033117_crystal_vs_simulation/B2AR_inactive/B2AR_inactive_crystal.json"
POLAR_NETWORK_JSON2="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/interaction-footprint-analysis/residue-resolution-evobundle-input/033117_crystal_vs_simulation/B2AR_inactive/B2AR_inactive_simulation_cutoff_75.json"
OUTPUT_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/interaction-footprint-analysis/residue-resolution-evobundle-input/033117_crystal_vs_simulation/B2AR_inactive/venn_diagram/sim_only/B2AR_inactive_simulation_cutoff_75.json"
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/analysis/interaction-footprint-analysis
python venn_diagram_flareplot.py $POLAR_NETWORK_JSON1 $POLAR_NETWORK_JSON2 $OUTPUT_FILE -sim



POLAR_NETWORK_JSON1="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/interaction-footprint-analysis/residue-resolution-evobundle-input/033117_crystal_vs_simulation/B2AR_inactive/B2AR_inactive_crystal.json"
POLAR_NETWORK_JSON2="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/interaction-footprint-analysis/residue-resolution-evobundle-input/033117_crystal_vs_simulation/B2AR_inactive/B2AR_inactive_simulation_cutoff_95.json"
OUTPUT_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/interaction-footprint-analysis/residue-resolution-evobundle-input/033117_crystal_vs_simulation/B2AR_inactive/venn_diagram/sim_only/B2AR_inactive_simulation_cutoff_95.json"
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/analysis/interaction-footprint-analysis
python venn_diagram_flareplot.py $POLAR_NETWORK_JSON1 $POLAR_NETWORK_JSON2 $OUTPUT_FILE -sim




# DOR INACTIVE ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

# Crystal Structure with frequencies

FOOTPRINT_TABLE="/scratch/PI/rondror/akma327/DynamicNetworks/results/non-state-decomposition/residue-resolution-combined-rep/033117_crystal_vs_simulation/DOR_inactive/crystal/DOR_inactive_crystal_filtered.txt"
EXP_REP_ID="DOR:inactive:naltrindole"
OUTPUT_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/interaction-footprint-analysis/residue-resolution-evobundle-input/033117_crystal_vs_simulation/DOR_inactive/DOR_inactive_crystal.json"
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/analysis/interaction-footprint-analysis
python footprint_summary_evobundle.py $FOOTPRINT_TABLE $EXP_REP_ID $OUTPUT_FILE -receptor DOR -no-conserve  -cutoff 0.0 -inter


# Crystal structure with 0.5 frequencies for all - just schematic purpose 


FOOTPRINT_TABLE="/scratch/PI/rondror/akma327/DynamicNetworks/results/non-state-decomposition/residue-resolution-combined-rep/033117_crystal_vs_simulation/DOR_inactive/crystal/DOR_inactive_crystal_samefreq_filtered.txt"
EXP_REP_ID="DOR:inactive:naltrindole"
OUTPUT_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/interaction-footprint-analysis/residue-resolution-evobundle-input/033117_crystal_vs_simulation/DOR_inactive/DOR_inactive_crystal_samefreq.json"
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/analysis/interaction-footprint-analysis
python footprint_summary_evobundle.py $FOOTPRINT_TABLE $EXP_REP_ID $OUTPUT_FILE -receptor DOR -no-conserve  -cutoff 0.0 -inter



# Simulation 

FOOTPRINT_TABLE="/scratch/PI/rondror/akma327/DynamicNetworks/results/non-state-decomposition/residue-resolution-combined-rep/033117_crystal_vs_simulation/DOR_inactive/simulation/DOR_inactive_simulation_filtered.txt"
EXP_REP_ID="DOR:inactive:naltrindole"
OUTPUT_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/interaction-footprint-analysis/residue-resolution-evobundle-input/033117_crystal_vs_simulation/DOR_inactive/DOR_inactive_simulation_cutoff_0.json"
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/analysis/interaction-footprint-analysis
python footprint_summary_evobundle.py $FOOTPRINT_TABLE $EXP_REP_ID $OUTPUT_FILE -receptor DOR -no-conserve  -cutoff 0.0 -inter


FOOTPRINT_TABLE="/scratch/PI/rondror/akma327/DynamicNetworks/results/non-state-decomposition/residue-resolution-combined-rep/033117_crystal_vs_simulation/DOR_inactive/simulation/DOR_inactive_simulation_filtered.txt"
EXP_REP_ID="DOR:inactive:naltrindole"
OUTPUT_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/interaction-footprint-analysis/residue-resolution-evobundle-input/033117_crystal_vs_simulation/DOR_inactive/DOR_inactive_simulation_cutoff_15.json"
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/analysis/interaction-footprint-analysis
python footprint_summary_evobundle.py $FOOTPRINT_TABLE $EXP_REP_ID $OUTPUT_FILE -receptor DOR -no-conserve  -cutoff 0.15 -inter



FOOTPRINT_TABLE="/scratch/PI/rondror/akma327/DynamicNetworks/results/non-state-decomposition/residue-resolution-combined-rep/033117_crystal_vs_simulation/DOR_inactive/simulation/DOR_inactive_simulation_filtered.txt"
EXP_REP_ID="DOR:inactive:naltrindole"
OUTPUT_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/interaction-footprint-analysis/residue-resolution-evobundle-input/033117_crystal_vs_simulation/DOR_inactive/DOR_inactive_simulation_cutoff_25.json"
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/analysis/interaction-footprint-analysis
python footprint_summary_evobundle.py $FOOTPRINT_TABLE $EXP_REP_ID $OUTPUT_FILE -receptor DOR -no-conserve  -cutoff 0.25 -inter


FOOTPRINT_TABLE="/scratch/PI/rondror/akma327/DynamicNetworks/results/non-state-decomposition/residue-resolution-combined-rep/033117_crystal_vs_simulation/DOR_inactive/simulation/DOR_inactive_simulation_filtered.txt"
EXP_REP_ID="DOR:inactive:naltrindole"
OUTPUT_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/interaction-footprint-analysis/residue-resolution-evobundle-input/033117_crystal_vs_simulation/DOR_inactive/DOR_inactive_simulation_cutoff_50.json"
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/analysis/interaction-footprint-analysis
python footprint_summary_evobundle.py $FOOTPRINT_TABLE $EXP_REP_ID $OUTPUT_FILE -receptor DOR -no-conserve  -cutoff 0.50 -inter


FOOTPRINT_TABLE="/scratch/PI/rondror/akma327/DynamicNetworks/results/non-state-decomposition/residue-resolution-combined-rep/033117_crystal_vs_simulation/DOR_inactive/simulation/DOR_inactive_simulation_filtered.txt"
EXP_REP_ID="DOR:inactive:naltrindole"
OUTPUT_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/interaction-footprint-analysis/residue-resolution-evobundle-input/033117_crystal_vs_simulation/DOR_inactive/DOR_inactive_simulation_cutoff_75.json"
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/analysis/interaction-footprint-analysis
python footprint_summary_evobundle.py $FOOTPRINT_TABLE $EXP_REP_ID $OUTPUT_FILE -receptor DOR -no-conserve  -cutoff 0.75 -inter


FOOTPRINT_TABLE="/scratch/PI/rondror/akma327/DynamicNetworks/results/non-state-decomposition/residue-resolution-combined-rep/033117_crystal_vs_simulation/DOR_inactive/simulation/DOR_inactive_simulation_filtered.txt"
EXP_REP_ID="DOR:inactive:naltrindole"
OUTPUT_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/interaction-footprint-analysis/residue-resolution-evobundle-input/033117_crystal_vs_simulation/DOR_inactive/DOR_inactive_simulation_cutoff_95.json"
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/analysis/interaction-footprint-analysis
python footprint_summary_evobundle.py $FOOTPRINT_TABLE $EXP_REP_ID $OUTPUT_FILE -receptor DOR -no-conserve  -cutoff 0.95 -inter



### GENERATE VENN DIAGRAM FLAREPLOTS


# Show all three colors for crystal vs simulation (magenta, orange, and cyan)
POLAR_NETWORK_JSON1="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/interaction-footprint-analysis/residue-resolution-evobundle-input/033117_crystal_vs_simulation/DOR_inactive/DOR_inactive_crystal.json"
POLAR_NETWORK_JSON2="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/interaction-footprint-analysis/residue-resolution-evobundle-input/033117_crystal_vs_simulation/DOR_inactive/DOR_inactive_simulation_cutoff_0.json"
OUTPUT_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/interaction-footprint-analysis/residue-resolution-evobundle-input/033117_crystal_vs_simulation/DOR_inactive/venn_diagram/crys_and_sim/DOR_inactive_crystal_vs_simulation_cutoff_0.json"
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/analysis/interaction-footprint-analysis
python venn_diagram_flareplot.py $POLAR_NETWORK_JSON1 $POLAR_NETWORK_JSON2 $OUTPUT_FILE


POLAR_NETWORK_JSON1="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/interaction-footprint-analysis/residue-resolution-evobundle-input/033117_crystal_vs_simulation/DOR_inactive/DOR_inactive_crystal.json"
POLAR_NETWORK_JSON2="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/interaction-footprint-analysis/residue-resolution-evobundle-input/033117_crystal_vs_simulation/DOR_inactive/DOR_inactive_simulation_cutoff_15.json"
OUTPUT_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/interaction-footprint-analysis/residue-resolution-evobundle-input/033117_crystal_vs_simulation/DOR_inactive/venn_diagram/crys_and_sim/DOR_inactive_crystal_vs_simulation_cutoff_15.json"
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/analysis/interaction-footprint-analysis
python venn_diagram_flareplot.py $POLAR_NETWORK_JSON1 $POLAR_NETWORK_JSON2 $OUTPUT_FILE



POLAR_NETWORK_JSON1="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/interaction-footprint-analysis/residue-resolution-evobundle-input/033117_crystal_vs_simulation/DOR_inactive/DOR_inactive_crystal.json"
POLAR_NETWORK_JSON2="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/interaction-footprint-analysis/residue-resolution-evobundle-input/033117_crystal_vs_simulation/DOR_inactive/DOR_inactive_simulation_cutoff_25.json"
OUTPUT_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/interaction-footprint-analysis/residue-resolution-evobundle-input/033117_crystal_vs_simulation/DOR_inactive/venn_diagram/crys_and_sim/DOR_inactive_crystal_vs_simulation_cutoff_25.json"
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/analysis/interaction-footprint-analysis
python venn_diagram_flareplot.py $POLAR_NETWORK_JSON1 $POLAR_NETWORK_JSON2 $OUTPUT_FILE



POLAR_NETWORK_JSON1="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/interaction-footprint-analysis/residue-resolution-evobundle-input/033117_crystal_vs_simulation/DOR_inactive/DOR_inactive_crystal.json"
POLAR_NETWORK_JSON2="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/interaction-footprint-analysis/residue-resolution-evobundle-input/033117_crystal_vs_simulation/DOR_inactive/DOR_inactive_simulation_cutoff_50.json"
OUTPUT_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/interaction-footprint-analysis/residue-resolution-evobundle-input/033117_crystal_vs_simulation/DOR_inactive/venn_diagram/crys_and_sim/DOR_inactive_crystal_vs_simulation_cutoff_50.json"
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/analysis/interaction-footprint-analysis
python venn_diagram_flareplot.py $POLAR_NETWORK_JSON1 $POLAR_NETWORK_JSON2 $OUTPUT_FILE



POLAR_NETWORK_JSON1="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/interaction-footprint-analysis/residue-resolution-evobundle-input/033117_crystal_vs_simulation/DOR_inactive/DOR_inactive_crystal.json"
POLAR_NETWORK_JSON2="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/interaction-footprint-analysis/residue-resolution-evobundle-input/033117_crystal_vs_simulation/DOR_inactive/DOR_inactive_simulation_cutoff_75.json"
OUTPUT_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/interaction-footprint-analysis/residue-resolution-evobundle-input/033117_crystal_vs_simulation/DOR_inactive/venn_diagram/crys_and_sim/DOR_inactive_crystal_vs_simulation_cutoff_75.json"
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/analysis/interaction-footprint-analysis
python venn_diagram_flareplot.py $POLAR_NETWORK_JSON1 $POLAR_NETWORK_JSON2 $OUTPUT_FILE


POLAR_NETWORK_JSON1="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/interaction-footprint-analysis/residue-resolution-evobundle-input/033117_crystal_vs_simulation/DOR_inactive/DOR_inactive_crystal.json"
POLAR_NETWORK_JSON2="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/interaction-footprint-analysis/residue-resolution-evobundle-input/033117_crystal_vs_simulation/DOR_inactive/DOR_inactive_simulation_cutoff_95.json"
OUTPUT_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/interaction-footprint-analysis/residue-resolution-evobundle-input/033117_crystal_vs_simulation/DOR_inactive/venn_diagram/crys_and_sim/DOR_inactive_crystal_vs_simulation_cutoff_95.json"
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/analysis/interaction-footprint-analysis
python venn_diagram_flareplot.py $POLAR_NETWORK_JSON1 $POLAR_NETWORK_JSON2 $OUTPUT_FILE

# Show only colors for crystal (magenta, orange)

POLAR_NETWORK_JSON1="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/interaction-footprint-analysis/residue-resolution-evobundle-input/033117_crystal_vs_simulation/DOR_inactive/DOR_inactive_crystal.json"
POLAR_NETWORK_JSON2="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/interaction-footprint-analysis/residue-resolution-evobundle-input/033117_crystal_vs_simulation/DOR_inactive/DOR_inactive_simulation_cutoff_0.json"
OUTPUT_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/interaction-footprint-analysis/residue-resolution-evobundle-input/033117_crystal_vs_simulation/DOR_inactive/venn_diagram/crys_only/DOR_inactive_crystal_cutoff_0.json"
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/analysis/interaction-footprint-analysis
python venn_diagram_flareplot.py $POLAR_NETWORK_JSON1 $POLAR_NETWORK_JSON2 $OUTPUT_FILE -crys


POLAR_NETWORK_JSON1="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/interaction-footprint-analysis/residue-resolution-evobundle-input/033117_crystal_vs_simulation/DOR_inactive/DOR_inactive_crystal.json"
POLAR_NETWORK_JSON2="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/interaction-footprint-analysis/residue-resolution-evobundle-input/033117_crystal_vs_simulation/DOR_inactive/DOR_inactive_simulation_cutoff_15.json"
OUTPUT_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/interaction-footprint-analysis/residue-resolution-evobundle-input/033117_crystal_vs_simulation/DOR_inactive/venn_diagram/crys_only/DOR_inactive_crystal_cutoff_15.json"
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/analysis/interaction-footprint-analysis
python venn_diagram_flareplot.py $POLAR_NETWORK_JSON1 $POLAR_NETWORK_JSON2 $OUTPUT_FILE -crys




POLAR_NETWORK_JSON1="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/interaction-footprint-analysis/residue-resolution-evobundle-input/033117_crystal_vs_simulation/DOR_inactive/DOR_inactive_crystal.json"
POLAR_NETWORK_JSON2="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/interaction-footprint-analysis/residue-resolution-evobundle-input/033117_crystal_vs_simulation/DOR_inactive/DOR_inactive_simulation_cutoff_25.json"
OUTPUT_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/interaction-footprint-analysis/residue-resolution-evobundle-input/033117_crystal_vs_simulation/DOR_inactive/venn_diagram/crys_only/DOR_inactive_crystal_cutoff_25.json"
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/analysis/interaction-footprint-analysis
python venn_diagram_flareplot.py $POLAR_NETWORK_JSON1 $POLAR_NETWORK_JSON2 $OUTPUT_FILE -crys



POLAR_NETWORK_JSON1="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/interaction-footprint-analysis/residue-resolution-evobundle-input/033117_crystal_vs_simulation/DOR_inactive/DOR_inactive_crystal.json"
POLAR_NETWORK_JSON2="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/interaction-footprint-analysis/residue-resolution-evobundle-input/033117_crystal_vs_simulation/DOR_inactive/DOR_inactive_simulation_cutoff_50.json"
OUTPUT_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/interaction-footprint-analysis/residue-resolution-evobundle-input/033117_crystal_vs_simulation/DOR_inactive/venn_diagram/crys_only/DOR_inactive_crystal_cutoff_50.json"
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/analysis/interaction-footprint-analysis
python venn_diagram_flareplot.py $POLAR_NETWORK_JSON1 $POLAR_NETWORK_JSON2 $OUTPUT_FILE -crys



POLAR_NETWORK_JSON1="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/interaction-footprint-analysis/residue-resolution-evobundle-input/033117_crystal_vs_simulation/DOR_inactive/DOR_inactive_crystal.json"
POLAR_NETWORK_JSON2="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/interaction-footprint-analysis/residue-resolution-evobundle-input/033117_crystal_vs_simulation/DOR_inactive/DOR_inactive_simulation_cutoff_75.json"
OUTPUT_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/interaction-footprint-analysis/residue-resolution-evobundle-input/033117_crystal_vs_simulation/DOR_inactive/venn_diagram/crys_only/DOR_inactive_crystal_cutoff_75.json"
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/analysis/interaction-footprint-analysis
python venn_diagram_flareplot.py $POLAR_NETWORK_JSON1 $POLAR_NETWORK_JSON2 $OUTPUT_FILE -crys


POLAR_NETWORK_JSON1="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/interaction-footprint-analysis/residue-resolution-evobundle-input/033117_crystal_vs_simulation/DOR_inactive/DOR_inactive_crystal.json"
POLAR_NETWORK_JSON2="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/interaction-footprint-analysis/residue-resolution-evobundle-input/033117_crystal_vs_simulation/DOR_inactive/DOR_inactive_simulation_cutoff_95.json"
OUTPUT_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/interaction-footprint-analysis/residue-resolution-evobundle-input/033117_crystal_vs_simulation/DOR_inactive/venn_diagram/crys_only/DOR_inactive_crystal_cutoff_95.json"
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/analysis/interaction-footprint-analysis
python venn_diagram_flareplot.py $POLAR_NETWORK_JSON1 $POLAR_NETWORK_JSON2 $OUTPUT_FILE -crys



# Show only colors for simulation (cyan)
POLAR_NETWORK_JSON1="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/interaction-footprint-analysis/residue-resolution-evobundle-input/033117_crystal_vs_simulation/DOR_inactive/DOR_inactive_crystal.json"
POLAR_NETWORK_JSON2="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/interaction-footprint-analysis/residue-resolution-evobundle-input/033117_crystal_vs_simulation/DOR_inactive/DOR_inactive_simulation_cutoff_0.json"
OUTPUT_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/interaction-footprint-analysis/residue-resolution-evobundle-input/033117_crystal_vs_simulation/DOR_inactive/venn_diagram/sim_only/DOR_inactive_simulation_cutoff_0.json"
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/analysis/interaction-footprint-analysis
python venn_diagram_flareplot.py $POLAR_NETWORK_JSON1 $POLAR_NETWORK_JSON2 $OUTPUT_FILE -sim



POLAR_NETWORK_JSON1="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/interaction-footprint-analysis/residue-resolution-evobundle-input/033117_crystal_vs_simulation/DOR_inactive/DOR_inactive_crystal.json"
POLAR_NETWORK_JSON2="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/interaction-footprint-analysis/residue-resolution-evobundle-input/033117_crystal_vs_simulation/DOR_inactive/DOR_inactive_simulation_cutoff_15.json"
OUTPUT_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/interaction-footprint-analysis/residue-resolution-evobundle-input/033117_crystal_vs_simulation/DOR_inactive/venn_diagram/sim_only/DOR_inactive_simulation_cutoff_15.json"
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/analysis/interaction-footprint-analysis
python venn_diagram_flareplot.py $POLAR_NETWORK_JSON1 $POLAR_NETWORK_JSON2 $OUTPUT_FILE -sim



POLAR_NETWORK_JSON1="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/interaction-footprint-analysis/residue-resolution-evobundle-input/033117_crystal_vs_simulation/DOR_inactive/DOR_inactive_crystal.json"
POLAR_NETWORK_JSON2="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/interaction-footprint-analysis/residue-resolution-evobundle-input/033117_crystal_vs_simulation/DOR_inactive/DOR_inactive_simulation_cutoff_25.json"
OUTPUT_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/interaction-footprint-analysis/residue-resolution-evobundle-input/033117_crystal_vs_simulation/DOR_inactive/venn_diagram/sim_only/DOR_inactive_simulation_cutoff_25.json"
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/analysis/interaction-footprint-analysis
python venn_diagram_flareplot.py $POLAR_NETWORK_JSON1 $POLAR_NETWORK_JSON2 $OUTPUT_FILE -sim



POLAR_NETWORK_JSON1="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/interaction-footprint-analysis/residue-resolution-evobundle-input/033117_crystal_vs_simulation/DOR_inactive/DOR_inactive_crystal.json"
POLAR_NETWORK_JSON2="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/interaction-footprint-analysis/residue-resolution-evobundle-input/033117_crystal_vs_simulation/DOR_inactive/DOR_inactive_simulation_cutoff_50.json"
OUTPUT_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/interaction-footprint-analysis/residue-resolution-evobundle-input/033117_crystal_vs_simulation/DOR_inactive/venn_diagram/sim_only/DOR_inactive_simulation_cutoff_50.json"
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/analysis/interaction-footprint-analysis
python venn_diagram_flareplot.py $POLAR_NETWORK_JSON1 $POLAR_NETWORK_JSON2 $OUTPUT_FILE -sim



POLAR_NETWORK_JSON1="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/interaction-footprint-analysis/residue-resolution-evobundle-input/033117_crystal_vs_simulation/DOR_inactive/DOR_inactive_crystal.json"
POLAR_NETWORK_JSON2="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/interaction-footprint-analysis/residue-resolution-evobundle-input/033117_crystal_vs_simulation/DOR_inactive/DOR_inactive_simulation_cutoff_75.json"
OUTPUT_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/interaction-footprint-analysis/residue-resolution-evobundle-input/033117_crystal_vs_simulation/DOR_inactive/venn_diagram/sim_only/DOR_inactive_simulation_cutoff_75.json"
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/analysis/interaction-footprint-analysis
python venn_diagram_flareplot.py $POLAR_NETWORK_JSON1 $POLAR_NETWORK_JSON2 $OUTPUT_FILE -sim



POLAR_NETWORK_JSON1="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/interaction-footprint-analysis/residue-resolution-evobundle-input/033117_crystal_vs_simulation/DOR_inactive/DOR_inactive_crystal.json"
POLAR_NETWORK_JSON2="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/interaction-footprint-analysis/residue-resolution-evobundle-input/033117_crystal_vs_simulation/DOR_inactive/DOR_inactive_simulation_cutoff_95.json"
OUTPUT_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/interaction-footprint-analysis/residue-resolution-evobundle-input/033117_crystal_vs_simulation/DOR_inactive/venn_diagram/sim_only/DOR_inactive_simulation_cutoff_95.json"
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/analysis/interaction-footprint-analysis
python venn_diagram_flareplot.py $POLAR_NETWORK_JSON1 $POLAR_NETWORK_JSON2 $OUTPUT_FILE -sim






# M2R INACTIVE ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

# Crystal Structure with frequencies

FOOTPRINT_TABLE="/scratch/PI/rondror/akma327/DynamicNetworks/results/non-state-decomposition/residue-resolution-combined-rep/033117_crystal_vs_simulation/M2R_inactive/crystal/M2R_inactive_crystal_filtered.txt"
EXP_REP_ID="M2R:inactive:QNB-orthosteric:16.4us"
OUTPUT_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/interaction-footprint-analysis/residue-resolution-evobundle-input/033117_crystal_vs_simulation/M2R_inactive/M2R_inactive_crystal.json"
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/analysis/interaction-footprint-analysis
python footprint_summary_evobundle.py $FOOTPRINT_TABLE $EXP_REP_ID $OUTPUT_FILE -receptor M2R -no-conserve  -cutoff 0.0 -inter


# Crystal structure with 0.5 frequencies for all - just schematic purpose 


FOOTPRINT_TABLE="/scratch/PI/rondror/akma327/DynamicNetworks/results/non-state-decomposition/residue-resolution-combined-rep/033117_crystal_vs_simulation/M2R_inactive/crystal/M2R_inactive_crystal_samefreq_filtered.txt"
EXP_REP_ID="M2R:inactive:QNB-orthosteric:16.4us"
OUTPUT_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/interaction-footprint-analysis/residue-resolution-evobundle-input/033117_crystal_vs_simulation/M2R_inactive/M2R_inactive_crystal_samefreq.json"
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/analysis/interaction-footprint-analysis
python footprint_summary_evobundle.py $FOOTPRINT_TABLE $EXP_REP_ID $OUTPUT_FILE -receptor M2R -no-conserve  -cutoff 0.0 -inter



# Simulation 

FOOTPRINT_TABLE="/scratch/PI/rondror/akma327/DynamicNetworks/results/non-state-decomposition/residue-resolution-combined-rep/033117_crystal_vs_simulation/M2R_inactive/simulation/M2R_inactive_simulation_filtered.txt"
EXP_REP_ID="M2R:inactive:QNB-orthosteric:16.4us"
OUTPUT_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/interaction-footprint-analysis/residue-resolution-evobundle-input/033117_crystal_vs_simulation/M2R_inactive/M2R_inactive_simulation_cutoff_0.json"
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/analysis/interaction-footprint-analysis
python footprint_summary_evobundle.py $FOOTPRINT_TABLE $EXP_REP_ID $OUTPUT_FILE -receptor M2R -no-conserve  -cutoff 0.0 -inter


FOOTPRINT_TABLE="/scratch/PI/rondror/akma327/DynamicNetworks/results/non-state-decomposition/residue-resolution-combined-rep/033117_crystal_vs_simulation/M2R_inactive/simulation/M2R_inactive_simulation_filtered.txt"
EXP_REP_ID="M2R:inactive:QNB-orthosteric:16.4us"
OUTPUT_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/interaction-footprint-analysis/residue-resolution-evobundle-input/033117_crystal_vs_simulation/M2R_inactive/M2R_inactive_simulation_cutoff_15.json"
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/analysis/interaction-footprint-analysis
python footprint_summary_evobundle.py $FOOTPRINT_TABLE $EXP_REP_ID $OUTPUT_FILE -receptor M2R -no-conserve  -cutoff 0.15 -inter



FOOTPRINT_TABLE="/scratch/PI/rondror/akma327/DynamicNetworks/results/non-state-decomposition/residue-resolution-combined-rep/033117_crystal_vs_simulation/M2R_inactive/simulation/M2R_inactive_simulation_filtered.txt"
EXP_REP_ID="M2R:inactive:QNB-orthosteric:16.4us"
OUTPUT_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/interaction-footprint-analysis/residue-resolution-evobundle-input/033117_crystal_vs_simulation/M2R_inactive/M2R_inactive_simulation_cutoff_25.json"
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/analysis/interaction-footprint-analysis
python footprint_summary_evobundle.py $FOOTPRINT_TABLE $EXP_REP_ID $OUTPUT_FILE -receptor M2R -no-conserve  -cutoff 0.25 -inter


FOOTPRINT_TABLE="/scratch/PI/rondror/akma327/DynamicNetworks/results/non-state-decomposition/residue-resolution-combined-rep/033117_crystal_vs_simulation/M2R_inactive/simulation/M2R_inactive_simulation_filtered.txt"
EXP_REP_ID="M2R:inactive:QNB-orthosteric:16.4us"
OUTPUT_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/interaction-footprint-analysis/residue-resolution-evobundle-input/033117_crystal_vs_simulation/M2R_inactive/M2R_inactive_simulation_cutoff_50.json"
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/analysis/interaction-footprint-analysis
python footprint_summary_evobundle.py $FOOTPRINT_TABLE $EXP_REP_ID $OUTPUT_FILE -receptor M2R -no-conserve  -cutoff 0.50 -inter


FOOTPRINT_TABLE="/scratch/PI/rondror/akma327/DynamicNetworks/results/non-state-decomposition/residue-resolution-combined-rep/033117_crystal_vs_simulation/M2R_inactive/simulation/M2R_inactive_simulation_filtered.txt"
EXP_REP_ID="M2R:inactive:QNB-orthosteric:16.4us"
OUTPUT_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/interaction-footprint-analysis/residue-resolution-evobundle-input/033117_crystal_vs_simulation/M2R_inactive/M2R_inactive_simulation_cutoff_75.json"
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/analysis/interaction-footprint-analysis
python footprint_summary_evobundle.py $FOOTPRINT_TABLE $EXP_REP_ID $OUTPUT_FILE -receptor M2R -no-conserve  -cutoff 0.75 -inter


FOOTPRINT_TABLE="/scratch/PI/rondror/akma327/DynamicNetworks/results/non-state-decomposition/residue-resolution-combined-rep/033117_crystal_vs_simulation/M2R_inactive/simulation/M2R_inactive_simulation_filtered.txt"
EXP_REP_ID="M2R:inactive:QNB-orthosteric:16.4us"
OUTPUT_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/interaction-footprint-analysis/residue-resolution-evobundle-input/033117_crystal_vs_simulation/M2R_inactive/M2R_inactive_simulation_cutoff_95.json"
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/analysis/interaction-footprint-analysis
python footprint_summary_evobundle.py $FOOTPRINT_TABLE $EXP_REP_ID $OUTPUT_FILE -receptor M2R -no-conserve  -cutoff 0.95 -inter



### GENERATE VENN DIAGRAM FLAREPLOTS


# Show all three colors for crystal vs simulation (magenta, orange, and cyan)
POLAR_NETWORK_JSON1="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/interaction-footprint-analysis/residue-resolution-evobundle-input/033117_crystal_vs_simulation/M2R_inactive/M2R_inactive_crystal.json"
POLAR_NETWORK_JSON2="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/interaction-footprint-analysis/residue-resolution-evobundle-input/033117_crystal_vs_simulation/M2R_inactive/M2R_inactive_simulation_cutoff_0.json"
OUTPUT_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/interaction-footprint-analysis/residue-resolution-evobundle-input/033117_crystal_vs_simulation/M2R_inactive/venn_diagram/crys_and_sim/M2R_inactive_crystal_vs_simulation_cutoff_0.json"
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/analysis/interaction-footprint-analysis
python venn_diagram_flareplot.py $POLAR_NETWORK_JSON1 $POLAR_NETWORK_JSON2 $OUTPUT_FILE


POLAR_NETWORK_JSON1="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/interaction-footprint-analysis/residue-resolution-evobundle-input/033117_crystal_vs_simulation/M2R_inactive/M2R_inactive_crystal.json"
POLAR_NETWORK_JSON2="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/interaction-footprint-analysis/residue-resolution-evobundle-input/033117_crystal_vs_simulation/M2R_inactive/M2R_inactive_simulation_cutoff_15.json"
OUTPUT_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/interaction-footprint-analysis/residue-resolution-evobundle-input/033117_crystal_vs_simulation/M2R_inactive/venn_diagram/crys_and_sim/M2R_inactive_crystal_vs_simulation_cutoff_15.json"
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/analysis/interaction-footprint-analysis
python venn_diagram_flareplot.py $POLAR_NETWORK_JSON1 $POLAR_NETWORK_JSON2 $OUTPUT_FILE


POLAR_NETWORK_JSON1="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/interaction-footprint-analysis/residue-resolution-evobundle-input/033117_crystal_vs_simulation/M2R_inactive/M2R_inactive_crystal.json"
POLAR_NETWORK_JSON2="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/interaction-footprint-analysis/residue-resolution-evobundle-input/033117_crystal_vs_simulation/M2R_inactive/M2R_inactive_simulation_cutoff_25.json"
OUTPUT_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/interaction-footprint-analysis/residue-resolution-evobundle-input/033117_crystal_vs_simulation/M2R_inactive/venn_diagram/crys_and_sim/M2R_inactive_crystal_vs_simulation_cutoff_25.json"
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/analysis/interaction-footprint-analysis
python venn_diagram_flareplot.py $POLAR_NETWORK_JSON1 $POLAR_NETWORK_JSON2 $OUTPUT_FILE



POLAR_NETWORK_JSON1="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/interaction-footprint-analysis/residue-resolution-evobundle-input/033117_crystal_vs_simulation/M2R_inactive/M2R_inactive_crystal.json"
POLAR_NETWORK_JSON2="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/interaction-footprint-analysis/residue-resolution-evobundle-input/033117_crystal_vs_simulation/M2R_inactive/M2R_inactive_simulation_cutoff_50.json"
OUTPUT_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/interaction-footprint-analysis/residue-resolution-evobundle-input/033117_crystal_vs_simulation/M2R_inactive/venn_diagram/crys_and_sim/M2R_inactive_crystal_vs_simulation_cutoff_50.json"
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/analysis/interaction-footprint-analysis
python venn_diagram_flareplot.py $POLAR_NETWORK_JSON1 $POLAR_NETWORK_JSON2 $OUTPUT_FILE



POLAR_NETWORK_JSON1="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/interaction-footprint-analysis/residue-resolution-evobundle-input/033117_crystal_vs_simulation/M2R_inactive/M2R_inactive_crystal.json"
POLAR_NETWORK_JSON2="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/interaction-footprint-analysis/residue-resolution-evobundle-input/033117_crystal_vs_simulation/M2R_inactive/M2R_inactive_simulation_cutoff_75.json"
OUTPUT_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/interaction-footprint-analysis/residue-resolution-evobundle-input/033117_crystal_vs_simulation/M2R_inactive/venn_diagram/crys_and_sim/M2R_inactive_crystal_vs_simulation_cutoff_75.json"
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/analysis/interaction-footprint-analysis
python venn_diagram_flareplot.py $POLAR_NETWORK_JSON1 $POLAR_NETWORK_JSON2 $OUTPUT_FILE

POLAR_NETWORK_JSON1="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/interaction-footprint-analysis/residue-resolution-evobundle-input/033117_crystal_vs_simulation/M2R_inactive/M2R_inactive_crystal.json"
POLAR_NETWORK_JSON2="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/interaction-footprint-analysis/residue-resolution-evobundle-input/033117_crystal_vs_simulation/M2R_inactive/M2R_inactive_simulation_cutoff_95.json"
OUTPUT_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/interaction-footprint-analysis/residue-resolution-evobundle-input/033117_crystal_vs_simulation/M2R_inactive/venn_diagram/crys_and_sim/M2R_inactive_crystal_vs_simulation_cutoff_95.json"
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/analysis/interaction-footprint-analysis
python venn_diagram_flareplot.py $POLAR_NETWORK_JSON1 $POLAR_NETWORK_JSON2 $OUTPUT_FILE

# Show only colors for crystal (magenta, orange)

POLAR_NETWORK_JSON1="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/interaction-footprint-analysis/residue-resolution-evobundle-input/033117_crystal_vs_simulation/M2R_inactive/M2R_inactive_crystal.json"
POLAR_NETWORK_JSON2="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/interaction-footprint-analysis/residue-resolution-evobundle-input/033117_crystal_vs_simulation/M2R_inactive/M2R_inactive_simulation_cutoff_0.json"
OUTPUT_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/interaction-footprint-analysis/residue-resolution-evobundle-input/033117_crystal_vs_simulation/M2R_inactive/venn_diagram/crys_only/M2R_inactive_crystal_cutoff_0.json"
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/analysis/interaction-footprint-analysis
python venn_diagram_flareplot.py $POLAR_NETWORK_JSON1 $POLAR_NETWORK_JSON2 $OUTPUT_FILE -crys


POLAR_NETWORK_JSON1="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/interaction-footprint-analysis/residue-resolution-evobundle-input/033117_crystal_vs_simulation/M2R_inactive/M2R_inactive_crystal.json"
POLAR_NETWORK_JSON2="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/interaction-footprint-analysis/residue-resolution-evobundle-input/033117_crystal_vs_simulation/M2R_inactive/M2R_inactive_simulation_cutoff_15.json"
OUTPUT_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/interaction-footprint-analysis/residue-resolution-evobundle-input/033117_crystal_vs_simulation/M2R_inactive/venn_diagram/crys_only/M2R_inactive_crystal_cutoff_15.json"
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/analysis/interaction-footprint-analysis
python venn_diagram_flareplot.py $POLAR_NETWORK_JSON1 $POLAR_NETWORK_JSON2 $OUTPUT_FILE -crys




POLAR_NETWORK_JSON1="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/interaction-footprint-analysis/residue-resolution-evobundle-input/033117_crystal_vs_simulation/M2R_inactive/M2R_inactive_crystal.json"
POLAR_NETWORK_JSON2="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/interaction-footprint-analysis/residue-resolution-evobundle-input/033117_crystal_vs_simulation/M2R_inactive/M2R_inactive_simulation_cutoff_25.json"
OUTPUT_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/interaction-footprint-analysis/residue-resolution-evobundle-input/033117_crystal_vs_simulation/M2R_inactive/venn_diagram/crys_only/M2R_inactive_crystal_cutoff_25.json"
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/analysis/interaction-footprint-analysis
python venn_diagram_flareplot.py $POLAR_NETWORK_JSON1 $POLAR_NETWORK_JSON2 $OUTPUT_FILE -crys



POLAR_NETWORK_JSON1="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/interaction-footprint-analysis/residue-resolution-evobundle-input/033117_crystal_vs_simulation/M2R_inactive/M2R_inactive_crystal.json"
POLAR_NETWORK_JSON2="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/interaction-footprint-analysis/residue-resolution-evobundle-input/033117_crystal_vs_simulation/M2R_inactive/M2R_inactive_simulation_cutoff_50.json"
OUTPUT_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/interaction-footprint-analysis/residue-resolution-evobundle-input/033117_crystal_vs_simulation/M2R_inactive/venn_diagram/crys_only/M2R_inactive_crystal_cutoff_50.json"
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/analysis/interaction-footprint-analysis
python venn_diagram_flareplot.py $POLAR_NETWORK_JSON1 $POLAR_NETWORK_JSON2 $OUTPUT_FILE -crys



POLAR_NETWORK_JSON1="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/interaction-footprint-analysis/residue-resolution-evobundle-input/033117_crystal_vs_simulation/M2R_inactive/M2R_inactive_crystal.json"
POLAR_NETWORK_JSON2="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/interaction-footprint-analysis/residue-resolution-evobundle-input/033117_crystal_vs_simulation/M2R_inactive/M2R_inactive_simulation_cutoff_75.json"
OUTPUT_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/interaction-footprint-analysis/residue-resolution-evobundle-input/033117_crystal_vs_simulation/M2R_inactive/venn_diagram/crys_only/M2R_inactive_crystal_cutoff_75.json"
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/analysis/interaction-footprint-analysis
python venn_diagram_flareplot.py $POLAR_NETWORK_JSON1 $POLAR_NETWORK_JSON2 $OUTPUT_FILE -crys


POLAR_NETWORK_JSON1="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/interaction-footprint-analysis/residue-resolution-evobundle-input/033117_crystal_vs_simulation/M2R_inactive/M2R_inactive_crystal.json"
POLAR_NETWORK_JSON2="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/interaction-footprint-analysis/residue-resolution-evobundle-input/033117_crystal_vs_simulation/M2R_inactive/M2R_inactive_simulation_cutoff_95.json"
OUTPUT_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/interaction-footprint-analysis/residue-resolution-evobundle-input/033117_crystal_vs_simulation/M2R_inactive/venn_diagram/crys_only/M2R_inactive_crystal_cutoff_95.json"
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/analysis/interaction-footprint-analysis
python venn_diagram_flareplot.py $POLAR_NETWORK_JSON1 $POLAR_NETWORK_JSON2 $OUTPUT_FILE -crys



# Show only colors for simulation (cyan)
POLAR_NETWORK_JSON1="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/interaction-footprint-analysis/residue-resolution-evobundle-input/033117_crystal_vs_simulation/M2R_inactive/M2R_inactive_crystal.json"
POLAR_NETWORK_JSON2="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/interaction-footprint-analysis/residue-resolution-evobundle-input/033117_crystal_vs_simulation/M2R_inactive/M2R_inactive_simulation_cutoff_0.json"
OUTPUT_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/interaction-footprint-analysis/residue-resolution-evobundle-input/033117_crystal_vs_simulation/M2R_inactive/venn_diagram/sim_only/M2R_inactive_simulation_cutoff_0.json"
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/analysis/interaction-footprint-analysis
python venn_diagram_flareplot.py $POLAR_NETWORK_JSON1 $POLAR_NETWORK_JSON2 $OUTPUT_FILE -sim


POLAR_NETWORK_JSON1="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/interaction-footprint-analysis/residue-resolution-evobundle-input/033117_crystal_vs_simulation/M2R_inactive/M2R_inactive_crystal.json"
POLAR_NETWORK_JSON2="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/interaction-footprint-analysis/residue-resolution-evobundle-input/033117_crystal_vs_simulation/M2R_inactive/M2R_inactive_simulation_cutoff_15.json"
OUTPUT_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/interaction-footprint-analysis/residue-resolution-evobundle-input/033117_crystal_vs_simulation/M2R_inactive/venn_diagram/sim_only/M2R_inactive_simulation_cutoff_15.json"
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/analysis/interaction-footprint-analysis
python venn_diagram_flareplot.py $POLAR_NETWORK_JSON1 $POLAR_NETWORK_JSON2 $OUTPUT_FILE -sim



POLAR_NETWORK_JSON1="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/interaction-footprint-analysis/residue-resolution-evobundle-input/033117_crystal_vs_simulation/M2R_inactive/M2R_inactive_crystal.json"
POLAR_NETWORK_JSON2="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/interaction-footprint-analysis/residue-resolution-evobundle-input/033117_crystal_vs_simulation/M2R_inactive/M2R_inactive_simulation_cutoff_25.json"
OUTPUT_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/interaction-footprint-analysis/residue-resolution-evobundle-input/033117_crystal_vs_simulation/M2R_inactive/venn_diagram/sim_only/M2R_inactive_simulation_cutoff_25.json"
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/analysis/interaction-footprint-analysis
python venn_diagram_flareplot.py $POLAR_NETWORK_JSON1 $POLAR_NETWORK_JSON2 $OUTPUT_FILE -sim



POLAR_NETWORK_JSON1="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/interaction-footprint-analysis/residue-resolution-evobundle-input/033117_crystal_vs_simulation/M2R_inactive/M2R_inactive_crystal.json"
POLAR_NETWORK_JSON2="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/interaction-footprint-analysis/residue-resolution-evobundle-input/033117_crystal_vs_simulation/M2R_inactive/M2R_inactive_simulation_cutoff_50.json"
OUTPUT_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/interaction-footprint-analysis/residue-resolution-evobundle-input/033117_crystal_vs_simulation/M2R_inactive/venn_diagram/sim_only/M2R_inactive_simulation_cutoff_50.json"
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/analysis/interaction-footprint-analysis
python venn_diagram_flareplot.py $POLAR_NETWORK_JSON1 $POLAR_NETWORK_JSON2 $OUTPUT_FILE -sim



POLAR_NETWORK_JSON1="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/interaction-footprint-analysis/residue-resolution-evobundle-input/033117_crystal_vs_simulation/M2R_inactive/M2R_inactive_crystal.json"
POLAR_NETWORK_JSON2="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/interaction-footprint-analysis/residue-resolution-evobundle-input/033117_crystal_vs_simulation/M2R_inactive/M2R_inactive_simulation_cutoff_75.json"
OUTPUT_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/interaction-footprint-analysis/residue-resolution-evobundle-input/033117_crystal_vs_simulation/M2R_inactive/venn_diagram/sim_only/M2R_inactive_simulation_cutoff_75.json"
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/analysis/interaction-footprint-analysis
python venn_diagram_flareplot.py $POLAR_NETWORK_JSON1 $POLAR_NETWORK_JSON2 $OUTPUT_FILE -sim


POLAR_NETWORK_JSON1="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/interaction-footprint-analysis/residue-resolution-evobundle-input/033117_crystal_vs_simulation/M2R_inactive/M2R_inactive_crystal.json"
POLAR_NETWORK_JSON2="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/interaction-footprint-analysis/residue-resolution-evobundle-input/033117_crystal_vs_simulation/M2R_inactive/M2R_inactive_simulation_cutoff_95.json"
OUTPUT_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/interaction-footprint-analysis/residue-resolution-evobundle-input/033117_crystal_vs_simulation/M2R_inactive/venn_diagram/sim_only/M2R_inactive_simulation_cutoff_95.json"
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/analysis/interaction-footprint-analysis
python venn_diagram_flareplot.py $POLAR_NETWORK_JSON1 $POLAR_NETWORK_JSON2 $OUTPUT_FILE -sim








# MOR INACTIVE ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

# Crystal Structure with frequencies

FOOTPRINT_TABLE="/scratch/PI/rondror/akma327/DynamicNetworks/results/non-state-decomposition/residue-resolution-combined-rep/033117_crystal_vs_simulation/MOR_inactive/crystal/MOR_inactive_crystal_filtered.txt"
EXP_REP_ID="MOR:inactive:bFNA-antagonist-bound_to_K233"
OUTPUT_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/interaction-footprint-analysis/residue-resolution-evobundle-input/033117_crystal_vs_simulation/MOR_inactive/MOR_inactive_crystal.json"
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/analysis/interaction-footprint-analysis
python footprint_summary_evobundle.py $FOOTPRINT_TABLE $EXP_REP_ID $OUTPUT_FILE -receptor MOR -no-conserve  -cutoff 0.0 -inter


# Crystal structure with 0.5 frequencies for all - just schematic purpose 


FOOTPRINT_TABLE="/scratch/PI/rondror/akma327/DynamicNetworks/results/non-state-decomposition/residue-resolution-combined-rep/033117_crystal_vs_simulation/MOR_inactive/crystal/MOR_inactive_crystal_samefreq_filtered.txt"
EXP_REP_ID="MOR:inactive:bFNA-antagonist-bound_to_K233"
OUTPUT_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/interaction-footprint-analysis/residue-resolution-evobundle-input/033117_crystal_vs_simulation/MOR_inactive/MOR_inactive_crystal_samefreq.json"
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/analysis/interaction-footprint-analysis
python footprint_summary_evobundle.py $FOOTPRINT_TABLE $EXP_REP_ID $OUTPUT_FILE -receptor MOR -no-conserve  -cutoff 0.0 -inter



# Simulation 

FOOTPRINT_TABLE="/scratch/PI/rondror/akma327/DynamicNetworks/results/non-state-decomposition/residue-resolution-combined-rep/033117_crystal_vs_simulation/MOR_inactive/simulation/MOR_inactive_simulation_filtered.txt"
EXP_REP_ID="MOR:inactive:bFNA-antagonist-bound_to_K233"
OUTPUT_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/interaction-footprint-analysis/residue-resolution-evobundle-input/033117_crystal_vs_simulation/MOR_inactive/MOR_inactive_simulation_cutoff_0.json"
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/analysis/interaction-footprint-analysis
python footprint_summary_evobundle.py $FOOTPRINT_TABLE $EXP_REP_ID $OUTPUT_FILE -receptor MOR -no-conserve  -cutoff 0.0 -inter


FOOTPRINT_TABLE="/scratch/PI/rondror/akma327/DynamicNetworks/results/non-state-decomposition/residue-resolution-combined-rep/033117_crystal_vs_simulation/MOR_inactive/simulation/MOR_inactive_simulation_filtered.txt"
EXP_REP_ID="MOR:inactive:bFNA-antagonist-bound_to_K233"
OUTPUT_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/interaction-footprint-analysis/residue-resolution-evobundle-input/033117_crystal_vs_simulation/MOR_inactive/MOR_inactive_simulation_cutoff_15.json"
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/analysis/interaction-footprint-analysis
python footprint_summary_evobundle.py $FOOTPRINT_TABLE $EXP_REP_ID $OUTPUT_FILE -receptor MOR -no-conserve  -cutoff 0.15 -inter



FOOTPRINT_TABLE="/scratch/PI/rondror/akma327/DynamicNetworks/results/non-state-decomposition/residue-resolution-combined-rep/033117_crystal_vs_simulation/MOR_inactive/simulation/MOR_inactive_simulation_filtered.txt"
EXP_REP_ID="MOR:inactive:bFNA-antagonist-bound_to_K233"
OUTPUT_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/interaction-footprint-analysis/residue-resolution-evobundle-input/033117_crystal_vs_simulation/MOR_inactive/MOR_inactive_simulation_cutoff_25.json"
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/analysis/interaction-footprint-analysis
python footprint_summary_evobundle.py $FOOTPRINT_TABLE $EXP_REP_ID $OUTPUT_FILE -receptor MOR -no-conserve  -cutoff 0.25 -inter


FOOTPRINT_TABLE="/scratch/PI/rondror/akma327/DynamicNetworks/results/non-state-decomposition/residue-resolution-combined-rep/033117_crystal_vs_simulation/MOR_inactive/simulation/MOR_inactive_simulation_filtered.txt"
EXP_REP_ID="MOR:inactive:bFNA-antagonist-bound_to_K233"
OUTPUT_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/interaction-footprint-analysis/residue-resolution-evobundle-input/033117_crystal_vs_simulation/MOR_inactive/MOR_inactive_simulation_cutoff_50.json"
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/analysis/interaction-footprint-analysis
python footprint_summary_evobundle.py $FOOTPRINT_TABLE $EXP_REP_ID $OUTPUT_FILE -receptor MOR -no-conserve  -cutoff 0.50 -inter


FOOTPRINT_TABLE="/scratch/PI/rondror/akma327/DynamicNetworks/results/non-state-decomposition/residue-resolution-combined-rep/033117_crystal_vs_simulation/MOR_inactive/simulation/MOR_inactive_simulation_filtered.txt"
EXP_REP_ID="MOR:inactive:bFNA-antagonist-bound_to_K233"
OUTPUT_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/interaction-footprint-analysis/residue-resolution-evobundle-input/033117_crystal_vs_simulation/MOR_inactive/MOR_inactive_simulation_cutoff_75.json"
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/analysis/interaction-footprint-analysis
python footprint_summary_evobundle.py $FOOTPRINT_TABLE $EXP_REP_ID $OUTPUT_FILE -receptor MOR -no-conserve  -cutoff 0.75 -inter



FOOTPRINT_TABLE="/scratch/PI/rondror/akma327/DynamicNetworks/results/non-state-decomposition/residue-resolution-combined-rep/033117_crystal_vs_simulation/MOR_inactive/simulation/MOR_inactive_simulation_filtered.txt"
EXP_REP_ID="MOR:inactive:bFNA-antagonist-bound_to_K233"
OUTPUT_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/interaction-footprint-analysis/residue-resolution-evobundle-input/033117_crystal_vs_simulation/MOR_inactive/MOR_inactive_simulation_cutoff_95.json"
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/analysis/interaction-footprint-analysis
python footprint_summary_evobundle.py $FOOTPRINT_TABLE $EXP_REP_ID $OUTPUT_FILE -receptor MOR -no-conserve  -cutoff 0.95 -inter




### GENERATE VENN DIAGRAM FLAREPLOTS


# Show all three colors for crystal vs simulation (magenta, orange, and cyan)
POLAR_NETWORK_JSON1="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/interaction-footprint-analysis/residue-resolution-evobundle-input/033117_crystal_vs_simulation/MOR_inactive/MOR_inactive_crystal.json"
POLAR_NETWORK_JSON2="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/interaction-footprint-analysis/residue-resolution-evobundle-input/033117_crystal_vs_simulation/MOR_inactive/MOR_inactive_simulation_cutoff_0.json"
OUTPUT_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/interaction-footprint-analysis/residue-resolution-evobundle-input/033117_crystal_vs_simulation/MOR_inactive/venn_diagram/crys_and_sim/MOR_inactive_crystal_vs_simulation_cutoff_0.json"
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/analysis/interaction-footprint-analysis
python venn_diagram_flareplot.py $POLAR_NETWORK_JSON1 $POLAR_NETWORK_JSON2 $OUTPUT_FILE


POLAR_NETWORK_JSON1="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/interaction-footprint-analysis/residue-resolution-evobundle-input/033117_crystal_vs_simulation/MOR_inactive/MOR_inactive_crystal.json"
POLAR_NETWORK_JSON2="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/interaction-footprint-analysis/residue-resolution-evobundle-input/033117_crystal_vs_simulation/MOR_inactive/MOR_inactive_simulation_cutoff_15.json"
OUTPUT_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/interaction-footprint-analysis/residue-resolution-evobundle-input/033117_crystal_vs_simulation/MOR_inactive/venn_diagram/crys_and_sim/MOR_inactive_crystal_vs_simulation_cutoff_15.json"
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/analysis/interaction-footprint-analysis
python venn_diagram_flareplot.py $POLAR_NETWORK_JSON1 $POLAR_NETWORK_JSON2 $OUTPUT_FILE




POLAR_NETWORK_JSON1="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/interaction-footprint-analysis/residue-resolution-evobundle-input/033117_crystal_vs_simulation/MOR_inactive/MOR_inactive_crystal.json"
POLAR_NETWORK_JSON2="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/interaction-footprint-analysis/residue-resolution-evobundle-input/033117_crystal_vs_simulation/MOR_inactive/MOR_inactive_simulation_cutoff_25.json"
OUTPUT_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/interaction-footprint-analysis/residue-resolution-evobundle-input/033117_crystal_vs_simulation/MOR_inactive/venn_diagram/crys_and_sim/MOR_inactive_crystal_vs_simulation_cutoff_25.json"
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/analysis/interaction-footprint-analysis
python venn_diagram_flareplot.py $POLAR_NETWORK_JSON1 $POLAR_NETWORK_JSON2 $OUTPUT_FILE



POLAR_NETWORK_JSON1="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/interaction-footprint-analysis/residue-resolution-evobundle-input/033117_crystal_vs_simulation/MOR_inactive/MOR_inactive_crystal.json"
POLAR_NETWORK_JSON2="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/interaction-footprint-analysis/residue-resolution-evobundle-input/033117_crystal_vs_simulation/MOR_inactive/MOR_inactive_simulation_cutoff_50.json"
OUTPUT_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/interaction-footprint-analysis/residue-resolution-evobundle-input/033117_crystal_vs_simulation/MOR_inactive/venn_diagram/crys_and_sim/MOR_inactive_crystal_vs_simulation_cutoff_50.json"
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/analysis/interaction-footprint-analysis
python venn_diagram_flareplot.py $POLAR_NETWORK_JSON1 $POLAR_NETWORK_JSON2 $OUTPUT_FILE



POLAR_NETWORK_JSON1="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/interaction-footprint-analysis/residue-resolution-evobundle-input/033117_crystal_vs_simulation/MOR_inactive/MOR_inactive_crystal.json"
POLAR_NETWORK_JSON2="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/interaction-footprint-analysis/residue-resolution-evobundle-input/033117_crystal_vs_simulation/MOR_inactive/MOR_inactive_simulation_cutoff_75.json"
OUTPUT_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/interaction-footprint-analysis/residue-resolution-evobundle-input/033117_crystal_vs_simulation/MOR_inactive/venn_diagram/crys_and_sim/MOR_inactive_crystal_vs_simulation_cutoff_75.json"
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/analysis/interaction-footprint-analysis
python venn_diagram_flareplot.py $POLAR_NETWORK_JSON1 $POLAR_NETWORK_JSON2 $OUTPUT_FILE



POLAR_NETWORK_JSON1="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/interaction-footprint-analysis/residue-resolution-evobundle-input/033117_crystal_vs_simulation/MOR_inactive/MOR_inactive_crystal.json"
POLAR_NETWORK_JSON2="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/interaction-footprint-analysis/residue-resolution-evobundle-input/033117_crystal_vs_simulation/MOR_inactive/MOR_inactive_simulation_cutoff_95.json"
OUTPUT_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/interaction-footprint-analysis/residue-resolution-evobundle-input/033117_crystal_vs_simulation/MOR_inactive/venn_diagram/crys_and_sim/MOR_inactive_crystal_vs_simulation_cutoff_95.json"
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/analysis/interaction-footprint-analysis
python venn_diagram_flareplot.py $POLAR_NETWORK_JSON1 $POLAR_NETWORK_JSON2 $OUTPUT_FILE

# Show only colors for crystal (magenta, orange)

POLAR_NETWORK_JSON1="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/interaction-footprint-analysis/residue-resolution-evobundle-input/033117_crystal_vs_simulation/MOR_inactive/MOR_inactive_crystal.json"
POLAR_NETWORK_JSON2="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/interaction-footprint-analysis/residue-resolution-evobundle-input/033117_crystal_vs_simulation/MOR_inactive/MOR_inactive_simulation_cutoff_0.json"
OUTPUT_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/interaction-footprint-analysis/residue-resolution-evobundle-input/033117_crystal_vs_simulation/MOR_inactive/venn_diagram/crys_only/MOR_inactive_crystal_cutoff_0.json"
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/analysis/interaction-footprint-analysis
python venn_diagram_flareplot.py $POLAR_NETWORK_JSON1 $POLAR_NETWORK_JSON2 $OUTPUT_FILE -crys



POLAR_NETWORK_JSON1="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/interaction-footprint-analysis/residue-resolution-evobundle-input/033117_crystal_vs_simulation/MOR_inactive/MOR_inactive_crystal.json"
POLAR_NETWORK_JSON2="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/interaction-footprint-analysis/residue-resolution-evobundle-input/033117_crystal_vs_simulation/MOR_inactive/MOR_inactive_simulation_cutoff_15.json"
OUTPUT_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/interaction-footprint-analysis/residue-resolution-evobundle-input/033117_crystal_vs_simulation/MOR_inactive/venn_diagram/crys_only/MOR_inactive_crystal_cutoff_15.json"
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/analysis/interaction-footprint-analysis
python venn_diagram_flareplot.py $POLAR_NETWORK_JSON1 $POLAR_NETWORK_JSON2 $OUTPUT_FILE -crys



POLAR_NETWORK_JSON1="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/interaction-footprint-analysis/residue-resolution-evobundle-input/033117_crystal_vs_simulation/MOR_inactive/MOR_inactive_crystal.json"
POLAR_NETWORK_JSON2="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/interaction-footprint-analysis/residue-resolution-evobundle-input/033117_crystal_vs_simulation/MOR_inactive/MOR_inactive_simulation_cutoff_25.json"
OUTPUT_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/interaction-footprint-analysis/residue-resolution-evobundle-input/033117_crystal_vs_simulation/MOR_inactive/venn_diagram/crys_only/MOR_inactive_crystal_cutoff_25.json"
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/analysis/interaction-footprint-analysis
python venn_diagram_flareplot.py $POLAR_NETWORK_JSON1 $POLAR_NETWORK_JSON2 $OUTPUT_FILE -crys



POLAR_NETWORK_JSON1="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/interaction-footprint-analysis/residue-resolution-evobundle-input/033117_crystal_vs_simulation/MOR_inactive/MOR_inactive_crystal.json"
POLAR_NETWORK_JSON2="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/interaction-footprint-analysis/residue-resolution-evobundle-input/033117_crystal_vs_simulation/MOR_inactive/MOR_inactive_simulation_cutoff_50.json"
OUTPUT_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/interaction-footprint-analysis/residue-resolution-evobundle-input/033117_crystal_vs_simulation/MOR_inactive/venn_diagram/crys_only/MOR_inactive_crystal_cutoff_50.json"
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/analysis/interaction-footprint-analysis
python venn_diagram_flareplot.py $POLAR_NETWORK_JSON1 $POLAR_NETWORK_JSON2 $OUTPUT_FILE -crys



POLAR_NETWORK_JSON1="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/interaction-footprint-analysis/residue-resolution-evobundle-input/033117_crystal_vs_simulation/MOR_inactive/MOR_inactive_crystal.json"
POLAR_NETWORK_JSON2="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/interaction-footprint-analysis/residue-resolution-evobundle-input/033117_crystal_vs_simulation/MOR_inactive/MOR_inactive_simulation_cutoff_75.json"
OUTPUT_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/interaction-footprint-analysis/residue-resolution-evobundle-input/033117_crystal_vs_simulation/MOR_inactive/venn_diagram/crys_only/MOR_inactive_crystal_cutoff_75.json"
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/analysis/interaction-footprint-analysis
python venn_diagram_flareplot.py $POLAR_NETWORK_JSON1 $POLAR_NETWORK_JSON2 $OUTPUT_FILE -crys


POLAR_NETWORK_JSON1="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/interaction-footprint-analysis/residue-resolution-evobundle-input/033117_crystal_vs_simulation/MOR_inactive/MOR_inactive_crystal.json"
POLAR_NETWORK_JSON2="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/interaction-footprint-analysis/residue-resolution-evobundle-input/033117_crystal_vs_simulation/MOR_inactive/MOR_inactive_simulation_cutoff_95.json"
OUTPUT_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/interaction-footprint-analysis/residue-resolution-evobundle-input/033117_crystal_vs_simulation/MOR_inactive/venn_diagram/crys_only/MOR_inactive_crystal_cutoff_95.json"
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/analysis/interaction-footprint-analysis
python venn_diagram_flareplot.py $POLAR_NETWORK_JSON1 $POLAR_NETWORK_JSON2 $OUTPUT_FILE -crys



# Show only colors for simulation (cyan)
POLAR_NETWORK_JSON1="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/interaction-footprint-analysis/residue-resolution-evobundle-input/033117_crystal_vs_simulation/MOR_inactive/MOR_inactive_crystal.json"
POLAR_NETWORK_JSON2="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/interaction-footprint-analysis/residue-resolution-evobundle-input/033117_crystal_vs_simulation/MOR_inactive/MOR_inactive_simulation_cutoff_0.json"
OUTPUT_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/interaction-footprint-analysis/residue-resolution-evobundle-input/033117_crystal_vs_simulation/MOR_inactive/venn_diagram/sim_only/MOR_inactive_simulation_cutoff_0.json"
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/analysis/interaction-footprint-analysis
python venn_diagram_flareplot.py $POLAR_NETWORK_JSON1 $POLAR_NETWORK_JSON2 $OUTPUT_FILE -sim



POLAR_NETWORK_JSON1="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/interaction-footprint-analysis/residue-resolution-evobundle-input/033117_crystal_vs_simulation/MOR_inactive/MOR_inactive_crystal.json"
POLAR_NETWORK_JSON2="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/interaction-footprint-analysis/residue-resolution-evobundle-input/033117_crystal_vs_simulation/MOR_inactive/MOR_inactive_simulation_cutoff_15.json"
OUTPUT_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/interaction-footprint-analysis/residue-resolution-evobundle-input/033117_crystal_vs_simulation/MOR_inactive/venn_diagram/sim_only/MOR_inactive_simulation_cutoff_15.json"
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/analysis/interaction-footprint-analysis
python venn_diagram_flareplot.py $POLAR_NETWORK_JSON1 $POLAR_NETWORK_JSON2 $OUTPUT_FILE -sim



POLAR_NETWORK_JSON1="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/interaction-footprint-analysis/residue-resolution-evobundle-input/033117_crystal_vs_simulation/MOR_inactive/MOR_inactive_crystal.json"
POLAR_NETWORK_JSON2="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/interaction-footprint-analysis/residue-resolution-evobundle-input/033117_crystal_vs_simulation/MOR_inactive/MOR_inactive_simulation_cutoff_25.json"
OUTPUT_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/interaction-footprint-analysis/residue-resolution-evobundle-input/033117_crystal_vs_simulation/MOR_inactive/venn_diagram/sim_only/MOR_inactive_simulation_cutoff_25.json"
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/analysis/interaction-footprint-analysis
python venn_diagram_flareplot.py $POLAR_NETWORK_JSON1 $POLAR_NETWORK_JSON2 $OUTPUT_FILE -sim



POLAR_NETWORK_JSON1="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/interaction-footprint-analysis/residue-resolution-evobundle-input/033117_crystal_vs_simulation/MOR_inactive/MOR_inactive_crystal.json"
POLAR_NETWORK_JSON2="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/interaction-footprint-analysis/residue-resolution-evobundle-input/033117_crystal_vs_simulation/MOR_inactive/MOR_inactive_simulation_cutoff_50.json"
OUTPUT_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/interaction-footprint-analysis/residue-resolution-evobundle-input/033117_crystal_vs_simulation/MOR_inactive/venn_diagram/sim_only/MOR_inactive_simulation_cutoff_50.json"
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/analysis/interaction-footprint-analysis
python venn_diagram_flareplot.py $POLAR_NETWORK_JSON1 $POLAR_NETWORK_JSON2 $OUTPUT_FILE -sim



POLAR_NETWORK_JSON1="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/interaction-footprint-analysis/residue-resolution-evobundle-input/033117_crystal_vs_simulation/MOR_inactive/MOR_inactive_crystal.json"
POLAR_NETWORK_JSON2="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/interaction-footprint-analysis/residue-resolution-evobundle-input/033117_crystal_vs_simulation/MOR_inactive/MOR_inactive_simulation_cutoff_75.json"
OUTPUT_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/interaction-footprint-analysis/residue-resolution-evobundle-input/033117_crystal_vs_simulation/MOR_inactive/venn_diagram/sim_only/MOR_inactive_simulation_cutoff_75.json"
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/analysis/interaction-footprint-analysis
python venn_diagram_flareplot.py $POLAR_NETWORK_JSON1 $POLAR_NETWORK_JSON2 $OUTPUT_FILE -sim


POLAR_NETWORK_JSON1="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/interaction-footprint-analysis/residue-resolution-evobundle-input/033117_crystal_vs_simulation/MOR_inactive/MOR_inactive_crystal.json"
POLAR_NETWORK_JSON2="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/interaction-footprint-analysis/residue-resolution-evobundle-input/033117_crystal_vs_simulation/MOR_inactive/MOR_inactive_simulation_cutoff_95.json"
OUTPUT_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/interaction-footprint-analysis/residue-resolution-evobundle-input/033117_crystal_vs_simulation/MOR_inactive/venn_diagram/sim_only/MOR_inactive_simulation_cutoff_95.json"
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/analysis/interaction-footprint-analysis
python venn_diagram_flareplot.py $POLAR_NETWORK_JSON1 $POLAR_NETWORK_JSON2 $OUTPUT_FILE -sim









# MOR ACTIVE ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~


# Crystal Structure with frequencies

FOOTPRINT_TABLE="/scratch/PI/rondror/akma327/DynamicNetworks/results/non-state-decomposition/residue-resolution-combined-rep/033117_crystal_vs_simulation/MOR_active/crystal/MOR_active_crystal_filtered.txt"
EXP_REP_ID="MOR:active-noNb:BU72-nB_interface_restrained"
OUTPUT_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/interaction-footprint-analysis/residue-resolution-evobundle-input/033117_crystal_vs_simulation/MOR_active/MOR_active_crystal.json"
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/analysis/interaction-footprint-analysis
python footprint_summary_evobundle.py $FOOTPRINT_TABLE $EXP_REP_ID $OUTPUT_FILE -receptor MOR -no-conserve  -cutoff 0.0 -inter


# Crystal structure with 0.5 frequencies for all - just schematic purpose 


FOOTPRINT_TABLE="/scratch/PI/rondror/akma327/DynamicNetworks/results/non-state-decomposition/residue-resolution-combined-rep/033117_crystal_vs_simulation/MOR_active/crystal/MOR_active_crystal_samefreq_filtered.txt"
EXP_REP_ID="MOR:active-noNb:BU72-nB_interface_restrained"
OUTPUT_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/interaction-footprint-analysis/residue-resolution-evobundle-input/033117_crystal_vs_simulation/MOR_active/MOR_active_crystal_samefreq.json"
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/analysis/interaction-footprint-analysis
python footprint_summary_evobundle.py $FOOTPRINT_TABLE $EXP_REP_ID $OUTPUT_FILE -receptor MOR -no-conserve  -cutoff 0.0 -inter



# Simulation 

FOOTPRINT_TABLE="/scratch/PI/rondror/akma327/DynamicNetworks/results/non-state-decomposition/residue-resolution-combined-rep/033117_crystal_vs_simulation/MOR_active/simulation/MOR_active_simulation_filtered.txt"
EXP_REP_ID="MOR:active-noNb:BU72-nB_interface_restrained"
OUTPUT_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/interaction-footprint-analysis/residue-resolution-evobundle-input/033117_crystal_vs_simulation/MOR_active/MOR_active_simulation_cutoff_0.json"
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/analysis/interaction-footprint-analysis
python footprint_summary_evobundle.py $FOOTPRINT_TABLE $EXP_REP_ID $OUTPUT_FILE -receptor MOR -no-conserve  -cutoff 0.0 -inter


FOOTPRINT_TABLE="/scratch/PI/rondror/akma327/DynamicNetworks/results/non-state-decomposition/residue-resolution-combined-rep/033117_crystal_vs_simulation/MOR_active/simulation/MOR_active_simulation_filtered.txt"
EXP_REP_ID="MOR:active-noNb:BU72-nB_interface_restrained"
OUTPUT_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/interaction-footprint-analysis/residue-resolution-evobundle-input/033117_crystal_vs_simulation/MOR_active/MOR_active_simulation_cutoff_15.json"
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/analysis/interaction-footprint-analysis
python footprint_summary_evobundle.py $FOOTPRINT_TABLE $EXP_REP_ID $OUTPUT_FILE -receptor MOR -no-conserve  -cutoff 0.15 -inter


FOOTPRINT_TABLE="/scratch/PI/rondror/akma327/DynamicNetworks/results/non-state-decomposition/residue-resolution-combined-rep/033117_crystal_vs_simulation/MOR_active/simulation/MOR_active_simulation_filtered.txt"
EXP_REP_ID="MOR:active-noNb:BU72-nB_interface_restrained"
OUTPUT_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/interaction-footprint-analysis/residue-resolution-evobundle-input/033117_crystal_vs_simulation/MOR_active/MOR_active_simulation_cutoff_25.json"
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/analysis/interaction-footprint-analysis
python footprint_summary_evobundle.py $FOOTPRINT_TABLE $EXP_REP_ID $OUTPUT_FILE -receptor MOR -no-conserve  -cutoff 0.25 -inter


FOOTPRINT_TABLE="/scratch/PI/rondror/akma327/DynamicNetworks/results/non-state-decomposition/residue-resolution-combined-rep/033117_crystal_vs_simulation/MOR_active/simulation/MOR_active_simulation_filtered.txt"
EXP_REP_ID="MOR:active-noNb:BU72-nB_interface_restrained"
OUTPUT_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/interaction-footprint-analysis/residue-resolution-evobundle-input/033117_crystal_vs_simulation/MOR_active/MOR_active_simulation_cutoff_50.json"
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/analysis/interaction-footprint-analysis
python footprint_summary_evobundle.py $FOOTPRINT_TABLE $EXP_REP_ID $OUTPUT_FILE -receptor MOR -no-conserve  -cutoff 0.50 -inter


FOOTPRINT_TABLE="/scratch/PI/rondror/akma327/DynamicNetworks/results/non-state-decomposition/residue-resolution-combined-rep/033117_crystal_vs_simulation/MOR_active/simulation/MOR_active_simulation_filtered.txt"
EXP_REP_ID="MOR:active-noNb:BU72-nB_interface_restrained"
OUTPUT_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/interaction-footprint-analysis/residue-resolution-evobundle-input/033117_crystal_vs_simulation/MOR_active/MOR_active_simulation_cutoff_75.json"
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/analysis/interaction-footprint-analysis
python footprint_summary_evobundle.py $FOOTPRINT_TABLE $EXP_REP_ID $OUTPUT_FILE -receptor MOR -no-conserve  -cutoff 0.75 -inter


FOOTPRINT_TABLE="/scratch/PI/rondror/akma327/DynamicNetworks/results/non-state-decomposition/residue-resolution-combined-rep/033117_crystal_vs_simulation/MOR_active/simulation/MOR_active_simulation_filtered.txt"
EXP_REP_ID="MOR:active-noNb:BU72-nB_interface_restrained"
OUTPUT_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/interaction-footprint-analysis/residue-resolution-evobundle-input/033117_crystal_vs_simulation/MOR_active/MOR_active_simulation_cutoff_95.json"
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/analysis/interaction-footprint-analysis
python footprint_summary_evobundle.py $FOOTPRINT_TABLE $EXP_REP_ID $OUTPUT_FILE -receptor MOR -no-conserve  -cutoff 0.95 -inter


# GENERATE VENN DIAGRAM FLAREPLOTS

# Show all three colors for crystal vs simulation (magenta, orange, and cyan)
POLAR_NETWORK_JSON1="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/interaction-footprint-analysis/residue-resolution-evobundle-input/033117_crystal_vs_simulation/MOR_active/MOR_active_crystal.json"
POLAR_NETWORK_JSON2="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/interaction-footprint-analysis/residue-resolution-evobundle-input/033117_crystal_vs_simulation/MOR_active/MOR_active_simulation_cutoff_0.json"
OUTPUT_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/interaction-footprint-analysis/residue-resolution-evobundle-input/033117_crystal_vs_simulation/MOR_active/venn_diagram/crys_and_sim/MOR_active_crystal_vs_simulation_cutoff_0.json"
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/analysis/interaction-footprint-analysis
python venn_diagram_flareplot.py $POLAR_NETWORK_JSON1 $POLAR_NETWORK_JSON2 $OUTPUT_FILE


POLAR_NETWORK_JSON1="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/interaction-footprint-analysis/residue-resolution-evobundle-input/033117_crystal_vs_simulation/MOR_active/MOR_active_crystal.json"
POLAR_NETWORK_JSON2="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/interaction-footprint-analysis/residue-resolution-evobundle-input/033117_crystal_vs_simulation/MOR_active/MOR_active_simulation_cutoff_15.json"
OUTPUT_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/interaction-footprint-analysis/residue-resolution-evobundle-input/033117_crystal_vs_simulation/MOR_active/venn_diagram/crys_and_sim/MOR_active_crystal_vs_simulation_cutoff_15.json"
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/analysis/interaction-footprint-analysis
python venn_diagram_flareplot.py $POLAR_NETWORK_JSON1 $POLAR_NETWORK_JSON2 $OUTPUT_FILE



POLAR_NETWORK_JSON1="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/interaction-footprint-analysis/residue-resolution-evobundle-input/033117_crystal_vs_simulation/MOR_active/MOR_active_crystal.json"
POLAR_NETWORK_JSON2="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/interaction-footprint-analysis/residue-resolution-evobundle-input/033117_crystal_vs_simulation/MOR_active/MOR_active_simulation_cutoff_25.json"
OUTPUT_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/interaction-footprint-analysis/residue-resolution-evobundle-input/033117_crystal_vs_simulation/MOR_active/venn_diagram/crys_and_sim/MOR_active_crystal_vs_simulation_cutoff_25.json"
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/analysis/interaction-footprint-analysis
python venn_diagram_flareplot.py $POLAR_NETWORK_JSON1 $POLAR_NETWORK_JSON2 $OUTPUT_FILE



POLAR_NETWORK_JSON1="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/interaction-footprint-analysis/residue-resolution-evobundle-input/033117_crystal_vs_simulation/MOR_active/MOR_active_crystal.json"
POLAR_NETWORK_JSON2="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/interaction-footprint-analysis/residue-resolution-evobundle-input/033117_crystal_vs_simulation/MOR_active/MOR_active_simulation_cutoff_50.json"
OUTPUT_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/interaction-footprint-analysis/residue-resolution-evobundle-input/033117_crystal_vs_simulation/MOR_active/venn_diagram/crys_and_sim/MOR_active_crystal_vs_simulation_cutoff_50.json"
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/analysis/interaction-footprint-analysis
python venn_diagram_flareplot.py $POLAR_NETWORK_JSON1 $POLAR_NETWORK_JSON2 $OUTPUT_FILE



POLAR_NETWORK_JSON1="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/interaction-footprint-analysis/residue-resolution-evobundle-input/033117_crystal_vs_simulation/MOR_active/MOR_active_crystal.json"
POLAR_NETWORK_JSON2="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/interaction-footprint-analysis/residue-resolution-evobundle-input/033117_crystal_vs_simulation/MOR_active/MOR_active_simulation_cutoff_75.json"
OUTPUT_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/interaction-footprint-analysis/residue-resolution-evobundle-input/033117_crystal_vs_simulation/MOR_active/venn_diagram/crys_and_sim/MOR_active_crystal_vs_simulation_cutoff_75.json"
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/analysis/interaction-footprint-analysis
python venn_diagram_flareplot.py $POLAR_NETWORK_JSON1 $POLAR_NETWORK_JSON2 $OUTPUT_FILE


POLAR_NETWORK_JSON1="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/interaction-footprint-analysis/residue-resolution-evobundle-input/033117_crystal_vs_simulation/MOR_active/MOR_active_crystal.json"
POLAR_NETWORK_JSON2="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/interaction-footprint-analysis/residue-resolution-evobundle-input/033117_crystal_vs_simulation/MOR_active/MOR_active_simulation_cutoff_95.json"
OUTPUT_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/interaction-footprint-analysis/residue-resolution-evobundle-input/033117_crystal_vs_simulation/MOR_active/venn_diagram/crys_and_sim/MOR_active_crystal_vs_simulation_cutoff_95.json"
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/analysis/interaction-footprint-analysis
python venn_diagram_flareplot.py $POLAR_NETWORK_JSON1 $POLAR_NETWORK_JSON2 $OUTPUT_FILE


# Show only colors for crystal (magenta, orange)

POLAR_NETWORK_JSON1="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/interaction-footprint-analysis/residue-resolution-evobundle-input/033117_crystal_vs_simulation/MOR_active/MOR_active_crystal.json"
POLAR_NETWORK_JSON2="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/interaction-footprint-analysis/residue-resolution-evobundle-input/033117_crystal_vs_simulation/MOR_active/MOR_active_simulation_cutoff_0.json"
OUTPUT_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/interaction-footprint-analysis/residue-resolution-evobundle-input/033117_crystal_vs_simulation/MOR_active/venn_diagram/crys_only/MOR_active_crystal_cutoff_0.json"
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/analysis/interaction-footprint-analysis
python venn_diagram_flareplot.py $POLAR_NETWORK_JSON1 $POLAR_NETWORK_JSON2 $OUTPUT_FILE -crys


POLAR_NETWORK_JSON1="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/interaction-footprint-analysis/residue-resolution-evobundle-input/033117_crystal_vs_simulation/MOR_active/MOR_active_crystal.json"
POLAR_NETWORK_JSON2="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/interaction-footprint-analysis/residue-resolution-evobundle-input/033117_crystal_vs_simulation/MOR_active/MOR_active_simulation_cutoff_15.json"
OUTPUT_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/interaction-footprint-analysis/residue-resolution-evobundle-input/033117_crystal_vs_simulation/MOR_active/venn_diagram/crys_only/MOR_active_crystal_cutoff_15.json"
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/analysis/interaction-footprint-analysis
python venn_diagram_flareplot.py $POLAR_NETWORK_JSON1 $POLAR_NETWORK_JSON2 $OUTPUT_FILE -crys



POLAR_NETWORK_JSON1="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/interaction-footprint-analysis/residue-resolution-evobundle-input/033117_crystal_vs_simulation/MOR_active/MOR_active_crystal.json"
POLAR_NETWORK_JSON2="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/interaction-footprint-analysis/residue-resolution-evobundle-input/033117_crystal_vs_simulation/MOR_active/MOR_active_simulation_cutoff_25.json"
OUTPUT_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/interaction-footprint-analysis/residue-resolution-evobundle-input/033117_crystal_vs_simulation/MOR_active/venn_diagram/crys_only/MOR_active_crystal_cutoff_25.json"
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/analysis/interaction-footprint-analysis
python venn_diagram_flareplot.py $POLAR_NETWORK_JSON1 $POLAR_NETWORK_JSON2 $OUTPUT_FILE -crys



POLAR_NETWORK_JSON1="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/interaction-footprint-analysis/residue-resolution-evobundle-input/033117_crystal_vs_simulation/MOR_active/MOR_active_crystal.json"
POLAR_NETWORK_JSON2="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/interaction-footprint-analysis/residue-resolution-evobundle-input/033117_crystal_vs_simulation/MOR_active/MOR_active_simulation_cutoff_50.json"
OUTPUT_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/interaction-footprint-analysis/residue-resolution-evobundle-input/033117_crystal_vs_simulation/MOR_active/venn_diagram/crys_only/MOR_active_crystal_cutoff_50.json"
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/analysis/interaction-footprint-analysis
python venn_diagram_flareplot.py $POLAR_NETWORK_JSON1 $POLAR_NETWORK_JSON2 $OUTPUT_FILE -crys



POLAR_NETWORK_JSON1="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/interaction-footprint-analysis/residue-resolution-evobundle-input/033117_crystal_vs_simulation/MOR_active/MOR_active_crystal.json"
POLAR_NETWORK_JSON2="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/interaction-footprint-analysis/residue-resolution-evobundle-input/033117_crystal_vs_simulation/MOR_active/MOR_active_simulation_cutoff_75.json"
OUTPUT_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/interaction-footprint-analysis/residue-resolution-evobundle-input/033117_crystal_vs_simulation/MOR_active/venn_diagram/crys_only/MOR_active_crystal_cutoff_75.json"
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/analysis/interaction-footprint-analysis
python venn_diagram_flareplot.py $POLAR_NETWORK_JSON1 $POLAR_NETWORK_JSON2 $OUTPUT_FILE -crys


POLAR_NETWORK_JSON1="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/interaction-footprint-analysis/residue-resolution-evobundle-input/033117_crystal_vs_simulation/MOR_active/MOR_active_crystal.json"
POLAR_NETWORK_JSON2="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/interaction-footprint-analysis/residue-resolution-evobundle-input/033117_crystal_vs_simulation/MOR_active/MOR_active_simulation_cutoff_95.json"
OUTPUT_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/interaction-footprint-analysis/residue-resolution-evobundle-input/033117_crystal_vs_simulation/MOR_active/venn_diagram/crys_only/MOR_active_crystal_cutoff_95.json"
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/analysis/interaction-footprint-analysis
python venn_diagram_flareplot.py $POLAR_NETWORK_JSON1 $POLAR_NETWORK_JSON2 $OUTPUT_FILE -crys



# Show only colors for simulation (cyan)
POLAR_NETWORK_JSON1="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/interaction-footprint-analysis/residue-resolution-evobundle-input/033117_crystal_vs_simulation/MOR_active/MOR_active_crystal.json"
POLAR_NETWORK_JSON2="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/interaction-footprint-analysis/residue-resolution-evobundle-input/033117_crystal_vs_simulation/MOR_active/MOR_active_simulation_cutoff_0.json"
OUTPUT_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/interaction-footprint-analysis/residue-resolution-evobundle-input/033117_crystal_vs_simulation/MOR_active/venn_diagram/sim_only/MOR_active_simulation_cutoff_0.json"
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/analysis/interaction-footprint-analysis
python venn_diagram_flareplot.py $POLAR_NETWORK_JSON1 $POLAR_NETWORK_JSON2 $OUTPUT_FILE -sim


POLAR_NETWORK_JSON1="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/interaction-footprint-analysis/residue-resolution-evobundle-input/033117_crystal_vs_simulation/MOR_active/MOR_active_crystal.json"
POLAR_NETWORK_JSON2="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/interaction-footprint-analysis/residue-resolution-evobundle-input/033117_crystal_vs_simulation/MOR_active/MOR_active_simulation_cutoff_15.json"
OUTPUT_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/interaction-footprint-analysis/residue-resolution-evobundle-input/033117_crystal_vs_simulation/MOR_active/venn_diagram/sim_only/MOR_active_simulation_cutoff_15.json"
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/analysis/interaction-footprint-analysis
python venn_diagram_flareplot.py $POLAR_NETWORK_JSON1 $POLAR_NETWORK_JSON2 $OUTPUT_FILE -sim



POLAR_NETWORK_JSON1="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/interaction-footprint-analysis/residue-resolution-evobundle-input/033117_crystal_vs_simulation/MOR_active/MOR_active_crystal.json"
POLAR_NETWORK_JSON2="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/interaction-footprint-analysis/residue-resolution-evobundle-input/033117_crystal_vs_simulation/MOR_active/MOR_active_simulation_cutoff_25.json"
OUTPUT_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/interaction-footprint-analysis/residue-resolution-evobundle-input/033117_crystal_vs_simulation/MOR_active/venn_diagram/sim_only/MOR_active_simulation_cutoff_25.json"
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/analysis/interaction-footprint-analysis
python venn_diagram_flareplot.py $POLAR_NETWORK_JSON1 $POLAR_NETWORK_JSON2 $OUTPUT_FILE -sim



POLAR_NETWORK_JSON1="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/interaction-footprint-analysis/residue-resolution-evobundle-input/033117_crystal_vs_simulation/MOR_active/MOR_active_crystal.json"
POLAR_NETWORK_JSON2="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/interaction-footprint-analysis/residue-resolution-evobundle-input/033117_crystal_vs_simulation/MOR_active/MOR_active_simulation_cutoff_50.json"
OUTPUT_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/interaction-footprint-analysis/residue-resolution-evobundle-input/033117_crystal_vs_simulation/MOR_active/venn_diagram/sim_only/MOR_active_simulation_cutoff_50.json"
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/analysis/interaction-footprint-analysis
python venn_diagram_flareplot.py $POLAR_NETWORK_JSON1 $POLAR_NETWORK_JSON2 $OUTPUT_FILE -sim



POLAR_NETWORK_JSON1="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/interaction-footprint-analysis/residue-resolution-evobundle-input/033117_crystal_vs_simulation/MOR_active/MOR_active_crystal.json"
POLAR_NETWORK_JSON2="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/interaction-footprint-analysis/residue-resolution-evobundle-input/033117_crystal_vs_simulation/MOR_active/MOR_active_simulation_cutoff_75.json"
OUTPUT_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/interaction-footprint-analysis/residue-resolution-evobundle-input/033117_crystal_vs_simulation/MOR_active/venn_diagram/sim_only/MOR_active_simulation_cutoff_75.json"
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/analysis/interaction-footprint-analysis
python venn_diagram_flareplot.py $POLAR_NETWORK_JSON1 $POLAR_NETWORK_JSON2 $OUTPUT_FILE -sim



POLAR_NETWORK_JSON1="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/interaction-footprint-analysis/residue-resolution-evobundle-input/033117_crystal_vs_simulation/MOR_active/MOR_active_crystal.json"
POLAR_NETWORK_JSON2="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/interaction-footprint-analysis/residue-resolution-evobundle-input/033117_crystal_vs_simulation/MOR_active/MOR_active_simulation_cutoff_95.json"
OUTPUT_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/interaction-footprint-analysis/residue-resolution-evobundle-input/033117_crystal_vs_simulation/MOR_active/venn_diagram/sim_only/MOR_active_simulation_cutoff_95.json"
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/analysis/interaction-footprint-analysis
python venn_diagram_flareplot.py $POLAR_NETWORK_JSON1 $POLAR_NETWORK_JSON2 $OUTPUT_FILE -sim






# A2A INACTIVE ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

# Crystal Structure with frequencies

FOOTPRINT_TABLE="/scratch/PI/rondror/akma327/DynamicNetworks/results/non-state-decomposition/residue-resolution-combined-rep/033117_crystal_vs_simulation/A2A_inactive/crystal/A2A_inactive_crystal_filtered.txt"
EXP_REP_ID="A2A:inactive:unpublished"
OUTPUT_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/interaction-footprint-analysis/residue-resolution-evobundle-input/033117_crystal_vs_simulation/A2A_inactive/A2A_inactive_crystal.json"
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/analysis/interaction-footprint-analysis
python footprint_summary_evobundle.py $FOOTPRINT_TABLE $EXP_REP_ID $OUTPUT_FILE -receptor A2A -no-conserve  -cutoff 0.0 -inter


# Crystal structure with 0.5 frequencies for all - just schematic purpose 


FOOTPRINT_TABLE="/scratch/PI/rondror/akma327/DynamicNetworks/results/non-state-decomposition/residue-resolution-combined-rep/033117_crystal_vs_simulation/A2A_inactive/crystal/A2A_inactive_crystal_samefreq_filtered.txt"
EXP_REP_ID="A2A:inactive:unpublished"
OUTPUT_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/interaction-footprint-analysis/residue-resolution-evobundle-input/033117_crystal_vs_simulation/A2A_inactive/A2A_inactive_crystal_samefreq.json"
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/analysis/interaction-footprint-analysis
python footprint_summary_evobundle.py $FOOTPRINT_TABLE $EXP_REP_ID $OUTPUT_FILE -receptor A2A -no-conserve  -cutoff 0.0 -inter



# Simulation 

FOOTPRINT_TABLE="/scratch/PI/rondror/akma327/DynamicNetworks/results/non-state-decomposition/residue-resolution-combined-rep/033117_crystal_vs_simulation/A2A_inactive/simulation/A2A_inactive_simulation_filtered.txt"
EXP_REP_ID="A2A:inactive:unpublished"
OUTPUT_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/interaction-footprint-analysis/residue-resolution-evobundle-input/033117_crystal_vs_simulation/A2A_inactive/A2A_inactive_simulation_cutoff_0.json"
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/analysis/interaction-footprint-analysis
python footprint_summary_evobundle.py $FOOTPRINT_TABLE $EXP_REP_ID $OUTPUT_FILE -receptor A2A -no-conserve  -cutoff 0.0 -inter


FOOTPRINT_TABLE="/scratch/PI/rondror/akma327/DynamicNetworks/results/non-state-decomposition/residue-resolution-combined-rep/033117_crystal_vs_simulation/A2A_inactive/simulation/A2A_inactive_simulation_filtered.txt"
EXP_REP_ID="A2A:inactive:unpublished"
OUTPUT_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/interaction-footprint-analysis/residue-resolution-evobundle-input/033117_crystal_vs_simulation/A2A_inactive/A2A_inactive_simulation_cutoff_15.json"
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/analysis/interaction-footprint-analysis
python footprint_summary_evobundle.py $FOOTPRINT_TABLE $EXP_REP_ID $OUTPUT_FILE -receptor A2A -no-conserve  -cutoff 0.15 -inter



FOOTPRINT_TABLE="/scratch/PI/rondror/akma327/DynamicNetworks/results/non-state-decomposition/residue-resolution-combined-rep/033117_crystal_vs_simulation/A2A_inactive/simulation/A2A_inactive_simulation_filtered.txt"
EXP_REP_ID="A2A:inactive:unpublished"
OUTPUT_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/interaction-footprint-analysis/residue-resolution-evobundle-input/033117_crystal_vs_simulation/A2A_inactive/A2A_inactive_simulation_cutoff_25.json"
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/analysis/interaction-footprint-analysis
python footprint_summary_evobundle.py $FOOTPRINT_TABLE $EXP_REP_ID $OUTPUT_FILE -receptor A2A -no-conserve  -cutoff 0.25 -inter


FOOTPRINT_TABLE="/scratch/PI/rondror/akma327/DynamicNetworks/results/non-state-decomposition/residue-resolution-combined-rep/033117_crystal_vs_simulation/A2A_inactive/simulation/A2A_inactive_simulation_filtered.txt"
EXP_REP_ID="A2A:inactive:unpublished"
OUTPUT_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/interaction-footprint-analysis/residue-resolution-evobundle-input/033117_crystal_vs_simulation/A2A_inactive/A2A_inactive_simulation_cutoff_50.json"
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/analysis/interaction-footprint-analysis
python footprint_summary_evobundle.py $FOOTPRINT_TABLE $EXP_REP_ID $OUTPUT_FILE -receptor A2A -no-conserve  -cutoff 0.50 -inter


FOOTPRINT_TABLE="/scratch/PI/rondror/akma327/DynamicNetworks/results/non-state-decomposition/residue-resolution-combined-rep/033117_crystal_vs_simulation/A2A_inactive/simulation/A2A_inactive_simulation_filtered.txt"
EXP_REP_ID="A2A:inactive:unpublished"
OUTPUT_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/interaction-footprint-analysis/residue-resolution-evobundle-input/033117_crystal_vs_simulation/A2A_inactive/A2A_inactive_simulation_cutoff_75.json"
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/analysis/interaction-footprint-analysis
python footprint_summary_evobundle.py $FOOTPRINT_TABLE $EXP_REP_ID $OUTPUT_FILE -receptor A2A -no-conserve  -cutoff 0.75 -inter


FOOTPRINT_TABLE="/scratch/PI/rondror/akma327/DynamicNetworks/results/non-state-decomposition/residue-resolution-combined-rep/033117_crystal_vs_simulation/A2A_inactive/simulation/A2A_inactive_simulation_filtered.txt"
EXP_REP_ID="A2A:inactive:unpublished"
OUTPUT_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/interaction-footprint-analysis/residue-resolution-evobundle-input/033117_crystal_vs_simulation/A2A_inactive/A2A_inactive_simulation_cutoff_95.json"
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/analysis/interaction-footprint-analysis
python footprint_summary_evobundle.py $FOOTPRINT_TABLE $EXP_REP_ID $OUTPUT_FILE -receptor A2A -no-conserve  -cutoff 0.95 -inter



### GENERATE VENN DIAGRAM FLAREPLOTS


# Show all three colors for crystal vs simulation (magenta, orange, and cyan)
POLAR_NETWORK_JSON1="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/interaction-footprint-analysis/residue-resolution-evobundle-input/033117_crystal_vs_simulation/A2A_inactive/A2A_inactive_crystal.json"
POLAR_NETWORK_JSON2="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/interaction-footprint-analysis/residue-resolution-evobundle-input/033117_crystal_vs_simulation/A2A_inactive/A2A_inactive_simulation_cutoff_0.json"
OUTPUT_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/interaction-footprint-analysis/residue-resolution-evobundle-input/033117_crystal_vs_simulation/A2A_inactive/venn_diagram/crys_and_sim/A2A_inactive_crystal_vs_simulation_cutoff_0.json"
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/analysis/interaction-footprint-analysis
python venn_diagram_flareplot.py $POLAR_NETWORK_JSON1 $POLAR_NETWORK_JSON2 $OUTPUT_FILE


POLAR_NETWORK_JSON1="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/interaction-footprint-analysis/residue-resolution-evobundle-input/033117_crystal_vs_simulation/A2A_inactive/A2A_inactive_crystal.json"
POLAR_NETWORK_JSON2="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/interaction-footprint-analysis/residue-resolution-evobundle-input/033117_crystal_vs_simulation/A2A_inactive/A2A_inactive_simulation_cutoff_15.json"
OUTPUT_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/interaction-footprint-analysis/residue-resolution-evobundle-input/033117_crystal_vs_simulation/A2A_inactive/venn_diagram/crys_and_sim/A2A_inactive_crystal_vs_simulation_cutoff_15.json"
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/analysis/interaction-footprint-analysis
python venn_diagram_flareplot.py $POLAR_NETWORK_JSON1 $POLAR_NETWORK_JSON2 $OUTPUT_FILE



POLAR_NETWORK_JSON1="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/interaction-footprint-analysis/residue-resolution-evobundle-input/033117_crystal_vs_simulation/A2A_inactive/A2A_inactive_crystal.json"
POLAR_NETWORK_JSON2="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/interaction-footprint-analysis/residue-resolution-evobundle-input/033117_crystal_vs_simulation/A2A_inactive/A2A_inactive_simulation_cutoff_25.json"
OUTPUT_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/interaction-footprint-analysis/residue-resolution-evobundle-input/033117_crystal_vs_simulation/A2A_inactive/venn_diagram/crys_and_sim/A2A_inactive_crystal_vs_simulation_cutoff_25.json"
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/analysis/interaction-footprint-analysis
python venn_diagram_flareplot.py $POLAR_NETWORK_JSON1 $POLAR_NETWORK_JSON2 $OUTPUT_FILE



POLAR_NETWORK_JSON1="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/interaction-footprint-analysis/residue-resolution-evobundle-input/033117_crystal_vs_simulation/A2A_inactive/A2A_inactive_crystal.json"
POLAR_NETWORK_JSON2="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/interaction-footprint-analysis/residue-resolution-evobundle-input/033117_crystal_vs_simulation/A2A_inactive/A2A_inactive_simulation_cutoff_50.json"
OUTPUT_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/interaction-footprint-analysis/residue-resolution-evobundle-input/033117_crystal_vs_simulation/A2A_inactive/venn_diagram/crys_and_sim/A2A_inactive_crystal_vs_simulation_cutoff_50.json"
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/analysis/interaction-footprint-analysis
python venn_diagram_flareplot.py $POLAR_NETWORK_JSON1 $POLAR_NETWORK_JSON2 $OUTPUT_FILE



POLAR_NETWORK_JSON1="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/interaction-footprint-analysis/residue-resolution-evobundle-input/033117_crystal_vs_simulation/A2A_inactive/A2A_inactive_crystal.json"
POLAR_NETWORK_JSON2="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/interaction-footprint-analysis/residue-resolution-evobundle-input/033117_crystal_vs_simulation/A2A_inactive/A2A_inactive_simulation_cutoff_75.json"
OUTPUT_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/interaction-footprint-analysis/residue-resolution-evobundle-input/033117_crystal_vs_simulation/A2A_inactive/venn_diagram/crys_and_sim/A2A_inactive_crystal_vs_simulation_cutoff_75.json"
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/analysis/interaction-footprint-analysis
python venn_diagram_flareplot.py $POLAR_NETWORK_JSON1 $POLAR_NETWORK_JSON2 $OUTPUT_FILE


POLAR_NETWORK_JSON1="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/interaction-footprint-analysis/residue-resolution-evobundle-input/033117_crystal_vs_simulation/A2A_inactive/A2A_inactive_crystal.json"
POLAR_NETWORK_JSON2="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/interaction-footprint-analysis/residue-resolution-evobundle-input/033117_crystal_vs_simulation/A2A_inactive/A2A_inactive_simulation_cutoff_95.json"
OUTPUT_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/interaction-footprint-analysis/residue-resolution-evobundle-input/033117_crystal_vs_simulation/A2A_inactive/venn_diagram/crys_and_sim/A2A_inactive_crystal_vs_simulation_cutoff_95.json"
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/analysis/interaction-footprint-analysis
python venn_diagram_flareplot.py $POLAR_NETWORK_JSON1 $POLAR_NETWORK_JSON2 $OUTPUT_FILE

# Show only colors for crystal (magenta, orange)

POLAR_NETWORK_JSON1="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/interaction-footprint-analysis/residue-resolution-evobundle-input/033117_crystal_vs_simulation/A2A_inactive/A2A_inactive_crystal.json"
POLAR_NETWORK_JSON2="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/interaction-footprint-analysis/residue-resolution-evobundle-input/033117_crystal_vs_simulation/A2A_inactive/A2A_inactive_simulation_cutoff_0.json"
OUTPUT_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/interaction-footprint-analysis/residue-resolution-evobundle-input/033117_crystal_vs_simulation/A2A_inactive/venn_diagram/crys_only/A2A_inactive_crystal_cutoff_0.json"
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/analysis/interaction-footprint-analysis
python venn_diagram_flareplot.py $POLAR_NETWORK_JSON1 $POLAR_NETWORK_JSON2 $OUTPUT_FILE -crys


POLAR_NETWORK_JSON1="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/interaction-footprint-analysis/residue-resolution-evobundle-input/033117_crystal_vs_simulation/A2A_inactive/A2A_inactive_crystal.json"
POLAR_NETWORK_JSON2="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/interaction-footprint-analysis/residue-resolution-evobundle-input/033117_crystal_vs_simulation/A2A_inactive/A2A_inactive_simulation_cutoff_15.json"
OUTPUT_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/interaction-footprint-analysis/residue-resolution-evobundle-input/033117_crystal_vs_simulation/A2A_inactive/venn_diagram/crys_only/A2A_inactive_crystal_cutoff_15.json"
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/analysis/interaction-footprint-analysis
python venn_diagram_flareplot.py $POLAR_NETWORK_JSON1 $POLAR_NETWORK_JSON2 $OUTPUT_FILE -crys




POLAR_NETWORK_JSON1="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/interaction-footprint-analysis/residue-resolution-evobundle-input/033117_crystal_vs_simulation/A2A_inactive/A2A_inactive_crystal.json"
POLAR_NETWORK_JSON2="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/interaction-footprint-analysis/residue-resolution-evobundle-input/033117_crystal_vs_simulation/A2A_inactive/A2A_inactive_simulation_cutoff_25.json"
OUTPUT_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/interaction-footprint-analysis/residue-resolution-evobundle-input/033117_crystal_vs_simulation/A2A_inactive/venn_diagram/crys_only/A2A_inactive_crystal_cutoff_25.json"
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/analysis/interaction-footprint-analysis
python venn_diagram_flareplot.py $POLAR_NETWORK_JSON1 $POLAR_NETWORK_JSON2 $OUTPUT_FILE -crys



POLAR_NETWORK_JSON1="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/interaction-footprint-analysis/residue-resolution-evobundle-input/033117_crystal_vs_simulation/A2A_inactive/A2A_inactive_crystal.json"
POLAR_NETWORK_JSON2="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/interaction-footprint-analysis/residue-resolution-evobundle-input/033117_crystal_vs_simulation/A2A_inactive/A2A_inactive_simulation_cutoff_50.json"
OUTPUT_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/interaction-footprint-analysis/residue-resolution-evobundle-input/033117_crystal_vs_simulation/A2A_inactive/venn_diagram/crys_only/A2A_inactive_crystal_cutoff_50.json"
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/analysis/interaction-footprint-analysis
python venn_diagram_flareplot.py $POLAR_NETWORK_JSON1 $POLAR_NETWORK_JSON2 $OUTPUT_FILE -crys



POLAR_NETWORK_JSON1="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/interaction-footprint-analysis/residue-resolution-evobundle-input/033117_crystal_vs_simulation/A2A_inactive/A2A_inactive_crystal.json"
POLAR_NETWORK_JSON2="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/interaction-footprint-analysis/residue-resolution-evobundle-input/033117_crystal_vs_simulation/A2A_inactive/A2A_inactive_simulation_cutoff_75.json"
OUTPUT_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/interaction-footprint-analysis/residue-resolution-evobundle-input/033117_crystal_vs_simulation/A2A_inactive/venn_diagram/crys_only/A2A_inactive_crystal_cutoff_75.json"
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/analysis/interaction-footprint-analysis
python venn_diagram_flareplot.py $POLAR_NETWORK_JSON1 $POLAR_NETWORK_JSON2 $OUTPUT_FILE -crys


POLAR_NETWORK_JSON1="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/interaction-footprint-analysis/residue-resolution-evobundle-input/033117_crystal_vs_simulation/A2A_inactive/A2A_inactive_crystal.json"
POLAR_NETWORK_JSON2="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/interaction-footprint-analysis/residue-resolution-evobundle-input/033117_crystal_vs_simulation/A2A_inactive/A2A_inactive_simulation_cutoff_95.json"
OUTPUT_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/interaction-footprint-analysis/residue-resolution-evobundle-input/033117_crystal_vs_simulation/A2A_inactive/venn_diagram/crys_only/A2A_inactive_crystal_cutoff_95.json"
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/analysis/interaction-footprint-analysis
python venn_diagram_flareplot.py $POLAR_NETWORK_JSON1 $POLAR_NETWORK_JSON2 $OUTPUT_FILE -crys



# Show only colors for simulation (cyan)
POLAR_NETWORK_JSON1="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/interaction-footprint-analysis/residue-resolution-evobundle-input/033117_crystal_vs_simulation/A2A_inactive/A2A_inactive_crystal.json"
POLAR_NETWORK_JSON2="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/interaction-footprint-analysis/residue-resolution-evobundle-input/033117_crystal_vs_simulation/A2A_inactive/A2A_inactive_simulation_cutoff_0.json"
OUTPUT_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/interaction-footprint-analysis/residue-resolution-evobundle-input/033117_crystal_vs_simulation/A2A_inactive/venn_diagram/sim_only/A2A_inactive_simulation_cutoff_0.json"
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/analysis/interaction-footprint-analysis
python venn_diagram_flareplot.py $POLAR_NETWORK_JSON1 $POLAR_NETWORK_JSON2 $OUTPUT_FILE -sim



POLAR_NETWORK_JSON1="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/interaction-footprint-analysis/residue-resolution-evobundle-input/033117_crystal_vs_simulation/A2A_inactive/A2A_inactive_crystal.json"
POLAR_NETWORK_JSON2="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/interaction-footprint-analysis/residue-resolution-evobundle-input/033117_crystal_vs_simulation/A2A_inactive/A2A_inactive_simulation_cutoff_15.json"
OUTPUT_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/interaction-footprint-analysis/residue-resolution-evobundle-input/033117_crystal_vs_simulation/A2A_inactive/venn_diagram/sim_only/A2A_inactive_simulation_cutoff_15.json"
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/analysis/interaction-footprint-analysis
python venn_diagram_flareplot.py $POLAR_NETWORK_JSON1 $POLAR_NETWORK_JSON2 $OUTPUT_FILE -sim



POLAR_NETWORK_JSON1="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/interaction-footprint-analysis/residue-resolution-evobundle-input/033117_crystal_vs_simulation/A2A_inactive/A2A_inactive_crystal.json"
POLAR_NETWORK_JSON2="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/interaction-footprint-analysis/residue-resolution-evobundle-input/033117_crystal_vs_simulation/A2A_inactive/A2A_inactive_simulation_cutoff_25.json"
OUTPUT_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/interaction-footprint-analysis/residue-resolution-evobundle-input/033117_crystal_vs_simulation/A2A_inactive/venn_diagram/sim_only/A2A_inactive_simulation_cutoff_25.json"
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/analysis/interaction-footprint-analysis
python venn_diagram_flareplot.py $POLAR_NETWORK_JSON1 $POLAR_NETWORK_JSON2 $OUTPUT_FILE -sim



POLAR_NETWORK_JSON1="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/interaction-footprint-analysis/residue-resolution-evobundle-input/033117_crystal_vs_simulation/A2A_inactive/A2A_inactive_crystal.json"
POLAR_NETWORK_JSON2="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/interaction-footprint-analysis/residue-resolution-evobundle-input/033117_crystal_vs_simulation/A2A_inactive/A2A_inactive_simulation_cutoff_50.json"
OUTPUT_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/interaction-footprint-analysis/residue-resolution-evobundle-input/033117_crystal_vs_simulation/A2A_inactive/venn_diagram/sim_only/A2A_inactive_simulation_cutoff_50.json"
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/analysis/interaction-footprint-analysis
python venn_diagram_flareplot.py $POLAR_NETWORK_JSON1 $POLAR_NETWORK_JSON2 $OUTPUT_FILE -sim



POLAR_NETWORK_JSON1="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/interaction-footprint-analysis/residue-resolution-evobundle-input/033117_crystal_vs_simulation/A2A_inactive/A2A_inactive_crystal.json"
POLAR_NETWORK_JSON2="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/interaction-footprint-analysis/residue-resolution-evobundle-input/033117_crystal_vs_simulation/A2A_inactive/A2A_inactive_simulation_cutoff_75.json"
OUTPUT_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/interaction-footprint-analysis/residue-resolution-evobundle-input/033117_crystal_vs_simulation/A2A_inactive/venn_diagram/sim_only/A2A_inactive_simulation_cutoff_75.json"
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/analysis/interaction-footprint-analysis
python venn_diagram_flareplot.py $POLAR_NETWORK_JSON1 $POLAR_NETWORK_JSON2 $OUTPUT_FILE -sim



POLAR_NETWORK_JSON1="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/interaction-footprint-analysis/residue-resolution-evobundle-input/033117_crystal_vs_simulation/A2A_inactive/A2A_inactive_crystal.json"
POLAR_NETWORK_JSON2="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/interaction-footprint-analysis/residue-resolution-evobundle-input/033117_crystal_vs_simulation/A2A_inactive/A2A_inactive_simulation_cutoff_95.json"
OUTPUT_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/interaction-footprint-analysis/residue-resolution-evobundle-input/033117_crystal_vs_simulation/A2A_inactive/venn_diagram/sim_only/A2A_inactive_simulation_cutoff_95.json"
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/analysis/interaction-footprint-analysis
python venn_diagram_flareplot.py $POLAR_NETWORK_JSON1 $POLAR_NETWORK_JSON2 $OUTPUT_FILE -sim



