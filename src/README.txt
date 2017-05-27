04/25/17
README.txt 

This file will give a detailed description of how to set up a pipeline for computing
all noncovalent interactions for any given molecular dynamics trajectory. 

COVALENT INTERACTION CALCULATOR FOR MOLECULAR DYNAMICS TRAJECTORIES 

1) Computing the raw list of noncovalent interaction for a MD trajectory
	- MOR_singleNoncovalentInteractionCalc.py which is stored in the following path
		/scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/geometry

	- Usage:
		>> python MOR_singleNoncovalentInteractionCalc.py <output identifier> <-interaction type> <TRAJ_PATH> <TOP_PATH> <-stride> <stride value> <optional -solv if not water> <solvent>

	- Example:
		>> TRAJ_PATH="/scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/mOR-InteractionOutput/MOR_active_waters/mor_active_refine150_bu74/rep_1/Prod_1/Prod_1_reimaged.nc"
		>> TOP_PATH="/scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/mOR-InteractionOutput/MOR_active_waters/mor_active_refine150_bu74/step5_assembly.pdb"
		>> python MOR_singleNoncovalentInteractionCalc.py cond0_rep1 -sb $TRAJ_PATH $TOP_PATH -stride 10 -solv IP3


	- Explanation: This script takes in the first argument to be an output identifier which is really for user to keep track of what trajectory is being run. TRAJ_PATH is the absolute path to the trajectory file (.nc, .dcd, etc filetype)
	and TOP_PATH is the absolute path to the topology file (.pdb, .psf, etc). If using -stride flag then user can alter the stride to be something other than default of 1. The -solv flag is if user wants to use a different solvent identifier than the default 'HOH' water. 

	- Features: This script is capable of computing all salt bridges (-sb), pi cation (-pc), pi stacking (-ps), t-stacking (-ts), Van Der Waals (-vdw), hydrogen bonds (-hb), and water bridges (-wb) for any given trajectory. User specifies which interaction type to compute with the respective flag. 

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

	- Output: After running MOR_singleNoncovalentInteractionCalc.py, the output will be placed in a directory that is originally hard coded in this particular implementation.In the usage for MOR Trajectories, a file hierarchy was created to include every experimental condition of interest, each of their respective replicates, and each Production fragment for every replicate. For a particular production fragment of a single replicate of a single experimental condition, there is a path:

		- /scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/mOR-InteractionOutput/MOR_active_waters/<experiment condition name>/<replicate number><prod number>
			- For Example:
				/scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/mOR-InteractionOutput/MOR_active_waters/mor_active_refine150_bu74/rep_1/Prod_1

	 However, one can modify the input arguments to take in an output path of any kind of formatting and write to that absolute path instead. The output file will be a list of all interaction keys for each frame number. 

	- Example Output: 
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
	- stitchFrames.py 
	- Located in following directory:
		/scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/mOR-Tools

	- Usage: 
		>> python stitchFrames.py <PATH TO DESIRED EXPERIMENT FOLDER> <replicate identifier> <interation>

	- Example:
		>> cd /scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/mOR-Tools
		>> $EXPERIMENT_PATH="/scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/mOR-InteractionOutput/MOR_active_waters/mor_active_refine150_agonist_noNanobody"
		>> python stitchFrames.py $EXPERIMENT_PATH rep_1 -sb 

	- IMPORTANT CRITERIA:
		Each folder containing the production chunks of raw data that will be stitched must be named Prod_<index> (ie Prod_1, Prod_2, etc). 

	- Alternative Usage:
		Input: Currently, the first two arguments of this script involve the path to the folder containing all replicates, and their respective raw data files for each production chunk. The second argument is a string specifiying which replicate to stitch (ie "rep_1"). In the case that the user decided to struture their raw outputs in a different manner, the input argument can be modified to just have one string be the absolute path for a specific replicate of a given experiment instead of these original two arguments. This new absolute path must specify the location of directories containing the raw data for each Production chunk named specifically as (Prod_<index> or Prod_1, Prod_2, Prod_3, etc). 

	- Output: The location of output is defaulted to write into the same directory for a replicate that contains all the Prod_1, Prod_2, Prod_3, etc directories. 

	- Output Format: Same as the output format for raw data files for each production chunk. 

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

	- Script Name: MOR_processTimeFrameData.cpp 

	- Script Path: /scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/geometry

	- Create Executiable:
		>> g++ -o processTimeFrameData MOR_processTimeFrameData.cpp

	- Usage: 
		>> ./processTimeFrameData <experiment_rep_identifier> <interaction type> <Stitch Interaction Path> <binarize flag>

	- Example:
		>> StitchInteractionPath="/scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/mOR-InteractionOutput/MOR_active_waters/mor_active_refine150_agonist_noNanobody/rep_1"
		>> ./processTimeFrameData cond0_rep1 -sb $StitchInteractionPath -b

	- Explanation:
		- experiment_rep_identifier: Is an argument that wont be used for program but helps user keep track of which experiment and replicate they are generating the binary dictionary for. Useful when creating shell scripts to compute many of these dictionaries in batch

		- interaction type: Can be any one of the interaction flags (-sb, -pc, -ps, -ts, -vdw, -hb, -wb) to represent the type of interaction being stitched together. This is important for the proper suffix when naming files. 

		- StitchInteractionPath: User provides the absolute path to the stitched raw data file computed in step 2:
			-Example: /scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/mOR-InteractionOutput/MOR_active_waters/mor_active_refine150_agonist_noNanobody/rep_1

		-binarize_flag: Without this flag, the dictionary wont be binarized instead the value will be a list of indices in which the interaction was present. This is a more compact representation. With a '-b' flag then the value will be binarized into [1,0,0,1,0,0,0, ...]
		to actually become a bit vector. 

	- IMPORTANT CRITERIA:
		- The directory structure for the InteractionOutputDictionary should be the same as InteractionOutput (raw data file's directory structure). This includes the important condition that each directory containing the Production chunks should be named Prod_<index> 

	- Output Path: 
		In the case that the stitch file is located in:

			/scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/mOR-InteractionOutput/MOR_active_waters/<experiment name> /<replicate>

		Then the binary dictionary file will be written to:

			/scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/mOR-InteractionOutputDictionary/MOR_active_waters/<experiment name>/<replicate>

		Here the only difference in path is exchange of "InteractionOutput" for "InteractionOutputDictionary", otherwise the directory structure is exactly the same. 

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
	The 3 steps stated above constitutes the pipeline involved in computing all interaction types for a given experimental condition and replicate. Some modifications might need to be done to source code to fit the desired directory structure one establishes before hand. Input and output arguments might need to be inserted as needed. 

	In terms of run time, the first step is the bottleneck. Salt Bridges, Pi Cation, Pi_Stacking, and T_Stacking interactions can be computed rather quickly, on the order of seconds for every production fragment. Van Der Waals, hydrogen bonds, and water bridges can take an order of an hour per production fragment (~20000-50000 frames). The time will vary by trajectory length. Splitting across multiple jobs speeds up computation. 

	Stitching is near instantaneous (order of seconds), and creating dictionaries will take on the order of minutes. 


VISUALIZATION OF COVALENT INTERACTIONS IN MOLECULAR DYNAMIC TRAJECTORIES

4) After having computed the binary dictionary, one can visualize these computed interactions on VMD via the following script:

	- Script Name: selectKeysGraphicalDisplay.py

	- Script Path: /scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/vmdDisplay

	- Usage:
		>> cd /scratch/PI/rondror/akma327/noncovalent_Interaction_Scripts/vmdDisplay
		>> rlwrap -a /share/PI/rondror/software/vmd
			//Enters VMD Mode
		>> import sys
		>> sys.argv = ['dummy', '<path to filter set.txt>', '<experimental condition>', 'replicate id', '-d']
		>> execfile('selectKeysGraphicalDisplay.py')

	- Generalizing:
		Currently the sys.argv vector takes in path to filter set.txt which is a text file that contains subset of interactions that one wants to visualize. 

		In the case of MOR Trajectories experiment condition is an integer 0,1,2,3...8 that represents the condition that we are studying. The replicate id (ie 'rep_1') is the replicate we want to visualize. In the case of generalizing the code to any type of system of study, one can take in a single argument instead that represents the absolute path to the binary dictionary for a given replicate of a given experiment instead. Some modifications to the read and write path needs to be done. 

		Should modify input to be 
		>> sys.argv = ['dummy', 'path to filter set.txt', 'absolute path to binary dictionary', '-d']

	- IMPORTANT POINT:
		There is no need to provide the absolute path to topology or trajectory because they are already written as headers for the binary dictionary .txt files. 

	- Output: 
		A VMD Display for the trajectory and topology. There are different modes of viewing that can be toggled on the console. 

		Typing 'bold = False' will turn off the default bolding function that essentially bolds out the interaction on display if they are part of the interaction key set specified in filter set. 

		Typing 'printFrames =True' will print to console the details regarding the interactions being drawn on the display. 

	- Coloring Scheme: Lines are drawn between atoms with different colors to represent the various interaction types being shown. 

		Salt Bridge - Red
		Pi Cation - Blue
		Pi Stacking - Green
		T Stacking - Purple
		Van Der Waals - Orange
		Hydrogen Bonds (Back Bone): Tan
		Hydrogen Bonds (Between Chains): Pink 
		Water Bridges: Violet 


