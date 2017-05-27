# full-gpcrdb-freq-aggregate-calc.sh 

GPCR_DB_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/crystal-gpcrdb-freq-analysis/crystal-gpcrdb-freq-config/All_species_gpcrdb_numbers_strOnly.txt"
RECEPTOR_PDB_LOOKUP_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/crystal-gpcrdb-freq-analysis/crystal-gpcrdb-freq-config/receptor_pdb_lookup.txt"



# B2AR-inactive-carazalol-cell2013b/condition-1/rep_1
EXP_REP_DICT_PATH="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutputDictionary/B2AR-inactive-carazalol-cell2013b/condition-1/rep_1"
PDB_CODE="2RH1"
OUTPUT_FILE_PATH="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/crystal-gpcrdb-freq-analysis/crystal-gpcrdb-freq-output/single-cond-rep-freqsum/042616-full/B2AR-inactive-carazalol-cell2013b-cond1-rep_1.txt"
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/analysis/crystal-gpcrdb-freq-analysis
python dynamicInterDictToFreq.py $GPCR_DB_FILE $RECEPTOR_PDB_LOOKUP_FILE $EXP_REP_DICT_PATH $PDB_CODE $OUTPUT_FILE_PATH -interlist -sb -pc -ps -ts -vdw -hbbb -hbsb -hbss -wb 

# B2AR-inactive-carazalol-cell2013b/condition-2/rep_1
EXP_REP_DICT_PATH="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutputDictionary/B2AR-inactive-carazalol-cell2013b/condition-2/rep_1"
PDB_CODE="2RH1"
OUTPUT_FILE_PATH="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/crystal-gpcrdb-freq-analysis/crystal-gpcrdb-freq-output/single-cond-rep-freqsum/042616-full/B2AR-inactive-carazalol-cell2013b-cond2-rep_1.txt"
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/analysis/crystal-gpcrdb-freq-analysis
python dynamicInterDictToFreq.py $GPCR_DB_FILE $RECEPTOR_PDB_LOOKUP_FILE $EXP_REP_DICT_PATH $PDB_CODE $OUTPUT_FILE_PATH -interlist -sb -pc -ps -ts -vdw -hbbb -hbsb -hbss -wb 


# B2AR-inactive-carazalol-cell2013b/condition-5/rep_1
EXP_REP_DICT_PATH="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutputDictionary/B2AR-inactive-carazalol-cell2013b/condition-5/rep_1"
PDB_CODE="2RH1"
OUTPUT_FILE_PATH="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/crystal-gpcrdb-freq-analysis/crystal-gpcrdb-freq-output/single-cond-rep-freqsum/042616-full/B2AR-inactive-carazalol-cell2013b-cond5-rep_1.txt"
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/analysis/crystal-gpcrdb-freq-analysis
python dynamicInterDictToFreq.py $GPCR_DB_FILE $RECEPTOR_PDB_LOOKUP_FILE $EXP_REP_DICT_PATH $PDB_CODE $OUTPUT_FILE_PATH -interlist -sb -pc -ps -ts -vdw -hbbb -hbsb -hbss -wb 


# B2AR-inactive-carazalol-cell2013b/condition-6/rep_1
EXP_REP_DICT_PATH="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutputDictionary/B2AR-inactive-carazalol-cell2013b/condition-6/rep_1"
PDB_CODE="2RH1"
OUTPUT_FILE_PATH="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/crystal-gpcrdb-freq-analysis/crystal-gpcrdb-freq-output/single-cond-rep-freqsum/042616-full/B2AR-inactive-carazalol-cell2013b-cond6-rep_1.txt"
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/analysis/crystal-gpcrdb-freq-analysis
python dynamicInterDictToFreq.py $GPCR_DB_FILE $RECEPTOR_PDB_LOOKUP_FILE $EXP_REP_DICT_PATH $PDB_CODE $OUTPUT_FILE_PATH -interlist -sb -pc -ps -ts -vdw -hbbb -hbsb -hbss -wb 


