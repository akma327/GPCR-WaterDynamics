# footprint_summary_histogram.py
import os
import sys
import csv
import numpy as np
import matplotlib.pyplot as plt

USAGE_STR = """

Example
path="/scratch/PI/rondror/akma327/DynamicNetworks/results/state-decomposition/residue-resolution/110916_state_decomp_union_wb_freq/active_receptors/active_state_decomp_residue_resolution.txt"
python footprint_summary_histogram.py $path


"""

def gen_histogram(path):
	data = []
	with open(path, 'rU') as f:
		reader = csv.reader(f, delimiter="\t")
		d = list(reader)
	darr = np.array(d)
	freq_arr = map(float,list(darr[:,6][1:]))
	print(freq_arr)
	freq_arr_nonzero = []
	for a in freq_arr:
		if(a > 0):
			freq_arr_nonzero.append(a)


	plt.title("B2AR:active:short-isoform-B2AR-heterotrimeric-Gs:no_ligand:5us:with_membrane,Active")
	plt.hist(freq_arr_nonzero, 10)
	plt.show()
	# with open(path, 'rb') as csvfile:
	# 	r = csv.reader(csvfile, delimiter = "\t")
	# 	for row in r:
	# 		data.append(row)
	# for d in data[1:]:
	# 	freq_arr += map(float, d[1:])
	# print(freq_arr)
	# plt.hist(freq_arr, 50)
	# plt.show()



if __name__ == "__main__":
	path = sys.argv[1]
	gen_histogram(path)
