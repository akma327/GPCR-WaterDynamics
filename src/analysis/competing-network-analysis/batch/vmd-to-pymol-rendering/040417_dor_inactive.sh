# 040417_dor_inactive.sh


# 95 percent cutoff

### 01) Determine The Global Frame that has most of the competing network and the specific 
### Interaction list for the portion of competing network

PDB="4N6H"
FLAREPLOT_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/interaction-footprint-analysis/residue-resolution-evobundle-input/033117_crystal_vs_simulation/DOR_inactive/venn_diagram/sim_only/DOR_inactive_simulation_cutoff_95.json"
EXP_REP_DICT_PATH="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutputDictionary/DOR-inactive-naltrindole-unpublished/condition-naltrindole-bound/rep_1/050516_NONHB_DEFAULT_HB_3.5_70"
OUTPUT_INTERACTION_LIST="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/competing-network-analysis/pymol-visualization/040417/DOR_inactive/01-pdb/interaction_list_sim_cutoff95.txt"
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/analysis/competing-network-analysis
python visualize_competing_networks.py -sim -flare $PDB $FLAREPLOT_FILE $EXP_REP_DICT_PATH $OUTPUT_INTERACTION_LIST -chainId 3 -interlist -wb -wb2 


### 02) Compute the fragment and fragment index 

EXP_COND_DIR="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/DOR-inactive-naltrindole-unpublished/condition-naltrindole-bound/rep_1"
FRAME_NUM="1" # From Part 01
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/analysis/competing-network-analysis
python identify_fragment_frame.py $EXP_COND_DIR $FRAME_NUM


### 03) Load the Prod_0 Frame 1 and seek the fragment index --> Save as pdb 


### 04) Compute the water mediated interactions for that extracted PDB
### This hbond information includes water indices

TOP_PATH="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/competing-network-analysis/pymol-visualization/040417/DOR_inactive/01-pdb/dor_inactive_prod0_frame1_cutoff95.pdb"
OUTPUT_FILE_PATH="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/competing-network-analysis/pymol-visualization/040417/DOR_inactive/02-raw-hbond/dor_inactive_prod0_frame1_cutoff95.txt"
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/interaction-geometry
python StaticInteractionCalculator_water_indexed.py $TOP_PATH $OUTPUT_FILE_PATH -solv TIP3 -chain A -interlist -wb -wb2

### 05) Filter the atomic level water-mediated interactions for those part of 
### the competing network gpcrdb1--gpcrdb2 pairs.

### Go to pymol
### >> cd /Users/anthony/Desktop/dror/temp4/DynamicNetworks/src/analysis/competing-network-analysis
### >> run pymol_render_filtered_competing_networks.py



# 75 percent cutoff

### 01) Determine The Global Frame that has most of the competing network and the specific 
### Interaction list for the portion of competing network

PDB="4N6H"
FLAREPLOT_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/interaction-footprint-analysis/residue-resolution-evobundle-input/033117_crystal_vs_simulation/DOR_inactive/venn_diagram/sim_only/DOR_inactive_simulation_cutoff_75.json"
EXP_REP_DICT_PATH="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutputDictionary/DOR-inactive-naltrindole-unpublished/condition-naltrindole-bound/rep_1/050516_NONHB_DEFAULT_HB_3.5_70"
OUTPUT_INTERACTION_LIST="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/competing-network-analysis/pymol-visualization/040417/DOR_inactive/01-pdb/interaction_list_sim_cutoff75.txt"
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/analysis/competing-network-analysis
python visualize_competing_networks.py -sim -flare $PDB $FLAREPLOT_FILE $EXP_REP_DICT_PATH $OUTPUT_INTERACTION_LIST -chainId 3 -interlist -wb -wb2 


### 02) Compute the fragment and fragment index 

EXP_COND_DIR="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/DOR-inactive-naltrindole-unpublished/condition-naltrindole-bound/rep_1"
FRAME_NUM="2286" # From Part 01
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/analysis/competing-network-analysis
python identify_fragment_frame.py $EXP_COND_DIR $FRAME_NUM


