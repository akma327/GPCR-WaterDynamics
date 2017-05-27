# 041017_active_vs_inactive_flareplot.sh

# Network of interactions > 0.50 in ALL active receptors

PDB="5C1M"
HEATMAP_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/results/non-state-decomposition/residue-resolution-combined-rep/040117_union_wb_freq/wb_wb2/active_receptors/active_filtered_freq50.txt"
EXP_REP_DICT_PATH="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutputDictionary/MOR-active-noNb-BU72-nature2015/condition-nb-interface-restrained-BU72/rep_1/050516_NONHB_DEFAULT_HB_3.5_70"
OUTPUT_INTERACTION_LIST="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/competing-network-analysis/pymol-visualization/040417/active-heatmap/01-pdb/interaction_list_sim_cutoff50_ALL.txt"
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/analysis/competing-network-analysis
python visualize_competing_networks.py -sim -heatmap $PDB $HEATMAP_FILE $EXP_REP_DICT_PATH $OUTPUT_INTERACTION_LIST -chainId 3 -columnId ALL -interlist -wb -wb2 


EXP_COND_DIR="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/MOR-active-noNb-BU72-nature2015/condition-nb-interface-restrained-BU72/rep_1"
FRAME_NUM="3"
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/analysis/competing-network-analysis
python identify_fragment_frame.py $EXP_COND_DIR $FRAME_NUM


# VMD: Prod_0 Frame 3

TOP_PATH="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/competing-network-analysis/pymol-visualization/040417/active-heatmap/01-pdb/active_heatmap_ALL_prod0_frame3_cutoff50.pdb"
OUTPUT_FILE_PATH="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/competing-network-analysis/pymol-visualization/040417/active-heatmap/02-raw-hbond/active_heatmap_ALL_prod0_frame3_cutoff50.txt"
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/interaction-geometry
python StaticInteractionCalculator_water_indexed.py $TOP_PATH $OUTPUT_FILE_PATH  -chain A -interlist -wb -wb2




# Network of interactions > 0.50 in ALL inactive receptors

PDB="4DKL"
HEATMAP_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/results/non-state-decomposition/residue-resolution-combined-rep/040117_union_wb_freq/wb_wb2/inactive_receptors/inactive_filtered_freq50.txt"
EXP_REP_DICT_PATH="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutputDictionary/MOR-inactive-bFNA-nature2015/condition-bFNA-bound/rep_1/050516_NONHB_DEFAULT_HB_3.5_70"
OUTPUT_INTERACTION_LIST="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/competing-network-analysis/pymol-visualization/040417/inactive-heatmap/01-pdb/interaction_list_sim_cutoff50_ALL.txt"
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/analysis/competing-network-analysis
python visualize_competing_networks.py -sim -heatmap $PDB $HEATMAP_FILE $EXP_REP_DICT_PATH $OUTPUT_INTERACTION_LIST -chainId 0 -columnId ALL -interlist -wb -wb2 


EXP_COND_DIR="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/MOR-inactive-bFNA-nature2015/condition-bFNA-bound/rep_1"
FRAME_NUM="1843"
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/analysis/competing-network-analysis
python identify_fragment_frame.py $EXP_COND_DIR $FRAME_NUM

# VMD: Prod_1 Frame 1762

TOP_PATH="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/competing-network-analysis/pymol-visualization/040417/inactive-heatmap/01-pdb/inactive_heatmap_ALL_prod_1_frame1762_cutoff50.pdb"
OUTPUT_FILE_PATH="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/competing-network-analysis/pymol-visualization/040417/inactive-heatmap/02-raw-hbond/inactive_heatmap_ALL_prod_1_frame1762_cutoff50.txt"
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/interaction-geometry
python StaticInteractionCalculator_water_indexed.py $TOP_PATH $OUTPUT_FILE_PATH -solv IP3 -interlist -wb -wb2









# active_network

INTERACTION_LIST="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/competing-network-analysis/pymol-visualization/040417/active-heatmap/01-pdb/interaction_list_sim_cutoff50_ALL.txt"
OUTPUT_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/competing-network-analysis/pymol-visualization/040417/active-heatmap/04-flareplot/active_network.json"
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/analysis/interaction-footprint-analysis
python interaction_list_to_flareplot.py $INTERACTION_LIST $OUTPUT_FILE


# inactive_network

INTERACTION_LIST="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/competing-network-analysis/pymol-visualization/040417/inactive-heatmap/01-pdb/interaction_list_sim_cutoff50_ALL.txt"
OUTPUT_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/competing-network-analysis/pymol-visualization/040417/inactive-heatmap/04-flareplot/inactive_network.json"
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/analysis/interaction-footprint-analysis
python interaction_list_to_flareplot.py $INTERACTION_LIST $OUTPUT_FILE

mkdir /scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/competing-network-analysis/pymol-visualization/040417/active_vs_inactive_flareplot
cd /scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/competing-network-analysis/pymol-visualization/040417/active_vs_inactive_flareplot
mkdir 01-pdb
mkdir 02-raw-hbond
mkdir 03-pymol-pse
mkdir 04-flareplot


# active full
POLAR_NETWORK_JSON1="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/competing-network-analysis/pymol-visualization/040417/active-heatmap/04-flareplot/active_network.json"
POLAR_NETWORK_JSON2="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/competing-network-analysis/pymol-visualization/040417/inactive-heatmap/04-flareplot/inactive_network.json"
VENN_DIAGRAM_SECTOR="-firstorig"
OUTPUT_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/competing-network-analysis/pymol-visualization/040417/active_vs_inactive_flareplot/04-flareplot/active_network.txt"
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/analysis/interaction-footprint-analysis
INTERACTION_LIST="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/competing-network-analysis/pymol-visualization/040417/active_vs_inactive_flareplot/01-pdb/active_network.txt"
python venn_diagram_compare_polar_networks.py $POLAR_NETWORK_JSON1 $POLAR_NETWORK_JSON2 $VENN_DIAGRAM_SECTOR $OUTPUT_FILE > $INTERACTION_LIST


