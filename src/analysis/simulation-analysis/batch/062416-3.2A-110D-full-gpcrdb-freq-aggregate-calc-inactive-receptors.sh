# 060116-3.2A-110D-full-gpcrdb-freq-aggregate-calc-inactive-receptors.sh 

GPCR_DB_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/simulation-analysis/gpcrdb-freq-config/All_species_gpcrdb_numbers_strOnly.txt"
RECEPTOR_PDB_LOOKUP_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/simulation-analysis/gpcrdb-freq-config/receptor_pdb_lookup.txt"



# B2AR-inactive-carazalol-cell2013b/condition-1/rep_1
EXP_REP_DICT_PATH="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutputDictionary/B2AR-inactive-carazalol-cell2013b/condition-1/rep_1/050616_NONHB_DEFAULT_HB_3.2_70"
PDB_CODE="2RH1"
OUTPUT_FILE_PATH="/scratch/PI/rondror/akma327/DynamicNetworks/results/simulation-analysis/gpcrdb-freq-output/single-cond-rep-freqsum/062416-3.2A-110D-inactive-receptors/B2AR:inactive:carazalol:15us:D79+,D130-.txt"
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/analysis/simulation-analysis
python dynamicInterDictToFreq.py $GPCR_DB_FILE $RECEPTOR_PDB_LOOKUP_FILE $EXP_REP_DICT_PATH $PDB_CODE $OUTPUT_FILE_PATH -chainId 0 -interlist -sb -pc -ps -ts -vdw -hbbb -hbsb -hbss -wb -wb2 

# B2AR-inactive-carazalol-cell2013b/condition-2/rep_1
EXP_REP_DICT_PATH="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutputDictionary/B2AR-inactive-carazalol-cell2013b/condition-2/rep_1/050616_NONHB_DEFAULT_HB_3.2_70"
PDB_CODE="2RH1"
OUTPUT_FILE_PATH="/scratch/PI/rondror/akma327/DynamicNetworks/results/simulation-analysis/gpcrdb-freq-output/single-cond-rep-freqsum/062416-3.2A-110D-inactive-receptors/B2AR:inactive:carazalol:15us:D79+,D130-.txt"
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/analysis/simulation-analysis
python dynamicInterDictToFreq.py $GPCR_DB_FILE $RECEPTOR_PDB_LOOKUP_FILE $EXP_REP_DICT_PATH $PDB_CODE $OUTPUT_FILE_PATH -chainId 0 -interlist -sb -pc -ps -ts -vdw -hbbb -hbsb -hbss -wb -wb2 


# B2AR-inactive-carazalol-cell2013b/condition-5/rep_1
EXP_REP_DICT_PATH="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutputDictionary/B2AR-inactive-carazalol-cell2013b/condition-5/rep_1/050616_NONHB_DEFAULT_HB_3.2_70"
PDB_CODE="2RH1"
OUTPUT_FILE_PATH="/scratch/PI/rondror/akma327/DynamicNetworks/results/simulation-analysis/gpcrdb-freq-output/single-cond-rep-freqsum/062416-3.2A-110D-inactive-receptors/B2AR:inactive:carazalol:2us:D79+,D130-:7.2kcalpermol.txt"
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/analysis/simulation-analysis
python dynamicInterDictToFreq.py $GPCR_DB_FILE $RECEPTOR_PDB_LOOKUP_FILE $EXP_REP_DICT_PATH $PDB_CODE $OUTPUT_FILE_PATH -chainId 0 -interlist -sb -pc -ps -ts -vdw -hbbb -hbsb -hbss -wb -wb2 


# B2AR-inactive-carazalol-cell2013b/condition-6/rep_1
EXP_REP_DICT_PATH="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutputDictionary/B2AR-inactive-carazalol-cell2013b/condition-6/rep_1/050616_NONHB_DEFAULT_HB_3.2_70"
PDB_CODE="2RH1"
OUTPUT_FILE_PATH="/scratch/PI/rondror/akma327/DynamicNetworks/results/simulation-analysis/gpcrdb-freq-output/single-cond-rep-freqsum/062416-3.2A-110D-inactive-receptors/B2AR:inactive:carazalol:2us:D79+,D130-:9.5kcalpermol.txt"
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/analysis/simulation-analysis
python dynamicInterDictToFreq.py $GPCR_DB_FILE $RECEPTOR_PDB_LOOKUP_FILE $EXP_REP_DICT_PATH $PDB_CODE $OUTPUT_FILE_PATH -chainId 0 -interlist -sb -pc -ps -ts -vdw -hbbb -hbsb -hbss -wb -wb2 