### 03) Load the Prod 9 Frame 127 and seek the fragment index --> Save as pdb 


### 04) Compute the water mediated interactions for that extracted PDB
### This hbond information includes water indices

TOP_PATH="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/competing-network-analysis/pymol-visualization/040417/DOR_inactive/01-pdb/dor_inactive_prod9_frame127_cutoff75.pdb"
OUTPUT_FILE_PATH="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/competing-network-analysis/pymol-visualization/040417/DOR_inactive/02-raw-hbond/dor_inactive_prod9_frame127_cutoff75.txt"
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/interaction-geometry
python StaticInteractionCalculator_water_indexed.py $TOP_PATH $OUTPUT_FILE_PATH -solv TIP3 -chain A -interlist -wb -wb2

### 05) Filter the atomic level water-mediated interactions for those part of 
### the competing network gpcrdb1--gpcrdb2 pairs.

### Go to pymol
### >> cd /Users/anthony/Desktop/dror/temp4/DynamicNetworks/src/analysis/competing-network-analysis
### >> run pymol_render_filtered_competing_networks.py



# 50 percent cutoff

### 01) Determine The Global Frame that has most of the competing network and the specific 
### Interaction list for the portion of competing network

PDB="4N6H"
FLAREPLOT_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/interaction-footprint-analysis/residue-resolution-evobundle-input/033117_crystal_vs_simulation/DOR_inactive/venn_diagram/sim_only/DOR_inactive_simulation_cutoff_50.json"
EXP_REP_DICT_PATH="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutputDictionary/DOR-inactive-naltrindole-unpublished/condition-naltrindole-bound/rep_1/050516_NONHB_DEFAULT_HB_3.5_70"
OUTPUT_INTERACTION_LIST="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/competing-network-analysis/pymol-visualization/040417/DOR_inactive/01-pdb/interaction_list_sim_cutoff50.txt"
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/analysis/competing-network-analysis
python visualize_competing_networks.py -sim -flare $PDB $FLAREPLOT_FILE $EXP_REP_DICT_PATH $OUTPUT_INTERACTION_LIST -chainId 3 -interlist -wb -wb2 


### 02) Compute the fragment and fragment index 

EXP_COND_DIR="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/DOR-inactive-naltrindole-unpublished/condition-naltrindole-bound/rep_1"
FRAME_NUM="2859" # From Part 01
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/analysis/competing-network-analysis
python identify_fragment_frame.py $EXP_COND_DIR $FRAME_NUM


### 03) Load the Prod 11 Frame 139 and seek the fragment index --> Save as pdb 

### 04) Compute the water mediated interactions for that extracted PDB
### This hbond information includes water indices

TOP_PATH="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/competing-network-analysis/pymol-visualization/040417/DOR_inactive/01-pdb/dor_inactive_prod9_frame127_cutoff50.pdb"
OUTPUT_FILE_PATH="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/competing-network-analysis/pymol-visualization/040417/DOR_inactive/02-raw-hbond/dor_inactive_prod11_frame139_cutoff50.txt"
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/interaction-geometry
python StaticInteractionCalculator_water_indexed.py $TOP_PATH $OUTPUT_FILE_PATH -solv TIP3 -chain A -interlist -wb -wb2

### 05) Filter the atomic level water-mediated interactions for those part of 
### the competing network gpcrdb1--gpcrdb2 pairs.

### Go to pymol
### >> cd /Users/anthony/Desktop/dror/temp4/DynamicNetworks/src/analysis/competing-network-analysis
### >> run pymol_render_filtered_competing_networks.py



# 25 percent cutoff 

### 01) Determine The Global Frame that has most of the competing network and the specific 
### Interaction list for the portion of competing network

