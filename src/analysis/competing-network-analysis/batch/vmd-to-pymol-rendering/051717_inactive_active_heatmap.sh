# 051717_inactive_active_heatmap.sh

# Inactive State

# Network of interactions > 0.60 in ALL receptors

PDB="4DKL"
HEATMAP_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/results/non-state-decomposition/residue-resolution-combined-rep/051717_union_wb_freq/wb_wb2/inactive_receptors/inactive_filtered_freq60.txt"
EXP_REP_DICT_PATH="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutputDictionary/MOR-inactive-bFNA-nature2015/condition-bFNA-bound/rep_1/050516_NONHB_DEFAULT_HB_3.5_70"
OUTPUT_INTERACTION_LIST="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/competing-network-analysis/pymol-visualization/051717/inactive-heatmap/01-pdb/interaction_list_sim_cutoff60_ALL.txt"
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/analysis/competing-network-analysis
python visualize_competing_networks.py -sim -heatmap $PDB $HEATMAP_FILE $EXP_REP_DICT_PATH $OUTPUT_INTERACTION_LIST -chainId 0 -columnId ALL -interlist -wb -wb2 


EXP_COND_DIR="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/MOR-inactive-bFNA-nature2015/condition-bFNA-bound/rep_1"
FRAME_NUM="1843"
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/analysis/competing-network-analysis
python identify_fragment_frame.py $EXP_COND_DIR $FRAME_NUM

# VMD: Prod_1 Frame 1762

TOP_PATH="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/competing-network-analysis/pymol-visualization/051717/inactive-heatmap/01-pdb/inactive_heatmap_ALL_prod_1_frame1762_cutoff60.pdb"
OUTPUT_FILE_PATH="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/competing-network-analysis/pymol-visualization/051717/inactive-heatmap/02-raw-hbond/inactive_heatmap_ALL_prod_1_frame1762_cutoff60.txt"
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/interaction-geometry
python StaticInteractionCalculator_water_indexed.py $TOP_PATH $OUTPUT_FILE_PATH -solv IP3 -interlist -wb -wb2



# Active State 

# Network of interactions > 0.60 in ALL receptors

PDB="5C1M"
HEATMAP_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/results/non-state-decomposition/residue-resolution-combined-rep/051717_union_wb_freq/wb_wb2/active_receptors/active_filtered_freq60.txt"
EXP_REP_DICT_PATH="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutputDictionary/MOR-active-noNb-BU72-nature2015/condition-nb-interface-restrained-BU72/rep_1/050516_NONHB_DEFAULT_HB_3.5_70"
OUTPUT_INTERACTION_LIST="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/competing-network-analysis/pymol-visualization/051717/active-heatmap/01-pdb/interaction_list_sim_cutoff60_ALL.txt"
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/analysis/competing-network-analysis
python visualize_competing_networks.py -sim -heatmap $PDB $HEATMAP_FILE $EXP_REP_DICT_PATH $OUTPUT_INTERACTION_LIST -chainId 3 -columnId ALL -interlist -wb -wb2 


EXP_COND_DIR="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/MOR-active-noNb-BU72-nature2015/condition-nb-interface-restrained-BU72/rep_1"
FRAME_NUM="3"
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/analysis/competing-network-analysis
python identify_fragment_frame.py $EXP_COND_DIR $FRAME_NUM


# VMD: Prod_0 Frame 3

TOP_PATH="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/competing-network-analysis/pymol-visualization/051717/active-heatmap/01-pdb/active_heatmap_ALL_prod0_frame3_cutoff60.pdb"
OUTPUT_FILE_PATH="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/competing-network-analysis/pymol-visualization/051717/active-heatmap/02-raw-hbond/active_heatmap_ALL_prod0_frame3_cutoff60.txt"
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/interaction-geometry
python StaticInteractionCalculator_water_indexed.py $TOP_PATH $OUTPUT_FILE_PATH  -chain A -interlist -wb -wb2