# B2AR-inactive-carazalol-cell2013b/condition-12/rep_1
EXP_REP_DICT_PATH="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutputDictionary/B2AR-inactive-carazalol-cell2013b/condition-12/rep_1/050616_NONHB_DEFAULT_HB_3.2_70"
PDB_CODE="2RH1"
OUTPUT_FILE_PATH="/scratch/PI/rondror/akma327/DynamicNetworks/results/simulation-analysis/gpcrdb-freq-output/single-cond-rep-freqsum/062416-3.2A-110D-inactive-receptors/B2AR:incative:carazalol:10us:D79-,D130-.txt"
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/analysis/simulation-analysis
python dynamicInterDictToFreq.py $GPCR_DB_FILE $RECEPTOR_PDB_LOOKUP_FILE $EXP_REP_DICT_PATH $PDB_CODE $OUTPUT_FILE_PATH -chainId 0 -interlist -sb -pc -ps -ts -vdw -hbbb -hbsb -hbss -wb -wb2 -wb2 



# ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

# B2AR-inactive-carazalol-nature2011/condition-A/rep_1
EXP_REP_DICT_PATH="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutputDictionary/B2AR-inactive-carazalol-nature2011/condition-A/rep_1/050616_NONHB_DEFAULT_HB_3.2_70"
PDB_CODE="2RH1"
OUTPUT_FILE_PATH="/scratch/PI/rondror/akma327/DynamicNetworks/results/simulation-analysis/gpcrdb-freq-output/single-cond-rep-freqsum/062416-3.2A-110D-inactive-receptors/B2AR:inactive:carazalol:15.1us:D79+,D130-.txt"
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/analysis/simulation-analysis
python dynamicInterDictToFreq.py $GPCR_DB_FILE $RECEPTOR_PDB_LOOKUP_FILE $EXP_REP_DICT_PATH $PDB_CODE $OUTPUT_FILE_PATH -chainId 0 -interlist -sb -pc -ps -ts -vdw -hbbb -hbsb -hbss -wb -wb2 



# B2AR-inactive-carazalol-nature2011/condition-B/rep_1
EXP_REP_DICT_PATH="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutputDictionary/B2AR-inactive-carazalol-nature2011/condition-B/rep_1/050616_NONHB_DEFAULT_HB_3.2_70"
PDB_CODE="2RH1"
OUTPUT_FILE_PATH="/scratch/PI/rondror/akma327/DynamicNetworks/results/simulation-analysis/gpcrdb-freq-output/single-cond-rep-freqsum/062416-3.2A-110D-inactive-receptors/B2AR:inactive:carazalol:4.9us:D79-,D130+.txt"
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/analysis/simulation-analysis
python dynamicInterDictToFreq.py $GPCR_DB_FILE $RECEPTOR_PDB_LOOKUP_FILE $EXP_REP_DICT_PATH $PDB_CODE $OUTPUT_FILE_PATH -chainId 0 -interlist -sb -pc -ps -ts -vdw -hbbb -hbsb -hbss -wb -wb2 



# ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~


# D4R-inactive-nemanopride-unpublished/condition-antagonist-bound/rep_1

EXP_REP_DICT_PATH="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutputDictionary/D4R-inactive-nemanopride-unpublished/condition-antagonist-bound/rep_1/050616_NONHB_DEFAULT_HB_3.2_70"
PDB_CODE="D4DR"
OUTPUT_FILE_PATH="/scratch/PI/rondror/akma327/DynamicNetworks/results/simulation-analysis/gpcrdb-freq-output/single-cond-rep-freqsum/062416-3.2A-110D-inactive-receptors/D4R:inactive:nemanopride:deprotonated:1.3us.txt"
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/analysis/simulation-analysis
python dynamicInterDictToFreq.py $GPCR_DB_FILE $RECEPTOR_PDB_LOOKUP_FILE $EXP_REP_DICT_PATH $PDB_CODE $OUTPUT_FILE_PATH -chainId 3 -interlist -sb -pc -ps -ts -vdw -hbbb -hbsb -hbss -wb -wb2 


