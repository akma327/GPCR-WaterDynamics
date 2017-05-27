# gpcrdb-freq-aggregate-calc.sh 

GPCR_DB_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/crystal-gpcrdb-freq-analysis/crystal-gpcrdb-freq-config/All_species_gpcrdb_numbers_strOnly.txt"
RECEPTOR_PDB_LOOKUP_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/crystal-gpcrdb-freq-analysis/crystal-gpcrdb-freq-config/receptor_pdb_lookup.txt"


# B2AR Condition 1 Nygarrd
EXP_REP_DICT_PATH="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutputDictionary/B2AR-inactive-carazalol-cell2013b/condition-1/rep_1"
PDB_CODE="2RH1"
OUTPUT_FILE_PATH="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/crystal-gpcrdb-freq-analysis/crystal-gpcrdb-freq-output/single-cond-rep-freqsum/042316-trial/B2AR-inactive-carazalol-cell2013b.txt"
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/analysis/crystal-gpcrdb-freq-analysis
python dynamicInterDictToFreq.py $GPCR_DB_FILE $RECEPTOR_PDB_LOOKUP_FILE $EXP_REP_DICT_PATH $PDB_CODE $OUTPUT_FILE_PATH -interlist -sb -pc -ps -ts -vdw -hbbb -hbsb -hbss -wb 

# D4R 

EXP_REP_DICT_PATH="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutputDictionary/D4R-inactive-nemanopride-unpublished/condition-antagonist-bound/rep_1"
PDB_CODE="D4DR"
OUTPUT_FILE_PATH="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/crystal-gpcrdb-freq-analysis/crystal-gpcrdb-freq-output/single-cond-rep-freqsum/042316-trial/D4R-inactive-nemanopride-unpublished.txt"
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/analysis/crystal-gpcrdb-freq-analysis
python dynamicInterDictToFreq.py $GPCR_DB_FILE $RECEPTOR_PDB_LOOKUP_FILE $EXP_REP_DICT_PATH $PDB_CODE $OUTPUT_FILE_PATH -interlist -sb -pc -ps -ts -vdw -hbbb -hbsb -hbss -wb 

# DOR 
EXP_REP_DICT_PATH="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutputDictionary/DOR-inactive-naltrindole-unpublished/condition-naltrindole-bound/rep_1"
PDB_CODE="4N6H"
OUTPUT_FILE_PATH="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/crystal-gpcrdb-freq-analysis/crystal-gpcrdb-freq-output/single-cond-rep-freqsum/042316-trial/DOR-inactive-naltrindole-unpublished.txt"
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/analysis/crystal-gpcrdb-freq-analysis
python dynamicInterDictToFreq.py $GPCR_DB_FILE $RECEPTOR_PDB_LOOKUP_FILE $EXP_REP_DICT_PATH $PDB_CODE $OUTPUT_FILE_PATH -interlist -sb -pc -ps -ts -vdw -hbbb -hbsb -hbss -wb 

# M2R Condition AE nature 2013 
EXP_REP_DICT_PATH="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutputDictionary/M2R-inactive-QNB-nature2013/condition-AE/rep_1"
PDB_CODE="3UON"
OUTPUT_FILE_PATH="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/crystal-gpcrdb-freq-analysis/crystal-gpcrdb-freq-output/single-cond-rep-freqsum/042316-trial/M2R-inactive-QNB-nature2013.txt"
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/analysis/crystal-gpcrdb-freq-analysis
python dynamicInterDictToFreq.py $GPCR_DB_FILE $RECEPTOR_PDB_LOOKUP_FILE $EXP_REP_DICT_PATH $PDB_CODE $OUTPUT_FILE_PATH -interlist -sb -pc -ps -ts -vdw -hbbb -hbsb -hbss -wb 

# M3R Condition C 
EXP_REP_DICT_PATH="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutputDictionary/M3R-inactive-tiotropium-nature2012/condition-C/rep_1"
PDB_CODE="4DAJ"
OUTPUT_FILE_PATH="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/crystal-gpcrdb-freq-analysis/crystal-gpcrdb-freq-output/single-cond-rep-freqsum/042316-trial/M3R-inactive-tiotropium-nature2012.txt"
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/analysis/crystal-gpcrdb-freq-analysis
python dynamicInterDictToFreq.py $GPCR_DB_FILE $RECEPTOR_PDB_LOOKUP_FILE $EXP_REP_DICT_PATH $PDB_CODE $OUTPUT_FILE_PATH -interlist -sb -pc -ps -ts -vdw -hbbb -hbsb -hbss -wb 

# MOR inactive 
EXP_REP_DICT_PATH="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutputDictionary/MOR-inactive-bFNA-nature2015/condition-bFNA-bound/rep_1"
PDB_CODE="4DKL"
OUTPUT_FILE_PATH="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/crystal-gpcrdb-freq-analysis/crystal-gpcrdb-freq-output/single-cond-rep-freqsum/042316-trial/MOR-inactive-bFNA-nature2015.txt"
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/analysis/crystal-gpcrdb-freq-analysis
python dynamicInterDictToFreq.py $GPCR_DB_FILE $RECEPTOR_PDB_LOOKUP_FILE $EXP_REP_DICT_PATH $PDB_CODE $OUTPUT_FILE_PATH -interlist -sb -pc -ps -ts -vdw -hbbb -hbsb -hbss -wb 

# PAR1 condition A
EXP_REP_DICT_PATH="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutputDictionary/PAR1-inactive-vorapaxar-nature2012b/condition-A/rep_1"
PDB_CODE="3VW7"
OUTPUT_FILE_PATH="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/crystal-gpcrdb-freq-analysis/crystal-gpcrdb-freq-output/single-cond-rep-freqsum/042316-trial/PAR1-inactive-vorapaxar-nature2012b.txt"
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/analysis/crystal-gpcrdb-freq-analysis
python dynamicInterDictToFreq.py $GPCR_DB_FILE $RECEPTOR_PDB_LOOKUP_FILE $EXP_REP_DICT_PATH $PDB_CODE $OUTPUT_FILE_PATH -interlist -sb -pc -ps -ts -vdw -hbbb -hbsb -hbss -wb 



# MOR active 
# EXP_REP_DICT_PATH="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutputDictionary/MOR-active-noNb-BU72-nature2015/condition-nb-interface-restrained-BU72/rep_1"
# PDB_CODE="5C1M"
# OUTPUT_FILE_PATH="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/crystal-gpcrdb-freq-analysis/crystal-gpcrdb-freq-output/single-cond-rep-freqsum/042316-trial/MOR-active-noNb-BU72-nature2015.txt"
# cd /scratch/PI/rondror/akma327/DynamicNetworks/src/analysis/crystal-gpcrdb-freq-analysis
# python dynamicInterDictToFreq.py $GPCR_DB_FILE $RECEPTOR_PDB_LOOKUP_FILE $EXP_REP_DICT_PATH $PDB_CODE $OUTPUT_FILE_PATH -interlist -sb -pc -ps -ts -vdw -hbbb -hbsb -hbss -wb 