# B2AR-inactive-carazalol-cell2013b/condition-12/rep_1
EXP_REP_DICT_PATH="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutputDictionary/B2AR-inactive-carazalol-cell2013b/condition-12/rep_1"
PDB_CODE="2RH1"
OUTPUT_FILE_PATH="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/crystal-gpcrdb-freq-analysis/crystal-gpcrdb-freq-output/single-cond-rep-freqsum/042616-full/B2AR-inactive-carazalol-cell2013b-cond12-rep_1.txt"
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/analysis/crystal-gpcrdb-freq-analysis
python dynamicInterDictToFreq.py $GPCR_DB_FILE $RECEPTOR_PDB_LOOKUP_FILE $EXP_REP_DICT_PATH $PDB_CODE $OUTPUT_FILE_PATH -interlist -sb -pc -ps -ts -vdw -hbbb -hbsb -hbss -wb 



# ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

# B2AR-inactive-carazalol-nature2011/condition-A/rep_1
EXP_REP_DICT_PATH="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutputDictionary/B2AR-inactive-carazalol-nature2011/condition-A/rep_1"
PDB_CODE="2RH1"
OUTPUT_FILE_PATH="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/crystal-gpcrdb-freq-analysis/crystal-gpcrdb-freq-output/single-cond-rep-freqsum/042616-full/B2AR-inactive-carazalol-nature2011-condA-rep_1.txt"
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/analysis/crystal-gpcrdb-freq-analysis
python dynamicInterDictToFreq.py $GPCR_DB_FILE $RECEPTOR_PDB_LOOKUP_FILE $EXP_REP_DICT_PATH $PDB_CODE $OUTPUT_FILE_PATH -interlist -sb -pc -ps -ts -vdw -hbbb -hbsb -hbss -wb 



# B2AR-inactive-carazalol-nature2011/condition-B/rep_1
EXP_REP_DICT_PATH="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutputDictionary/B2AR-inactive-carazalol-nature2011/condition-B/rep_1"
PDB_CODE="2RH1"
OUTPUT_FILE_PATH="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/crystal-gpcrdb-freq-analysis/crystal-gpcrdb-freq-output/single-cond-rep-freqsum/042616-full/B2AR-inactive-carazalol-nature2011-condB-rep_1.txt"
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/analysis/crystal-gpcrdb-freq-analysis
python dynamicInterDictToFreq.py $GPCR_DB_FILE $RECEPTOR_PDB_LOOKUP_FILE $EXP_REP_DICT_PATH $PDB_CODE $OUTPUT_FILE_PATH -interlist -sb -pc -ps -ts -vdw -hbbb -hbsb -hbss -wb 


# ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

# B2AR-active-noNb-BI-nature2011/condition-C/rep_1
EXP_REP_DICT_PATH="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutputDictionary/B2AR-active-noNb-BI-nature2011/condition-C/rep_1"
PDB_CODE="2RH1"
OUTPUT_FILE_PATH="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/crystal-gpcrdb-freq-analysis/crystal-gpcrdb-freq-output/single-cond-rep-freqsum/042616-full/B2AR-active-noNb-BI-nature2011-condC-rep_1.txt"
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/analysis/crystal-gpcrdb-freq-analysis
python dynamicInterDictToFreq.py $GPCR_DB_FILE $RECEPTOR_PDB_LOOKUP_FILE $EXP_REP_DICT_PATH $PDB_CODE $OUTPUT_FILE_PATH -interlist -sb -pc -ps -ts -vdw -hbbb -hbsb -hbss -wb 


# B2AR-active-noNb-BI-nature2011/condition-D/rep_1
EXP_REP_DICT_PATH="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutputDictionary/B2AR-active-noNb-BI-nature2011/condition-D/rep_1"
PDB_CODE="2RH1"
OUTPUT_FILE_PATH="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/crystal-gpcrdb-freq-analysis/crystal-gpcrdb-freq-output/single-cond-rep-freqsum/042616-full/B2AR-active-noNb-BI-nature2011-condD-rep_1.txt"
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/analysis/crystal-gpcrdb-freq-analysis
python dynamicInterDictToFreq.py $GPCR_DB_FILE $RECEPTOR_PDB_LOOKUP_FILE $EXP_REP_DICT_PATH $PDB_CODE $OUTPUT_FILE_PATH -interlist -sb -pc -ps -ts -vdw -hbbb -hbsb -hbss -wb 


# ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

# B2AR-active-Nb-BI-pnas2011b/condition-L/rep_1
EXP_REP_DICT_PATH="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutputDictionary/B2AR-active-Nb-BI-pnas2011b/condition-L/rep_1"
PDB_CODE="3P0G"
OUTPUT_FILE_PATH="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/crystal-gpcrdb-freq-analysis/crystal-gpcrdb-freq-output/single-cond-rep-freqsum/042616-full/B2AR-active-Nb-BI-pnas2011b-condL-rep_1.txt"
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/analysis/crystal-gpcrdb-freq-analysis
python dynamicInterDictToFreq.py $GPCR_DB_FILE $RECEPTOR_PDB_LOOKUP_FILE $EXP_REP_DICT_PATH $PDB_CODE $OUTPUT_FILE_PATH -interlist -sb -pc -ps -ts -vdw -hbbb -hbsb -hbss -wb 


# B2AR-active-Nb-BI-pnas2011b/condition-L/rep_2
EXP_REP_DICT_PATH="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutputDictionary/B2AR-active-Nb-BI-pnas2011b/condition-L/rep_2"
PDB_CODE="3P0G"
OUTPUT_FILE_PATH="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/crystal-gpcrdb-freq-analysis/crystal-gpcrdb-freq-output/single-cond-rep-freqsum/042616-full/B2AR-active-Nb-BI-pnas2011b-condL-rep_2.txt"
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/analysis/crystal-gpcrdb-freq-analysis
python dynamicInterDictToFreq.py $GPCR_DB_FILE $RECEPTOR_PDB_LOOKUP_FILE $EXP_REP_DICT_PATH $PDB_CODE $OUTPUT_FILE_PATH -interlist -sb -pc -ps -ts -vdw -hbbb -hbsb -hbss -wb 


# B2AR-active-Nb-BI-pnas2011b/condition-M/rep_1
EXP_REP_DICT_PATH="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutputDictionary/B2AR-active-Nb-BI-pnas2011b/condition-M/rep_1"
PDB_CODE="3P0G"
OUTPUT_FILE_PATH="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/crystal-gpcrdb-freq-analysis/crystal-gpcrdb-freq-output/single-cond-rep-freqsum/042616-full/B2AR-active-Nb-BI-pnas2011b-condM-rep_1.txt"
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/analysis/crystal-gpcrdb-freq-analysis
python dynamicInterDictToFreq.py $GPCR_DB_FILE $RECEPTOR_PDB_LOOKUP_FILE $EXP_REP_DICT_PATH $PDB_CODE $OUTPUT_FILE_PATH -interlist -sb -pc -ps -ts -vdw -hbbb -hbsb -hbss -wb 


# B2AR-active-Nb-BI-pnas2011b/condition-N/rep_1
EXP_REP_DICT_PATH="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutputDictionary/B2AR-active-Nb-BI-pnas2011b/condition-N/rep_1"
PDB_CODE="3P0G"
OUTPUT_FILE_PATH="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/crystal-gpcrdb-freq-analysis/crystal-gpcrdb-freq-output/single-cond-rep-freqsum/042616-full/B2AR-active-Nb-BI-pnas2011b-condN-rep_1.txt"
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/analysis/crystal-gpcrdb-freq-analysis
python dynamicInterDictToFreq.py $GPCR_DB_FILE $RECEPTOR_PDB_LOOKUP_FILE $EXP_REP_DICT_PATH $PDB_CODE $OUTPUT_FILE_PATH -interlist -sb -pc -ps -ts -vdw -hbbb -hbsb -hbss -wb 


