# 040617_inactive_heatmap.sh


# Network of interactions > 0.60 in ALL receptors

PDB="4DKL"
HEATMAP_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/results/non-state-decomposition/residue-resolution-combined-rep/040117_union_wb_freq/wb_wb2/inactive_receptors/inactive_filtered_freq80.txt"
EXP_REP_DICT_PATH="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutputDictionary/MOR-inactive-bFNA-nature2015/condition-bFNA-bound/rep_1/050516_NONHB_DEFAULT_HB_3.5_70"
OUTPUT_INTERACTION_LIST="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/competing-network-analysis/pymol-visualization/040417/inactive-heatmap/01-pdb/interaction_list_sim_cutoff60_ALL.txt"
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/analysis/competing-network-analysis
python visualize_competing_networks.py -sim -heatmap $PDB $HEATMAP_FILE $EXP_REP_DICT_PATH $OUTPUT_INTERACTION_LIST -chainId 0 -columnId ALL -interlist -wb -wb2 


EXP_COND_DIR="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/MOR-inactive-bFNA-nature2015/condition-bFNA-bound/rep_1"
FRAME_NUM="1843"
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/analysis/competing-network-analysis
python identify_fragment_frame.py $EXP_COND_DIR $FRAME_NUM

# VMD: Prod_1 Frame 1762

TOP_PATH="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/competing-network-analysis/pymol-visualization/040417/inactive-heatmap/01-pdb/inactive_heatmap_ALL_prod_1_frame1762_cutoff60.pdb"
OUTPUT_FILE_PATH="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/competing-network-analysis/pymol-visualization/040417/inactive-heatmap/02-raw-hbond/inactive_heatmap_ALL_prod_1_frame1762_cutoff60.txt"
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/interaction-geometry
python StaticInteractionCalculator_water_indexed.py $TOP_PATH $OUTPUT_FILE_PATH -solv IP3 -interlist -wb -wb2


# Network of interactions in > 0.60 in B2AR

PDB="2RH1"
HEATMAP_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/results/non-state-decomposition/residue-resolution-combined-rep/040117_union_wb_freq/wb_wb2/inactive_receptors/inactive_filtered_freq80.txt"
EXP_REP_DICT_PATH="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutputDictionary/B2AR-inactive-carazalol-cell2013b/condition-12/rep_1/050516_NONHB_DEFAULT_HB_3.5_70"
OUTPUT_INTERACTION_LIST="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/competing-network-analysis/pymol-visualization/040417/inactive-heatmap/01-pdb/interaction_list_sim_cutoff60_B2AR.txt"
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/analysis/competing-network-analysis
python visualize_competing_networks.py -sim -heatmap $PDB $HEATMAP_FILE $EXP_REP_DICT_PATH $OUTPUT_INTERACTION_LIST -chainId 0 -columnId B2AR -interlist -wb -wb2 



EXP_COND_DIR="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-inactive-carazalol-cell2013b/condition-12/rep_1"
FRAME_NUM="2"
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/analysis/competing-network-analysis
python identify_fragment_frame.py $EXP_COND_DIR $FRAME_NUM

# VMD: Prod_0 Frame 2


TOP_PATH="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/competing-network-analysis/pymol-visualization/040417/inactive-heatmap/01-pdb/inactive_heatmap_B2AR_prod_0_frame2_cutoff60.mae"
OUTPUT_FILE_PATH="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/competing-network-analysis/pymol-visualization/040417/inactive-heatmap/02-raw-hbond/inactive_heatmap_B2AR_prod_0_frame2_cutoff60.txt"
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/interaction-geometry
python StaticInteractionCalculator_water_indexed.py $TOP_PATH $OUTPUT_FILE_PATH -chain A -interlist -wb -wb2



# Network of interactions in > 0.60 in M2R

PDB="3UON"
HEATMAP_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/results/non-state-decomposition/residue-resolution-combined-rep/040117_union_wb_freq/wb_wb2/inactive_receptors/inactive_filtered_freq80.txt"
EXP_REP_DICT_PATH="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutputDictionary/M2R-inactive-QNB-nature2012/condition-A/rep_1/050516_NONHB_DEFAULT_HB_3.5_70"
OUTPUT_INTERACTION_LIST="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/competing-network-analysis/pymol-visualization/040417/inactive-heatmap/01-pdb/interaction_list_sim_cutoff60_M2R.txt"
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/analysis/competing-network-analysis
python visualize_competing_networks.py -sim -heatmap $PDB $HEATMAP_FILE $EXP_REP_DICT_PATH $OUTPUT_INTERACTION_LIST -chainId 1 -columnId M2R -interlist -wb -wb2 


