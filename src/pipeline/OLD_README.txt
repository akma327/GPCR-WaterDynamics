README.txt 

This file gives instructions on how to generate a configuration file, use the create-Pipeline.py properly, and run the entire pipeline. 


Step 0: Before utilizing the Pipeline read the following instructions on formating the directory structure for storing trajectories, topologies, raw interaction output, stitched interaction output, and binary dictionary interaction output. 

InteractionOutput Directory must be structured as follows. 
For this example let us say the replicate identifier = "rep" and fragment identifier = "Prod"

> ProjectName-InteractionOutput
	> Experiment_Condition_Name
		> rep_1
		> rep_2
			> Prod_1
			> Prod_2 
				> PROCESSED TRAJECTORY FILE (Only one!)
				> salt_bridge_result.txt
				> pi_cation_result.txt
			> ...
			> Prod_n
			> salt_bridge_result_stitch.txt 
			> pi_cation_result_stitch.txt

		> rep_3
		> ...
		> rep_n
		> TOPOLOGY FILE (Only one!)

As a general overview, Experiment_Condition_Name is the name of the outer folder containing all the trajectories, single topology file, raw interaction files for each fragment, and stitched interaction file for a given replicate. 
TOPOLOGY FILE (.pdb formatted) is on the same hierarchy level as the replicate folders. Within a replicate folder there
are many fragment folders. On the same level of the fragment folders is the stitched interaction file. Within a fragment folder is a fragment of trajectory for this entire replicate. This folder will also be populated with the raw interaction results output from DynamicInteractionCalculator.py 

InteractionOutputDictionary must be structured as follows.

> ProjectName-InteractionOutputDictionary 
	> Experiment_Condition_Name
		> rep_1
			> salt_bridge_result_dict.txt
			> pi_cation_result_dict.txt
			> ...
			> bb_hydrogen_bond_result_dict.txt
			> water_bond_result_dict.txt 
		> rep_2
		> ...
		> rep_n

The directory structure for InteractionOutputDictionary must be analagous to the InteractionOutput folder in that the outer directory specifies experiment condition name, and this outer directory contains all the replicate folders. Each replicate folder simply contains large binary dictionaries for the dynamic interactions. 





Step 1: Create ProjectName-configuration.txt file 