# B2AR-active-Nb-BI-pnas2011b/condition-N/rep_2
EXP_REP_DICT_PATH="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutputDictionary/B2AR-active-Nb-BI-pnas2011b/condition-N/rep_2"
PDB_CODE="3P0G"
OUTPUT_FILE_PATH="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/crystal-gpcrdb-freq-analysis/crystal-gpcrdb-freq-output/single-cond-rep-freqsum/042616-full/B2AR-active-Nb-BI-pnas2011b-condN-rep_2.txt"
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/analysis/crystal-gpcrdb-freq-analysis
python dynamicInterDictToFreq.py $GPCR_DB_FILE $RECEPTOR_PDB_LOOKUP_FILE $EXP_REP_DICT_PATH $PDB_CODE $OUTPUT_FILE_PATH -interlist -sb -pc -ps -ts -vdw -hbbb -hbsb -hbss -wb 


# B2AR-active-Nb-BI-pnas2011b/condition-O/rep_1
EXP_REP_DICT_PATH="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutputDictionary/B2AR-active-Nb-BI-pnas2011b/condition-O/rep_1"
PDB_CODE="3P0G"
OUTPUT_FILE_PATH="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/crystal-gpcrdb-freq-analysis/crystal-gpcrdb-freq-output/single-cond-rep-freqsum/042616-full/B2AR-active-Nb-BI-pnas2011b-condO-rep_1.txt"
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/analysis/crystal-gpcrdb-freq-analysis
python dynamicInterDictToFreq.py $GPCR_DB_FILE $RECEPTOR_PDB_LOOKUP_FILE $EXP_REP_DICT_PATH $PDB_CODE $OUTPUT_FILE_PATH -interlist -sb -pc -ps -ts -vdw -hbbb -hbsb -hbss -wb 


# B2AR-active-Nb-BI-pnas2011b/condition-P/rep_1
EXP_REP_DICT_PATH="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutputDictionary/B2AR-active-Nb-BI-pnas2011b/condition-P/rep_1"
PDB_CODE="3P0G"
OUTPUT_FILE_PATH="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/crystal-gpcrdb-freq-analysis/crystal-gpcrdb-freq-output/single-cond-rep-freqsum/042616-full/B2AR-active-Nb-BI-pnas2011b-condP-rep_1.txt"
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/analysis/crystal-gpcrdb-freq-analysis
python dynamicInterDictToFreq.py $GPCR_DB_FILE $RECEPTOR_PDB_LOOKUP_FILE $EXP_REP_DICT_PATH $PDB_CODE $OUTPUT_FILE_PATH -interlist -sb -pc -ps -ts -vdw -hbbb -hbsb -hbss -wb 


# B2AR-active-Nb-BI-pnas2011b/condition-Q/rep_1
EXP_REP_DICT_PATH="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutputDictionary/B2AR-active-Nb-BI-pnas2011b/condition-Q/rep_1"
PDB_CODE="3P0G"
OUTPUT_FILE_PATH="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/crystal-gpcrdb-freq-analysis/crystal-gpcrdb-freq-output/single-cond-rep-freqsum/042616-full/B2AR-active-Nb-BI-pnas2011b-condQ-rep_1.txt"
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/analysis/crystal-gpcrdb-freq-analysis
python dynamicInterDictToFreq.py $GPCR_DB_FILE $RECEPTOR_PDB_LOOKUP_FILE $EXP_REP_DICT_PATH $PDB_CODE $OUTPUT_FILE_PATH -interlist -sb -pc -ps -ts -vdw -hbbb -hbsb -hbss -wb 