# D4R-inactive-nemanopride-unpublished/condition-antagonist-bound/rep_2
EXP_REP_DICT_PATH="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutputDictionary/D4R-inactive-nemanopride-unpublished/condition-antagonist-bound/rep_2/050616_NONHB_DEFAULT_HB_3.2_70"
PDB_CODE="D4DR"
OUTPUT_FILE_PATH="/scratch/PI/rondror/akma327/DynamicNetworks/results/simulation-analysis/gpcrdb-freq-output/single-cond-rep-freqsum/062416-3.2A-110D-inactive-receptors/D4R:inactive:nemanopride:deprotonated:1.5us.txt"
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/analysis/simulation-analysis
python dynamicInterDictToFreq.py $GPCR_DB_FILE $RECEPTOR_PDB_LOOKUP_FILE $EXP_REP_DICT_PATH $PDB_CODE $OUTPUT_FILE_PATH -chainId 3 -interlist -sb -pc -ps -ts -vdw -hbbb -hbsb -hbss -wb -wb2 

# D4R-inactive-nemanopride-unpublished/condition-antagonist-bound/rep_3
EXP_REP_DICT_PATH="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutputDictionary/D4R-inactive-nemanopride-unpublished/condition-antagonist-bound/rep_3/050616_NONHB_DEFAULT_HB_3.2_70"
PDB_CODE="D4DR"
OUTPUT_FILE_PATH="/scratch/PI/rondror/akma327/DynamicNetworks/results/simulation-analysis/gpcrdb-freq-output/single-cond-rep-freqsum/062416-3.2A-110D-inactive-receptors/D4R:inactive:nemanopride:deprotonated:1.5us.txt"
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/analysis/simulation-analysis
python dynamicInterDictToFreq.py $GPCR_DB_FILE $RECEPTOR_PDB_LOOKUP_FILE $EXP_REP_DICT_PATH $PDB_CODE $OUTPUT_FILE_PATH -chainId 3 -interlist -sb -pc -ps -ts -vdw -hbbb -hbsb -hbss -wb -wb2 



# ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

# DOR-inactive-naltrindole-unpublished/condition-naltrindole-bound/rep_1

EXP_REP_DICT_PATH="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutputDictionary/DOR-inactive-naltrindole-unpublished/condition-naltrindole-bound/rep_1/050616_NONHB_DEFAULT_HB_3.2_70"
PDB_CODE="4N6H"
OUTPUT_FILE_PATH="/scratch/PI/rondror/akma327/DynamicNetworks/results/simulation-analysis/gpcrdb-freq-output/single-cond-rep-freqsum/062416-3.2A-110D-inactive-receptors/DOR:inactive:naltrindole:3.0us.txt"
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/analysis/simulation-analysis
python dynamicInterDictToFreq.py $GPCR_DB_FILE $RECEPTOR_PDB_LOOKUP_FILE $EXP_REP_DICT_PATH $PDB_CODE $OUTPUT_FILE_PATH -chainId 3 -interlist -sb -pc -ps -ts -vdw -hbbb -hbsb -hbss -wb -wb2 


# DOR-inactive-naltrindole-unpublished/condition-naltrindole-bound/rep_2
EXP_REP_DICT_PATH="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutputDictionary/DOR-inactive-naltrindole-unpublished/condition-naltrindole-bound/rep_2/050616_NONHB_DEFAULT_HB_3.2_70"
PDB_CODE="4N6H"
OUTPUT_FILE_PATH="/scratch/PI/rondror/akma327/DynamicNetworks/results/simulation-analysis/gpcrdb-freq-output/single-cond-rep-freqsum/062416-3.2A-110D-inactive-receptors/DOR:inactive:naltrindole:1.3us.txt"
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/analysis/simulation-analysis
python dynamicInterDictToFreq.py $GPCR_DB_FILE $RECEPTOR_PDB_LOOKUP_FILE $EXP_REP_DICT_PATH $PDB_CODE $OUTPUT_FILE_PATH -chainId 3 -interlist -sb -pc -ps -ts -vdw -hbbb -hbsb -hbss -wb -wb2 


