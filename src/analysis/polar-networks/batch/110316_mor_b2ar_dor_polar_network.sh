# Author: Anthony Kai Kwang Ma
# Email: akma327@stanford.edu
# 110316_mor_b2ar_dor_polar_network.sh

# MOR-inactive 	4DKL 	BF0

PDB="4DKL"
TOP="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/MOR-inactive-bFNA-nature2015/condition-bFNA-bound/step5_assembly.pdb"
OUT="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/polar-networks/110416/MOR-inactive-bFNA-nature2015.txt"
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/analysis/polar-networks
python compute_polar_network_list.py $PDB $TOP $OUT -inactive -solv IP3 -ligand BF0 -interlist -wb -wb2 -lwb -lwb2


# MOR-active 	5C1M 	H3B

PDB="5C1M"
TOP="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/MOR-active-noNb-BU72-nature2015/condition-nb-interface-restrained-BU72/step5_assembly.pdb"
OUT="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/polar-networks/110416/MOR-active-noNb-BU72-nature2015.txt"
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/analysis/polar-networks
python compute_polar_network_list.py $PDB $TOP $OUT -active -chain A -ligand H3B -interlist -wb -wb2 -lwb -lwb2


# B2AR-inactive-carazalol-cond12 	2RH1 	CAU

PDB="2RH1"
TOP="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-inactive-carazalol-cell2013b/condition-12/step5_assembly.mae"
OUT="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/polar-networks/110416/B2AR-inactive-carazalol-cell2013b-cond12.txt"
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/analysis/polar-networks
python compute_polar_network_list.py $PDB $TOP $OUT -inactive -chain A -ligand CAU -interlist -wb -wb2 -lwb -lwb2

# B2AR-active-Gs-cond65 	3SN6 	P0G


PDB="3SN6"
TOP="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-65/step5_assembly.mae"
OUT="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/polar-networks/110416/B2AR-active-Gs-BI-science2015-cond65.txt"
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/analysis/polar-networks
python compute_polar_network_list.py $PDB $TOP $OUT -active -chain R -ligand P0G -interlist -wb -wb2 -lwb -lwb2


# B2AR-active-Gs-cond22 	3SN6 	P0G

PDB="3SN6"
TOP="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/step5_assembly.mae"
OUT="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/polar-networks/110416/B2AR-active-Gs-BI-science2015-cond22.txt"
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/analysis/polar-networks
python compute_polar_network_list.py $PDB $TOP $OUT -active -chain R -ligand P0G -interlist -wb -wb2 -lwb -lwb2

# B2AR-active-Gs-cond23 	3SN6 	P0G

PDB="3SN6"
TOP="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-23/step5_assembly.mae"
OUT="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/polar-networks/110416/B2AR-active-Gs-BI-science2015-cond23.txt"
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/analysis/polar-networks
python compute_polar_network_list.py $PDB $TOP $OUT -active -chain R -ligand P0G -interlist -wb -wb2 -lwb -lwb2

# B2AR-active-Gs-cond24 	3SN6 	P0G

PDB="3SN6"
TOP="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-24/step5_assembly.mae"
OUT="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/polar-networks/110416/B2AR-active-Gs-BI-science2015-cond24.txt"
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/analysis/polar-networks
python compute_polar_network_list.py $PDB $TOP $OUT -active -chain R -ligand P0G -interlist -wb -wb2 -lwb -lwb2


# DOR-inactive	4N6H 	-chain A 	EJ4
PDB="4N6H"
TOP="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/DOR-inactive-naltrindole-unpublished/condition-naltrindole-bound/step5_assembly.pdb"
OUT="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/polar-networks/110416/DOR-inactive-naltrindole-unpublished-condition-naltrindole-bound.txt"
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/analysis/polar-networks
python compute_polar_network_list.py $PDB $TOP $OUT -inactive -chain A -ligand EJ4 -interlist -wb -wb2 -lwb -lwb2




cd /scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/polar-networks/110416
mkdir active_receptors
mkdir inactive_receptors
mv *-active-* active_receptors
mv *-inactive-* inactive_receptors


# Unionize all inactive and all active polar network list

INDIVIDUAL_POLAR_NETWORK_DIR="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/polar-networks/110416/active_receptors"
OUTPUT="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/polar-networks/110416/active_polar_network.txt"
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/analysis/polar-networks
python unionize_polar_network_list.py $INDIVIDUAL_POLAR_NETWORK_DIR $OUTPUT


INDIVIDUAL_POLAR_NETWORK_DIR="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/polar-networks/110416/inactive_receptors"
OUTPUT="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/polar-networks/110416/inactive_polar_network.txt"
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/analysis/polar-networks
python unionize_polar_network_list.py $INDIVIDUAL_POLAR_NETWORK_DIR $OUTPUT