# B2AR-active-Nb-BI-pnas2011b/condition-Q/rep_2
EXP_REP_DICT_PATH="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutputDictionary/B2AR-active-Nb-BI-pnas2011b/condition-Q/rep_2"
PDB_CODE="3P0G"
OUTPUT_FILE_PATH="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/crystal-gpcrdb-freq-analysis/crystal-gpcrdb-freq-output/single-cond-rep-freqsum/042616-full/B2AR-active-Nb-BI-pnas2011b-condQ-rep_2.txt"
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/analysis/crystal-gpcrdb-freq-analysis
python dynamicInterDictToFreq.py $GPCR_DB_FILE $RECEPTOR_PDB_LOOKUP_FILE $EXP_REP_DICT_PATH $PDB_CODE $OUTPUT_FILE_PATH -interlist -sb -pc -ps -ts -vdw -hbbb -hbsb -hbss -wb 



# ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~


# D4R-inactive-nemanopride-unpublished/condition-antagonist-bound/rep_1

EXP_REP_DICT_PATH="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutputDictionary/D4R-inactive-nemanopride-unpublished/condition-antagonist-bound/rep_1"
PDB_CODE="D4DR"
OUTPUT_FILE_PATH="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/crystal-gpcrdb-freq-analysis/crystal-gpcrdb-freq-output/single-cond-rep-freqsum/042616-full/D4R-inactive-nemanopride-unpublished-cond-antagonist-bound-rep_1.txt"
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/analysis/crystal-gpcrdb-freq-analysis
python dynamicInterDictToFreq.py $GPCR_DB_FILE $RECEPTOR_PDB_LOOKUP_FILE $EXP_REP_DICT_PATH $PDB_CODE $OUTPUT_FILE_PATH -interlist -sb -pc -ps -ts -vdw -hbbb -hbsb -hbss -wb 


# D4R-inactive-nemanopride-unpublished/condition-antagonist-bound/rep_2
EXP_REP_DICT_PATH="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutputDictionary/D4R-inactive-nemanopride-unpublished/condition-antagonist-bound/rep_2"
PDB_CODE="D4DR"
OUTPUT_FILE_PATH="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/crystal-gpcrdb-freq-analysis/crystal-gpcrdb-freq-output/single-cond-rep-freqsum/042616-full/D4R-inactive-nemanopride-unpublished-cond-antagonist-bound-rep_2.txt"
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/analysis/crystal-gpcrdb-freq-analysis
python dynamicInterDictToFreq.py $GPCR_DB_FILE $RECEPTOR_PDB_LOOKUP_FILE $EXP_REP_DICT_PATH $PDB_CODE $OUTPUT_FILE_PATH -interlist -sb -pc -ps -ts -vdw -hbbb -hbsb -hbss -wb 

# D4R-inactive-nemanopride-unpublished/condition-antagonist-bound/rep_3
EXP_REP_DICT_PATH="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutputDictionary/D4R-inactive-nemanopride-unpublished/condition-antagonist-bound/rep_3"
PDB_CODE="D4DR"
OUTPUT_FILE_PATH="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/crystal-gpcrdb-freq-analysis/crystal-gpcrdb-freq-output/single-cond-rep-freqsum/042616-full/D4R-inactive-nemanopride-unpublished-cond-antagonist-bound-rep_3.txt"
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/analysis/crystal-gpcrdb-freq-analysis
python dynamicInterDictToFreq.py $GPCR_DB_FILE $RECEPTOR_PDB_LOOKUP_FILE $EXP_REP_DICT_PATH $PDB_CODE $OUTPUT_FILE_PATH -interlist -sb -pc -ps -ts -vdw -hbbb -hbsb -hbss -wb 



# ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

# DOR-inactive-naltrindole-unpublished/condition-naltrindole-bound/rep_1

EXP_REP_DICT_PATH="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutputDictionary/DOR-inactive-naltrindole-unpublished/condition-naltrindole-bound/rep_1"
PDB_CODE="4N6H"
OUTPUT_FILE_PATH="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/crystal-gpcrdb-freq-analysis/crystal-gpcrdb-freq-output/single-cond-rep-freqsum/042616-full/DOR-inactive-naltrindole-unpublished-condition-naltrindole-bound-rep_1.txt"
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/analysis/crystal-gpcrdb-freq-analysis
python dynamicInterDictToFreq.py $GPCR_DB_FILE $RECEPTOR_PDB_LOOKUP_FILE $EXP_REP_DICT_PATH $PDB_CODE $OUTPUT_FILE_PATH -interlist -sb -pc -ps -ts -vdw -hbbb -hbsb -hbss -wb 