This text file is read in by create-Pipeline.py to allow automated generation of batch scripts. The following are keyword arguments with key,value pairs delimited by colons. 

	- Arguments: 
		<REP_FOLDER_ID> Is the string denoting the folder name for replicates. (ie "rep")

		<FRAG_FOLDER_ID> Is the string denoting the folder name for trajectory fragments. (ie "Prod")

		<DYNAMIC_INTERACTION_PATH> Provide absolute path to the experiment condition containing all the replicates 

		<BIN_DICT_PATH> Provide absolute path to the folder that will contain all the replicates of binary dictionaries 

		<RAW_OUTPUT_ID> User specifies the file naming scheme for raw interaction output associated with interaction type flags. (ie user can specify -sb interactions to have raw output file names of "salt_bridge_result.txt")

		<STITCH_OUTPUT_ID> User specifies the file naming scheme for stitched interaction output associated with interaction type flags. (ie user can specify -sb interactions to have stitched file names of "salt_bridge_stitch_result.txt")

		<BIN_DICT_OUTPUT_ID> User specifies the file naming scheme for binary dictionary associated with interaction type flags. (ie user can specify -sb interactions to have binary dictionary file name of "salt_bridge_result_dict.txt")

	- Usage: 
		REP_FOLDER_ID:<replicate identifier>
		FRAG_FOLDER_ID:<fragment folder identifier> 

		DYNAMIC_INTERACTION_PATH:<experiment condition index>:<absolute path>

		BIN_DICT_PATH:<experiment condition index>:<absolute path> 

		RAW_OUTPUT_ID:<interaction type flag>:<raw output file name> 

		STITCH_OUTPUT_ID:<interaction type flag>:<stitched output file name>

		BIND_DICT_OUTPUT_ID:<interaction type flag>:<stitched output file name> 


	- Example: 

		# Configuration file for the mOR Trajectory Pipeline
		# REP_FOLDER_ID: Identify the string prefix for the folder names that contain replicates
		# FRAG_FOLDER_ID: Identify the fragment folder prefixes that contain trajectory fragments
		# DYNAMIC_INTERACTION_PATH: Identify the absolute path to the parent directory containing
		# the replicates, and fragments of raw output from the DynamicInteractionCalculator 
		# BIN_DICT_PATH: Identify the absolute path to the parent directory containing the replicates,
		# and fragments of binary dictionary after processing raw output with processTimeFrameData.cpp


		REP_FOLDER_ID:rep
		FRAG_FOLDER_ID:Prod

		DYNAMIC_INTERACTION_PATH:0:/scratch/users/akma327/akma327/noncovalent_Interaction_Scripts/mOR-InteractionOutput/MOR_active_waters/mor_active_refine150_agonist_noNanobody
		DYNAMIC_INTERACTION_PATH:1:/scratch/users/akma327/akma327/noncovalent_Interaction_Scripts/mOR-InteractionOutput/MOR_active_waters/mor_active_refine150_agonist_noNanobody_noNTerm
		DYNAMIC_INTERACTION_PATH:2:/scratch/users/akma327/akma327/noncovalent_Interaction_Scripts/mOR-InteractionOutput/MOR_active_waters/mor_active_refine150_apo_noNanobody
		DYNAMIC_INTERACTION_PATH:3:/scratch/users/akma327/akma327/noncovalent_Interaction_Scripts/mOR-InteractionOutput/MOR_active_waters/mor_active_refine150_apo_noNanobody_noNTerm
		DYNAMIC_INTERACTION_PATH:4:/scratch/users/akma327/akma327/noncovalent_Interaction_Scripts/mOR-InteractionOutput/MOR_active_waters/mor_active_refine150_bu74
		DYNAMIC_INTERACTION_PATH:5:/scratch/users/akma327/akma327/noncovalent_Interaction_Scripts/mOR-InteractionOutput/MOR_active_waters/mor_active_refine196_agonist_NanobodyInterfaceRestrained
		DYNAMIC_INTERACTION_PATH:6:/scratch/users/akma327/akma327/noncovalent_Interaction_Scripts/mOR-InteractionOutput/MOR_inactive_waters/apo_sodium
		DYNAMIC_INTERACTION_PATH:7:/scratch/users/akma327/akma327/noncovalent_Interaction_Scripts/mOR-InteractionOutput/MOR_inactive_waters/bfna_bonded
		DYNAMIC_INTERACTION_PATH:8:/scratch/users/akma327/akma327/noncovalent_Interaction_Scripts/mOR-InteractionOutput/MOR_inactive_waters/bfna_nonbonded_methyl

		BIN_DICT_PATH:0:/scratch/users/akma327/akma327/noncovalent_Interaction_Scripts/mOR-InteractionOutputDictionary/MOR_active_waters/mor_active_refine150_agonist_noNanobody
		BIN_DICT_PATH:1:/scratch/users/akma327/akma327/noncovalent_Interaction_Scripts/mOR-InteractionOutputDictionary/MOR_active_waters/mor_active_refine150_agonist_noNanobody_noNTerm
		BIN_DICT_PATH:2:/scratch/users/akma327/akma327/noncovalent_Interaction_Scripts/mOR-InteractionOutputDictionary/MOR_active_waters/mor_active_refine150_apo_noNanobody
		BIN_DICT_PATH:3:/scratch/users/akma327/akma327/noncovalent_Interaction_Scripts/mOR-InteractionOutputDictionary/MOR_active_waters/mor_active_refine150_apo_noNanobody_noNTerm
		BIN_DICT_PATH:4:/scratch/users/akma327/akma327/noncovalent_Interaction_Scripts/mOR-InteractionOutputDictionary/MOR_active_waters/mor_active_refine150_bu74
		BIN_DICT_PATH:5:/scratch/users/akma327/akma327/noncovalent_Interaction_Scripts/mOR-InteractionOutputDictionary/MOR_active_waters/mor_active_refine196_agonist_NanobodyInterfaceRestrained
		BIN_DICT_PATH:6:/scratch/users/akma327/akma327/noncovalent_Interaction_Scripts/mOR-InteractionOutputDictionary/MOR_inactive_waters/apo_sodium
		BIN_DICT_PATH:7:/scratch/users/akma327/akma327/noncovalent_Interaction_Scripts/mOR-InteractionOutputDictionary/MOR_inactive_waters/bfna_bonded
		BIN_DICT_PATH:8:/scratch/users/akma327/akma327/noncovalent_Interaction_Scripts/mOR-InteractionOutputDictionary/MOR_inactive_waters/bfna_nonbonded_methyl


		RAW_OUTPUT_ID:-sb:salt_bridge_result.txt
		RAW_OUTPUT_ID:-pc:pi_cation_result.txt
		RAW_OUTPUT_ID:-ps:pi_stacking_result.txt
		RAW_OUTPUT_ID:-ts:t_stacking_result.txt
		RAW_OUTPUT_ID:-vdw:vanderwaal_result.txt
		RAW_OUTPUT_ID:-hb:hydrogen_bond_result.txt
		RAW_OUTPUT_ID:-hbw:hydrogen_bond_water_result.txt
		RAW_OUTPUT_ID:-hbbb:bb_hydrogen_bond_result.txt
		RAW_OUTPUT_ID:-hbsb:sb_hydrogen_bond_result.txt
		RAW_OUTPUT_ID:-hbss:ss_hydrogen_bond_result.txt
		RAW_OUTPUT_ID:-rw:residue_water_hydrogen_bond_result.txt
		RAW_OUTPUT_ID:-wb:water_bond_result.txt

		STITCH_OUTPUT_ID:-sb:salt_bridge_result_stitch.txt
		STITCH_OUTPUT_ID:-pc:pi_cation_result_stitch.txt
		STITCH_OUTPUT_ID:-ps:pi_stacking_result_stitch.txt
		STITCH_OUTPUT_ID:-ts:t_stacking_result_stitch.txt
		STITCH_OUTPUT_ID:-vdw:vanderwaal_result_stitch.txt
		STITCH_OUTPUT_ID:-hb:hydrogen_bond_result_stitch.txt
		STITCH_OUTPUT_ID:-hbw:hydrogen_bond_water_result_stitch.txt
		STITCH_OUTPUT_ID:-hbbb:bb_hydrogen_bond_result_stitch.txt
		STITCH_OUTPUT_ID:-hbsb:sb_hydrogen_bond_result_stitch.txt
		STITCH_OUTPUT_ID:-hbss:ss_hydrogen_bond_result_stitch.txt
		STITCH_OUTPUT_ID:-rw:residue_water_hydrogen_bond_result_stitch.txt
		STITCH_OUTPUT_ID:-wb:water_bond_result_stitch.txt

		BIN_DICT_OUTPUT_ID:-sb:salt_bridge_result_dict.txt
		BIN_DICT_OUTPUT_ID:-pc:pi_cation_result_dict.txt
		BIN_DICT_OUTPUT_ID:-ps:pi_stacking_result_dict.txt
		BIN_DICT_OUTPUT_ID:-ts:t_stacking_result_dict.txt
		BIN_DICT_OUTPUT_ID:-vdw:vanderwaal_result_dict.txt
		BIN_DICT_OUTPUT_ID:-hb:hydrogen_bond_result_dict.txt
		BIN_DICT_OUTPUT_ID:-hbw:hydrogen_bond_water_result_dict.txt
		BIN_DICT_OUTPUT_ID:-hbbb:bb_hydrogen_bond_result_dict.txt
		BIN_DICT_OUTPUT_ID:-hbsb:sb_hydrogen_bond_result_dict.txt
		BIN_DICT_OUTPUT_ID:-hbss:ss_hydrogen_bond_result_dict.txt
		BIN_DICT_OUTPUT_ID:-rw:residue_water_hydrogen_bond_result_dict.txt
		BIN_DICT_OUTPUT_ID:-wb:water_bond_result_dict.txt