5) Another script to visualize all interactions would be MOR_graphicalTimelapseDisplay.py. This script is similar to selectKeysGraphicalDisplay.py except that it will load all the interactions for all dictionaries belonging to a given experiment condtion and replicate. Because there is no filter, loading times can take on order of 5-20 minutes and memory may be an issue. Would be more feasible to study the visualization in fragments at a time. 


New Stuff 

/analysis
	Folder containing code for performing any kind of analysis on raw data. Tools for
		- simulation-analysis
		- static-crystal-analysis
		- competing-network-analysis
		- interaction-footprint-analysis


/debugging
	Folder contains code for debugging various modules in the DynamicNetworks project 


/interaction-geometry 
	Contains the package for the dynamic interaction calculator that takes in a path to a trajectory and topology and computes the raw output for the desired interactions for every frame. This package includes script to compute the following interaction types: salt bridges, pi-cation, pi-stacking, t-stacking, van der waals, water mediated hydrogen bonds, backbone-backbone hydrogen bonds, sidechain-backbone hydrogen bonds, sidechain-sidechain hydrogen bonds, residue water interactions, and water bridges. 

	Furthermore, the StaticInteractionCalculator handles computing all these interactions for single frame topologies to gain information about crystal structures. Finally, the package includes code for stitching together the list of interaction per frame for multiple fragments of the trajectory. There is also a script for converting the raw stitched output to the dictionary output in the following format.
		- interaction key : <list of time points that this interaction is present>


/misc-preprocessing-scripts
	Scripts for processing topology and trajectory files. 
		- maeToPdb.py converts mae to pdb topology
		- stripWaters.py removes water molecules from given topoogy
		- wrapAlign.py aligns and prepares trajectory files 


/pipeline
	/calculate 
		Contains scripts to generate bash scripts in batch folder that runs the interaction calculator for trajectory fragments of
		specified experimental condition. 
	/preprocess-traj 
		Generate the directory structure and processed topology and trajectories for specified experimental conditions. 

/old 
	- Past deprecated code 


/visualize 
	- Suite of tools for visualizing dictionary output from computing interaction data across a trajectory. 


