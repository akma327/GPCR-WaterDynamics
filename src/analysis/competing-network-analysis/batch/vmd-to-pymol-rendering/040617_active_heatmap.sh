# 040617_active_heatmap.sh

# Network of interactions > 0.60 in ALL receptors

PDB="5C1M"
HEATMAP_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/results/non-state-decomposition/residue-resolution-combined-rep/040117_union_wb_freq/wb_wb2/active_receptors/active_filtered_freq80.txt"
EXP_REP_DICT_PATH="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutputDictionary/MOR-active-noNb-BU72-nature2015/condition-nb-interface-restrained-BU72/rep_1/050516_NONHB_DEFAULT_HB_3.5_70"
OUTPUT_INTERACTION_LIST="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/competing-network-analysis/pymol-visualization/040417/active-heatmap/01-pdb/interaction_list_sim_cutoff60_ALL.txt"
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/analysis/competing-network-analysis
python visualize_competing_networks.py -sim -heatmap $PDB $HEATMAP_FILE $EXP_REP_DICT_PATH $OUTPUT_INTERACTION_LIST -chainId 3 -columnId ALL -interlist -wb -wb2 


EXP_COND_DIR="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/MOR-active-noNb-BU72-nature2015/condition-nb-interface-restrained-BU72/rep_1"
FRAME_NUM="3"
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/analysis/competing-network-analysis
python identify_fragment_frame.py $EXP_COND_DIR $FRAME_NUM


# VMD: Prod_0 Frame 3

TOP_PATH="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/competing-network-analysis/pymol-visualization/040417/active-heatmap/01-pdb/active_heatmap_ALL_prod0_frame3_cutoff60.pdb"
OUTPUT_FILE_PATH="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/competing-network-analysis/pymol-visualization/040417/active-heatmap/02-raw-hbond/active_heatmap_ALL_prod0_frame3_cutoff60.txt"
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/interaction-geometry
python StaticInteractionCalculator_water_indexed.py $TOP_PATH $OUTPUT_FILE_PATH  -chain A -interlist -wb -wb2



# Network of interactions in > 0.60 in B2AR 
PDB="3SN6"
HEATMAP_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/results/non-state-decomposition/residue-resolution-combined-rep/040117_union_wb_freq/wb_wb2/active_receptors/active_filtered_freq80.txt"
EXP_REP_DICT_PATH="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutputDictionary/B2AR-active-Gs-BI-science2015/condition-65/rep_1/050516_NONHB_DEFAULT_HB_3.5_70"
OUTPUT_INTERACTION_LIST="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/competing-network-analysis/pymol-visualization/040417/active-heatmap/01-pdb/interaction_list_sim_cutoff60_B2AR.txt"
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/analysis/competing-network-analysis
python visualize_competing_networks.py -sim -heatmap $PDB $HEATMAP_FILE $EXP_REP_DICT_PATH $OUTPUT_INTERACTION_LIST -chainId 3 -columnId B2AR -interlist -wb -wb2 


EXP_COND_DIR="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-65/rep_1"
FRAME_NUM="53"
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/analysis/competing-network-analysis
python identify_fragment_frame.py $EXP_COND_DIR $FRAME_NUM

# VMD: Prod_0 Frame 53

TOP_PATH="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/competing-network-analysis/pymol-visualization/040417/active-heatmap/01-pdb/active_heatmap_B2AR_prod0_frame53_cutoff60.pdb"
OUTPUT_FILE_PATH="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/competing-network-analysis/pymol-visualization/040417/active-heatmap/02-raw-hbond/active_heatmap_B2AR_prod0_frame53_cutoff60_pdb.txt"
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/interaction-geometry
python StaticInteractionCalculator_water_indexed.py $TOP_PATH $OUTPUT_FILE_PATH  -chain R -interlist -wb -wb2


TOP_PATH="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/competing-network-analysis/pymol-visualization/040417/active-heatmap/01-pdb/active_heatmap_B2AR_prod0_frame53_cutoff60.mae"
OUTPUT_FILE_PATH="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/competing-network-analysis/pymol-visualization/040417/active-heatmap/02-raw-hbond/active_heatmap_B2AR_prod0_frame53_cutoff60.txt"
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/interaction-geometry
python StaticInteractionCalculator_water_indexed.py $TOP_PATH $OUTPUT_FILE_PATH  -chain R -interlist -wb -wb2



# Network of interactions in > 0.60 in M2R
PDB="4MQS"
HEATMAP_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/results/non-state-decomposition/residue-resolution-combined-rep/040117_union_wb_freq/wb_wb2/active_receptors/active_filtered_freq80.txt"
EXP_REP_DICT_PATH="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutputDictionary/M2R-active-restrained-unpublished/condition-prot-asp2x50-3x49/rep_1/050516_NONHB_DEFAULT_HB_3.5_70"
OUTPUT_INTERACTION_LIST="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/competing-network-analysis/pymol-visualization/040417/active-heatmap/01-pdb/interaction_list_sim_cutoff60_M2R.txt"
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/analysis/competing-network-analysis
python visualize_competing_networks.py -sim -heatmap $PDB $HEATMAP_FILE $EXP_REP_DICT_PATH $OUTPUT_INTERACTION_LIST -chainId 3 -columnId M2R -interlist -wb -wb2 