Step 2: Run create-Pipeline.py to generate the pipeline 

	- Script: create-Pipeline.py 

	- Path: /scratch/users/akma327/akma327/noncovalent_Interaction_Scripts/DynamicInteractions-Pipeline/create-Pipeline.py

	- Usage: 
		>> python create-Pipeline.py <MAIL USER> <Configuration File> <Job Folder Path> <Job Folder Name> <Experiment Identifier> <optional -replist> <list of replicates> <-di flag> <-stitch flag> <-bindict flag > <-stride optional flag> <stride > <-solv optional flag> <solvent flag> <-interlist> <interaction list>

	- Arguments: 
		<MAIL USER> Specify the sherlock user's email (ie akma327@stanford.edu) for the purpose of submitting batch request
		<Configuartion File> User provides a txt file to set the configuration parameters for the pipeline. See configurePipeline.py
		<Job Folder Path> Specify the path to store the batch scripts 
		<Job Folder Name> Specify the folder name for the specific job 
		<Experiment Identifier> User provides numeric identifier corresponding to experiment condition
		<-replist> flag is optional for user to provide space delimited replicate list (ie rep_1,rep_2,rep_3).
		If no -replist flag is provided then all replicates will be accounted for. 
		<-di> flag if user wants to compute Dynamic Interactions for the specified interactions for specified
		experimental condition and replicate. This flag is usually on.
		<-stitch> flag if user wants to stitch specified interactions for given experiment and replicate 
		<-bindict> flag if user wants to generate binarized dictionary for given experiment and replicate 
		<-stride> flag if user wants to specify a stride value other than default of 1
		<-solv> flag if user wants to specify a solvent_id other than default of 'HOH'
		<-interlist> flag to specify the following list of interactions to compute for. -all means all interaction type


	- Usage Steps For computing all interactions of a given replicate of a certain experiment condition 
		1) Compute all the independent interaction types that don't require -process flag. These are the interactions that can be generated on their own (ie -sb, -pc, -ps, -ts, -vdw, -hbw)

		2) Compute the different categories of hydrogen bonds by post processing the raw water mediated hydrogen bond file 

		3) Run the stitch function 

		4) Run the binary dictionary function 

	- Example: 
		Step 1:
		USER_EMAIL="akma327@stanford.edu"
		CONFIG_FILE_PATH="/scratch/users/akma327/akma327/noncovalent_Interaction_Scripts/DynamicInteractions-Pipeline/mOR-Configuration.txt"
		JOB_FOLDER_PATH="/scratch/users/akma327/akma327/noncovalent_Interaction_Scripts/DynamicInteractions-Pipeline/jobs"
		JOB_FOLDER_NAME="cond7_rep2,3_step1"
		python create-Pipeline.py $USER_EMAIL $CONFIG_FILE_PATH $JOB_FOLDER_PATH $JOB_FOLDER_NAME 7 -replist rep_2,rep_3 -di -solv IP3 -interlist -sb -pc -ps -ts -vdw -hbw 

		Step 2:
		USER_EMAIL="akma327@stanford.edu"
		CONFIG_FILE_PATH="/scratch/users/akma327/akma327/noncovalent_Interaction_Scripts/DynamicInteractions-Pipeline/mOR-Configuration.txt"
		JOB_FOLDER_PATH="/scratch/users/akma327/akma327/noncovalent_Interaction_Scripts/DynamicInteractions-Pipeline/jobs"
		JOB_FOLDER_NAME="cond7_rep2,3_step2"
		python create-Pipeline.py $USER_EMAIL $CONFIG_FILE_PATH $JOB_FOLDER_PATH $JOB_FOLDER_NAME 7 -replist rep_2,rep_3 -di -solv IP3 -interlist -hbbb -hbsb -hbss -rw -wb

		Step 3:
		USER_EMAIL="akma327@stanford.edu"
		CONFIG_FILE_PATH="/scratch/users/akma327/akma327/noncovalent_Interaction_Scripts/DynamicInteractions-Pipeline/mOR-Configuration.txt"
		JOB_FOLDER_PATH="/scratch/users/akma327/akma327/noncovalent_Interaction_Scripts/DynamicInteractions-Pipeline/jobs"
		JOB_FOLDER_NAME="cond7_rep2,3_stitch"
		python create-Pipeline.py $USER_EMAIL $CONFIG_FILE_PATH $JOB_FOLDER_PATH $JOB_FOLDER_NAME 7 -replist rep_2,rep_3 -stitch -solv IP3 -interlist -all

		Step 4:
		USER_EMAIL="akma327@stanford.edu"
		CONFIG_FILE_PATH="/scratch/users/akma327/akma327/noncovalent_Interaction_Scripts/DynamicInteractions-Pipeline/mOR-Configuration.txt"
		JOB_FOLDER_PATH="/scratch/users/akma327/akma327/noncovalent_Interaction_Scripts/DynamicInteractions-Pipeline/jobs"
		JOB_FOLDER_NAME="cond7_rep2,3_bindict"
		python create-Pipeline.py $USER_EMAIL $CONFIG_FILE_PATH $JOB_FOLDER_PATH $JOB_FOLDER_NAME 7 -replist rep_2,rep_3 -bindict -solv IP3 -interlist -all




Step 3: Execute pipeline_driver.sh
	After create-Pipeline.py is run, a folder will appear wrapping together all the batch scripts that will run the interaction calculator for the specified interaction types, upon the replicates of the experiment condition specified. Fragments are grouped into bundles of 12 per sbatch job. Within each replicate, there is a replicate_driver.sh responsible for executing all the bath scripts for computing the interactions for that specific replicate. 

	pipeline_driver.sh which is within the first layer of the job folder is executed to compute interactions for all replicates. 

	Usage: Let's say the job name is cond7_rep1_stitch (basically stitching the results for replicate 1 of condition 7)
		>> cd /scratch/users/akma327/akma327/noncovalent_Interaction_Scripts/DynamicInteractions-Pipeline/jobs/cond7_rep1_stitch
		>> bash pipeline_driver.sh 



Conclusion: 
	After following each of the steps to set up the directory structure for data storage, creating the configuration file, runing create-Pipeline.py to generate the job folder, and executing the pipeline_driver.sh script, there will be a wait period for computing the interactions that depend on the interaction type. Timing specifications can be found in the DynamicInteractions_README.txt file. 


