# remote_ligand_to_receptor_contact_crystal_021617.sh

# Compute the Raw Polar Contacts

# TOP_PATH="/scratch/PI/rondror/akma327/DynamicNetworks/data/StaticNetworks/pdb-files/3VW7_edited_Hadded.pdb"
# OUTPUT_FILE_PATH="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/ligand-wetness/remote_ligand_to_receptor_contacts_crystal/021617/contacts/3VW7.txt"
# cd /scratch/PI/rondror/akma327/DynamicNetworks/src/interaction-geometry
# python StaticInteractionCalculator.py $TOP_PATH $OUTPUT_FILE_PATH -interlist -wb -wb2 -hlb -hls -ligand VPX

# TOP_PATH="/scratch/PI/rondror/akma327/DynamicNetworks/data/StaticNetworks/pdb-files/1U19_edited_Hadded.pdb"
# OUTPUT_FILE_PATH="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/ligand-wetness/remote_ligand_to_receptor_contacts_crystal/021617/contacts/1U19.txt"
# cd /scratch/PI/rondror/akma327/DynamicNetworks/src/interaction-geometry
# python StaticInteractionCalculator.py $TOP_PATH $OUTPUT_FILE_PATH -interlist -wb -wb2 -hlb -hls -ligand RET


# TOP_PATH="/scratch/PI/rondror/akma327/DynamicNetworks/data/StaticNetworks/pdb-files/4EIY_edited_Hadded.pdb"
# OUTPUT_FILE_PATH="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/ligand-wetness/remote_ligand_to_receptor_contacts_crystal/021617/contacts/4EIY.txt"
# cd /scratch/PI/rondror/akma327/DynamicNetworks/src/interaction-geometry
# python StaticInteractionCalculator.py $TOP_PATH $OUTPUT_FILE_PATH -interlist -wb -wb2 -hlb -hls -ligand ZMA

# TOP_PATH="/scratch/PI/rondror/akma327/DynamicNetworks/data/StaticNetworks/pdb-files/4BVN_edited_Hadded.pdb"
# OUTPUT_FILE_PATH="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/ligand-wetness/remote_ligand_to_receptor_contacts_crystal/021617/contacts/4BVN.txt"
# cd /scratch/PI/rondror/akma327/DynamicNetworks/src/interaction-geometry
# python StaticInteractionCalculator.py $TOP_PATH $OUTPUT_FILE_PATH -interlist -wb -wb2 -hlb -hls -ligand P32

# TOP_PATH="/scratch/PI/rondror/akma327/DynamicNetworks/data/StaticNetworks/pdb-files/4N6H_edited_Hadded.pdb"
# OUTPUT_FILE_PATH="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/ligand-wetness/remote_ligand_to_receptor_contacts_crystal/021617/contacts/4N6H.txt"
# cd /scratch/PI/rondror/akma327/DynamicNetworks/src/interaction-geometry
# python StaticInteractionCalculator.py $TOP_PATH $OUTPUT_FILE_PATH -interlist -wb -wb2 -hlb -hls -ligand EJ4

# TOP_PATH="/scratch/PI/rondror/akma327/DynamicNetworks/data/StaticNetworks/pdb-files/5C1M_edited_Hadded.pdb"
# OUTPUT_FILE_PATH="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/ligand-wetness/remote_ligand_to_receptor_contacts_crystal/021617/contacts/5C1M.txt"
# cd /scratch/PI/rondror/akma327/DynamicNetworks/src/interaction-geometry
# python StaticInteractionCalculator.py $TOP_PATH $OUTPUT_FILE_PATH -interlist -wb -wb2 -hlb -hls -ligand 4VO

# TOP_PATH="/scratch/PI/rondror/akma327/DynamicNetworks/data/StaticNetworks/pdb-files/5IU4_edited_Hadded.pdb"
# OUTPUT_FILE_PATH="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/ligand-wetness/remote_ligand_to_receptor_contacts_crystal/021617/contacts/5IU4.txt"
# cd /scratch/PI/rondror/akma327/DynamicNetworks/src/interaction-geometry
# python StaticInteractionCalculator.py $TOP_PATH $OUTPUT_FILE_PATH -interlist -wb -wb2 -hlb -hls -ligand ZMA

# TOP_PATH="/scratch/PI/rondror/akma327/DynamicNetworks/data/StaticNetworks/pdb-files/5K2C_edited_Hadded.pdb"
# OUTPUT_FILE_PATH="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/ligand-wetness/remote_ligand_to_receptor_contacts_crystal/021617/contacts/5K2C.txt"
# cd /scratch/PI/rondror/akma327/DynamicNetworks/src/interaction-geometry
# python StaticInteractionCalculator.py $TOP_PATH $OUTPUT_FILE_PATH -interlist -wb -wb2 -hlb -hls -ligand ZMA

