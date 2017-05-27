052617_mirror_copy

analysis-README.txt

/competing-network-analysis
	- For a interaction p' in polar network P in a specific experimental condition, determine whether 
	neighboring interactions are correlated, anticorrelated, or competing with interaction p'



/interaction-footprint-analysis
	- For a specified list of interactions, as represented by gpcrdb number pairs, that formulate a 
	polar network P, visualize these interactions and their overall frequencies in different 
	receptors and experimental condition. This package has vmd code for 3D representation as well
	d3 circle graph to show a animated 2D representation of interaction connections over full trajectories. 



/simulation-analysis
	- Contains code to merge different titrations of interaction calculations (ie hydrogen bond) with other
	interaction types to a single folder. For example combine 3.5 A hydrogen bond cutoff with 4 A salt bridge
	and other interactions vs another folder for 3.2 A hydrogen bond with 3.8 A salt bridge cutoff. 

	- For single frame topologies of specified experiment condition and replicate, generates the list of 
	all interactions that are part of this freeze frame using the static interaction calculator. 

	- Merge static interaction results from various experiment replicate conditions into a aggregate table
	that serves as first layer of results to perform analysis upon. 


/static-crystal-analysis
	- Takes path to directory containing files that stores the list of static interactions for 
	a given crystal structure (topology). After unionizing over the interactions across the
	specified list of pdbs, this script outputs a bitstring representing whether an interaction
	was present in each of the crystal structures.