# DOR-inactive-naltrindole-unpublished/condition-naltrindole-bound/rep_3
EXP_REP_DICT_PATH="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutputDictionary/DOR-inactive-naltrindole-unpublished/condition-naltrindole-bound/rep_3/050616_NONHB_DEFAULT_HB_3.2_70"
PDB_CODE="4N6H"
OUTPUT_FILE_PATH="/scratch/PI/rondror/akma327/DynamicNetworks/results/simulation-analysis/gpcrdb-freq-output/single-cond-rep-freqsum/062416-3.2A-110D-inactive-receptors/DOR:inactive:naltrindole:2.0us.txt"
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/analysis/simulation-analysis
python dynamicInterDictToFreq.py $GPCR_DB_FILE $RECEPTOR_PDB_LOOKUP_FILE $EXP_REP_DICT_PATH $PDB_CODE $OUTPUT_FILE_PATH -chainId 3 -interlist -sb -pc -ps -ts -vdw -hbbb -hbsb -hbss -wb -wb2 



# ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

# M2R-inactive-QNB-nature2013/condition-AE/rep_1
EXP_REP_DICT_PATH="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutputDictionary/M2R-inactive-QNB-nature2013/condition-AE/rep_1/050616_NONHB_DEFAULT_HB_3.2_70"
PDB_CODE="3UON"
OUTPUT_FILE_PATH="/scratch/PI/rondror/akma327/DynamicNetworks/results/simulation-analysis/gpcrdb-freq-output/single-cond-rep-freqsum/062416-3.2A-110D-inactive-receptors/M2R:inactive:QNB-orthosteric-no-allosteric:10us.txt"
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/analysis/simulation-analysis
python dynamicInterDictToFreq.py $GPCR_DB_FILE $RECEPTOR_PDB_LOOKUP_FILE $EXP_REP_DICT_PATH $PDB_CODE $OUTPUT_FILE_PATH -chainId 0 -interlist -sb -pc -ps -ts -vdw -hbbb -hbsb -hbss -wb -wb2 


# ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

# M2R-inactive-QNB-nature2012/condition-A/rep_1
EXP_REP_DICT_PATH="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutputDictionary/M2R-inactive-QNB-nature2012/condition-A/rep_1/050616_NONHB_DEFAULT_HB_3.2_70"
PDB_CODE="3UON"
OUTPUT_FILE_PATH="/scratch/PI/rondror/akma327/DynamicNetworks/results/simulation-analysis/gpcrdb-freq-output/single-cond-rep-freqsum/062416-3.2A-110D-inactive-receptors/M2R:inactive:QNB-orthosteric:16.4us.txt"
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/analysis/simulation-analysis
python dynamicInterDictToFreq.py $GPCR_DB_FILE $RECEPTOR_PDB_LOOKUP_FILE $EXP_REP_DICT_PATH $PDB_CODE $OUTPUT_FILE_PATH -chainId 1 -interlist -sb -pc -ps -ts -vdw -hbbb -hbsb -hbss -wb -wb2 



# ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
# M3R-inactive-tiotropium-nature2012/condition-C/rep_1
EXP_REP_DICT_PATH="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutputDictionary/M3R-inactive-tiotropium-nature2012/condition-C/rep_1/050616_NONHB_DEFAULT_HB_3.2_70"
PDB_CODE="4DAJ"
OUTPUT_FILE_PATH="/scratch/PI/rondror/akma327/DynamicNetworks/results/simulation-analysis/gpcrdb-freq-output/single-cond-rep-freqsum/062416-3.2A-110D-inactive-receptors/M3R:inactive:tiotropium:10.2us.txt"
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/analysis/simulation-analysis
python dynamicInterDictToFreq.py $GPCR_DB_FILE $RECEPTOR_PDB_LOOKUP_FILE $EXP_REP_DICT_PATH $PDB_CODE $OUTPUT_FILE_PATH -chainId 0 -interlist -sb -pc -ps -ts -vdw -hbbb -hbsb -hbss -wb -wb2 


# ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ No Chain specification 

# MOR-inactive-bFNA-nature2015/condition-bFNA-bound/rep_1
EXP_REP_DICT_PATH="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutputDictionary/MOR-inactive-bFNA-nature2015/condition-bFNA-bound/rep_1/050616_NONHB_DEFAULT_HB_3.2_70"
PDB_CODE="4DKL"
OUTPUT_FILE_PATH="/scratch/PI/rondror/akma327/DynamicNetworks/results/simulation-analysis/gpcrdb-freq-output/single-cond-rep-freqsum/062416-3.2A-110D-inactive-receptors/MOR:inactive:bFNA-antagonist-bound_to_K233:1.21us.txt"
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/analysis/simulation-analysis
python dynamicInterDictToFreq.py $GPCR_DB_FILE $RECEPTOR_PDB_LOOKUP_FILE $EXP_REP_DICT_PATH $PDB_CODE $OUTPUT_FILE_PATH -interlist -sb -pc -ps -ts -vdw -hbbb -hbsb -hbss -wb -wb2 


