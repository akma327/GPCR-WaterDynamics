# 040917_active_vs_inactive_flareplot.sh


# active_network

INTERACTION_LIST="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/competing-network-analysis/pymol-visualization/040417/active-heatmap/01-pdb/interaction_list_sim_cutoff60_ALL.txt"
OUTPUT_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/competing-network-analysis/pymol-visualization/040417/active-heatmap/04-flareplot/active_network.json"
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/analysis/interaction-footprint-analysis
python interaction_list_to_flareplot.py $INTERACTION_LIST $OUTPUT_FILE


# inactive_network

INTERACTION_LIST="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/competing-network-analysis/pymol-visualization/040417/inactive-heatmap/01-pdb/interaction_list_sim_cutoff60_ALL.txt"
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

cp /scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/competing-network-analysis/pymol-visualization/040417/active-heatmap/01-pdb/active_heatmap_ALL_prod0_frame3_cutoff60.pdb /scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/competing-network-analysis/pymol-visualization/040417/active_vs_inactive_flareplot/01-pdb/active_heatmap_ALL_prod0_frame3_cutoff60.pdb

cp /scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/competing-network-analysis/pymol-visualization/040417/inactive-heatmap/01-pdb/inactive_heatmap_ALL_prod_1_frame1762_cutoff60.pdb /scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/competing-network-analysis/pymol-visualization/040417/active_vs_inactive_flareplot/01-pdb/inactive_heatmap_ALL_prod_1_frame1762_cutoff60.pdb


### Get respective hbond list for full active network and full inactive network
cp /scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/competing-network-analysis/pymol-visualization/040417/active-heatmap/02-raw-hbond/active_heatmap_ALL_prod0_frame3_cutoff60.txt /scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/competing-network-analysis/pymol-visualization/040417/active_vs_inactive_flareplot/02-raw-hbond/active_heatmap_ALL_prod0_frame3_cutoff60.txt

cp /scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/competing-network-analysis/pymol-visualization/040417/inactive-heatmap/02-raw-hbond/inactive_heatmap_ALL_prod_1_frame1762_cutoff60.txt /scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/competing-network-analysis/pymol-visualization/040417/active_vs_inactive_flareplot/02-raw-hbond/inactive_heatmap_ALL_prod_1_frame1762_cutoff60.txt
