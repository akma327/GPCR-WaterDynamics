DynamicInteractions_README.txt 

This file gives a detailed description of how to set up a pipeline for computing all
covalent interactions for any get set of molecular dynamic trajectories. 

DYNAMIC INTERACTION CALCULATOR FOR MOLECULAR DYNAMIC TRAJECTORIES 

1) Computing the raw list of dynamic interactions for a given MD trajectory 

	- Script: DynamicInteractionCalculator.py 

	- Path: /scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicInteractions/geometry/DynamicInteractionCalculator.py 

	- Usage: 
		>> python DynamicInteractionCalculator.py <TRAJ_PATH> <TOP_PATH> <OUTPUT_DIRECTORY_PATH> <OUTPUT_FILE_IDENTIFIER> <INTERACTION_TYPE> <optional -process > <optional file path for hbond to post process> <optional -stride flag > <stride value if not 1> <optional -solv if not water> <solvent>

	- Arguments: 
		<TRAJ_PATH> Absolute path to the trajectory to process 
		<TOP_PATH> Absolute path to the topology corresponding to trajectory 
		<OUTPUT_DIRECTORY_PATH> The path of folder that will store the output 
		<OUTPUT_FILE_IDENTIFIER> File name of the output txt file containing the raw interaction data
		<INTERACTION_TYPE> Type of interaction to compute (ie salt bridge, pi cation, pi stacking, etc)
		<-process> optional flag to indicate raw water mediated hydrogen bonds file is being processed 
		<File path for water mediated hbond to post process> The actual path to the raw water mediate hydrogen bond file
		<-stride> optional flag to indicate a stride value other than default of 1
		<-solv> optional flag to indicate solvent_id other than default of HOH 

	- Example:
		TRAJ_PATH="/scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/mOR-InteractionOutput/MOR_active_waters/mor_active_refine150_agonist_noNanobody/rep_1/Prod_1/Prod_1_reimaged.nc"
		TOP_PATH="/scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/mOR-InteractionOutput/MOR_active_waters/mor_active_refine150_agonist_noNanobody/step5_assembly.pdb"
		OUTPUT_DIRECTORY_PATH="/scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicInteractions/data/testing"
		OUTPUT_FILE_IDENTIFIER="salt_bridge_result.txt"
		python DynamicInteractionCalculator.py $TRAJ_PATH $TOP_PATH $OUTPUT_DIRECTORY_PATH $OUTPUT_FILE_IDENTIFIER -sb -stride 1

	- Features: This script is capable of computing all salt bridges (-sb), pi cation (-pc), pi stacking (-ps), t-stacking (-ts), Van Der Waals (-vdw), water mediated hydrogen bonds (-hbw), backbone-backbone hydrogen bond (-hbbb), sidechain-backbone hydrogen bond (-hbsb), sidechain-sidechain hydrogen bond (-hbss), residue water interaction (-rw), and water bridges (-wb) for any given trajectory. User specifies which interaction type to compute with the respective flag. 

	- Geometric Criterion For Noncovalent Interaction Calculator
		- Salt bridges are defined to occur between positively and negatively charged residues that are within a 4 Angstrom cutoff in Euclidean space. Anion set = 'ASP', 'GLU', and Cation Set = 'LYS', 'ARG', and 'HIS'
		- Pi Cation Interactions include interactions between Cation Set = 'LYS', 'ARG'
		and aromatic donor = 'PHE', 'TYR', 'TRP' that are within 6 Angstrom distance
		cutoff from cation to center of aromatic ring. The angle deviation from the normal is also cutoff at 60 degrees. 
		- Pi Stacking Interactions are between a pair of residues both belonging to the Aromatic donor set = 'PHE', 'TYR', 'TRP' and their
		center to center Euclidean distance must be under 7 Angstroms,
		the angle between the two vectors normal to each aromatic plane must be under 30 degrees, and finally the angle between Normal vector of one aromatic plane and the vector between the aromatic centers must be under 45 degrees to make sure that the two aromatic groups are not side by side rather than stacking. 
		- T-Stacking Interactions are defined similarly to pi_stacking interactions except the distance cutoff is 5 Angstoms, and the angle is between the normal vectors should be close to perpendicular. 
		- Van Der Waals Interactions can form between any of the 20 amino acids when within sufficient distance from each other. 
			- Cutoff Distances Taken From: http://crystalmaker.com/support/tutorials/crystalmaker/atomic-radii/index.html
		- Hydrogen Bonds are defined by Baker Hubbard Definition and taken as implemented by MDTraj hydrogen bond calculator. In this case the original code from MDTraj was optimized to speed up calculation for the purposes of computing over large number of frames within a trajectory rather than for a single frame. Water is included. 
		- Water Bridges are computed also with the optimization of code from MDTraj hydrogen bond calculator. In this case a water bridge is formed between two atoms in the protein if they both form a hydrogen bond with a water molecule in the same frame. 

	- Output: After running DynamicInteractionCalculator.py, the output file of specified name will be located in the output path directory. User designs the output directory hierarchy as desired. 

	- Example Output Format: 

		Stride:1
		TrajectoryPath:/scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/mOR-InteractionOutput/MOR_active_waters/mor_active_refine150_bu74/rep_1/Prod_1/Prod_1_reimaged.nc
		TopologyPath:/scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/mOR-InteractionOutput/MOR_active_waters/mor_active_refine150_bu74/step5_assembly.pdb
		nFrames:1519


		Salt Bridges:/scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/mOR-InteractionOutput/MOR_active_waters/mor_active_refine150_bu74/step5_assembly.pdb
		Salt Bridge Frame: 0
		ARG179-NH2_0 -- ASP164-OD1_0
		ARG179-NH2_0 -- ASP164-OD2_0
		ARG211-NH1_0 -- ASP216-OD2_0
		ARG211-NH2_0 -- ASP216-OD2_0
		LYS233-NZ_0 -- GLU229-OE2_0
		Salt Bridge Frame: 1
		ARG165-NH1_0 -- ASP340-OD1_0
		ARG165-NH1_0 -- ASP340-OD2_0
		ARG165-NH2_0 -- ASP340-OD1_0
		ARG165-NH2_0 -- ASP340-OD2_0
		ARG179-NH2_0 -- ASP164-OD1_0
		ARG179-NH2_0 -- ASP164-OD2_0
		ARG211-NH1_0 -- ASP216-OD2_0
		LYS271-NZ_0 -- ASP272-OD1_0
		LYS344-NZ_0 -- GLU341-OE1_0
		LYS344-NZ_0 -- GLU341-OE2_0
		Salt Bridge Frame: 2
		ARG165-NH1_0 -- ASP340-OD1_0
		ARG165-NH1_0 -- ASP340-OD2_0
		ARG165-NH2_0 -- ASP340-OD1_0
		ARG165-NH2_0 -- ASP340-OD2_0
		ARG179-NH2_0 -- ASP164-OD1_0
		ARG179-NH2_0 -- ASP164-OD2_0
		ARG211-NH1_0 -- GLU310-OE1_0
		ARG211-NH1_0 -- GLU310-OE2_0
		ARG211-NH2_0 -- GLU310-OE1_0
		ARG211-NH2_0 -- GLU310-OE2_0
		LYS233-NZ_0 -- GLU229-OE2_0
		LYS271-NZ_0 -- ASP272-OD1_0
		LYS344-NZ_0 -- GLU341-OE2_0
					...
					...
		Computing Time:31.18