# MOR-inactive-bFNA-nature2015/condition-bFNA-bound/rep_2
EXP_REP_DICT_PATH="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutputDictionary/MOR-inactive-bFNA-nature2015/condition-bFNA-bound/rep_2/050616_NONHB_DEFAULT_HB_3.2_70"
PDB_CODE="4DKL"
OUTPUT_FILE_PATH="/scratch/PI/rondror/akma327/DynamicNetworks/results/simulation-analysis/gpcrdb-freq-output/single-cond-rep-freqsum/062416-3.2A-110D-inactive-receptors/MOR:inactive:bFNA-antagonist-bound_to_K233:1.42us.txt"
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/analysis/simulation-analysis
python dynamicInterDictToFreq.py $GPCR_DB_FILE $RECEPTOR_PDB_LOOKUP_FILE $EXP_REP_DICT_PATH $PDB_CODE $OUTPUT_FILE_PATH -interlist -sb -pc -ps -ts -vdw -hbbb -hbsb -hbss -wb -wb2 

# MOR-inactive-bFNA-nature2015/condition-bFNA-bound/rep_1
EXP_REP_DICT_PATH="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutputDictionary/MOR-inactive-bFNA-nature2015/condition-bFNA-bound/rep_3/050616_NONHB_DEFAULT_HB_3.2_70"
PDB_CODE="4DKL"
OUTPUT_FILE_PATH="/scratch/PI/rondror/akma327/DynamicNetworks/results/simulation-analysis/gpcrdb-freq-output/single-cond-rep-freqsum/062416-3.2A-110D-inactive-receptors/MOR:inactive:bFNA-antagonist-bound_to_K233:0.63us.txt"
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/analysis/simulation-analysis
python dynamicInterDictToFreq.py $GPCR_DB_FILE $RECEPTOR_PDB_LOOKUP_FILE $EXP_REP_DICT_PATH $PDB_CODE $OUTPUT_FILE_PATH -interlist -sb -pc -ps -ts -vdw -hbbb -hbsb -hbss -wb -wb2 



# ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~


# PAR1-inactive-vorapaxar-nature2012b/condition-A/rep_1
EXP_REP_DICT_PATH="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutputDictionary/PAR1-inactive-vorapaxar-nature2012b/condition-A/rep_1/050616_NONHB_DEFAULT_HB_3.2_70"
PDB_CODE="3VW7"
OUTPUT_FILE_PATH="/scratch/PI/rondror/akma327/DynamicNetworks/results/simulation-analysis/gpcrdb-freq-output/single-cond-rep-freqsum/062416-3.2A-110D-inactive-receptors/PAR1:inactive:vorapaxar:10.52us.txt"
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/analysis/simulation-analysis
python dynamicInterDictToFreq.py $GPCR_DB_FILE $RECEPTOR_PDB_LOOKUP_FILE $EXP_REP_DICT_PATH $PDB_CODE $OUTPUT_FILE_PATH -chainId 0 -interlist -sb -pc -ps -ts -vdw -hbbb -hbsb -hbss -wb -wb2


# PAR1-inactive-vorapaxar-nature2012b/condition-B/rep_1
EXP_REP_DICT_PATH="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutputDictionary/PAR1-inactive-vorapaxar-nature2012b/condition-B/rep_1/050616_NONHB_DEFAULT_HB_3.2_70"
PDB_CODE="3VW7"
OUTPUT_FILE_PATH="/scratch/PI/rondror/akma327/DynamicNetworks/results/simulation-analysis/gpcrdb-freq-output/single-cond-rep-freqsum/062416-3.2A-110D-inactive-receptors/PAR1:inactive:vorapaxar:1.00us:crystal_sodium_near_D148.txt"
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/analysis/simulation-analysis
python dynamicInterDictToFreq.py $GPCR_DB_FILE $RECEPTOR_PDB_LOOKUP_FILE $EXP_REP_DICT_PATH $PDB_CODE $OUTPUT_FILE_PATH -chainId 0 -interlist -sb -pc -ps -ts -vdw -hbbb -hbsb -hbss -wb -wb2 

