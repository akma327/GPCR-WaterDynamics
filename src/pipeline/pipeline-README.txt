pipeline-README.txt

/preprocess-traj
	- Contains code to generate batch scripts for generating directory structure to store 
	raw data for each experiment conditon, the associated topology files and folders storing 
	processed trajectory fragment 
	- Contains batch scripts that user executes to actually generate each trajectory ragment.

/calculate 
	- Contains code for creating pipeline to use DynamicInteraction Calculator
	- Contains batch script for generating all the job script folders
	- Job Scripts to submit sbatch scripts go compute interaction, stitch, and dictionary 
	for specified experiment condition 

