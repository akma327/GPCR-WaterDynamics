# Author: Anthony Kai Kwang Ma
# Date: 03/06/17
# batch_pymol_hadded.py

import pymol
from pymol import cmd, stored

USAGE_STR = """

# Purpose
# Generate pymol script that does the following over all class A GPCR pdbs
>> fetch <PDB>
>> h_add
>> save <HADDED_PDB_PATH>
>> reinit

"""

PDB_TO_LIGAND_MAP_PATH = "/Users/anthony/Desktop/dror/temp3/DynamicNetworks/data/crystal-analysis/ligand-wetness/watermarks/tables/classA_GPCRs_known_ligands.tsv"



def split_chains(selection='(all)', prefix=None):
    '''
DESCRIPTION

    Create a single object for each chain in selection

SEE ALSO

    split_states, http://pymolwiki.org/index.php/Split_object
    '''
    count = 0
    models = cmd.get_object_list('(' + selection + ')')
    for model in models:
        for chain in cmd.get_chains('(%s) and model %s' % (selection, model)):
            if chain == '':
                chain = "''"
            count += 1
            if not prefix:
                name = '%s_%s' % (model, chain)
            else:
                name = '%s%04d' % (prefix, count)
            cmd.create(name, '(%s) and model %s and chain %s' % (selection, model, chain))
        cmd.disable(model)

cmd.extend('split_chains', split_chains)


i = 0
f = open(PDB_TO_LIGAND_MAP_PATH, 'r')
for line in f:
    # if(i>10): break
    linfo = line.strip().split("\t")
    uniprot, protein_class, pdb, ligand = linfo[0], linfo[1], linfo[2], linfo[3]
    print(pdb, ligand)

    ### Retrieve PDB and add hydrogens
    cmd.fetch(pdb)
    cmd.h_add("all")

    ### Split across chains
    split_chains()
    chains = cmd.get_object_list()[1:]

    ### Write out pdb parts
    for pdb_c in chains:
        cmd.save("/Users/anthony/Desktop/dror/temp3/DynamicNetworks/data/crystal-analysis/ligand-wetness/watermarks/classA-gpcr-pdbs/" + pdb_c + "_pymol_Hadded.pdb", pdb_c)

    cmd.reinitialize()
    i+= 1