PDB="4N6H"
FLAREPLOT_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/interaction-footprint-analysis/residue-resolution-evobundle-input/033117_crystal_vs_simulation/DOR_inactive/venn_diagram/sim_only/DOR_inactive_simulation_cutoff_25.json"
EXP_REP_DICT_PATH="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutputDictionary/DOR-inactive-naltrindole-unpublished/condition-naltrindole-bound/rep_1/050516_NONHB_DEFAULT_HB_3.5_70"
OUTPUT_INTERACTION_LIST="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/competing-network-analysis/pymol-visualization/040417/DOR_inactive/01-pdb/interaction_list_sim_cutoff25.txt"
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/analysis/competing-network-analysis
python visualize_competing_networks.py -sim -flare $PDB $FLAREPLOT_FILE $EXP_REP_DICT_PATH $OUTPUT_INTERACTION_LIST -chainId 3 -interlist -wb -wb2 


### 02) Compute the fragment and fragment index 

EXP_COND_DIR="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/DOR-inactive-naltrindole-unpublished/condition-naltrindole-bound/rep_1"
FRAME_NUM="6092" # From Part 01
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/analysis/competing-network-analysis
python identify_fragment_frame.py $EXP_COND_DIR $FRAME_NUM


### 03) Load the Prod 23 Frame 44 and seek the fragment index --> Save as pdb 


### 04) Compute the water mediated interactions for that extracted PDB
### This hbond information includes water indices

TOP_PATH="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/competing-network-analysis/pymol-visualization/040417/DOR_inactive/01-pdb/dor_inactive_prod9_frame127_cutoff25.pdb"
OUTPUT_FILE_PATH="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/competing-network-analysis/pymol-visualization/040417/DOR_inactive/02-raw-hbond/dor_inactive_prod23_frame44_cutoff25.txt"
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/interaction-geometry
python StaticInteractionCalculator_water_indexed.py $TOP_PATH $OUTPUT_FILE_PATH -solv TIP3 -chain A -interlist -wb -wb2

### 05) Filter the atomic level water-mediated interactions for those part of 
### the competing network gpcrdb1--gpcrdb2 pairs.

### Go to pymol
### >> cd /Users/anthony/Desktop/dror/temp4/DynamicNetworks/src/analysis/competing-network-analysis
### >> run pymol_render_filtered_competing_networks.py


# 15 percent cutoff 

### 01) Determine The Global Frame that has most of the competing network and the specific 
### Interaction list for the portion of competing network

PDB="4N6H"
FLAREPLOT_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/interaction-footprint-analysis/residue-resolution-evobundle-input/033117_crystal_vs_simulation/DOR_inactive/venn_diagram/sim_only/DOR_inactive_simulation_cutoff_15.json"
EXP_REP_DICT_PATH="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutputDictionary/DOR-inactive-naltrindole-unpublished/condition-naltrindole-bound/rep_1/050516_NONHB_DEFAULT_HB_3.5_70"
OUTPUT_INTERACTION_LIST="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/competing-network-analysis/pymol-visualization/040417/DOR_inactive/01-pdb/interaction_list_sim_cutoff15.txt"
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/analysis/competing-network-analysis
python visualize_competing_networks.py -sim -flare $PDB $FLAREPLOT_FILE $EXP_REP_DICT_PATH $OUTPUT_INTERACTION_LIST -chainId 3 -interlist -wb -wb2 


### 02) Compute the fragment and fragment index 

EXP_COND_DIR="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/DOR-inactive-naltrindole-unpublished/condition-naltrindole-bound/rep_1"
FRAME_NUM="4933" # From Part 01
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/analysis/competing-network-analysis
python identify_fragment_frame.py $EXP_COND_DIR $FRAME_NUM


### 03) Load the Prod_18 Frame 204 and seek the fragment index --> Save as pdb 


### 04) Compute the water mediated interactions for that extracted PDB
### This hbond information includes water indices