# DOR-inactive-naltrindole-unpublished/condition-naltrindole-bound/rep_2
EXP_REP_DICT_PATH="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutputDictionary/DOR-inactive-naltrindole-unpublished/condition-naltrindole-bound/rep_2"
PDB_CODE="4N6H"
OUTPUT_FILE_PATH="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/crystal-gpcrdb-freq-analysis/crystal-gpcrdb-freq-output/single-cond-rep-freqsum/042616-full/DOR-inactive-naltrindole-unpublished-condition-naltrindole-bound-rep_2.txt"
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/analysis/crystal-gpcrdb-freq-analysis
python dynamicInterDictToFreq.py $GPCR_DB_FILE $RECEPTOR_PDB_LOOKUP_FILE $EXP_REP_DICT_PATH $PDB_CODE $OUTPUT_FILE_PATH -interlist -sb -pc -ps -ts -vdw -hbbb -hbsb -hbss -wb 


# DOR-inactive-naltrindole-unpublished/condition-naltrindole-bound/rep_3
EXP_REP_DICT_PATH="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutputDictionary/DOR-inactive-naltrindole-unpublished/condition-naltrindole-bound/rep_3"
PDB_CODE="4N6H"
OUTPUT_FILE_PATH="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/crystal-gpcrdb-freq-analysis/crystal-gpcrdb-freq-output/single-cond-rep-freqsum/042616-full/DOR-inactive-naltrindole-unpublished-condition-naltrindole-bound-rep_3.txt"
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/analysis/crystal-gpcrdb-freq-analysis
python dynamicInterDictToFreq.py $GPCR_DB_FILE $RECEPTOR_PDB_LOOKUP_FILE $EXP_REP_DICT_PATH $PDB_CODE $OUTPUT_FILE_PATH -interlist -sb -pc -ps -ts -vdw -hbbb -hbsb -hbss -wb 



# ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

# M2R-inactive-QNB-nature2013/condition-AE/rep_1
EXP_REP_DICT_PATH="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutputDictionary/M2R-inactive-QNB-nature2013/condition-AE/rep_1"
PDB_CODE="3UON"
OUTPUT_FILE_PATH="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/crystal-gpcrdb-freq-analysis/crystal-gpcrdb-freq-output/single-cond-rep-freqsum/042616-full/M2R-inactive-QNB-nature2013-condAE-rep_1.txt"
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/analysis/crystal-gpcrdb-freq-analysis
python dynamicInterDictToFreq.py $GPCR_DB_FILE $RECEPTOR_PDB_LOOKUP_FILE $EXP_REP_DICT_PATH $PDB_CODE $OUTPUT_FILE_PATH -interlist -sb -pc -ps -ts -vdw -hbbb -hbsb -hbss -wb 


# ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

# M2R-inactive-QNB-nature2012/condition-A/rep_1
EXP_REP_DICT_PATH="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutputDictionary/M2R-inactive-QNB-nature2012/condition-A/rep_1"
PDB_CODE="3UON"
OUTPUT_FILE_PATH="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/crystal-gpcrdb-freq-analysis/crystal-gpcrdb-freq-output/single-cond-rep-freqsum/042616-full/M2R-inactive-QNB-nature2012-condA-rep_1.txt"
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/analysis/crystal-gpcrdb-freq-analysis
python dynamicInterDictToFreq.py $GPCR_DB_FILE $RECEPTOR_PDB_LOOKUP_FILE $EXP_REP_DICT_PATH $PDB_CODE $OUTPUT_FILE_PATH -interlist -sb -pc -ps -ts -vdw -hbbb -hbsb -hbss -wb 



# ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
# M3R-inactive-tiotropium-nature2012/condition-C/rep_1
EXP_REP_DICT_PATH="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutputDictionary/M3R-inactive-tiotropium-nature2012/condition-C/rep_1"
PDB_CODE="4DAJ"
OUTPUT_FILE_PATH="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/crystal-gpcrdb-freq-analysis/crystal-gpcrdb-freq-output/single-cond-rep-freqsum/042616-full/M3R-inactive-tiotropium-nature2012-condC-rep_1.txt"
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/analysis/crystal-gpcrdb-freq-analysis
python dynamicInterDictToFreq.py $GPCR_DB_FILE $RECEPTOR_PDB_LOOKUP_FILE $EXP_REP_DICT_PATH $PDB_CODE $OUTPUT_FILE_PATH -interlist -sb -pc -ps -ts -vdw -hbbb -hbsb -hbss -wb 


# ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

# MOR-inactive-bFNA-nature2015/condition-bFNA-bound/rep_1
EXP_REP_DICT_PATH="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutputDictionary/MOR-inactive-bFNA-nature2015/condition-bFNA-bound/rep_1"
PDB_CODE="4DKL"
OUTPUT_FILE_PATH="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/crystal-gpcrdb-freq-analysis/crystal-gpcrdb-freq-output/single-cond-rep-freqsum/042616-full/MOR-inactive-bFNA-nature2015-rep_1.txt"
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/analysis/crystal-gpcrdb-freq-analysis
python dynamicInterDictToFreq.py $GPCR_DB_FILE $RECEPTOR_PDB_LOOKUP_FILE $EXP_REP_DICT_PATH $PDB_CODE $OUTPUT_FILE_PATH -interlist -sb -pc -ps -ts -vdw -hbbb -hbsb -hbss -wb 


# MOR-inactive-bFNA-nature2015/condition-bFNA-bound/rep_2
EXP_REP_DICT_PATH="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutputDictionary/MOR-inactive-bFNA-nature2015/condition-bFNA-bound/rep_2"
PDB_CODE="4DKL"
OUTPUT_FILE_PATH="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/crystal-gpcrdb-freq-analysis/crystal-gpcrdb-freq-output/single-cond-rep-freqsum/042616-full/MOR-inactive-bFNA-nature2015-rep_2.txt"
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/analysis/crystal-gpcrdb-freq-analysis
python dynamicInterDictToFreq.py $GPCR_DB_FILE $RECEPTOR_PDB_LOOKUP_FILE $EXP_REP_DICT_PATH $PDB_CODE $OUTPUT_FILE_PATH -interlist -sb -pc -ps -ts -vdw -hbbb -hbsb -hbss -wb 

# MOR-inactive-bFNA-nature2015/condition-bFNA-bound/rep_1
EXP_REP_DICT_PATH="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutputDictionary/MOR-inactive-bFNA-nature2015/condition-bFNA-bound/rep_3"
PDB_CODE="4DKL"
OUTPUT_FILE_PATH="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/crystal-gpcrdb-freq-analysis/crystal-gpcrdb-freq-output/single-cond-rep-freqsum/042616-full/MOR-inactive-bFNA-nature2015-rep_3.txt"
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/analysis/crystal-gpcrdb-freq-analysis
python dynamicInterDictToFreq.py $GPCR_DB_FILE $RECEPTOR_PDB_LOOKUP_FILE $EXP_REP_DICT_PATH $PDB_CODE $OUTPUT_FILE_PATH -interlist -sb -pc -ps -ts -vdw -hbbb -hbsb -hbss -wb 


# ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

# MOR-active-noNb-BU72-nature2015/condition-nb-interface-restrained-BU72/rep_1
EXP_REP_DICT_PATH="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutputDictionary/MOR-active-noNb-BU72-nature2015/condition-nb-interface-restrained-BU72/rep_1"
PDB_CODE="5C1M"
OUTPUT_FILE_PATH="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/crystal-gpcrdb-freq-analysis/crystal-gpcrdb-freq-output/single-cond-rep-freqsum/042616-full/MOR-active-noNb-BU72-nature2015-rep_1.txt"
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/analysis/crystal-gpcrdb-freq-analysis
python dynamicInterDictToFreq.py $GPCR_DB_FILE $RECEPTOR_PDB_LOOKUP_FILE $EXP_REP_DICT_PATH $PDB_CODE $OUTPUT_FILE_PATH -interlist -sb -pc -ps -ts -vdw -hbbb -hbsb -hbss -wb 


