# positional_polarity_conservation.py

from utils import *

if __name__ == "__main__":
    aa_freq = position_to_conserve_freq()
    polarity_freq = position_to_polarity_freq()
    f = open("gpcrdb_positional_conservation.txt", 'w')
    f.write("GPCRDB\tPOSITIONAL_CONSERVATION\tPOLARITY_CONSERVATION\n")
    for k in sorted(aa_freq.keys()):
        pos_conserve = aa_freq[k]
        pol_conserve = polarity_freq[k]
        f.write(str(k) + "\t" + str(pos_conserve) + "\t" + str(pol_conserve) + "\n")