TOP_PATH="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/competing-network-analysis/pymol-visualization/040417/DOR_inactive/01-pdb/dor_inactive_prod18_frame204_cutoff15.pdb"
OUTPUT_FILE_PATH="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/competing-network-analysis/pymol-visualization/040417/DOR_inactive/02-raw-hbond/dor_inactive_prod18_frame204_cutoff15.txt"
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/interaction-geometry
python StaticInteractionCalculator_water_indexed.py $TOP_PATH $OUTPUT_FILE_PATH -solv TIP3 -chain A -interlist -wb -wb2

### 05) Filter the atomic level water-mediated interactions for those part of 
### the competing network gpcrdb1--gpcrdb2 pairs.

### Go to pymol
### >> cd /Users/anthony/Desktop/dror/temp4/DynamicNetworks/src/analysis/competing-network-analysis
### >> run pymol_render_filtered_competing_networks.py






### Crystal Structure

### 95 Percent Cutoff

PDB="4N6H"
FLAREPLOT_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/interaction-footprint-analysis/residue-resolution-evobundle-input/033117_crystal_vs_simulation/DOR_inactive/venn_diagram/crys_only/DOR_inactive_crystal_cutoff_95.json"
OUTPUT_INTERACTION_LIST="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/competing-network-analysis/pymol-visualization/040417/DOR_inactive/01-pdb/interaction_list_crys_cutoff95.txt"
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/analysis/competing-network-analysis
python visualize_competing_networks.py -crys $PDB $FLAREPLOT_FILE $OUTPUT_INTERACTION_LIST


TOP_PATH="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/competing-network-analysis/pymol-visualization/040417/DOR_inactive/01-pdb/4n6h_dor_inactive.pdb"
OUTPUT_FILE_PATH="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/competing-network-analysis/pymol-visualization/040417/DOR_inactive/02-raw-hbond/dor_inactive_crys.txt"
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/interaction-geometry
python StaticInteractionCalculator_water_indexed_crys.py $TOP_PATH $OUTPUT_FILE_PATH -solv TIP3 -chain A -interlist -wb -wb2



### 75 Percent Cutoff

PDB="4N6H"
FLAREPLOT_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/interaction-footprint-analysis/residue-resolution-evobundle-input/033117_crystal_vs_simulation/DOR_inactive/venn_diagram/crys_only/DOR_inactive_crystal_cutoff_75.json"
OUTPUT_INTERACTION_LIST="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/competing-network-analysis/pymol-visualization/040417/DOR_inactive/01-pdb/interaction_list_crys_cutoff75.txt"
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/analysis/competing-network-analysis
python visualize_competing_networks.py -crys $PDB $FLAREPLOT_FILE $OUTPUT_INTERACTION_LIST


TOP_PATH="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/competing-network-analysis/pymol-visualization/040417/DOR_inactive/01-pdb/4n6h_dor_inactive.pdb"
OUTPUT_FILE_PATH="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/competing-network-analysis/pymol-visualization/040417/DOR_inactive/02-raw-hbond/dor_inactive_crys.txt"
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/interaction-geometry
python StaticInteractionCalculator_water_indexed_crys.py $TOP_PATH $OUTPUT_FILE_PATH -solv TIP3 -chain A -interlist -wb -wb2



### 50 Percent Cutoff

PDB="4N6H"
FLAREPLOT_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/interaction-footprint-analysis/residue-resolution-evobundle-input/033117_crystal_vs_simulation/DOR_inactive/venn_diagram/crys_only/DOR_inactive_crystal_cutoff_50.json"
OUTPUT_INTERACTION_LIST="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/competing-network-analysis/pymol-visualization/040417/DOR_inactive/01-pdb/interaction_list_crys_cutoff50.txt"
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/analysis/competing-network-analysis
python visualize_competing_networks.py -crys $PDB $FLAREPLOT_FILE $OUTPUT_INTERACTION_LIST

