# Verify Huang Paper Interactions


def verify(huang, union):
	"""
		Check that every interaction in huang is found in the unionized version
	"""
	fh = open(huang, 'r')
	fu = open(union, 'r')
	huang_list = []
	union_list = []
	for line in fh:
		interaction_type = line.strip().split("@")[1]
		gpcrdb1, gpcrdb2 = line.split("@")[0].split(" -- ")
		huang_list.append((gpcrdb1, gpcrdb2, interaction_type))

	for line in fu:
		interaction_type = line.strip().split("@")[1]
		gpcrdb1, gpcrdb2 = line.split("@")[0].split(" -- ")
		union_list.append((gpcrdb1, gpcrdb2, interaction_type))

	# print(union_list)
	# print(huang_list, len(huang_list), len(union_list))


	### Verify
	mismatch = []
	found = []
	for h1, h2, itype in huang_list:
		k1 = (h1, h2, itype)
		k2 = (h2, h1, itype)
		if(k1 not in union_list and k2 not in union_list):
			if(itype in ["wb", "wb2", "lwb", "lwb2"]):
				mismatch.append((h1, h2, itype))
		else:
			found.append((h1, h2, itype))

	for h1, h2, itype in mismatch:
		print("mismatch: ", h1, h2, itype)

	for h1, h2, itype in found:
		print("found: ", h1, h2, itype)

	# print(union_list)
	print("Num Mismatch: " +  str(len(mismatch)) + " Num Found: " + str(len(found)) + "\n\n")


if __name__ == "__main__":
	huang_active_path = "/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/polar-networks/b2ar_mor/huang_active.txt"
	# union_active_path = "/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/polar-networks/102716/active_polar_network.txt"
	# union_active_path = "/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/polar-networks/b2ar_mor/b2ar_mor_active.txt"
	union_active_path = "/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/polar-networks/110416/active_polar_network.txt"


	huang_inactive_path = "/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/polar-networks/b2ar_mor/huang_inactive.txt"
	# union_inactive_path = "/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/polar-networks/102716/inactive_polar_network.txt"
	# union_inactive_path = "/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/polar-networks/b2ar_mor/b2ar_mor_inactive.txt"
	union_inactive_path = "/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/polar-networks/110416/inactive_polar_network.txt"


	print("Verify active polar network")
	verify(huang_active_path, union_active_path)
	print("Verify inactive polar netork")
	verify(huang_inactive_path, union_inactive_path)
