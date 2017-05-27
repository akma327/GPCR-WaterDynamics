# Author: Anthony Kai Kwang Ma
# Email: akma327@stanford.edu
# 040117_individual_polar_network_lists.sh


# 5c1m_mor_active
PDB="5C1M"
TOP="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/polar-networks/033117_crystal_vs_simulation/pdb-files/5c1m_mor_active.pdb"
OUT="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/polar-networks/033117_crystal_vs_simulation/5c1m_mor_active/5c1m_mor_active.txt"
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/analysis/polar-networks
python compute_polar_network_list.py $PDB $TOP $OUT -inactive -solvent HOH -chain A -ligand 4VO -interlist -wb -wb2 -lwb -lwb2


INDIVIDUAL_POLAR_NETWORK_DIR="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/polar-networks/033117_crystal_vs_simulation/5c1m_mor_active/"
OUTPUT="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/polar-networks/033117_crystal_vs_simulation/5c1m_mor_active.txt"
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/analysis/polar-networks
python unionize_polar_network_list.py $INDIVIDUAL_POLAR_NETWORK_DIR $OUTPUT

rm -rf /scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/polar-networks/033117_crystal_vs_simulation/5c1m_mor_active

# 3sn6_b2ar_active low resolution



# 4mqs_m2r_active low resolution

# PDB="4MQS"
# TOP="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/polar-networks/033117_crystal_vs_simulation/pdb-files/4mqs_m2r_active.pdb"
# OUT="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/polar-networks/033117_crystal_vs_simulation/4mqs_m2r_active/4mqs_m2r_active.txt"
# cd /scratch/PI/rondror/akma327/DynamicNetworks/src/analysis/polar-networks
# python compute_polar_network_list.py $PDB $TOP $OUT -inactive -solvent HOH -chain A -ligand IXO -interlist -wb -wb2 -lwb -lwb2


# INDIVIDUAL_POLAR_NETWORK_DIR="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/polar-networks/033117_crystal_vs_simulation/4mqs_m2r_active/"
# OUTPUT="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/polar-networks/033117_crystal_vs_simulation/4mqs_m2r_active.txt"
# cd /scratch/PI/rondror/akma327/DynamicNetworks/src/analysis/polar-networks
# python unionize_polar_network_list.py $INDIVIDUAL_POLAR_NETWORK_DIR $OUTPUT

# rm -rf /scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/polar-networks/033117_crystal_vs_simulation/4mqs_m2r_active

# 4xt1_us28_active

# PDB="4XT1"
# TOP="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/polar-networks/033117_crystal_vs_simulation/pdb-files/4xt1_us28_active.pdb"
# OUT="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/polar-networks/033117_crystal_vs_simulation/4xt1_us28_active/4xt1_us28_active.txt"
# cd /scratch/PI/rondror/akma327/DynamicNetworks/src/analysis/polar-networks
# python compute_polar_network_list.py $PDB $TOP $OUT -inactive -solvent HOH -chain A -ligand CHAIN_B -interlist -wb -wb2 -lwb -lwb2


# INDIVIDUAL_POLAR_NETWORK_DIR="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/polar-networks/033117_crystal_vs_simulation/4xt1_us28_active/"
# OUTPUT="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/polar-networks/033117_crystal_vs_simulation/4xt1_us28_active.txt"
# cd /scratch/PI/rondror/akma327/DynamicNetworks/src/analysis/polar-networks
# python unionize_polar_network_list.py $INDIVIDUAL_POLAR_NETWORK_DIR $OUTPUT

# rm -rf /scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/polar-networks/033117_crystal_vs_simulation/4xt1_us28_active




# 4dkl_mor_inactive
PDB="4DKL"
TOP="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/polar-networks/033117_crystal_vs_simulation/pdb-files/4dkl_mor_inactive.pdb"
OUT="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/polar-networks/033117_crystal_vs_simulation/4dkl_mor_inactive/4dkl_mor_inactive.txt"
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/analysis/polar-networks
python compute_polar_network_list.py $PDB $TOP $OUT -inactive -solvent HOH -chain A -ligand BF0 -interlist -wb -wb2 -lwb -lwb2


INDIVIDUAL_POLAR_NETWORK_DIR="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/polar-networks/033117_crystal_vs_simulation/4dkl_mor_inactive/"
OUTPUT="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/polar-networks/033117_crystal_vs_simulation/4dkl_mor_inactive.txt"
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/analysis/polar-networks
python unionize_polar_network_list.py $INDIVIDUAL_POLAR_NETWORK_DIR $OUTPUT

rm -rf /scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/polar-networks/033117_crystal_vs_simulation/4dkl_mor_inactive


# 2rh1_b2ar_inactive

