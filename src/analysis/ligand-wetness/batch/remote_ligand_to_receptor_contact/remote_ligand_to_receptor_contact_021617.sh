# remote_ligand_to_receptor_contact_021617.sh

# inactive_receptors

# B2AR
PDB="2RH1"
INPUT_DIR="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutputDictionary/B2AR-inactive-carazalol-cell2013b/condition-12/rep_1/050516_NONHB_DEFAULT_HB_3.5_70"
OUTPUT_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/ligand-wetness/remote_ligand_to_receptor_contacts/021617/inactive_receptors/B2AR:inactive:carazalol:10us:D79-,D130-.csv"
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/analysis/ligand-wetness
python remote_ligand_to_receptor_contacts.py $PDB $INPUT_DIR $OUTPUT_FILE


# D4R
PDB="D4DR"
INPUT_DIR="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutputDictionary/D4R-inactive-nemanopride-unpublished/condition-antagonist-bound/rep_1/050516_NONHB_DEFAULT_HB_3.5_70"
OUTPUT_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/ligand-wetness/remote_ligand_to_receptor_contacts/021617/inactive_receptors/D4R:inactive:nemanopride:deprotonated:1.3us.csv"
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/analysis/ligand-wetness
python remote_ligand_to_receptor_contacts.py $PDB $INPUT_DIR $OUTPUT_FILE


PDB="D4DR"
INPUT_DIR="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutputDictionary/D4R-inactive-nemanopride-unpublished/condition-antagonist-bound/rep_2/050516_NONHB_DEFAULT_HB_3.5_70"
OUTPUT_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/ligand-wetness/remote_ligand_to_receptor_contacts/021617/inactive_receptors/D4R:inactive:nemanopride:deprotonated:1.5us.csv"
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/analysis/ligand-wetness
python remote_ligand_to_receptor_contacts.py $PDB $INPUT_DIR $OUTPUT_FILE

PDB="D4DR"
INPUT_DIR="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutputDictionary/D4R-inactive-nemanopride-unpublished/condition-antagonist-bound/rep_3/050516_NONHB_DEFAULT_HB_3.5_70"
OUTPUT_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/ligand-wetness/remote_ligand_to_receptor_contacts/021617/inactive_receptors/D4R:inactive:nemanopride:deprotonated:1.50us.csv"
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/analysis/ligand-wetness
python remote_ligand_to_receptor_contacts.py $PDB $INPUT_DIR $OUTPUT_FILE


# M2R

PDB="3UON"
INPUT_DIR="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutputDictionary/M2R-inactive-QNB-nature2013/condition-AE/rep_1/050516_NONHB_DEFAULT_HB_3.5_70"
OUTPUT_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/ligand-wetness/remote_ligand_to_receptor_contacts/021617/inactive_receptors/M2R:inactive:QNB-orthosteric-no-allosteric:10us.csv"
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/analysis/ligand-wetness
python remote_ligand_to_receptor_contacts.py $PDB $INPUT_DIR $OUTPUT_FILE

PDB="3UON"
INPUT_DIR="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutputDictionary/M2R-inactive-QNB-nature2012/condition-A/rep_1/050516_NONHB_DEFAULT_HB_3.5_70"
OUTPUT_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/ligand-wetness/remote_ligand_to_receptor_contacts/021617/inactive_receptors/M2R:inactive:QNB-orthosteric:16.4us.csv"
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/analysis/ligand-wetness
python remote_ligand_to_receptor_contacts.py $PDB $INPUT_DIR $OUTPUT_FILE

# MOR

PDB="4DKL"
INPUT_DIR="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutputDictionary/MOR-inactive-bFNA-nature2015/condition-bFNA-bound/rep_1/050516_NONHB_DEFAULT_HB_3.5_70"
OUTPUT_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/ligand-wetness/remote_ligand_to_receptor_contacts/021617/inactive_receptors/MOR:inactive:bFNA-antagonist-bound_to_K233:1.21us.csv"
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/analysis/ligand-wetness
python remote_ligand_to_receptor_contacts.py $PDB $INPUT_DIR $OUTPUT_FILE

PDB="4DKL"
INPUT_DIR="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutputDictionary/MOR-inactive-bFNA-nature2015/condition-bFNA-bound/rep_2/050516_NONHB_DEFAULT_HB_3.5_70"
OUTPUT_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/ligand-wetness/remote_ligand_to_receptor_contacts/021617/inactive_receptors/MOR:inactive:bFNA-antagonist-bound_to_K233:1.42us.csv"
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/analysis/ligand-wetness
python remote_ligand_to_receptor_contacts.py $PDB $INPUT_DIR $OUTPUT_FILE