TOP_PATH="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/competing-network-analysis/pymol-visualization/040417/DOR_inactive/01-pdb/4n6h_dor_inactive.pdb"
OUTPUT_FILE_PATH="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/competing-network-analysis/pymol-visualization/040417/DOR_inactive/02-raw-hbond/dor_inactive_crys.txt"
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/interaction-geometry
python StaticInteractionCalculator_water_indexed_crys.py $TOP_PATH $OUTPUT_FILE_PATH -solv TIP3 -chain A -interlist -wb -wb2




### 25 Percent Cutoff

PDB="4N6H"
FLAREPLOT_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/interaction-footprint-analysis/residue-resolution-evobundle-input/033117_crystal_vs_simulation/DOR_inactive/venn_diagram/crys_only/DOR_inactive_crystal_cutoff_25.json"
OUTPUT_INTERACTION_LIST="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/competing-network-analysis/pymol-visualization/040417/DOR_inactive/01-pdb/interaction_list_crys_cutoff25.txt"
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/analysis/competing-network-analysis
python visualize_competing_networks.py -crys $PDB $FLAREPLOT_FILE $OUTPUT_INTERACTION_LIST


TOP_PATH="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/competing-network-analysis/pymol-visualization/040417/DOR_inactive/01-pdb/4n6h_dor_inactive.pdb"
OUTPUT_FILE_PATH="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/competing-network-analysis/pymol-visualization/040417/DOR_inactive/02-raw-hbond/dor_inactive_crys.txt"
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/interaction-geometry
python StaticInteractionCalculator_water_indexed_crys.py $TOP_PATH $OUTPUT_FILE_PATH -solv TIP3 -chain A -interlist -wb -wb2



### 15 Percent Cutoff

PDB="4N6H"
FLAREPLOT_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/interaction-footprint-analysis/residue-resolution-evobundle-input/033117_crystal_vs_simulation/DOR_inactive/venn_diagram/crys_only/DOR_inactive_crystal_cutoff_15.json"
OUTPUT_INTERACTION_LIST="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/competing-network-analysis/pymol-visualization/040417/DOR_inactive/01-pdb/interaction_list_crys_cutoff15.txt"
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/analysis/competing-network-analysis
python visualize_competing_networks.py -crys $PDB $FLAREPLOT_FILE $OUTPUT_INTERACTION_LIST


TOP_PATH="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/competing-network-analysis/pymol-visualization/040417/DOR_inactive/01-pdb/4n6h_dor_inactive.pdb"
OUTPUT_FILE_PATH="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/competing-network-analysis/pymol-visualization/040417/DOR_inactive/02-raw-hbond/dor_inactive_crys.txt"
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/interaction-geometry
python StaticInteractionCalculator_water_indexed_crys.py $TOP_PATH $OUTPUT_FILE_PATH -solv TIP3 -chain A -interlist -wb -wb2


### 0 Percent Cutoff

PDB="4N6H"
FLAREPLOT_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/interaction-footprint-analysis/residue-resolution-evobundle-input/033117_crystal_vs_simulation/DOR_inactive/venn_diagram/crys_only/DOR_inactive_crystal_cutoff_0.json"
OUTPUT_INTERACTION_LIST="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/competing-network-analysis/pymol-visualization/040417/DOR_inactive/01-pdb/interaction_list_crys_cutoff0.txt"
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/analysis/competing-network-analysis
python visualize_competing_networks.py -crys $PDB $FLAREPLOT_FILE $OUTPUT_INTERACTION_LIST


TOP_PATH="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/competing-network-analysis/pymol-visualization/040417/DOR_inactive/01-pdb/4n6h_dor_inactive.pdb"
OUTPUT_FILE_PATH="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/competing-network-analysis/pymol-visualization/040417/DOR_inactive/02-raw-hbond/dor_inactive_crys.txt"
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/interaction-geometry
python StaticInteractionCalculator_water_indexed_crys.py $TOP_PATH $OUTPUT_FILE_PATH -solv TIP3 -chain A -interlist -wb -wb2



