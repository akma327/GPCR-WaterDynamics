# 060116-3.5A-110D-full-gpcrdb-freq-aggregate-calc-active-receptors.sh 

GPCR_DB_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/simulation-analysis/gpcrdb-freq-config/All_species_gpcrdb_numbers_strOnly.txt"
RECEPTOR_PDB_LOOKUP_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/simulation-analysis/gpcrdb-freq-config/receptor_pdb_lookup.txt"


# ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

# B2AR-active-noNb-BI-nature2011/condition-C/rep_1
EXP_REP_DICT_PATH="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutputDictionary/B2AR-active-noNb-BI-nature2011/condition-C/rep_1/050516_NONHB_DEFAULT_HB_3.5_70"
PDB_CODE="2RH1"
OUTPUT_FILE_PATH="/scratch/PI/rondror/akma327/DynamicNetworks/results/simulation-analysis/gpcrdb-freq-output/single-cond-rep-freqsum/062016-3.5A-110D-active-receptors/B2AR:active:BI-167107-bound:D79-,D130+.txt"
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/analysis/simulation-analysis
python dynamicInterDictToFreq.py $GPCR_DB_FILE $RECEPTOR_PDB_LOOKUP_FILE $EXP_REP_DICT_PATH $PDB_CODE $OUTPUT_FILE_PATH -chainId 0 -interlist -sb -pc -ps -ts -vdw -hbbb -hbsb -hbss -wb -wb2 


# B2AR-active-noNb-BI-nature2011/condition-D/rep_1
EXP_REP_DICT_PATH="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutputDictionary/B2AR-active-noNb-BI-nature2011/condition-D/rep_1/050516_NONHB_DEFAULT_HB_3.5_70"
PDB_CODE="2RH1"
OUTPUT_FILE_PATH="/scratch/PI/rondror/akma327/DynamicNetworks/results/simulation-analysis/gpcrdb-freq-output/single-cond-rep-freqsum/062016-3.5A-110D-active-receptors/B2AR:active:BI-167107-bound:D79+,D130-.txt"
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/analysis/simulation-analysis
python dynamicInterDictToFreq.py $GPCR_DB_FILE $RECEPTOR_PDB_LOOKUP_FILE $EXP_REP_DICT_PATH $PDB_CODE $OUTPUT_FILE_PATH -chainId 0 -interlist -sb -pc -ps -ts -vdw -hbbb -hbsb -hbss -wb -wb2 


# ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

# B2AR-active-Nb-BI-pnas2011b/condition-L/rep_1
EXP_REP_DICT_PATH="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutputDictionary/B2AR-active-Nb-BI-pnas2011b/condition-L/rep_1/050516_NONHB_DEFAULT_HB_3.5_70"
PDB_CODE="3P0G"
OUTPUT_FILE_PATH="/scratch/PI/rondror/akma327/DynamicNetworks/results/simulation-analysis/gpcrdb-freq-output/single-cond-rep-freqsum/062016-3.5A-110D-active-receptors/B2AR:active:agonist-bound-nanobody-complex:9.3us:D79-,D130+,H172-,C341_nopalm.txt"
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/analysis/simulation-analysis
python dynamicInterDictToFreq.py $GPCR_DB_FILE $RECEPTOR_PDB_LOOKUP_FILE $EXP_REP_DICT_PATH $PDB_CODE $OUTPUT_FILE_PATH -chainId 0 -interlist -sb -pc -ps -ts -vdw -hbbb -hbsb -hbss -wb -wb2 