2) After having computed the raw data as shown at the preceding bullet point for every production fragment of a single replicate, the next step would be to stitch all these production fragments together to create the entire raw data file for an entire trajectory (in this case a single replicate of a particular experimental condition). This step is optional if one is only analyzing particular fragments anyways. But in the case that one ones to perform analysis upon full trajectories utilize the following script named:

	- Script: stitchFrames.py 

	- Path: /scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicInteractions/geometry/stitchFrames.py 

	- Usage: 
		>> python stitchFrames.py <EXPERIMENT_REPLICATE_PATH> <FRAGMENT_IDENTIFIER> <FILE_NAME_ID> <OUTPUT_PATH> <OUTPUT_FILE_NAME>

	- Arguments: 
		<EXPERIMENT_REPLICATE_PATH> The absolute path to the parent directory containing many folders with fragment identifiers each containing the raw interaction data computed in step 1 for a particular fragment of the entire trajectory. 
		<FRAGMENT_IDENTIFIER> String identifier for the name of the fragment (ie "Prod" to represent the Prod_1, Prod_2, Prod_3 child folders)
		<FILE_NAME_ID> File name to stitch together between the different fragments (ie stitch all "water_bond_result.txt" together)
		<OUTPUT_PATH> Absolute path to store the stitched output file 
		<OUTPUT_FILE_NAME> Name of the output file (ie "water_bond_result_stitch.txt")

	- Example: 
		EXP_REP_PATH="/scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/mOR-InteractionOutput/MOR_active_waters/mor_active_refine150_agonist_noNanobody/rep_1"
		FRAGMENT_ID="Prod"
		FILE_NAME_ID="water_bond_result.txt"
		OUTPUT_PATH="/scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/mOR-InteractionOutput/MOR_active_waters/mor_active_refine150_agonist_noNanobody/rep_1"
		OUTPUT_FILE_NAME="water_bond_result_stitch.txt"
		python stitchFrames.py $EXP_REP_PATH $FRAGMENT_ID $FILE_NAME_ID $OUTPUT_PATH $OUTPUT_FILE_NAME

	- Output: The output would be the concatenation of the individual raw data files within each fragment folder. Output stitched file will be stored in the OUTPUT_PATH directory which contains each of the fragment folders. 

	- Output Format: 

		Stride:1
		TrajectoryPath:/scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/mOR-InteractionOutput/MOR_active_waters/mor_active_refine150_agonist_noNanobody/rep_1/Prod_1/Prod_1_reimaged.nc
		TopologyPath:/scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/mOR-InteractionOutput/MOR_active_waters/mor_active_refine150_agonist_noNanobody/step5_assembly.pdb


		Salt Bridges:/scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/mOR-InteractionOutput/MOR_active_waters/mor_active_refine150_agonist_noNanobody/step5_assembly.pdb
		Salt Bridge Frame: 0
		ARG179-NH2_0 -- ASP164-OD1_0
		ARG179-NH2_0 -- ASP164-OD2_0
		ARG211-NH1_0 -- ASP216-OD2_0
		ARG211-NH2_0 -- ASP216-OD2_0
		LYS233-NZ_0 -- GLU229-OE2_0
		Salt Bridge Frame: 1
		ARG179-NH2_0 -- ASP164-OD1_0
		ARG179-NH2_0 -- ASP164-OD2_0
		ARG211-NH1_0 -- ASP216-OD2_0
		ARG211-NH2_0 -- ASP216-OD2_0
		ARG277-NH2_0 -- GLU341-OE1_0
		ARG277-NH2_0 -- GLU341-OE2_0
		Salt Bridge Frame: 2
		ARG179-NH2_0 -- ASP164-OD1_0
		ARG179-NH2_0 -- ASP164-OD2_0
		ARG211-NH1_0 -- ASP216-OD2_0
		ARG211-NH2_0 -- ASP216-OD2_0
		ARG277-NH2_0 -- GLU341-OE1_0
					...
					...
		nFrames:49530
		Computing Time:152.71