EXP_COND_DIR="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/M2R-inactive-QNB-nature2012/condition-A/rep_1"
FRAME_NUM="1"
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/analysis/competing-network-analysis
python identify_fragment_frame.py $EXP_COND_DIR $FRAME_NUM

# VMD: Prod_0 Frame 1


TOP_PATH="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/competing-network-analysis/pymol-visualization/040417/inactive-heatmap/01-pdb/inactive_heatmap_M2R_prod_0_frame1_cutoff60.pdb"
OUTPUT_FILE_PATH="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/competing-network-analysis/pymol-visualization/040417/inactive-heatmap/02-raw-hbond/inactive_heatmap_M2R_prod_0_frame1_cutoff60.txt"
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/interaction-geometry
python StaticInteractionCalculator_water_indexed.py $TOP_PATH $OUTPUT_FILE_PATH -chain P -interlist -wb -wb2



# Network of interactions in > 0.60 in MOR

PDB="4DKL"
HEATMAP_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/results/non-state-decomposition/residue-resolution-combined-rep/040117_union_wb_freq/wb_wb2/inactive_receptors/inactive_filtered_freq80.txt"
EXP_REP_DICT_PATH="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutputDictionary/MOR-inactive-bFNA-nature2015/condition-bFNA-bound/rep_1/050516_NONHB_DEFAULT_HB_3.5_70"
OUTPUT_INTERACTION_LIST="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/competing-network-analysis/pymol-visualization/040417/inactive-heatmap/01-pdb/interaction_list_sim_cutoff60_MOR.txt"
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/analysis/competing-network-analysis
python visualize_competing_networks.py -sim -heatmap $PDB $HEATMAP_FILE $EXP_REP_DICT_PATH $OUTPUT_INTERACTION_LIST -chainId 0 -columnId MOR -interlist -wb -wb2 

EXP_COND_DIR="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/MOR-inactive-bFNA-nature2015/condition-bFNA-bound/rep_1"
FRAME_NUM="1843"
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/analysis/competing-network-analysis
python identify_fragment_frame.py $EXP_COND_DIR $FRAME_NUM

# VMD: Prod_1 Frame 1762

TOP_PATH="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/competing-network-analysis/pymol-visualization/040417/inactive-heatmap/01-pdb/inactive_heatmap_MOR_prod_1_frame1762_cutoff60.pdb"
OUTPUT_FILE_PATH="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/competing-network-analysis/pymol-visualization/040417/inactive-heatmap/02-raw-hbond/inactive_heatmap_MOR_prod_1_frame1762_cutoff60.txt"
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/interaction-geometry
python StaticInteractionCalculator_water_indexed.py $TOP_PATH $OUTPUT_FILE_PATH -solv IP3 -interlist -wb -wb2


# Network of interactions in > 0.60 in DOR

PDB="4N6H"
HEATMAP_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/results/non-state-decomposition/residue-resolution-combined-rep/040117_union_wb_freq/wb_wb2/inactive_receptors/inactive_filtered_freq80.txt"
EXP_REP_DICT_PATH="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutputDictionary/DOR-inactive-naltrindole-unpublished/condition-naltrindole-bound/rep_1/050516_NONHB_DEFAULT_HB_3.5_70"
OUTPUT_INTERACTION_LIST="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/competing-network-analysis/pymol-visualization/040417/inactive-heatmap/01-pdb/interaction_list_sim_cutoff60_DOR.txt"
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/analysis/competing-network-analysis
python visualize_competing_networks.py -sim -heatmap $PDB $HEATMAP_FILE $EXP_REP_DICT_PATH $OUTPUT_INTERACTION_LIST -chainId 3 -columnId DOR -interlist -wb -wb2 


EXP_COND_DIR="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/DOR-inactive-naltrindole-unpublished/condition-naltrindole-bound/rep_1"
FRAME_NUM="9"
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/analysis/competing-network-analysis
python identify_fragment_frame.py $EXP_COND_DIR $FRAME_NUM

# VMD: Prod_0 Frame 9

TOP_PATH="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/competing-network-analysis/pymol-visualization/040417/inactive-heatmap/01-pdb/inactive_heatmap_DOR_prod_0_frame9_cutoff60.pdb"
OUTPUT_FILE_PATH="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/competing-network-analysis/pymol-visualization/040417/inactive-heatmap/02-raw-hbond/inactive_heatmap_DOR_prod_0_frame9_cutoff60.txt"
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/interaction-geometry
python StaticInteractionCalculator_water_indexed.py $TOP_PATH $OUTPUT_FILE_PATH -chain A -interlist -wb -wb2