EXP_COND_DIR="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/M2R-active-restrained-unpublished/condition-prot-asp2x50-3x49/rep_1"
FRAME_NUM="86"
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/analysis/competing-network-analysis
python identify_fragment_frame.py $EXP_COND_DIR $FRAME_NUM


# VMD: Prod_0 Frame 86

TOP_PATH="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/competing-network-analysis/pymol-visualization/040417/active-heatmap/01-pdb/active_heatmap_M2R_prod0_frame86_cutoff60.pdb"
OUTPUT_FILE_PATH="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/competing-network-analysis/pymol-visualization/040417/active-heatmap/02-raw-hbond/active_heatmap_M2R_prod0_frame86_cutoff60.txt"
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/interaction-geometry
python StaticInteractionCalculator_water_indexed.py $TOP_PATH $OUTPUT_FILE_PATH  -chain A -interlist -wb -wb2


# Network of interactions in > 0.60 in MOR
PDB="5C1M"
HEATMAP_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/results/non-state-decomposition/residue-resolution-combined-rep/040117_union_wb_freq/wb_wb2/active_receptors/active_filtered_freq80.txt"
EXP_REP_DICT_PATH="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutputDictionary/MOR-active-noNb-BU72-nature2015/condition-nb-interface-restrained-BU72/rep_1/050516_NONHB_DEFAULT_HB_3.5_70"
OUTPUT_INTERACTION_LIST="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/competing-network-analysis/pymol-visualization/040417/active-heatmap/01-pdb/interaction_list_sim_cutoff60_MOR.txt"
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/analysis/competing-network-analysis
python visualize_competing_networks.py -sim -heatmap $PDB $HEATMAP_FILE $EXP_REP_DICT_PATH $OUTPUT_INTERACTION_LIST -chainId 3 -columnId MOR -interlist -wb -wb2 



EXP_COND_DIR="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/MOR-active-noNb-BU72-nature2015/condition-nb-interface-restrained-BU72/rep_1"
FRAME_NUM="22"
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/analysis/competing-network-analysis
python identify_fragment_frame.py $EXP_COND_DIR $FRAME_NUM

# VMD: Prod_0 Frame 22


TOP_PATH="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/competing-network-analysis/pymol-visualization/040417/active-heatmap/01-pdb/active_heatmap_MOR_prod0_frame22_cutoff60.pdb"
OUTPUT_FILE_PATH="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/competing-network-analysis/pymol-visualization/040417/active-heatmap/02-raw-hbond/active_heatmap_MOR_prod0_frame22_cutoff60.txt"
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/interaction-geometry
python StaticInteractionCalculator_water_indexed.py $TOP_PATH $OUTPUT_FILE_PATH  -chain A -interlist -wb -wb2



# Network of interactions in > 0.60 in US28

PDB="TMP2"
HEATMAP_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/results/non-state-decomposition/residue-resolution-combined-rep/040117_union_wb_freq/wb_wb2/active_receptors/active_filtered_freq80.txt"
EXP_REP_DICT_PATH="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutputDictionary/US28-active-restrained-unpublished/fractalkine-bound/rep_1/050516_NONHB_DEFAULT_HB_3.5_70"
OUTPUT_INTERACTION_LIST="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/competing-network-analysis/pymol-visualization/040417/active-heatmap/01-pdb/interaction_list_sim_cutoff60_US28.txt"
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/analysis/competing-network-analysis
python visualize_competing_networks.py -sim -heatmap $PDB $HEATMAP_FILE $EXP_REP_DICT_PATH $OUTPUT_INTERACTION_LIST -chainId 3 -columnId US28 -interlist -wb -wb2 


EXP_COND_DIR="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/US28-active-restrained-unpublished/fractalkine-bound/rep_1"
FRAME_NUM="4"
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/analysis/competing-network-analysis
python identify_fragment_frame.py $EXP_COND_DIR $FRAME_NUM


# VMD: Prod_0 Frame 4

TOP_PATH="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/competing-network-analysis/pymol-visualization/040417/active-heatmap/01-pdb/active_heatmap_US28_prod0_frame44_cutoff60.pdb"
OUTPUT_FILE_PATH="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/competing-network-analysis/pymol-visualization/040417/active-heatmap/02-raw-hbond/active_heatmap_US28_prod0_frame44_cutoff60.txt"
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/interaction-geometry
python StaticInteractionCalculator_water_indexed.py $TOP_PATH $OUTPUT_FILE_PATH  -chain A -interlist -wb -wb2