# TOP_PATH="/scratch/PI/rondror/akma327/DynamicNetworks/data/StaticNetworks/pdb-files/D4DR_edited_Hadded.pdb"
# OUTPUT_FILE_PATH="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/ligand-wetness/remote_ligand_to_receptor_contacts_crystal/021617/contacts/D4DR.txt"
# cd /scratch/PI/rondror/akma327/DynamicNetworks/src/interaction-geometry
# python StaticInteractionCalculator.py $TOP_PATH $OUTPUT_FILE_PATH -interlist -wb -wb2 -hlb -hls -ligand NEMO



# Compute remote ligand to receptor interactions

PDB="3VW7"
INPUT_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/ligand-wetness/remote_ligand_to_receptor_contacts_crystal/021617/contacts/3VW7.txt"
OUTPUT_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/ligand-wetness/remote_ligand_to_receptor_contacts_crystal/021617/remote-contacts/3VW7.txt"
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/analysis/ligand-wetness
python remote_ligand_to_receptor_contacts_crystal.py $PDB $INPUT_FILE $OUTPUT_FILE

PDB="1U19"
INPUT_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/ligand-wetness/remote_ligand_to_receptor_contacts_crystal/021617/contacts/1U19.txt"
OUTPUT_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/ligand-wetness/remote_ligand_to_receptor_contacts_crystal/021617/remote-contacts/1U19.txt"
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/analysis/ligand-wetness
python remote_ligand_to_receptor_contacts_crystal.py $PDB $INPUT_FILE $OUTPUT_FILE

PDB="4EIY"
INPUT_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/ligand-wetness/remote_ligand_to_receptor_contacts_crystal/021617/contacts/4EIY.txt"
OUTPUT_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/ligand-wetness/remote_ligand_to_receptor_contacts_crystal/021617/remote-contacts/4EIY.txt"
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/analysis/ligand-wetness
python remote_ligand_to_receptor_contacts_crystal.py $PDB $INPUT_FILE $OUTPUT_FILE

PDB="4BVN"
INPUT_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/ligand-wetness/remote_ligand_to_receptor_contacts_crystal/021617/contacts/4BVN.txt"
OUTPUT_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/ligand-wetness/remote_ligand_to_receptor_contacts_crystal/021617/remote-contacts/4BVN.txt"
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/analysis/ligand-wetness
python remote_ligand_to_receptor_contacts_crystal.py $PDB $INPUT_FILE $OUTPUT_FILE

PDB="4N6H"
INPUT_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/ligand-wetness/remote_ligand_to_receptor_contacts_crystal/021617/contacts/4N6H.txt"
OUTPUT_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/ligand-wetness/remote_ligand_to_receptor_contacts_crystal/021617/remote-contacts/4N6H.txt"
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/analysis/ligand-wetness
python remote_ligand_to_receptor_contacts_crystal.py $PDB $INPUT_FILE $OUTPUT_FILE

PDB="5C1M"
INPUT_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/ligand-wetness/remote_ligand_to_receptor_contacts_crystal/021617/contacts/5C1M.txt"
OUTPUT_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/ligand-wetness/remote_ligand_to_receptor_contacts_crystal/021617/remote-contacts/5C1M.txt"
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/analysis/ligand-wetness
python remote_ligand_to_receptor_contacts_crystal.py $PDB $INPUT_FILE $OUTPUT_FILE

PDB="5IU4"
INPUT_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/ligand-wetness/remote_ligand_to_receptor_contacts_crystal/021617/contacts/5IU4.txt"
OUTPUT_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/ligand-wetness/remote_ligand_to_receptor_contacts_crystal/021617/remote-contacts/5IU4.txt"
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/analysis/ligand-wetness
python remote_ligand_to_receptor_contacts_crystal.py $PDB $INPUT_FILE $OUTPUT_FILE

PDB="5K2C"
INPUT_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/ligand-wetness/remote_ligand_to_receptor_contacts_crystal/021617/contacts/5K2C.txt"
OUTPUT_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/ligand-wetness/remote_ligand_to_receptor_contacts_crystal/021617/remote-contacts/5K2C.txt"
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/analysis/ligand-wetness
python remote_ligand_to_receptor_contacts_crystal.py $PDB $INPUT_FILE $OUTPUT_FILE

PDB="D4DR"
INPUT_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/ligand-wetness/remote_ligand_to_receptor_contacts_crystal/021617/contacts/D4DR.txt"
OUTPUT_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/ligand-wetness/remote_ligand_to_receptor_contacts_crystal/021617/remote-contacts/D4DR.txt"
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/analysis/ligand-wetness
python remote_ligand_to_receptor_contacts_crystal.py $PDB $INPUT_FILE $OUTPUT_FILE


