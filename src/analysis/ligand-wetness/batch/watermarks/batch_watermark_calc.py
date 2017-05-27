# Author: Anthony Kai Kwang Ma
# Date: 03/07/17
# batch_watermark_calc.py


import sys 
import glob 

USAGE_STR = """

# Purpose
# Generate batch shell script to run static interaction calculator over all the 
# class A GPCR pdbs for lwb and lwb2 interactions. 

# Usage 
# python batch_watermark_calc.py <OUTPUT_DIR> <OUTPUT_FILE>

# Arguments 
# <OUTPUT_DIR> Absolute path to output directory 
# <OUTPUT_FILE> Absolute path to output .sh script 

# Examples 
OUTPUT_DIR="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/ligand-wetness/watermarks/heatmaps/030717/individual-pdb-chain"
OUTPUT_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/src/analysis/ligand-wetness/batch/watermarks/bash/030717_batch_watermark_calc.sh"
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/analysis/ligand-wetness/batch/watermarks
python batch_watermark_calc.py $OUTPUT_DIR $OUTPUT_FILE

"""

CLASS_A_GPCR_TABLE="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/ligand-wetness/watermarks/tables/classA_GPCRs_known_ligands.tsv"
CLASS_A_GPCR_PDBS="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/ligand-wetness/watermarks/classA-gpcr-pdbs"

def driver(OUTPUT_DIR, OUTPUT_FILE):
	fr = open(CLASS_A_GPCR_TABLE, 'r')
	fw = open(OUTPUT_FILE, 'w')
	header = fr.readline()
	for line in fr:
		linfo = line.strip().split("\t")
		uniprot, protein_class, pdb, ligand = linfo[0], linfo[1], linfo[2], linfo[3]
		same_accession_pdb_files = glob.glob(CLASS_A_GPCR_PDBS + "/" + pdb + "*")

		for pdb_file in same_accession_pdb_files:
			TOP_PATH = pdb_file
			pdb_chain = "_".join(pdb_file.strip().split("/")[-1].split("_")[0:2])
			OUTPUT_FILE_PATH = OUTPUT_DIR + "/" + pdb_chain + ".txt"
			fw.write("TOP_PATH=\"" + TOP_PATH + "\"\n")
			fw.write("OUTPUT_FILE_PATH=\"" + OUTPUT_FILE_PATH + "\"\n")
			fw.write("cd /scratch/PI/rondror/akma327/DynamicNetworks/src/interaction-geometry\n")
			fw.write("python StaticInteractionCalculator.py $TOP_PATH $OUTPUT_FILE_PATH -interlist -lwb -lwb2 -ligand " + ligand + "\n\n")

	fw.write("find . -size 0 -delete\n")


if __name__ == "__main__":
	(OUTPUT_DIR, OUTPUT_FILE) = (sys.argv[1], sys.argv[2])
	driver(OUTPUT_DIR, OUTPUT_FILE)