# B2AR-active-Nb-BI-pnas2011b/condition-L/rep_2
EXP_REP_DICT_PATH="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutputDictionary/B2AR-active-Nb-BI-pnas2011b/condition-L/rep_2/050516_NONHB_DEFAULT_HB_3.5_70"
PDB_CODE="3P0G"
OUTPUT_FILE_PATH="/scratch/PI/rondror/akma327/DynamicNetworks/results/simulation-analysis/gpcrdb-freq-output/single-cond-rep-freqsum/062016-3.5A-110D-active-receptors/B2AR:active:agonist-bound-nanobody-complex:20.0us:D79-,D130+,H172-,C341_nopalm.txt"
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/analysis/simulation-analysis
python dynamicInterDictToFreq.py $GPCR_DB_FILE $RECEPTOR_PDB_LOOKUP_FILE $EXP_REP_DICT_PATH $PDB_CODE $OUTPUT_FILE_PATH -chainId 0 -interlist -sb -pc -ps -ts -vdw -hbbb -hbsb -hbss -wb -wb2 


# B2AR-active-Nb-BI-pnas2011b/condition-M/rep_1
EXP_REP_DICT_PATH="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutputDictionary/B2AR-active-Nb-BI-pnas2011b/condition-M/rep_1/050516_NONHB_DEFAULT_HB_3.5_70"
PDB_CODE="3P0G"
OUTPUT_FILE_PATH="/scratch/PI/rondror/akma327/DynamicNetworks/results/simulation-analysis/gpcrdb-freq-output/single-cond-rep-freqsum/062016-3.5A-110D-active-receptors/B2AR:active:agonist-bound-nanobody-complex:2.9us:D79-,D130+,H172+,C341_nopalm.txt"
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/analysis/simulation-analysis
python dynamicInterDictToFreq.py $GPCR_DB_FILE $RECEPTOR_PDB_LOOKUP_FILE $EXP_REP_DICT_PATH $PDB_CODE $OUTPUT_FILE_PATH -chainId 0 -interlist -sb -pc -ps -ts -vdw -hbbb -hbsb -hbss -wb -wb2 


# B2AR-active-Nb-BI-pnas2011b/condition-N/rep_1
EXP_REP_DICT_PATH="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutputDictionary/B2AR-active-Nb-BI-pnas2011b/condition-N/rep_1/050516_NONHB_DEFAULT_HB_3.5_70"
PDB_CODE="3P0G"
OUTPUT_FILE_PATH="/scratch/PI/rondror/akma327/DynamicNetworks/results/simulation-analysis/gpcrdb-freq-output/single-cond-rep-freqsum/062016-3.5A-110D-active-receptors/B2AR:active:agonist-bound-nanobody-complex:2.1us:D79-,D130+,H172+,C341_palm.txt"
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/analysis/simulation-analysis
python dynamicInterDictToFreq.py $GPCR_DB_FILE $RECEPTOR_PDB_LOOKUP_FILE $EXP_REP_DICT_PATH $PDB_CODE $OUTPUT_FILE_PATH -chainId 0  -interlist -sb -pc -ps -ts -vdw -hbbb -hbsb -hbss -wb -wb2 


# B2AR-active-Nb-BI-pnas2011b/condition-N/rep_2
EXP_REP_DICT_PATH="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutputDictionary/B2AR-active-Nb-BI-pnas2011b/condition-N/rep_2/050516_NONHB_DEFAULT_HB_3.5_70"
PDB_CODE="3P0G"
OUTPUT_FILE_PATH="/scratch/PI/rondror/akma327/DynamicNetworks/results/simulation-analysis/gpcrdb-freq-output/single-cond-rep-freqsum/062016-3.5A-110D-active-receptors/B2AR:active:agonist-bound-nanobody-complex:5.9us:D79-,D130+,H172+,C341_palm.txt"
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/analysis/simulation-analysis
python dynamicInterDictToFreq.py $GPCR_DB_FILE $RECEPTOR_PDB_LOOKUP_FILE $EXP_REP_DICT_PATH $PDB_CODE $OUTPUT_FILE_PATH -chainId 0 -interlist -sb -pc -ps -ts -vdw -hbbb -hbsb -hbss -wb -wb2 