PDB="2RH1"
TOP="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/polar-networks/033117_crystal_vs_simulation/pdb-files/2rh1_b2ar_inactive.pdb"
OUT="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/polar-networks/033117_crystal_vs_simulation/2rh1_b2ar_inactive/2rh1_b2ar_inactive.txt"
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/analysis/polar-networks
python compute_polar_network_list.py $PDB $TOP $OUT -inactive -solvent HOH -chain A -ligand CAU -interlist -wb -wb2 -lwb -lwb2


INDIVIDUAL_POLAR_NETWORK_DIR="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/polar-networks/033117_crystal_vs_simulation/2rh1_b2ar_inactive/"
OUTPUT="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/polar-networks/033117_crystal_vs_simulation/2rh1_b2ar_inactive.txt"
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/analysis/polar-networks
python unionize_polar_network_list.py $INDIVIDUAL_POLAR_NETWORK_DIR $OUTPUT


rm -rf /scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/polar-networks/033117_crystal_vs_simulation/2rh1_b2ar_inactive


# 3uon_m2r_inactive

PDB="3UON"
TOP="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/polar-networks/033117_crystal_vs_simulation/pdb-files/3uon_m2r_inactive.pdb"
OUT="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/polar-networks/033117_crystal_vs_simulation/3uon_m2r_inactive/3uon_m2r_inactive.txt"
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/analysis/polar-networks
python compute_polar_network_list.py $PDB $TOP $OUT -inactive -solvent HOH -chain A -ligand QNB -interlist -wb -wb2 -lwb -lwb2


INDIVIDUAL_POLAR_NETWORK_DIR="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/polar-networks/033117_crystal_vs_simulation/3uon_m2r_inactive/"
OUTPUT="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/polar-networks/033117_crystal_vs_simulation/3uon_m2r_inactive.txt"
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/analysis/polar-networks
python unionize_polar_network_list.py $INDIVIDUAL_POLAR_NETWORK_DIR $OUTPUT


rm -rf /scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/polar-networks/033117_crystal_vs_simulation/3uon_m2r_inactive


# 4n6h_dor_inactive

PDB="4N6H"
TOP="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/polar-networks/033117_crystal_vs_simulation/pdb-files/4n6h_dor_inactive.pdb"
OUT="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/polar-networks/033117_crystal_vs_simulation/4n6h_dor_inactive/4n6h_dor_inactive.txt"
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/analysis/polar-networks
python compute_polar_network_list.py $PDB $TOP $OUT -inactive -solvent HOH -chain A -ligand EJ4 -interlist -wb -wb2 -lwb -lwb2


INDIVIDUAL_POLAR_NETWORK_DIR="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/polar-networks/033117_crystal_vs_simulation/4n6h_dor_inactive/"
OUTPUT="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/polar-networks/033117_crystal_vs_simulation/4n6h_dor_inactive.txt"
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/analysis/polar-networks
python unionize_polar_network_list.py $INDIVIDUAL_POLAR_NETWORK_DIR $OUTPUT

rm -rf /scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/polar-networks/033117_crystal_vs_simulation/4n6h_dor_inactive



# 4iu4_a2a_inactive


PDB="5IU4"
TOP="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/polar-networks/033117_crystal_vs_simulation/pdb-files/5iu4_a2a_inactive.pdb"
OUT="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/polar-networks/033117_crystal_vs_simulation/5iu4_a2a_inactive/5iu4_a2a_inactive.txt"
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/analysis/polar-networks
python compute_polar_network_list.py $PDB $TOP $OUT -inactive -solvent HOH -chain A -ligand ZMA -interlist -wb -wb2 -lwb -lwb2


INDIVIDUAL_POLAR_NETWORK_DIR="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/polar-networks/033117_crystal_vs_simulation/5iu4_a2a_inactive/"
OUTPUT="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/polar-networks/033117_crystal_vs_simulation/5iu4_a2a_inactive.txt"
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/analysis/polar-networks
python unionize_polar_network_list.py $INDIVIDUAL_POLAR_NETWORK_DIR $OUTPUT

rm -rf /scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/polar-networks/033117_crystal_vs_simulation/5iu4_a2a_inactive



# 5g53_a2a_active

PDB="5G53"
TOP="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/polar-networks/033117_crystal_vs_simulation/pdb-files/5g53_a2a_active.pdb"
OUT="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/polar-networks/033117_crystal_vs_simulation/5g53_a2a_active/5g53_a2a_active.txt"
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/analysis/polar-networks
python compute_polar_network_list.py $PDB $TOP $OUT -inactive -solvent HOH -chain A -ligand NEC -interlist -wb -wb2 -lwb -lwb2


INDIVIDUAL_POLAR_NETWORK_DIR="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/polar-networks/033117_crystal_vs_simulation/5g53_a2a_active/"
OUTPUT="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/polar-networks/033117_crystal_vs_simulation/5g53_a2a_active.txt"
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/analysis/polar-networks
python unionize_polar_network_list.py $INDIVIDUAL_POLAR_NETWORK_DIR $OUTPUT

rm -rf /scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/polar-networks/033117_crystal_vs_simulation/5g53_a2a_active




