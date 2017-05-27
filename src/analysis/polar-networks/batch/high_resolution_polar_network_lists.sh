# Author: Anthony Kai Kwang Ma
# Email: akma327@stanford.edu
# high_resolution_polar_network_lists.sh


# 1U19

PDB="1U19"
TOP="/scratch/PI/rondror/akma327/DynamicNetworks/data/StaticNetworks/pdb-files/1U19_edited_Hadded.pdb"
OUT="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/polar-networks/110316_lax_angle/1U19_inactive.txt"
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/analysis/polar-networks
python compute_polar_network_list.py $PDB $TOP $OUT -inactive -solvent HOH -chain A -ligand RET -interlist -wb -wb2 -lwb -lwb2

# 4BVN

PDB="4BVN"
TOP="/scratch/PI/rondror/akma327/DynamicNetworks/data/StaticNetworks/pdb-files/4BVN_edited_Hadded.pdb"
OUT="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/polar-networks/110316_lax_angle/4BVN_inactive.txt"
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/analysis/polar-networks
python compute_polar_network_list.py $PDB $TOP $OUT -inactive -chain A -ligand P32 -interlist -wb -wb2 -lwb -lwb2


# 4EIY

PDB="4EIY"
TOP="/scratch/PI/rondror/akma327/DynamicNetworks/data/StaticNetworks/pdb-files/4EIY_edited_Hadded.pdb"
OUT="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/polar-networks/110316_lax_angle/4EIY_inactive.txt"
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/analysis/polar-networks
python compute_polar_network_list.py $PDB $TOP $OUT -inactive -chain A -ligand ZMA -interlist -wb -wb2 -lwb -lwb2

# 4N6H

PDB="4N6H"
TOP="/scratch/PI/rondror/akma327/DynamicNetworks/data/StaticNetworks/pdb-files/4N6H_edited_Hadded.pdb"
OUT="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/polar-networks/110316_lax_angle/4N6H_inactive.txt"
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/analysis/polar-networks
python compute_polar_network_list.py $PDB $TOP $OUT -inactive -chain A -ligand EJ4 -interlist -wb -wb2 -lwb -lwb2

# D4DR

PDB="D4DR"
TOP="/scratch/PI/rondror/akma327/DynamicNetworks/data/StaticNetworks/pdb-files/D4DR_edited_Hadded.pdb"
OUT="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/polar-networks/110316_lax_angle/D4DR_inactive.txt"
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/analysis/polar-networks
python compute_polar_network_list.py $PDB $TOP $OUT -inactive -chain A -ligand NEMO -interlist -wb -wb2 -lwb -lwb2

# 5C1M

PDB="5C1M"
TOP="/scratch/PI/rondror/akma327/DynamicNetworks/data/StaticNetworks/pdb-files/5C1M_edited_Hadded.pdb"
OUT="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/polar-networks/110316_lax_angle/5C1M_active.txt"
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/analysis/polar-networks
python compute_polar_network_list.py $PDB $TOP $OUT -active -solvent HOH -chain A -ligand 4VO -interlist -wb -wb2 -lwb -lwb2



cd /scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/polar-networks/110316_lax_angle
mkdir active_receptors
mkdir inactive_receptors
mv *_active.* active_receptors
mv *_inactive.* inactive_receptors


# Unionize all inactive and all active polar network list

INDIVIDUAL_POLAR_NETWORK_DIR="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/polar-networks/110316_lax_angle/active_receptors"
OUTPUT="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/polar-networks/110316_lax_angle/active_polar_network.txt"
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/analysis/polar-networks
python unionize_polar_network_list.py $INDIVIDUAL_POLAR_NETWORK_DIR $OUTPUT


INDIVIDUAL_POLAR_NETWORK_DIR="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/polar-networks/110316_lax_angle/inactive_receptors"
OUTPUT="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/polar-networks/110316_lax_angle/inactive_polar_network.txt"
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/analysis/polar-networks
python unionize_polar_network_list.py $INDIVIDUAL_POLAR_NETWORK_DIR $OUTPUT





# TESTING



PDB="5C1M"
TOP="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/MOR-active-noNb-BU72-nature2015/condition-nb-interface-restrained-BU72/step5_assembly.pdb"
OUT="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/polar-networks/110316_lax_angle/5C1M_active_step5.txt"
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/analysis/polar-networks
python compute_polar_network_list.py $PDB $TOP $OUT -active -chain A -ligand H3B -interlist -wb -wb2 -lwb -lwb2