# MOR-active-noNb-BU72-nature2015/condition-nb-interface-restrained-BU72/rep_2
EXP_REP_DICT_PATH="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutputDictionary/MOR-active-noNb-BU72-nature2015/condition-nb-interface-restrained-BU72/rep_2"
PDB_CODE="5C1M"
OUTPUT_FILE_PATH="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/crystal-gpcrdb-freq-analysis/crystal-gpcrdb-freq-output/single-cond-rep-freqsum/042616-full/MOR-active-noNb-BU72-nature2015-rep_2.txt"
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/analysis/crystal-gpcrdb-freq-analysis
python dynamicInterDictToFreq.py $GPCR_DB_FILE $RECEPTOR_PDB_LOOKUP_FILE $EXP_REP_DICT_PATH $PDB_CODE $OUTPUT_FILE_PATH -interlist -sb -pc -ps -ts -vdw -hbbb -hbsb -hbss -wb 

# MOR-active-noNb-BU72-nature2015/condition-nb-interface-restrained-BU72/rep_3
EXP_REP_DICT_PATH="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutputDictionary/MOR-active-noNb-BU72-nature2015/condition-nb-interface-restrained-BU72/rep_3"
PDB_CODE="5C1M"
OUTPUT_FILE_PATH="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/crystal-gpcrdb-freq-analysis/crystal-gpcrdb-freq-output/single-cond-rep-freqsum/042616-full/MOR-active-noNb-BU72-nature2015-rep_3.txt"
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/analysis/crystal-gpcrdb-freq-analysis
python dynamicInterDictToFreq.py $GPCR_DB_FILE $RECEPTOR_PDB_LOOKUP_FILE $EXP_REP_DICT_PATH $PDB_CODE $OUTPUT_FILE_PATH -interlist -sb -pc -ps -ts -vdw -hbbb -hbsb -hbss -wb 



# ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~


# PAR1-inactive-vorapaxar-nature2012b/condition-A/rep_1
EXP_REP_DICT_PATH="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutputDictionary/PAR1-inactive-vorapaxar-nature2012b/condition-A/rep_1"
PDB_CODE="3VW7"
OUTPUT_FILE_PATH="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/crystal-gpcrdb-freq-analysis/crystal-gpcrdb-freq-output/single-cond-rep-freqsum/042616-full/PAR1-inactive-vorapaxar-nature2012b-condA-rep_1.txt"
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/analysis/crystal-gpcrdb-freq-analysis
python dynamicInterDictToFreq.py $GPCR_DB_FILE $RECEPTOR_PDB_LOOKUP_FILE $EXP_REP_DICT_PATH $PDB_CODE $OUTPUT_FILE_PATH -interlist -sb -pc -ps -ts -vdw -hbbb -hbsb -hbss -wb 


# PAR1-inactive-vorapaxar-nature2012b/condition-B/rep_1
EXP_REP_DICT_PATH="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutputDictionary/PAR1-inactive-vorapaxar-nature2012b/condition-B/rep_1"
PDB_CODE="3VW7"
OUTPUT_FILE_PATH="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/crystal-gpcrdb-freq-analysis/crystal-gpcrdb-freq-output/single-cond-rep-freqsum/042616-full/PAR1-inactive-vorapaxar-nature2012b-condB-rep_1.txt"
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/analysis/crystal-gpcrdb-freq-analysis
python dynamicInterDictToFreq.py $GPCR_DB_FILE $RECEPTOR_PDB_LOOKUP_FILE $EXP_REP_DICT_PATH $PDB_CODE $OUTPUT_FILE_PATH -interlist -sb -pc -ps -ts -vdw -hbbb -hbsb -hbss -wb 

