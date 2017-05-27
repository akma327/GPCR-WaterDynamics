# Multiframe trajectory H-Bond Testing - Anthony Ma 09/28/15

from __future__ import print_function
import os
import sys
import time
#import matplotlib.pyplot as plt
import itertools
import mdtraj as md
from testGeometryFunctions import testGeometryFunc
from hbond import baker_hubbard
from saltbridge import salt_bridge_detect
from vanderwaal import vanderwaal_detect
from hydrophobe import hydrophobe_detect
from pication import pication_detect
from aromatic import *



#Computation For Hydrogen Bonds
# hbonds = baker_hubbard(allFrames[0], periodic = False)
# label = lambda hbond: '%s -- %s' % (allFrames[0].topology.atom(hbond[0]), allFrames[0].topology.atom(hbond[2]))
# for hbond in hbonds:
# 	print(label(hbond))



# Computation for Salt Bridges
def displaySaltBridgeResults(allFrames, f):
	f.write("\n\n~~~~~~~~~~~~~~~~~~~~~~ Computation For Salt Bridges ~~~~~~~~~~~~~~~~~~~~~~ \n")
	#print("\n\n~~~~~~~~~~~~~~~~~~~~~~ Computation For Salt Bridges ~~~~~~~~~~~~~~~~~~~~~~ ")
	nFrames = len(allFrames)
	tic = time.clock()
	sbFramePairs = []
	for index, frame in enumerate(allFrames):
		#print("Computing salt bridge for frame: " + str(index) + "\n")
		#print("Computing salt bridge for frame: " + str(index))
		saltBridgePairs = salt_bridge_detect(frame)
		sbFramePairs.append(saltBridgePairs)
	toc = time.clock()
	computingTime = toc - tic
	for index, sbPairs in enumerate(sbFramePairs):
		f.write("Salt_Bridge Frame: " + str(index) + "\n")
		for pairs in sbPairs:
			f.write(str(pairs) + "\n")
	f.write("\nSalt Bridge Computing Time: " + str(computingTime) + "\n")
	return computingTime


# Computation for Van Der Waals Interaction
def displayVanderwaalsResults(allFrames, f):
	f.write("\n\n~~~~~~~~~~~~~~~~ Computation For Van Der Waals Interactions ~~~~~~~~~~~~~~~~ \n")
	nFrames = len(allFrames)
	tic = time.clock()
	framePairs = []
	for index, frame in enumerate(allFrames):
		vanderwaalPairs = vanderwaal_detect(frame)
		framePairs.append(vanderwaalPairs)
		toc = time.clock()
		runningTime = toc-tic
	toc = time.clock()
	computingTime = toc - tic
	for index, vanderwaalPairs in enumerate(framePairs):
		f.write("Vanderwaal Frame: " + str(index) + "\n")
		for pair in vanderwaalPairs:
			f.write(str(pair) + "\n")
	f.write("\nVanderwaal Pair Computing Time: " + str(computingTime) + "\n")
	return computingTime


# Computation for hydrophobic interaction
def displayHydrophobicResults(allFrames, f):
	f.write("\n\n~~~~~~~~~~~~~~~~ Computation For Hydrophobic Interactions ~~~~~~~~~~~~~~~~ \n")
	nFrames = len(allFrames)
	tic = time.clock()
	framePairs = []
	for index, frame in enumerate(allFrames):
		#print("Calculating hydrophobe pairs for frame: " + str(index) + " out of " + str(nFrames) + " total frames.\n")
		hydrophobePairs = hydrophobe_detect(frame)
		framePairs.append(hydrophobePairs)
		toc = time.clock()
		runningTime = toc-tic
		#f.write("Running Time: " + str(runningTime) + "\n")
	toc = time.clock()
	computingTime = toc - tic
	for index, hydrophobePairs in enumerate(framePairs):
		f.write("Hydrophobe Frame: " + str(index) + "\n")
		for pair in hydrophobePairs:
			f.write(str(pair) + "\n")
	f.write("\nHydrophobe Pair Computing Time: " + str(computingTime) + "\n")
	return computingTime



