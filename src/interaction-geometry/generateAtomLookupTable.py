# generateAtomLookupTable.py 

from __future__ import division

import vmd, molecule
from VMD import *
import sys
import os
import subprocess
import numpy as np
import matplotlib.pyplot as plt
import matplotlib.mlab as mlab
import ast 
import time 
import sqlite3


USAGE_STR = """
# Usage:
# python generateAtomLookupTable.py <TOP_PATH> <OUTPUT_PATH> <optional -chain flag> <optional -solv flag>

# Arguments:
# <TOP_PATH> Absolute path to the topology of interest 
# <OUTPUT_PATH> Absolute path to the sqlite database file containing association pairs between atom index
# and a human readable label (ie 11440 --> LEU130-N)
# <-chain> Optional flag to denote specific chain of the topology to compute labels for 
# <-solv> Optional flag to denote solvent other than default of TIP3 

# Example 1:
# TOP_PATH="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/B2AR-active-Gs-BI-science2015/condition-22/step5_assembly.mae"
# OUTPUT_PATH="/scratch/PI/rondror/akma327/DynamicNetworks/data/Top-Atom-Lookup-Tables/B2AR-active-Gs-BI-science2015-cond22-test.db"
# python generateAtomLookupTable.py $TOP_PATH $OUTPUT_PATH -chain R 

# Output:
# Two column table storing the integer atom index that VMD uses to represent and atom and the associated string that 
# denotes a human readable form (ie LEU130-N)

"""
K_MIN_ARG = 3
MAX_TABLE_READ = 10000

# chunk array l into size of length n
def chunks(l, n):
    """Yield successive n-sized chunks from l."""
    for i in xrange(0, len(l), n):
        yield l[i:i+n]

# Extract suffix file type 
def getFileType(fileName):
	file_type = fileName.split(".")[-1].strip()
	if(file_type == "nc"): file_type = 'netcdf'
	return file_type

# Loads topology into VMD 
def load_traj(TOP_PATH):
	top_file_type = getFileType(TOP_PATH)
	trajid = molecule.load(top_file_type, TOP_PATH)


# returns boolean of whether a key value pair in the sqlite3 table
def inSqliteTable(c, k, v):
	for row in c.execute("SELECT * FROM atom_lookup WHERE atom_index = ? AND atom_label = ?", (k,v)):
		return True
	return False 


def tableExists(c):
	for row in c.execute("SELECT * FROM sqlite_master WHERE name ='atom_lookup' and type='table'"):
		return True 
	return False 

# generate the sqlite3 table
def initializeTable(OUTPUT_PATH):
	conn = sqlite3.connect(OUTPUT_PATH)
	c = conn.cursor()
	if(not tableExists(c)):
		c.execute('''CREATE TABLE atom_lookup(atom_index, atom_label)''')
	return c, conn 

# Returns the atom selection query
def genAtomSelection(chain_id, solvent_id):
	atom_sel_query = "set sel [atomselect top \"" 
	if(solvent_id == "IP3"): atom_sel_query += "resname IP3 or "
	else: atom_sel_query += "water or "
	atom_sel_query += "protein and not lipid and not carbon"
	if(chain_id != None):
		atom_sel_query += " and chain " + str(chain_id)
	atom_sel_query += "\"]"
	print(atom_sel_query)
	return atom_sel_query

# Populates the lookup table information 
def generateLookupTable(OUTPUT_PATH, chain_id, solvent_id):
	c, conn = initializeTable(OUTPUT_PATH)
	# evaltcl(genAtomSelection(chain_id, solvent_id))
	evaltcl("set sel [atomselect top \"water or protein and not lipid and not carbon and chain R\"]")
	atom_indices = evaltcl("$sel get index").split(" ")
	for a in atom_indices:
		print(a)
	print("Populating Lookup Table with " + str(len(atom_indices)) + " entries.")
	# for chunk_index, chunk_atom_indices in enumerate(chunks(atom_indices, MAX_TABLE_READ)):
	# 	if(chunk_index > 10):
	# 		for entry_index, atom_str in enumerate(chunk_atom_indices):
	# 			key = int(atom_str)
	# 			evaltcl("set sel [atomselect top \"index " + atom_str + "\"]")
	# 			resname = evaltcl('$sel get resname')
	# 			resid = evaltcl('$sel get resid')
	# 			atom_name = evaltcl('$sel get name')
	# 			value = resname + resid + "-" + atom_name
	# 			if(inSqliteTable(c, key, value) == False):
	# 				c.execute("INSERT INTO atom_lookup VALUES(?,?)", (key, value))
	# 				if(entry_index % 100 == 0):
	# 					print("Added Entry: " + str(entry_index) + " Key: " + str(key) + " Value: " + str(value))
	conn.commit()
	conn.close() 







if __name__ == "__main__":
	if(len(sys.argv) < K_MIN_ARG):
		print(USAGE_STR)
		exit(1)
	TOP_PATH = sys.argv[1]
	OUTPUT_PATH = sys.argv[2]
	chain_id = None 
	if("-chain" in sys.argv):
		chain_id = sys.argv[sys.argv.index('-chain') + 1]
	solvent_id = "TIP3"
	if("-solv" in sys.argv):
		solvent_id = sys.argv[sys.argv.index('-solv') + 1]
	load_traj(TOP_PATH)
	generateLookupTable(OUTPUT_PATH, chain_id, solvent_id)