# B2AR-active-Nb-BI-pnas2011b/condition-O/rep_1
EXP_REP_DICT_PATH="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutputDictionary/B2AR-active-Nb-BI-pnas2011b/condition-O/rep_1/050516_NONHB_DEFAULT_HB_3.5_70"
PDB_CODE="3P0G"
OUTPUT_FILE_PATH="/scratch/PI/rondror/akma327/DynamicNetworks/results/simulation-analysis/gpcrdb-freq-output/single-cond-rep-freqsum/062016-3.5A-110D-active-receptors/B2AR:active:agonist-bound-nanobody-complex:4.9us:D70+,D130+,H172-,C341_nopalm.txt"
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/analysis/simulation-analysis
python dynamicInterDictToFreq.py $GPCR_DB_FILE $RECEPTOR_PDB_LOOKUP_FILE $EXP_REP_DICT_PATH $PDB_CODE $OUTPUT_FILE_PATH -chainId 0 -interlist -sb -pc -ps -ts -vdw -hbbb -hbsb -hbss -wb -wb2 


# B2AR-active-Nb-BI-pnas2011b/condition-P/rep_1
EXP_REP_DICT_PATH="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutputDictionary/B2AR-active-Nb-BI-pnas2011b/condition-P/rep_1/050516_NONHB_DEFAULT_HB_3.5_70"
PDB_CODE="3P0G"
OUTPUT_FILE_PATH="/scratch/PI/rondror/akma327/DynamicNetworks/results/simulation-analysis/gpcrdb-freq-output/single-cond-rep-freqsum/062016-3.5A-110D-active-receptors/B2AR:active:agonist-bound-nanobody-complex:3.8us:D70+,D130+,H172+,C341_nopalm.txt"
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/analysis/simulation-analysis
python dynamicInterDictToFreq.py $GPCR_DB_FILE $RECEPTOR_PDB_LOOKUP_FILE $EXP_REP_DICT_PATH $PDB_CODE $OUTPUT_FILE_PATH -chainId 0 -interlist -sb -pc -ps -ts -vdw -hbbb -hbsb -hbss -wb -wb2 


# B2AR-active-Nb-BI-pnas2011b/condition-Q/rep_1
EXP_REP_DICT_PATH="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutputDictionary/B2AR-active-Nb-BI-pnas2011b/condition-Q/rep_1/050516_NONHB_DEFAULT_HB_3.5_70"
PDB_CODE="3P0G"
OUTPUT_FILE_PATH="/scratch/PI/rondror/akma327/DynamicNetworks/results/simulation-analysis/gpcrdb-freq-output/single-cond-rep-freqsum/062016-3.5A-110D-active-receptors/B2AR:active:agonist-bound-nanobody-complex:3.6us:D70+,D130+,H172+,C341_palm.txt"
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/analysis/simulation-analysis
python dynamicInterDictToFreq.py $GPCR_DB_FILE $RECEPTOR_PDB_LOOKUP_FILE $EXP_REP_DICT_PATH $PDB_CODE $OUTPUT_FILE_PATH -chainId 0 -interlist -sb -pc -ps -ts -vdw -hbbb -hbsb -hbss -wb -wb2 


# B2AR-active-Nb-BI-pnas2011b/condition-Q/rep_2
EXP_REP_DICT_PATH="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutputDictionary/B2AR-active-Nb-BI-pnas2011b/condition-Q/rep_2/050516_NONHB_DEFAULT_HB_3.5_70"
PDB_CODE="3P0G"
OUTPUT_FILE_PATH="/scratch/PI/rondror/akma327/DynamicNetworks/results/simulation-analysis/gpcrdb-freq-output/single-cond-rep-freqsum/062016-3.5A-110D-active-receptors/B2AR:active:agonist-bound-nanobody-complex:6.5us:D70+,D130+,H172+,C341_palm.txt"
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/analysis/simulation-analysis
python dynamicInterDictToFreq.py $GPCR_DB_FILE $RECEPTOR_PDB_LOOKUP_FILE $EXP_REP_DICT_PATH $PDB_CODE $OUTPUT_FILE_PATH -chainId 0 -interlist -sb -pc -ps -ts -vdw -hbbb -hbsb -hbss -wb -wb2 



# ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

# B2AR-active-Gs-BI-science2015/condition-22/rep_1


EXP_REP_DICT_PATH="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutputDictionary/B2AR-active-Gs-BI-science2015/condition-22/rep_1/050516_NONHB_DEFAULT_HB_3.5_70"
PDB_CODE="3P0G"
OUTPUT_FILE_PATH="/scratch/PI/rondror/akma327/DynamicNetworks/results/simulation-analysis/gpcrdb-freq-output/single-cond-rep-freqsum/062016-3.5A-110D-active-receptors/B2AR:active:long-isoform-B2AR-heterotrimeric-Gs:no_ligand:50us:with_membrane.txt"
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/analysis/simulation-analysis
python dynamicInterDictToFreq.py $GPCR_DB_FILE $RECEPTOR_PDB_LOOKUP_FILE $EXP_REP_DICT_PATH $PDB_CODE $OUTPUT_FILE_PATH -chainId 3 -interlist -sb -pc -ps -ts -vdw -hbbb -hbsb -hbss -wb -wb2 




# B2AR-active-Gs-BI-science2015/condition-23/rep_1

EXP_REP_DICT_PATH="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutputDictionary/B2AR-active-Gs-BI-science2015/condition-23/rep_1/050516_NONHB_DEFAULT_HB_3.5_70"
PDB_CODE="3P0G"
OUTPUT_FILE_PATH="/scratch/PI/rondror/akma327/DynamicNetworks/results/simulation-analysis/gpcrdb-freq-output/single-cond-rep-freqsum/062016-3.5A-110D-active-receptors/B2AR:active:long-isoform-B2AR-heterotrimeric-Gs:no_ligand:10us:with_membrane.txt"
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/analysis/simulation-analysis
python dynamicInterDictToFreq.py $GPCR_DB_FILE $RECEPTOR_PDB_LOOKUP_FILE $EXP_REP_DICT_PATH $PDB_CODE $OUTPUT_FILE_PATH -chainId 3 -interlist -sb -pc -ps -ts -vdw -hbbb -hbsb -hbss -wb -wb2 



# B2AR-active-Gs-BI-science2015/condition-24/rep_1

EXP_REP_DICT_PATH="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutputDictionary/B2AR-active-Gs-BI-science2015/condition-24/rep_1/050516_NONHB_DEFAULT_HB_3.5_70"
PDB_CODE="3P0G"
OUTPUT_FILE_PATH="/scratch/PI/rondror/akma327/DynamicNetworks/results/simulation-analysis/gpcrdb-freq-output/single-cond-rep-freqsum/062016-3.5A-110D-active-receptors/B2AR:active:long-isoform-B2AR-heterotrimeric-Gs:no_ligand:10us:with_membrane.txt"
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/analysis/simulation-analysis
python dynamicInterDictToFreq.py $GPCR_DB_FILE $RECEPTOR_PDB_LOOKUP_FILE $EXP_REP_DICT_PATH $PDB_CODE $OUTPUT_FILE_PATH -chainId 3 -interlist -sb -pc -ps -ts -vdw -hbbb -hbsb -hbss -wb -wb2 




# B2AR-active-Gs-BI-science2015/condition-65/rep_1

