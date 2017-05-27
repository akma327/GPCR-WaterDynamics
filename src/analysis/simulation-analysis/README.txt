# Author: Anthony Kai Kwang Ma
# Email: akma327@stanford.edu
# README.txt 


/batch
	- Directory contains shell script to generate gpcr-db frequency
	lists for consecutive experiment replicate conditions. User can
	generate this list by hand automate it.


compile-gpcrdb-freq-data.py 
	- Input: Path to the folder containing files for gpcr-db and 
	frequency data for single experiment/replicate
	- Output: Column experiment/replicate conditions. Rows are 
	interactions with their frequency and gpcr-db information 


dynamicInterDictToFreq.py 
	- Input: Interaction dictionary for particular trajectory 
	- Output: Summary of the interactions with output format 
		<Interaction Type> <GPCR-DB1> <GPCR-DB2> <Frequency> 

