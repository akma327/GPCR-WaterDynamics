# aa_to_gpcrdb_network.py

USAGE_STR= """

PDB="5C1M"
INPUT="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/interaction-footprint-analysis/polar-network-lists/active-mor-network.txt"
OUTPUT="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/polar-networks/b2ar_mor/huang_active.txt"
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/analysis/polar-networks
python aa_to_gpcrdb_network.py $PDB $INPUT $OUTPUT

PDB="4N6H"
INPUT="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/interaction-footprint-analysis/polar-network-lists/inactive-dor-network.txt"
OUTPUT="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/polar-networks/b2ar_mor/huang_inactive.txt"
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/analysis/polar-networks
python aa_to_gpcrdb_network.py $PDB $INPUT $OUTPUT

"""

import sys

GPCRDB_TABLE_PATH="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/simulation-analysis/gpcrdb-freq-config/All_species_gpcrdb_numbers_strOnly.txt"
PDB_TO_UNIPROT_TABLE_PATH = "/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/simulation-analysis/gpcrdb-freq-config/GPCR_PDB_List.txt"
aa1to3_dict = {'A':'Ala','R':'Arg','N':'Asn','D':'Asp','C':'Cys','E':'Glu','Q':'Gln','G':'Gly','H':'His','I':'Ile','L':'Leu','K':'Lys','M':'Met','F':'Phe','P':'Pro','S':'Ser','T':'Thr','W':'Trp','Y':'Tyr','V':'Val'}

# Retrieve Uniprot Code for the PDB_CODE from pdb_to_uniprot_table_path
def getUniprotCode(PDB_CODE):
	f = open(PDB_TO_UNIPROT_TABLE_PATH, 'r')
	for line in f:
		if(line == "\n"): continue 
		l_info = line.split("\t")
		uniprot_code, pdb = l_info[0].strip(), l_info[2].strip()
		if(PDB_CODE.upper() == pdb.upper()): return uniprot_code.upper()
	print("PDB_CODE Not Found in PDB To Uniprot Table")
	exit(1)


# Given uniprot code reads through GPCRDB_TABLE_PATH to generate the amino acid
# to gpcrdb number table. 
# Output {"ASP112": "1x50", "ARG116":"2x45"}
def genGpcrdbDict(UNIPROT_CODE):
	GPCRDB_DICT = {}
	f = open(GPCRDB_TABLE_PATH, 'r')
	for line in f: 
		l_info = line.split("\t")
		uniprot, resnum, resname, gpcrdb = l_info[0].strip(), l_info[1].strip(), l_info[2].strip(), l_info[4].strip()
		if(uniprot.upper() == UNIPROT_CODE.upper()):
			key = resname.upper() + resnum 
			GPCRDB_DICT[key] = gpcrdb
	return GPCRDB_DICT

# Rename amino acids to common name
def fixAminoAcidNames(key):
	key = key.replace("HSD", "HIS")
	key = key.replace("HSE", "HIS")
	key = key.replace("HSP", "HIS")
	key = key.replace("HIE", "HIS")
	key = key.replace("HIP", "HIS")
	key = key.replace("HID", "HIS")
	key = key.replace("GLH", "GLU")
	key = key.replace("ASH", "ASP")
	key = key.replace("CYP", "CYS")
	key = key.replace("CYX", "CYS")
	return key

# Generates the residue to gpcrdb table for given pdb
def genResidueToGpcrdbTable(PDB_CODE):
	UNIPROT_CODE = getUniprotCode(PDB_CODE)
	GPCRDB_DICT = genGpcrdbDict(UNIPROT_CODE)
	return GPCRDB_DICT


def getGPCRDB(res, GPCRDB_DICT):
	res = fixAminoAcidNames(res)
	if(res not in GPCRDB_DICT):
		print(res + " not found.")
		return "-"
	return GPCRDB_DICT[res]



def convert(pdb, orig, out):
	res_gpcrdb_dict = genResidueToGpcrdbTable(pdb)

	f = open(orig, 'r')
	fw = open(out, 'w')
	for line in f:
		if("#" in line or "PDB" in line): continue
		linfo = line.strip().split("@")
		interaction_type = linfo[1]
		aa1, aa2 = linfo[0].split(" -- ")
		fullaa1 = aa1to3_dict[aa1[0]].upper() + aa1[1:]
		fullaa2 = aa1to3_dict[aa2[0]].upper() + aa2[1:]
		gpcrdb1 = getGPCRDB(fullaa1, res_gpcrdb_dict)
		gpcrdb2 = getGPCRDB(fullaa2, res_gpcrdb_dict)
		fw.write(gpcrdb1 + " -- " + gpcrdb2 + "@" + interaction_type + "\n")

if __name__ == "__main__":
	pdb, orig, out = (sys.argv[1], sys.argv[2], sys.argv[3])
	convert(pdb, orig, out)