PDB="4DKL"
INPUT_DIR="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutputDictionary/MOR-inactive-bFNA-nature2015/condition-bFNA-bound/rep_3/050516_NONHB_DEFAULT_HB_3.5_70"
OUTPUT_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/ligand-wetness/remote_ligand_to_receptor_contacts/021617/inactive_receptors/MOR:inactive:bFNA-antagonist-bound_to_K233:0.63us.csv"
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/analysis/ligand-wetness
python remote_ligand_to_receptor_contacts.py $PDB $INPUT_DIR $OUTPUT_FILE



# DOR

PDB="4N6H"
INPUT_DIR="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutputDictionary/DOR-inactive-naltrindole-unpublished/condition-naltrindole-bound/rep_1/050516_NONHB_DEFAULT_HB_3.5_70"
OUTPUT_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/ligand-wetness/remote_ligand_to_receptor_contacts/021617/inactive_receptors/DOR:inactive:naltrindole:3.0us.csv"
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/analysis/ligand-wetness
python remote_ligand_to_receptor_contacts.py $PDB $INPUT_DIR $OUTPUT_FILE


PDB="4N6H"
INPUT_DIR="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutputDictionary/DOR-inactive-naltrindole-unpublished/condition-naltrindole-bound/rep_2/050516_NONHB_DEFAULT_HB_3.5_70"
OUTPUT_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/ligand-wetness/remote_ligand_to_receptor_contacts/021617/inactive_receptors/DOR:inactive:naltrindole:1.3us.csv"
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/analysis/ligand-wetness
python remote_ligand_to_receptor_contacts.py $PDB $INPUT_DIR $OUTPUT_FILE


PDB="4N6H"
INPUT_DIR="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutputDictionary/DOR-inactive-naltrindole-unpublished/condition-naltrindole-bound/rep_3/050516_NONHB_DEFAULT_HB_3.5_70"
OUTPUT_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/ligand-wetness/remote_ligand_to_receptor_contacts/021617/inactive_receptors/DOR:inactive:naltrindole:2.0us.csv"
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/analysis/ligand-wetness
python remote_ligand_to_receptor_contacts.py $PDB $INPUT_DIR $OUTPUT_FILE




# active_receptors

# B2AR

PDB="3P0G"
INPUT_DIR="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutputDictionary/B2AR-active-Nb-BI-pnas2011b/condition-Q/rep_1/050516_NONHB_DEFAULT_HB_3.5_70"
OUTPUT_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/ligand-wetness/remote_ligand_to_receptor_contacts/021617/active_receptors/B2AR:active:agonist-bound-nanobody-complex:3.6us:D70+,D130+,H172+,C341_palm.csv"
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/analysis/ligand-wetness
python remote_ligand_to_receptor_contacts.py $PDB $INPUT_DIR $OUTPUT_FILE

PDB="3P0G"
INPUT_DIR="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutputDictionary/B2AR-active-Nb-BI-pnas2011b/condition-Q/rep_2/050516_NONHB_DEFAULT_HB_3.5_70"
OUTPUT_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/ligand-wetness/remote_ligand_to_receptor_contacts/021617/active_receptors/B2AR:active:agonist-bound-nanobody-complex:6.5us:D70+,D130+,H172+,C341_palm.csv"
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/analysis/ligand-wetness
python remote_ligand_to_receptor_contacts.py $PDB $INPUT_DIR $OUTPUT_FILE


# B2AR-active Gs

PDB="3SN6"
INPUT_DIR="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutputDictionary/B2AR-active-Gs-BI-science2015/condition-24/rep_1/050516_NONHB_DEFAULT_HB_3.5_70"
OUTPUT_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/ligand-wetness/remote_ligand_to_receptor_contacts/021617/active_receptors/B2AR:active:long-isoform-B2AR-heterotrimeric-Gs:no_ligand:10.0us:with_membrane.csv"
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/analysis/ligand-wetness
python remote_ligand_to_receptor_contacts.py $PDB $INPUT_DIR $OUTPUT_FILE