EXP_REP_DICT_PATH="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutputDictionary/B2AR-active-Gs-BI-science2015/condition-65/rep_1/050516_NONHB_DEFAULT_HB_3.5_70"
PDB_CODE="3P0G"
OUTPUT_FILE_PATH="/scratch/PI/rondror/akma327/DynamicNetworks/results/simulation-analysis/gpcrdb-freq-output/single-cond-rep-freqsum/062016-3.5A-110D-active-receptors/B2AR:active:short-isoform-B2AR-heterotrimeric-Gs:no_ligand:5us:with_membrane.txt"
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/analysis/simulation-analysis
python dynamicInterDictToFreq.py $GPCR_DB_FILE $RECEPTOR_PDB_LOOKUP_FILE $EXP_REP_DICT_PATH $PDB_CODE $OUTPUT_FILE_PATH -chainId 3 -interlist -sb -pc -ps -ts -vdw -hbbb -hbsb -hbss -wb -wb2 


# ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

# MOR-active-noNb-BU72-nature2015/condition-nb-interface-restrained-BU72/rep_1
EXP_REP_DICT_PATH="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutputDictionary/MOR-active-noNb-BU72-nature2015/condition-nb-interface-restrained-BU72/rep_1/050516_NONHB_DEFAULT_HB_3.5_70"
PDB_CODE="5C1M"
OUTPUT_FILE_PATH="/scratch/PI/rondror/akma327/DynamicNetworks/results/simulation-analysis/gpcrdb-freq-output/single-cond-rep-freqsum/062016-3.5A-110D-active-receptors/MOR:active-noNb:BU72-nB_interface_restrained:3.0us:312.18K.txt"
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/analysis/simulation-analysis
python dynamicInterDictToFreq.py $GPCR_DB_FILE $RECEPTOR_PDB_LOOKUP_FILE $EXP_REP_DICT_PATH $PDB_CODE $OUTPUT_FILE_PATH -chainId 3 -interlist -sb -pc -ps -ts -vdw -hbbb -hbsb -hbss -wb -wb2 


# MOR-active-noNb-BU72-nature2015/condition-nb-interface-restrained-BU72/rep_2
EXP_REP_DICT_PATH="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutputDictionary/MOR-active-noNb-BU72-nature2015/condition-nb-interface-restrained-BU72/rep_2/050516_NONHB_DEFAULT_HB_3.5_70"
PDB_CODE="5C1M"
OUTPUT_FILE_PATH="/scratch/PI/rondror/akma327/DynamicNetworks/results/simulation-analysis/gpcrdb-freq-output/single-cond-rep-freqsum/062016-3.5A-110D-active-receptors/MOR:active-noNb:BU72-nB_interface_restrained:2.7us:313.05K.txt"
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/analysis/simulation-analysis
python dynamicInterDictToFreq.py $GPCR_DB_FILE $RECEPTOR_PDB_LOOKUP_FILE $EXP_REP_DICT_PATH $PDB_CODE $OUTPUT_FILE_PATH -chainId 3 -interlist -sb -pc -ps -ts -vdw -hbbb -hbsb -hbss -wb -wb2 

# MOR-active-noNb-BU72-nature2015/condition-nb-interface-restrained-BU72/rep_3
EXP_REP_DICT_PATH="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutputDictionary/MOR-active-noNb-BU72-nature2015/condition-nb-interface-restrained-BU72/rep_3/050516_NONHB_DEFAULT_HB_3.5_70"
PDB_CODE="5C1M"
OUTPUT_FILE_PATH="/scratch/PI/rondror/akma327/DynamicNetworks/results/simulation-analysis/gpcrdb-freq-output/single-cond-rep-freqsum/062016-3.5A-110D-active-receptors/MOR:active-noNb:BU72-nB_interface_restrained:2.9us:310.05K.txt"
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/analysis/simulation-analysis
python dynamicInterDictToFreq.py $GPCR_DB_FILE $RECEPTOR_PDB_LOOKUP_FILE $EXP_REP_DICT_PATH $PDB_CODE $OUTPUT_FILE_PATH -chainId 3 -interlist -sb -pc -ps -ts -vdw -hbbb -hbsb -hbss -wb -wb2 