#Computation for pi-cation interaction
def displayPiCationResults(allFrames, f):
	f.write("\n\n~~~~~~~~~~~~~~~~ Computation For pi-Cation Interactions ~~~~~~~~~~~~~~~~ \n")
	nFrames = len(allFrames)
	tic = time.clock()
	framePairs = []
	for index, frame in enumerate(allFrames):
		#print("Calculating pication pairs for frame: " + str(index) + " out of " + str(nFrames) + " total frames.\n")
		picationPairs = pication_detect(frame)
		framePairs.append(picationPairs)
		toc = time.clock()
		runningTime = toc - tic
		#f.write("Running Time: " + str(runningTime) + "\n")
	toc = time.clock()
	computingTime = toc - tic
	for index, picationPairs in enumerate(framePairs):
		f.write("Pi_Cation Frame: " + str(index) + "\n")
		#f.write("Pairs for frame: " + str(index) + " out of " + str(nFrames) + " total frames.\n")
		for pair in picationPairs:
			f.write(str(pair) + "\n")
	f.write("\nComputing time for hydrophobe pair: " + str(computingTime) + "\n")
	return computingTime



#Computation for face to face aromatic detection
def displayFaceToFaceResults(allFrames, f):
	f.write("\n\n~~~~~~~~~~~~~ Computation For Face To Face Aromatic Interactions ~~~~~~~~~~~~~ \n")
	nFrames = len(allFrames)
	tic = time.clock()
	framePairs = []
	for index, frame in enumerate(allFrames):
		#f.write("Calculating Pi-Pi Stacking for frame: " + str(index) + " out of " + str(nFrames) + " total frames. \n")
		face_face_aromatic_pairs = face_face_aromatic_detect(frame)
		framePairs.append(face_face_aromatic_pairs)
		toc = time.clock()
		runningTime = toc - tic
		#f.write("Running Time: " + str(runningTime) +"\n")
	toc = time.clock()
	computingTime = toc - tic
	for index, pi_stackPairs in enumerate(framePairs):
		f.write("Pi_Stacking Frame: " + str(index) + "\n")
		#f.write("Pairs for frame: " + str(index) + " out of " + str(nFrames) + " total frames. \n")
		for pair in pi_stackPairs:
			f.write(str(pair) + "\n")
	f.write("\nComputing time for face to face aromatic pair: " + str(computingTime) + "\n")
	return computingTime


#Computation for edge to face aromatic detection
def displayEdgeToFaceResults(allFrames, f):
	f.write("\n\n ~~~~~~~~~~~~~ Computation For Edge To Face Aromatic Interactions ~~~~~~~~~~~~~ \n")
	nFrames = len(allFrames)
	tic = time.clock()
	framePairs = []
	for index, frame in enumerate(allFrames):
		#f.write("Calculating T-stacking for frame: " + str(index) + " out of " + str(nFrames) + " total frames.\n")
		face_edge_aromatic_pairs = face_edge_aromatic_detect(frame)
		framePairs.append(face_edge_aromatic_pairs)
		toc = time.clock()
		runningTime = toc-tic
		#f.write("Running Time: " + str(runningTime) + "\n")
	toc = time.clock()
	computingTime = toc - tic
	for index, t_stackPairs in enumerate(framePairs):
		f.write("T_Stacking Frame: " + str(index) + "\n")
		#f.write("Pairs for frame: " + str(index) + " out of " + str(nFrames) + " total frames.\n")
		for pair in t_stackPairs:
			f.write(str(pair) + "\n")
	f.write("\nComputing time for face to edge aromatic pair: " + str(computingTime) + "\n")
	return computingTime

def displayAllNoncovalentInteractions(allFrames, file_writers):
	# time0 = displaySaltBridgeResults(allFrames, file_writers[0])
	time1 = displayVanderwaalsResults(allFrames, file_writers[1])
	# time2 = displayHydrophobicResults(allFrames, file_writers[2])
	# time3 = displayPiCationResults(allFrames, file_writers[3])
	# time4 = displayFaceToFaceResults(allFrames, file_writers[4])
	# time5 = displayEdgeToFaceResults(allFrames, file_writers[5])
	totTime = time1
	# totTime = time0 + time3 + time4 + time5
	print("Total time for computating all noncovalent interactions: " + str(totTime))
	# totTime = time1 + time2 + time3 + time4 + time5
	# f.write("\nTotal Time Computing All Noncovalent Interactions: " + str(totTime) + "\n")