PDB="3SN6"
INPUT_DIR="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutputDictionary/B2AR-active-Gs-BI-science2015/condition-23/rep_1/050516_NONHB_DEFAULT_HB_3.5_70"
OUTPUT_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/ligand-wetness/remote_ligand_to_receptor_contacts/021617/active_receptors/B2AR:active:long-isoform-B2AR-heterotrimeric-Gs:no_ligand:10us:with_membrane.csv"
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/analysis/ligand-wetness
python remote_ligand_to_receptor_contacts.py $PDB $INPUT_DIR $OUTPUT_FILE

PDB="3SN6"
INPUT_DIR="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutputDictionary/B2AR-active-Gs-BI-science2015/condition-22/rep_1/050516_NONHB_DEFAULT_HB_3.5_70"
OUTPUT_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/ligand-wetness/remote_ligand_to_receptor_contacts/021617/active_receptors/B2AR:active:long-isoform-B2AR-heterotrimeric-Gs:no_ligand:50us:with_membrane.csv"
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/analysis/ligand-wetness
python remote_ligand_to_receptor_contacts.py $PDB $INPUT_DIR $OUTPUT_FILE


PDB="3SN6"
INPUT_DIR="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutputDictionary/B2AR-active-Gs-BI-science2015/condition-65/rep_1/050516_NONHB_DEFAULT_HB_3.5_70"
OUTPUT_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/ligand-wetness/remote_ligand_to_receptor_contacts/021617/active_receptors/B2AR:active:short-isoform-B2AR-heterotrimeric-Gs:no_ligand:5us:with_membrane.csv"
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/analysis/ligand-wetness
python remote_ligand_to_receptor_contacts.py $PDB $INPUT_DIR $OUTPUT_FILE



# M2R-active-restrained


PDB="4MQS"
INPUT_DIR="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutputDictionary/M2R-active-restrained-unpublished/condition-prot-asp2x50-3x49/rep_1/050516_NONHB_DEFAULT_HB_3.5_70"
OUTPUT_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/ligand-wetness/remote_ligand_to_receptor_contacts/021617/active_receptors/M2R:active:restrained:prot:Asp2x50:3x49-rep_1.csv"
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/analysis/ligand-wetness
python remote_ligand_to_receptor_contacts.py $PDB $INPUT_DIR $OUTPUT_FILE


PDB="4MQS"
INPUT_DIR="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutputDictionary/M2R-active-restrained-unpublished/condition-prot-asp2x50-3x49/rep_2/050516_NONHB_DEFAULT_HB_3.5_70"
OUTPUT_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/ligand-wetness/remote_ligand_to_receptor_contacts/021617/active_receptors/M2R:active:restrained:prot:Asp2x50:3x49-rep_2.csv"
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/analysis/ligand-wetness
python remote_ligand_to_receptor_contacts.py $PDB $INPUT_DIR $OUTPUT_FILE


PDB="4MQS"
INPUT_DIR="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutputDictionary/M2R-active-restrained-unpublished/condition-prot-asp2x50-3x49/rep_3/050516_NONHB_DEFAULT_HB_3.5_70"
OUTPUT_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/ligand-wetness/remote_ligand_to_receptor_contacts/021617/active_receptors/M2R:active:restrained:prot:Asp2x50:3x49-rep_3.csv"
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/analysis/ligand-wetness
python remote_ligand_to_receptor_contacts.py $PDB $INPUT_DIR $OUTPUT_FILE


# M2R-active-unrestrained

PDB="4MQS"
INPUT_DIR="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutputDictionary/M2R-active-unrestrained-unpublished/condition-prot-asp2x50-3x49/rep_1/050516_NONHB_DEFAULT_HB_3.5_70"
OUTPUT_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/ligand-wetness/remote_ligand_to_receptor_contacts/021617/active_receptors/M2R:active:unrestrained:prot:Asp2x50:3x49-rep_1.csv"
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/analysis/ligand-wetness
python remote_ligand_to_receptor_contacts.py $PDB $INPUT_DIR $OUTPUT_FILE

PDB="4MQS"
INPUT_DIR="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutputDictionary/M2R-active-unrestrained-unpublished/condition-prot-asp2x50-3x49/rep_2/050516_NONHB_DEFAULT_HB_3.5_70"
OUTPUT_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/ligand-wetness/remote_ligand_to_receptor_contacts/021617/active_receptors/M2R:active:unrestrained:prot:Asp2x50:3x49-rep_2.csv"
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/analysis/ligand-wetness
python remote_ligand_to_receptor_contacts.py $PDB $INPUT_DIR $OUTPUT_FILE


