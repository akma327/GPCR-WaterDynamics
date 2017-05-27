# gen_gpcr_pdb_to_ligand_map.py

USAGE_STR = """

# Purpose
# Generate a table mapping class A GPCRs to their respective ligands
	
"""

MAP = "/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/ligand-wetness/water-signatures/tables/mapping_ligand_gpcr_all.txt"

f = open(MAP, 'r')
for line in f:
	linfo = line.strip().split("\t")
	pdb = linfo[1]
	ligands = linfo[0].split("[")[1].split("]")[0].strip("'")
	if(len(ligands) == 3):
		print(pdb + "\t" + ligands)

