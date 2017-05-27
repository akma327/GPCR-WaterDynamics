# Author: Anthony Kai Kwang Ma
# Email: akma327@stanford.edu
# batch_larger_compute_polar_network_list.sh

# MOR-inactive 	4DKL 	BF0

PDB="4DKL"
TOP="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/MOR-inactive-bFNA-nature2015/condition-bFNA-bound/step5_assembly.pdb"
OUT="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/polar-networks/102716/MOR-inactive-bFNA-nature2015.txt"
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/analysis/polar-networks
python compute_polar_network_list.py $PDB $TOP $OUT -inactive -solv IP3 -ligand BF0 -interlist -wb -wb2 -lwb -lwb2


# MOR-active 	5C1M 	H3B

PDB="5C1M"
TOP="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/MOR-active-noNb-BU72-nature2015/condition-nb-interface-restrained-BU72/step5_assembly.pdb"
OUT="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/polar-networks/102716/MOR-active-noNb-BU72-nature2015.txt"
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/analysis/polar-networks
python compute_polar_network_list.py $PDB $TOP $OUT -active -chain A -ligand H3B -interlist -wb -wb2 -lwb -lwb2


# B2AR-inactive-carazalol-cond12 	2RH1 	CAU

PDB="2RH1"
TOP="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-inactive-carazalol-cell2013b/condition-12/step5_assembly.mae"
OUT="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/polar-networks/102716/B2AR-inactive-carazalol-cell2013b-cond12.txt"
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/analysis/polar-networks
python compute_polar_network_list.py $PDB $TOP $OUT -inactive -chain A -ligand CAU -interlist -wb -wb2 -lwb -lwb2

# B2AR-active-Gs-cond65 	3SN6 	P0G

PDB="3SN6"
TOP="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-65/step5_assembly.mae"
OUT="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/polar-networks/102716/B2AR-active-Gs-BI-science2015-cond65.txt"
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/analysis/polar-networks
python compute_polar_network_list.py $PDB $TOP $OUT -active -chain R -ligand P0G -interlist -wb -wb2 -lwb -lwb2


# D4R-inactive	D4DR	-chain A 	NEMO
PDB="D4DR"
TOP="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/D4R-inactive-nemanopride-unpublished/condition-antagonist-bound/step5_assembly.pdb"
OUT="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/polar-networks/102716/D4R-inactive-nemanopride-unpublished-cond-antagonist-bound.txt"
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/analysis/polar-networks
python compute_polar_network_list.py $PDB $TOP $OUT -inactive -chain A -ligand NEMO -interlist -wb -wb2 -lwb -lwb2


# DOR-inactive	4N6H 	-chain A 	EJ4
PDB="4N6H"
TOP="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/DOR-inactive-naltrindole-unpublished/condition-naltrindole-bound/step5_assembly.pdb"
OUT="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/polar-networks/102716/DOR-inactive-naltrindole-unpublished-condition-naltrindole-bound.txt"
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/analysis/polar-networks
python compute_polar_network_list.py $PDB $TOP $OUT -inactive -chain A -ligand EJ4 -interlist -wb -wb2 -lwb -lwb2

# M2R-inactive-2012 	3UON	-chain P 	QNBP
PDB="3UON"
TOP="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/M2R-inactive-QNB-nature2012/condition-A/step5_assembly.mae"
OUT="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/polar-networks/102716/M2R-inactive-QNB-nature2012-condA.txt"
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/analysis/polar-networks
python compute_polar_network_list.py $PDB $TOP $OUT -inactive -chain P -ligand QNBP -interlist -wb -wb2 -lwb -lwb2


# M2R-inactive-2013 	3UON 	-chain A 	qnb
PDB="3UON"
TOP="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/M2R-inactive-QNB-nature2013/condition-AE/step5_assembly.mae"
OUT="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/polar-networks/102716/M2R-inactive-QNB-nature2013-condAE.txt"
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/analysis/polar-networks
python compute_polar_network_list.py $PDB $TOP $OUT -inactive -chain A -ligand qnb -interlist -wb -wb2 -lwb -lwb2


# B2AR-active-pnas2011b-Q1 	3P0G 	-chain A 	BIA
PDB="3P0G"
TOP="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Nb-BI-pnas2011b/condition-Q/step5_assembly-rep_1.mae"
OUT="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/polar-networks/102716/B2AR-active-Nb-BI-pnas2011b-condQ-rep_1.txt"
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/analysis/polar-networks
python compute_polar_network_list.py $PDB $TOP $OUT -active -chain A -ligand BIA -interlist -wb -wb2 -lwb -lwb2


# B2AR-active-pnas2011b-Q2 	3P0G	-chain A 	BIA
PDB="3P0G"
TOP="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Nb-BI-pnas2011b/condition-Q/step5_assembly-rep_2.mae"
OUT="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/polar-networks/102716/B2AR-active-Nb-BI-pnas2011b-condQ-rep_2.txt"
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/analysis/polar-networks
python compute_polar_network_list.py $PDB $TOP $OUT -active -chain A -ligand BIA -interlist -wb -wb2 -lwb -lwb2


# B2AR-active-Gs-cond22 	3SN6 	P0G

PDB="3SN6"
TOP="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/step5_assembly.mae"
OUT="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/polar-networks/102716/B2AR-active-Gs-BI-science2015-cond22.txt"
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/analysis/polar-networks
python compute_polar_network_list.py $PDB $TOP $OUT -active -chain R -ligand P0G -interlist -wb -wb2 -lwb -lwb2

# B2AR-active-Gs-cond23 	3SN6 	P0G

PDB="3SN6"
TOP="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-23/step5_assembly.mae"
OUT="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/polar-networks/102716/B2AR-active-Gs-BI-science2015-cond23.txt"
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/analysis/polar-networks
python compute_polar_network_list.py $PDB $TOP $OUT -active -chain R -ligand P0G -interlist -wb -wb2 -lwb -lwb2

# B2AR-active-Gs-cond24 	3SN6 	P0G

PDB="3SN6"
TOP="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-24/step5_assembly.mae"
OUT="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/polar-networks/102716/B2AR-active-Gs-BI-science2015-cond24.txt"
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/analysis/polar-networks
python compute_polar_network_list.py $PDB $TOP $OUT -active -chain R -ligand P0G -interlist -wb -wb2 -lwb -lwb2


# MOR-active-Nb-unpublished

PDB="5C1M"
TOP="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/MOR-active-Nb-unpublished/condition-prot-D114-D164-nb-interface-restrained/step5_assembly.pdb"
OUT="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/polar-networks/102716/MOR-active-Nb-unpublished.txt"
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/analysis/polar-networks
python compute_polar_network_list.py $PDB $TOP $OUT -active -chain A -ligand H3B -interlist -wb -wb2 -lwb -lwb2

# M2R-active-restrained-unpublished
PDB="4MQS"
TOP="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/M2R-active-restrained-unpublished/condition-prot-asp2x50-3x49/step5_assembly.pdb"
OUT="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/polar-networks/102716/M2R-active-restrained-unpublished.txt"
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/analysis/polar-networks
python compute_polar_network_list.py $PDB $TOP $OUT -active -chain A -ligand IXO -interlist -wb -wb2 -lwb -lwb2


# TO ADD
# Rhodopsin + Ligand


# US28 + Ligand

