# Author: Anthony Kai Kwang Ma
# Email: akma327@stanford.edu

# maeToPdb.py
# MAE To PDB File Converter
# Usage:
# python maeToPdb.py <input path to mae> <output path for pdb> <optional pdb file name>
# <input path to mae> Provide the absolute path to the mae file name 
# <output path for pdb> Provide the directory path to store the pdb
# <optional pdb file name> Default is to rename the pdb to the same prefix as mae, but user can specify new name

# Example:
# 

import vmd, molecule
import sys

PROPER_USAGE_STR = """ 
# Usage:
# python maeToPdb.py <input path to mae> <output path for pdb> <optional pdb file name>
# <input path to mae> Provide the absolute path to the mae file name 
# <output path for pdb> Provide the directory path to store the pdb
# <optional pdb file name> Default is to rename the pdb to the same prefix as mae, but user can specify new name
# Example:
# INPUT_MAE_PATH="/scratch/PI/rondror/DesRes-Simulations/ordered-from-DesRes/nature2013/DESRES-Trajectory_nature2013-AA-all/DESRES-Trajectory_nature2013-AA-58-all/nature2013-AA-58-all/nature2013-AA-58-all.mae"
# OUTPUT_PDB_PATH="/scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicInteractions/tools"
# PDB_FILE_NAME="nature2013-AA-58-new.pdb"
# python maeToPdb.py $INPUT_MAE_PATH $OINPUT_MAE_PATH="/scratch/PI/rondror/DesRes-Simulations/ordered-from-DesRes/nature2013/DESRES-Trajectory_nature2013-AA-all/DESRES-Trajectory_nature2013-AA-58-all/nature2013-AA-58-all/nature2013-AA-58-all.mae"
# OUTPUT_PDB_PATH="/scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicInteractions/tools"
# PDB_FILE_NAME="nature2013-AA-58-new.pdb"
# python maeToPdb.py $INPUT_MAE_PATH $OUTPUT_PDB_PATH $PDB_FILE_NAME UTPUT_PDB_PATH $PDB_FILE_NAME """

MIN_NUM_ARGS = 3

# import vmd, molecule
# input_mae_path= "nature2011-B-all.mae"
# output_pdb_file_path = "step5_assembly.pdb"
# molid = molecule.load('mae', input_mae_path)
# molecule.write(molid, 'pdb', output_pdb_file_path)
# import mdtraj as md
# t = md.load('step5_assembly.pdb')

def maeToPdb(input_mae_path, output_pdb_file_path):
	molid = molecule.load('mae', input_mae_path)
	molecule.write(molid, 'pdb', output_pdb_file_path)
	print("Finished Conversion for: " + str(input_mae_path))

if __name__ == "__main__":
	if(len(sys.argv) < MIN_NUM_ARGS):
		print("Invalid Arguments")
		print(PROPER_USAGE_STR)
		exit(0)
	input_mae_path = sys.argv[1]
	output_pdb_path = sys.argv[2]
	print(input_mae_path, output_pdb_path)
	maeToPdb(input_mae_path, output_pdb_path)
	