def getPDBCodes(str_list):
	pdb_codes = []
	pdb_list = str_list.split()
	for pdb_elem in pdb_list:
		pdb_codes.append(pdb_elem.split('_')[0])
	return pdb_codes


def createFileWriters(output_id):
	filename0 = "../NoncovalentInteractionOutput/noncovalent_interaction_results_" + output_id + "/salt_bridge_result.txt"
	filename1 = "../NoncovalentInteractionOutput/noncovalent_interaction_results_" + output_id + "/vanderwaal_result.txt"
	filename2 = "../NoncovalentInteractionOutput/noncovalent_interaction_results_" + output_id + "/hydrophobe_result.txt"
	filename3 = "../NoncovalentInteractionOutput/noncovalent_interaction_results_" + output_id + "/pi_cation_result.txt"
	filename4 = "../NoncovalentInteractionOutput/noncovalent_interaction_results_" + output_id + "/pi_stacking_result.txt"
	filename5 = "../NoncovalentInteractionOutput/noncovalent_interaction_results_" + output_id + "/t_stacking_result.txt"
	if not os.path.exists(os.path.dirname(filename1)):
		os.makedirs(os.path.dirname(filename1))
	f0 = open(filename0, 'w')
	f1 = open(filename1, 'w')
	f2 = open(filename2, 'w')
	f3 = open(filename3, 'w')
	f4 = open(filename4, 'w')
	f5 = open(filename5, 'w')
	return f0, f1, f2, f3, f4, f5

def displayResults(Sherlock, PDB_CODES):
	output_id = sys.argv[1]
	file_writers = createFileWriters(output_id)
	if(Sherlock == 0):
		for PROTEIN_CODE in PDB_CODES:
			for f in file_writers:
				f.write("\n\n")
				f.write(" ================  Calculating for PDB CODE: "+ str(PROTEIN_CODE) + " ================ ")
			t = md.load_pdb('http://www.rcsb.org/pdb/files/' + PROTEIN_CODE + '.pdb')
			allFrames = t[::1]
			displayAllNoncovalentInteractions(allFrames, file_writers)
	else:
		Path = "/scratch/PI/rondror/MD_simulations/amber/MOR_active_waters/mor_active_refine150_agonist_noNanobody/rep_1/"
		t = md.load(Path + "1_thru_9_skip100_reimaged.nc", top= Path + "step5_assembly.pdb")
		allFrames = t[::5]
		displayAllNoncovalentInteractions(allFrames, file_writers)


gpcr_pdb_list = '1GZM_A 2Z73_A 2VT4_B 2RH1_A 3PBL_A 3RZE_A 3UON_A 4DAJ_A 3ODU_A 4MBS_A 4DJH_A 4DKL_A 4EA3_A 4EJ4_A 4S0V_A 4YAY_A 3VW7_A 3V2Y_A 3EML_A 4NTJ_A 4XNV_A 4IAR_A 4IAQ_A 4IB4_A 4GRV_A 2YDV_A 4PXZ_A 3PQR_A 3SN6_A 4MQS_A 5C1M_A 4XT1_A 4ZWJ_A'
PDB_CODES = getPDBCodes(gpcr_pdb_list)
# PDB_CODES = ['1GZM']
	
Sherlock = 0
displayResults(Sherlock, PDB_CODES)



#PROTEIN_CODES = ['2NUY', '2NUW', '2NUX', '1V19', '1V1S', '1V1A', '1V1B', '1Z01', '2ZLC', '4YQH', '1R7L', '1TWU', '4OFC', '2IDM', '3LXM', '3PAJ']
#GPCR_CODES = ['2RH1', '3V2W', '4OO9', '5CGC', '5CGD', '4XT1', '4XT3', '3UZC']