3) After having stitched together each production chunk of a trajectory, the user now has access to larger raw data files that have the complete information of all interactions throughout all frames. The following script takes in this raw data file that is formatted above as list of interactions for each frame, and then converts it into a dictionary with key being the interaction key, and value being a binary vector with 1 indicating presence of this interaction at the particular frame index, and 0 representing absence.

	- Script: processTimeFrameData.cpp

	- Path: /scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicInteractions/geometry/processTimeFrameData.cpp 

	- Usage: 
		>> g++ -o processTimeFrameData processTimeFrameData.cpp
		>> ./processTimeFrameData <STITCH_INTERACTION_INPUT_PATH> <INPUT_FILE_NAME> <BIN_DICT_OUTPUT_PATH> <OUTPUT_FILE_NAME> <INTERACTION_TYPE> <BINARIZE_FLAG>

	- Arguments: 
		<STITCH_INTERACTION_INPUT_PATH> The absolute path to the stitched raw data file 
		<INPUT_FILE_NAME> Name of the stitch file (ie "salt_bridge_result_stitch.txt")
		<BIN_DICT_OUTPUT_PATH> Path of directory to store the output binary dictionary txt file 
		<OUTPUT_FILE_NAME> Name of the output binary dictionary txt file 
		<INTERACTION_TYPE> (ie salt bridge, pi_cation, hydrogen bond, etc)
		<BINARIZE_FLAG> Whether or not to binarize the dictionary (Usually Yes)


	- Example: 
		StitchedInteractionPath="/scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/mOR-InteractionOutput/MOR_inactive_waters/bfna_bonded/rep_1"
		INPUT_FILE_PATH="bb_hydrogen_bond_result_stitch.txt"
		OUTPUT_PATH="/scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/mOR-InteractionOutputDictionary/MOR_inactive_waters/bfna_bonded/rep_1"
		OUTPUT_FILE_NAME="bb_hydrogen_bond_result_dict.txt"
		cd /scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicInteractions/geometry
		./processTimeFrameData $StitchedInteractionPath $INPUT_FILE_PATH $OUTPUT_PATH $OUTPUT_FILE_NAME -hbbb -b

	- Output File Format: 
		Stride:1
		TrajectoryPath:/scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/mOR-InteractionOutput/MOR_active_waters/mor_active_refine150_bu74/rep_1/Prod_1/Prod_1_reimaged.nc
		TrajectoryPath:/scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/mOR-InteractionOutput/MOR_active_waters/mor_active_refine150_bu74/rep_1/Prod_2/Prod_2_reimaged.nc
		TrajectoryPath:/scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/mOR-InteractionOutput/MOR_active_waters/mor_active_refine150_bu74/rep_1/Prod_3/Prod_3_reimaged.nc
		TrajectoryPath:/scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/mOR-InteractionOutput/MOR_active_waters/mor_active_refine150_bu74/rep_1/Prod_4/Prod_4_reimaged.nc
		TrajectoryPath:/scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/mOR-InteractionOutput/MOR_active_waters/mor_active_refine150_bu74/rep_1/Prod_5/Prod_5_reimaged.nc
		TrajectoryPath:/scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/mOR-InteractionOutput/MOR_active_waters/mor_active_refine150_bu74/rep_1/Prod_6/Prod_6_reimaged.nc
		TrajectoryPath:/scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/mOR-InteractionOutput/MOR_active_waters/mor_active_refine150_bu74/rep_1/Prod_7/Prod_7_reimaged.nc
		TopologyPath:/scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/mOR-InteractionOutput/MOR_active_waters/mor_active_refine150_bu74/step5_assembly.pdb
		Water Bonds Dictionary Heat Map 
		LYS344-NZ_0 -- GLU341-OE2_0~[0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,0,1,0,0,1,1,1,1,0,0,1,1,0,0,1,1,1,1,1,0,1,0,1,1,1,1,1,1,1,1,0,1,0,1,0,1,1,1,0,0,1,0,1,0,0,0,1,1,0,1,0,1,0,0,0,0,0,0,0,0,1,1,0,0,0,0,0,0,0,0,1,0,0,0,0,1,1,1,0,1,1,1,1,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,0,1,1,1,1,0,0,0,0,1,1,1,1,1,1,1,1,0,0,0,0,0,1,1,1,0,0,0,0,0,0,0,0,0,1,1,1,1,1,1,0,0,0,0,1,1,1,1,1,1,1,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0, ...]
		VAL94-O -- TYR96-O~[0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0, ...]
														...
														...