PDB="4MQS"
INPUT_DIR="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutputDictionary/M2R-active-unrestrained-unpublished/condition-prot-asp2x50-3x49/rep_3/050516_NONHB_DEFAULT_HB_3.5_70"
OUTPUT_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/ligand-wetness/remote_ligand_to_receptor_contacts/021617/active_receptors/M2R:active:unrestrained:prot:Asp2x50:3x49-rep_3.csv"
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/analysis/ligand-wetness
python remote_ligand_to_receptor_contacts.py $PDB $INPUT_DIR $OUTPUT_FILE


# MOR-active-restrained

PDB="5C1M"
INPUT_DIR="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutputDictionary/MOR-active-noNb-BU72-nature2015/condition-nb-interface-restrained-BU72/rep_1/050516_NONHB_DEFAULT_HB_3.5_70"
OUTPUT_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/ligand-wetness/remote_ligand_to_receptor_contacts/021617/active_receptors/MOR:active-noNb:BU72-nB_interface_restrained:3.0us.csv"
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/analysis/ligand-wetness
python remote_ligand_to_receptor_contacts.py $PDB $INPUT_DIR $OUTPUT_FILE

PDB="5C1M"
INPUT_DIR="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutputDictionary/MOR-active-noNb-BU72-nature2015/condition-nb-interface-restrained-BU72/rep_2/050516_NONHB_DEFAULT_HB_3.5_70"
OUTPUT_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/ligand-wetness/remote_ligand_to_receptor_contacts/021617/active_receptors/MOR:active-noNb:BU72-nB_interface_restrained:2.7us.csv"
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/analysis/ligand-wetness
python remote_ligand_to_receptor_contacts.py $PDB $INPUT_DIR $OUTPUT_FILE

PDB="5C1M"
INPUT_DIR="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutputDictionary/MOR-active-noNb-BU72-nature2015/condition-nb-interface-restrained-BU72/rep_3/050516_NONHB_DEFAULT_HB_3.5_70"
OUTPUT_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/ligand-wetness/remote_ligand_to_receptor_contacts/021617/active_receptors/MOR:active-noNb:BU72-nB_interface_restrained:2.9us.csv"
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/analysis/ligand-wetness
python remote_ligand_to_receptor_contacts.py $PDB $INPUT_DIR $OUTPUT_FILE


# MOR-active-unrestrained

PDB="5C1M"
INPUT_DIR="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutputDictionary/MOR-active-Nb-unpublished/condition-prot-D114-D164-nb-interface-restrained/rep_1/050516_NONHB_DEFAULT_HB_3.5_70"
OUTPUT_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/ligand-wetness/remote_ligand_to_receptor_contacts/021617/active_receptors/MOR:active:unpublished-rep_1.csv"
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/analysis/ligand-wetness
python remote_ligand_to_receptor_contacts.py $PDB $INPUT_DIR $OUTPUT_FILE

PDB="5C1M"
INPUT_DIR="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutputDictionary/MOR-active-Nb-unpublished/condition-prot-D114-D164-nb-interface-restrained/rep_2/050516_NONHB_DEFAULT_HB_3.5_70"
OUTPUT_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/ligand-wetness/remote_ligand_to_receptor_contacts/021617/active_receptors/MOR:active:unpublished-rep_2.csv"
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/analysis/ligand-wetness
python remote_ligand_to_receptor_contacts.py $PDB $INPUT_DIR $OUTPUT_FILE

PDB="5C1M"
INPUT_DIR="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutputDictionary/MOR-active-Nb-unpublished/condition-prot-D114-D164-nb-interface-restrained/rep_3/050516_NONHB_DEFAULT_HB_3.5_70"
OUTPUT_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/ligand-wetness/remote_ligand_to_receptor_contacts/021617/active_receptors/MOR:active:unpublished-rep_3.csv"
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/analysis/ligand-wetness
python remote_ligand_to_receptor_contacts.py $PDB $INPUT_DIR $OUTPUT_FILE



# Rho-active-unrestrained
PDB="TMP1"
INPUT_DIR="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutputDictionary/Rhodopsin-active-unrestrained-unpublished/2x72-E113Q-M257Y-constitutively-active/rep_1/050516_NONHB_DEFAULT_HB_3.5_70"
OUTPUT_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/ligand-wetness/remote_ligand_to_receptor_contacts/021617/active_receptors/RHO:active:unrestrained-rep_1.csv"
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/analysis/ligand-wetness
python remote_ligand_to_receptor_contacts.py $PDB $INPUT_DIR $OUTPUT_FILE