# inactive full
# active full
POLAR_NETWORK_JSON1="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/competing-network-analysis/pymol-visualization/040417/active-heatmap/04-flareplot/active_network.json"
POLAR_NETWORK_JSON2="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/competing-network-analysis/pymol-visualization/040417/inactive-heatmap/04-flareplot/inactive_network.json"
VENN_DIAGRAM_SECTOR="-secondorig"
OUTPUT_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/competing-network-analysis/pymol-visualization/040417/active_vs_inactive_flareplot/04-flareplot/inactive_network.txt"
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/analysis/interaction-footprint-analysis
INTERACTION_LIST="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/competing-network-analysis/pymol-visualization/040417/active_vs_inactive_flareplot/01-pdb/inactive_network.txt"
python venn_diagram_compare_polar_networks.py $POLAR_NETWORK_JSON1 $POLAR_NETWORK_JSON2 $VENN_DIAGRAM_SECTOR $OUTPUT_FILE > $INTERACTION_LIST


# active only

POLAR_NETWORK_JSON1="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/competing-network-analysis/pymol-visualization/040417/active-heatmap/04-flareplot/active_network.json"
POLAR_NETWORK_JSON2="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/competing-network-analysis/pymol-visualization/040417/inactive-heatmap/04-flareplot/inactive_network.json"
VENN_DIAGRAM_SECTOR="-first"
OUTPUT_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/competing-network-analysis/pymol-visualization/040417/active_vs_inactive_flareplot/04-flareplot/active_only.txt"
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/analysis/interaction-footprint-analysis
INTERACTION_LIST="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/competing-network-analysis/pymol-visualization/040417/active_vs_inactive_flareplot/01-pdb/active_only.txt"
python venn_diagram_compare_polar_networks.py $POLAR_NETWORK_JSON1 $POLAR_NETWORK_JSON2 $VENN_DIAGRAM_SECTOR $OUTPUT_FILE > $INTERACTION_LIST



# inactive only 

POLAR_NETWORK_JSON1="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/competing-network-analysis/pymol-visualization/040417/active-heatmap/04-flareplot/active_network.json"
POLAR_NETWORK_JSON2="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/competing-network-analysis/pymol-visualization/040417/inactive-heatmap/04-flareplot/inactive_network.json"
VENN_DIAGRAM_SECTOR="-second"
OUTPUT_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/competing-network-analysis/pymol-visualization/040417/active_vs_inactive_flareplot/04-flareplot/inactive_only.txt"
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/analysis/interaction-footprint-analysis
INTERACTION_LIST="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/competing-network-analysis/pymol-visualization/040417/active_vs_inactive_flareplot/01-pdb/inactive_only.txt"
python venn_diagram_compare_polar_networks.py $POLAR_NETWORK_JSON1 $POLAR_NETWORK_JSON2 $VENN_DIAGRAM_SECTOR $OUTPUT_FILE > $INTERACTION_LIST



# both

POLAR_NETWORK_JSON1="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/competing-network-analysis/pymol-visualization/040417/active-heatmap/04-flareplot/active_network.json"
POLAR_NETWORK_JSON2="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/competing-network-analysis/pymol-visualization/040417/inactive-heatmap/04-flareplot/inactive_network.json"
VENN_DIAGRAM_SECTOR="-intersect1"
OUTPUT_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/competing-network-analysis/pymol-visualization/040417/active_vs_inactive_flareplot/04-flareplot/both.txt"
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/analysis/interaction-footprint-analysis
INTERACTION_LIST="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/competing-network-analysis/pymol-visualization/040417/active_vs_inactive_flareplot/01-pdb/both.txt"
python venn_diagram_compare_polar_networks.py $POLAR_NETWORK_JSON1 $POLAR_NETWORK_JSON2 $VENN_DIAGRAM_SECTOR $OUTPUT_FILE > $INTERACTION_LIST




### Get the respective pdbs for full active network and full inactive network

cp /scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/competing-network-analysis/pymol-visualization/040417/active-heatmap/01-pdb/active_heatmap_ALL_prod0_frame3_cutoff50.pdb /scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/competing-network-analysis/pymol-visualization/040417/active_vs_inactive_flareplot/01-pdb/active_heatmap_ALL_prod0_frame3_cutoff50.pdb

cp /scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/competing-network-analysis/pymol-visualization/040417/inactive-heatmap/01-pdb/inactive_heatmap_ALL_prod_1_frame1762_cutoff50.pdb /scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/competing-network-analysis/pymol-visualization/040417/active_vs_inactive_flareplot/01-pdb/inactive_heatmap_ALL_prod_1_frame1762_cutoff50.pdb


### Get respective hbond list for full active network and full inactive network
cp /scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/competing-network-analysis/pymol-visualization/040417/active-heatmap/02-raw-hbond/active_heatmap_ALL_prod0_frame3_cutoff50.txt /scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/competing-network-analysis/pymol-visualization/040417/active_vs_inactive_flareplot/02-raw-hbond/active_heatmap_ALL_prod0_frame3_cutoff50.txt

cp /scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/competing-network-analysis/pymol-visualization/040417/inactive-heatmap/02-raw-hbond/inactive_heatmap_ALL_prod_1_frame1762_cutoff50.txt /scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/competing-network-analysis/pymol-visualization/040417/active_vs_inactive_flareplot/02-raw-hbond/inactive_heatmap_ALL_prod_1_frame1762_cutoff50.txt