Conclusion: 
	The 3 steps stated above constitutes the pipeline involved in computing all interaction types for a given experimental condition and replicate. In terms of run time, the first step is the bottleneck. Salt Bridges, Pi Cation, Pi Stacking, and T Stacking interactions can be computed rather quickly, on the order of seconds for fragments of ~1000s of frames. Van Der Waals takes about ~1 second per frame. Water mediated hydrogen bonds take about ~7.5 seconds per frame. Categorizing the the water mediated hydrogen bond raw file to the subtypes for hydrogen bonds (-hbbb, -hbsb, -hbss, -rw, and -wb) take on order of minutes. 


DYNAMIC INTERACTION VISUALIZATION 

4) After having computed the binary dictionaries representing the timelapse of dynamic interactions, one can visualize a chosen subset of the interactions. 

	Script: selectKeysGraphicalDisplay.py 

	Path: /scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicInteractions/visualize/selectKeysGraphicalDisplay.py 

	Usage: 
		>> python selectKeysGraphicalDisplay.py <FLAG_INTERACTION_DICT> <FILTER_KEY_LIST_PATH> <BINARY_DICTIONARY_PATH> <SIMPLE_DETAIL_FLAG>

	Arguments: 
		<FLAG_INTERACTION_DICT> User provides a colon delimited dictionary between the interaction type flags and name of binary dictionary text file. Example as follows:

			-sb:salt_bridge_result_dict.txt
			-pc:pi_cation_result_dict.txt
			-ps:pi_stacking_result_dict.txt
			-ts:t_stacking_result_dict.txt
			-vdw:vanderwaal_result_dict.txt
			-hbbb:bb_hydrogen_bond_result_dict.txt
			-hbsb:sb_hydrogen_bond_result_dict.txt
			-hbss:ss_hydrogen_bond_result_dict.txt
			-rw:residue_water_hydrogen_bond_result_dict.txt
			-wb:water_bond_result_dict.txt

		<FILTER_KEY_LIST_PATH> Provide a list of interactions to display on VMD (Example file format)

			ARG179-NH2_0 -- ASP164-OD1_0@-sb
			ARG179-NH2_0 -- ASP164-OD2_0@-sb
			ARG211-NH1_0 -- ASP216-OD2_0@-sb
			ARG211-NH2_0 -- ASP216-OD2_0@-sb
			LYS233-NZ_0 -- GLU229-OE2_0@-sb
						...

		<BINARY_DICTIONARY_PATH> Absolute path to the folder containing all the binary dictioanry data for all interaction types for a specified experiment condition and replicate 

		<SIMPLE_DETAIL_FLAG> Either -s or -d to specify the graphical representation of the atoms. -s for alpha carbons only 


	Example: 
		>> rlwrap -a /share/PI/rondror/software/vmd

		# Now In VMD

		import sys
		sys.argv = ['a', '/scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicInteractions/data/interactionFlagLabel.txt', '/scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicInteractions/data/filterKeyList/list.txt', '/scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/DynamicNetworks/InteractionOutputDictionary/MOR-inactive-bFNA-nature2015/condition-bFNA-bound/rep_1', '-d']
		execfile('selectKeysGraphicalDisplay.py')