PDB="TMP1"
INPUT_DIR="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutputDictionary/Rhodopsin-active-unrestrained-unpublished/2x72-E113Q-M257Y-constitutively-active/rep_2/050516_NONHB_DEFAULT_HB_3.5_70"
OUTPUT_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/ligand-wetness/remote_ligand_to_receptor_contacts/021617/active_receptors/RHO:active:unrestrained-rep_2.csv"
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/analysis/ligand-wetness
python remote_ligand_to_receptor_contacts.py $PDB $INPUT_DIR $OUTPUT_FILE

PDB="TMP1"
INPUT_DIR="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutputDictionary/Rhodopsin-active-unrestrained-unpublished/2x72-E113Q-M257Y-constitutively-active/rep_3/050516_NONHB_DEFAULT_HB_3.5_70"
OUTPUT_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/ligand-wetness/remote_ligand_to_receptor_contacts/021617/active_receptors/RHO:active:unrestrained-rep_3.csv"
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/analysis/ligand-wetness
python remote_ligand_to_receptor_contacts.py $PDB $INPUT_DIR $OUTPUT_FILE


# US28-active-restrained
PDB="TMP2"
INPUT_DIR="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutputDictionary/US28-active-restrained-unpublished/fractalkine-bound/rep_1/050516_NONHB_DEFAULT_HB_3.5_70"
OUTPUT_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/ligand-wetness/remote_ligand_to_receptor_contacts/021617/active_receptors/US28:active:restrained-rep_1.csv"
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/analysis/ligand-wetness
python remote_ligand_to_receptor_contacts.py $PDB $INPUT_DIR $OUTPUT_FILE


PDB="TMP2"
INPUT_DIR="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutputDictionary/US28-active-restrained-unpublished/fractalkine-bound/rep_2/050516_NONHB_DEFAULT_HB_3.5_70"
OUTPUT_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/ligand-wetness/remote_ligand_to_receptor_contacts/021617/active_receptors/US28:active:restrained-rep_2.csv"
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/analysis/ligand-wetness
python remote_ligand_to_receptor_contacts.py $PDB $INPUT_DIR $OUTPUT_FILE


PDB="TMP2"
INPUT_DIR="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutputDictionary/US28-active-restrained-unpublished/fractalkine-bound/rep_3/050516_NONHB_DEFAULT_HB_3.5_70"
OUTPUT_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/ligand-wetness/remote_ligand_to_receptor_contacts/021617/active_receptors/US28:active:restrained-rep_3.csv"
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/analysis/ligand-wetness
python remote_ligand_to_receptor_contacts.py $PDB $INPUT_DIR $OUTPUT_FILE


# US28-active-unrestrained

PDB="TMP2"
INPUT_DIR="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutputDictionary/US28-active-unrestrained-unpublished/fractalkine-bound/rep_1/050516_NONHB_DEFAULT_HB_3.5_70"
OUTPUT_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/ligand-wetness/remote_ligand_to_receptor_contacts/021617/active_receptors/US28:active:unrestrained-rep_1.csv"
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/analysis/ligand-wetness
python remote_ligand_to_receptor_contacts.py $PDB $INPUT_DIR $OUTPUT_FILE


PDB="TMP2"
INPUT_DIR="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutputDictionary/US28-active-unrestrained-unpublished/fractalkine-bound/rep_2/050516_NONHB_DEFAULT_HB_3.5_70"
OUTPUT_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/ligand-wetness/remote_ligand_to_receptor_contacts/021617/active_receptors/US28:active:unrestrained-rep_2.csv"
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/analysis/ligand-wetness
python remote_ligand_to_receptor_contacts.py $PDB $INPUT_DIR $OUTPUT_FILE


PDB="TMP2"
INPUT_DIR="/scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutputDictionary/US28-active-unrestrained-unpublished/fractalkine-bound/rep_3/050516_NONHB_DEFAULT_HB_3.5_70"
OUTPUT_FILE="/scratch/PI/rondror/akma327/DynamicNetworks/data/crystal-analysis/ligand-wetness/remote_ligand_to_receptor_contacts/021617/active_receptors/US28:active:unrestrained-rep_3.csv"
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/analysis/ligand-wetness
python remote_ligand_to_receptor_contacts.py $PDB $INPUT_DIR $OUTPUT_FILE


