# 021517
# Found out that the single order ligand water bond calculator had a bug (dictionary misnamed without "L")
# Recompute all the lwb interactions. 



# EXP 16 b2ar-inactive-cond12


# SIM_TOOL="-anton"
# USER_EMAIL="akma327@stanford.edu"
# CONFIG_FILE_PATH="/scratch/PI/rondror/akma327/DynamicNetworks/data/DI-Pipeline-Config/DynamicNetwork-Configuration.txt"
# JOB_FOLDER_PATH="/scratch/PI/rondror/akma327/DynamicNetworks/src/pipeline/calculate/job-scripts/redo-ligand-3.5A70Djobs"
# JOB_FOLDER_NAME="cond16_rep1_lhbprocess_3.5_70"
# cd /scratch/PI/rondror/akma327/DynamicNetworks/src/pipeline/calculate
# python create-Pipeline.py $SIM_TOOL $USER_EMAIL $CONFIG_FILE_PATH $JOB_FOLDER_PATH $JOB_FOLDER_NAME 16 -replist rep_1 -di -stride 1 -chain A -ligand CAU -titrateid HB_3.5A_70D -interlist -lwb


SIM_TOOL="-anton"
USER_EMAIL="akma327@stanford.edu"
CONFIG_FILE_PATH="/scratch/PI/rondror/akma327/DynamicNetworks/data/DI-Pipeline-Config/DynamicNetwork-Configuration.txt"
JOB_FOLDER_PATH="/scratch/PI/rondror/akma327/DynamicNetworks/src/pipeline/calculate/job-scripts/redo-ligand-3.5A70Djobs"
JOB_FOLDER_NAME="cond16_rep1_lhbstitch_3.5_70"
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/pipeline/calculate
python create-Pipeline.py $SIM_TOOL $USER_EMAIL $CONFIG_FILE_PATH $JOB_FOLDER_PATH $JOB_FOLDER_NAME 16 -replist rep_1 -stitch -stride 1 -chain A -ligand CAU -titrateid HB_3.5A_70D -interlist -lwb

SIM_TOOL="-anton"
USER_EMAIL="akma327@stanford.edu"
CONFIG_FILE_PATH="/scratch/PI/rondror/akma327/DynamicNetworks/data/DI-Pipeline-Config/DynamicNetwork-Configuration.txt"
JOB_FOLDER_PATH="/scratch/PI/rondror/akma327/DynamicNetworks/src/pipeline/calculate/job-scripts/redo-ligand-3.5A70Djobs"
JOB_FOLDER_NAME="cond16_rep1_lhbdict_3.5_70"
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/pipeline/calculate
python create-Pipeline.py $SIM_TOOL $USER_EMAIL $CONFIG_FILE_PATH $JOB_FOLDER_PATH $JOB_FOLDER_NAME 16 -replist rep_1 -bindict -stride 1 -chain A -ligand CAU -titrateid HB_3.5A_70D -interlist -lwb


# D4R-inactive 	chain A 	ligand NEMO
# 101916 Step 1

# SIM_TOOL="-amber"
# USER_EMAIL="akma327@stanford.edu"
# CONFIG_FILE_PATH="/scratch/PI/rondror/akma327/DynamicNetworks/data/DI-Pipeline-Config/DynamicNetwork-Configuration.txt"
# JOB_FOLDER_PATH="/scratch/PI/rondror/akma327/DynamicNetworks/src/pipeline/calculate/job-scripts/redo-ligand-3.5A70Djobs"
# JOB_FOLDER_NAME="cond31_rep1,2,3_lhbprocess_3.5_70"
# cd /scratch/PI/rondror/akma327/DynamicNetworks/src/pipeline/calculate
# python create-Pipeline.py $SIM_TOOL $USER_EMAIL $CONFIG_FILE_PATH $JOB_FOLDER_PATH $JOB_FOLDER_NAME 31 -replist rep_1,rep_2,rep_3 -di -stride 1 -chain A -ligand NEMO -titrateid HB_3.5A_70D -interlist -lwb

SIM_TOOL="-amber"
USER_EMAIL="akma327@stanford.edu"
CONFIG_FILE_PATH="/scratch/PI/rondror/akma327/DynamicNetworks/data/DI-Pipeline-Config/DynamicNetwork-Configuration.txt"
JOB_FOLDER_PATH="/scratch/PI/rondror/akma327/DynamicNetworks/src/pipeline/calculate/job-scripts/redo-ligand-3.5A70Djobs"
JOB_FOLDER_NAME="cond31_rep1,2,3_lhbstitch_3.5_70"
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/pipeline/calculate
python create-Pipeline.py $SIM_TOOL $USER_EMAIL $CONFIG_FILE_PATH $JOB_FOLDER_PATH $JOB_FOLDER_NAME 31 -replist rep_1,rep_2,rep_3 -stitch -stride 1 -chain A -ligand NEMO -titrateid HB_3.5A_70D -interlist -lwb

SIM_TOOL="-amber"
USER_EMAIL="akma327@stanford.edu"
CONFIG_FILE_PATH="/scratch/PI/rondror/akma327/DynamicNetworks/data/DI-Pipeline-Config/DynamicNetwork-Configuration.txt"
JOB_FOLDER_PATH="/scratch/PI/rondror/akma327/DynamicNetworks/src/pipeline/calculate/job-scripts/redo-ligand-3.5A70Djobs"
JOB_FOLDER_NAME="cond31_rep1,2,3_lhbdict_3.5_70"
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/pipeline/calculate
python create-Pipeline.py $SIM_TOOL $USER_EMAIL $CONFIG_FILE_PATH $JOB_FOLDER_PATH $JOB_FOLDER_NAME 31 -replist rep_1,rep_2,rep_3 -bindict -stride 1 -chain A -ligand NEMO -titrateid HB_3.5A_70D -interlist -lwb



# M2R-inactive-2012	chain P 	ligand QNBP
# 101916 Step 1


# SIM_TOOL="-anton"
# USER_EMAIL="akma327@stanford.edu"
# CONFIG_FILE_PATH="/scratch/PI/rondror/akma327/DynamicNetworks/data/DI-Pipeline-Config/DynamicNetwork-Configuration.txt"
# JOB_FOLDER_PATH="/scratch/PI/rondror/akma327/DynamicNetworks/src/pipeline/calculate/job-scripts/redo-ligand-3.5A70Djobs"
# JOB_FOLDER_NAME="cond11_rep1_lhbprocess_3.5_70"
# cd /scratch/PI/rondror/akma327/DynamicNetworks/src/pipeline/calculate
# python create-Pipeline.py $SIM_TOOL $USER_EMAIL $CONFIG_FILE_PATH $JOB_FOLDER_PATH $JOB_FOLDER_NAME 11 -replist rep_1 -di -stride 1 -chain P -ligand QNBP -titrateid HB_3.5A_70D -interlist -lwb


SIM_TOOL="-anton"
USER_EMAIL="akma327@stanford.edu"
CONFIG_FILE_PATH="/scratch/PI/rondror/akma327/DynamicNetworks/data/DI-Pipeline-Config/DynamicNetwork-Configuration.txt"
JOB_FOLDER_PATH="/scratch/PI/rondror/akma327/DynamicNetworks/src/pipeline/calculate/job-scripts/redo-ligand-3.5A70Djobs"
JOB_FOLDER_NAME="cond11_rep1_lhbstitch_3.5_70"
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/pipeline/calculate
python create-Pipeline.py $SIM_TOOL $USER_EMAIL $CONFIG_FILE_PATH $JOB_FOLDER_PATH $JOB_FOLDER_NAME 11 -replist rep_1 -stitch -stride 1 -chain P -ligand QNBP -titrateid HB_3.5A_70D -interlist -lwb

SIM_TOOL="-anton"
USER_EMAIL="akma327@stanford.edu"
CONFIG_FILE_PATH="/scratch/PI/rondror/akma327/DynamicNetworks/data/DI-Pipeline-Config/DynamicNetwork-Configuration.txt"
JOB_FOLDER_PATH="/scratch/PI/rondror/akma327/DynamicNetworks/src/pipeline/calculate/job-scripts/redo-ligand-3.5A70Djobs"
JOB_FOLDER_NAME="cond11_rep1_lhbdict_3.5_70"
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/pipeline/calculate
python create-Pipeline.py $SIM_TOOL $USER_EMAIL $CONFIG_FILE_PATH $JOB_FOLDER_PATH $JOB_FOLDER_NAME 11 -replist rep_1 -bindict -stride 1 -chain P -ligand QNBP -titrateid HB_3.5A_70D -interlist -lwb




# M2R-inactive-2013 chain A 	ligand qnb
# 101916 Step 1


# SIM_TOOL="-anton"
# USER_EMAIL="akma327@stanford.edu"
# CONFIG_FILE_PATH="/scratch/PI/rondror/akma327/DynamicNetworks/data/DI-Pipeline-Config/DynamicNetwork-Configuration.txt"
# JOB_FOLDER_PATH="/scratch/PI/rondror/akma327/DynamicNetworks/src/pipeline/calculate/job-scripts/redo-ligand-3.5A70Djobs"
# JOB_FOLDER_NAME="cond10_rep1_lhbprocess_3.5_70"
# cd /scratch/PI/rondror/akma327/DynamicNetworks/src/pipeline/calculate
# python create-Pipeline.py $SIM_TOOL $USER_EMAIL $CONFIG_FILE_PATH $JOB_FOLDER_PATH $JOB_FOLDER_NAME 10 -replist rep_1 -di -stride 1 -chain A -ligand qnb -titrateid HB_3.5A_70D -interlist -lwb


SIM_TOOL="-anton"
USER_EMAIL="akma327@stanford.edu"
CONFIG_FILE_PATH="/scratch/PI/rondror/akma327/DynamicNetworks/data/DI-Pipeline-Config/DynamicNetwork-Configuration.txt"
JOB_FOLDER_PATH="/scratch/PI/rondror/akma327/DynamicNetworks/src/pipeline/calculate/job-scripts/redo-ligand-3.5A70Djobs"
JOB_FOLDER_NAME="cond10_rep1_lhbstitch_3.5_70"
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/pipeline/calculate
python create-Pipeline.py $SIM_TOOL $USER_EMAIL $CONFIG_FILE_PATH $JOB_FOLDER_PATH $JOB_FOLDER_NAME 10 -replist rep_1 -stitch -stride 1 -chain A -ligand qnb -titrateid HB_3.5A_70D -interlist -lwb

SIM_TOOL="-anton"
USER_EMAIL="akma327@stanford.edu"
CONFIG_FILE_PATH="/scratch/PI/rondror/akma327/DynamicNetworks/data/DI-Pipeline-Config/DynamicNetwork-Configuration.txt"
JOB_FOLDER_PATH="/scratch/PI/rondror/akma327/DynamicNetworks/src/pipeline/calculate/job-scripts/redo-ligand-3.5A70Djobs"
JOB_FOLDER_NAME="cond10_rep1_lhbdict_3.5_70"
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/pipeline/calculate
python create-Pipeline.py $SIM_TOOL $USER_EMAIL $CONFIG_FILE_PATH $JOB_FOLDER_PATH $JOB_FOLDER_NAME 10 -replist rep_1 -bindict -stride 1 -chain A -ligand qnb -titrateid HB_3.5A_70D -interlist -lwb


# EXP 7 mor-inactive


# SIM_TOOL="-amber"
# USER_EMAIL="akma327@stanford.edu"
# CONFIG_FILE_PATH="/scratch/PI/rondror/akma327/DynamicNetworks/data/DI-Pipeline-Config/DynamicNetwork-Configuration.txt"
# JOB_FOLDER_PATH="/scratch/PI/rondror/akma327/DynamicNetworks/src/pipeline/calculate/job-scripts/redo-ligand-3.5A70Djobs"
# JOB_FOLDER_NAME="cond7_rep1,2,3_lhbprocess_3.5_70"
# cd /scratch/PI/rondror/akma327/DynamicNetworks/src/pipeline/calculate
# python create-Pipeline.py $SIM_TOOL $USER_EMAIL $CONFIG_FILE_PATH $JOB_FOLDER_PATH $JOB_FOLDER_NAME 7 -replist rep_1,rep_2,rep_3 -di -stride 1 -solv IP3 -ligand BF0 -titrateid HB_3.5A_70D -interlist -lwb

SIM_TOOL="-amber"
USER_EMAIL="akma327@stanford.edu"
CONFIG_FILE_PATH="/scratch/PI/rondror/akma327/DynamicNetworks/data/DI-Pipeline-Config/DynamicNetwork-Configuration.txt"
JOB_FOLDER_PATH="/scratch/PI/rondror/akma327/DynamicNetworks/src/pipeline/calculate/job-scripts/redo-ligand-3.5A70Djobs"
JOB_FOLDER_NAME="cond7_rep1,2,3_lhbstitch_3.5_70"
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/pipeline/calculate
python create-Pipeline.py $SIM_TOOL $USER_EMAIL $CONFIG_FILE_PATH $JOB_FOLDER_PATH $JOB_FOLDER_NAME 7 -replist rep_1,rep_2,rep_3 -stitch -stride 1 -solv IP3 -ligand BF0 -titrateid HB_3.5A_70D -interlist -lwb

SIM_TOOL="-amber"
USER_EMAIL="akma327@stanford.edu"
CONFIG_FILE_PATH="/scratch/PI/rondror/akma327/DynamicNetworks/data/DI-Pipeline-Config/DynamicNetwork-Configuration.txt"
JOB_FOLDER_PATH="/scratch/PI/rondror/akma327/DynamicNetworks/src/pipeline/calculate/job-scripts/redo-ligand-3.5A70Djobs"
JOB_FOLDER_NAME="cond7_rep1,2,3_lhbdict_3.5_70"
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/pipeline/calculate
python create-Pipeline.py $SIM_TOOL $USER_EMAIL $CONFIG_FILE_PATH $JOB_FOLDER_PATH $JOB_FOLDER_NAME 7 -replist rep_1,rep_2,rep_3 -bindict -stride 1 -solv IP3 -ligand BF0 -titrateid HB_3.5A_70D -interlist -lwb




# DOR-inactive 	chain A 	ligand EJ4

# 101916 Step 1


# SIM_TOOL="-amber"
# USER_EMAIL="akma327@stanford.edu"
# CONFIG_FILE_PATH="/scratch/PI/rondror/akma327/DynamicNetworks/data/DI-Pipeline-Config/DynamicNetwork-Configuration.txt"
# JOB_FOLDER_PATH="/scratch/PI/rondror/akma327/DynamicNetworks/src/pipeline/calculate/job-scripts/redo-ligand-3.5A70Djobs"
# JOB_FOLDER_NAME="cond30_rep1,2,3_lhbprocess_3.5_70"
# cd /scratch/PI/rondror/akma327/DynamicNetworks/src/pipeline/calculate
# python create-Pipeline.py $SIM_TOOL $USER_EMAIL $CONFIG_FILE_PATH $JOB_FOLDER_PATH $JOB_FOLDER_NAME 30 -replist rep_1,rep_2,rep_3 -di -stride 1 -chain A -ligand EJ4 -titrateid HB_3.5A_70D -interlist -lwb

SIM_TOOL="-amber"
USER_EMAIL="akma327@stanford.edu"
CONFIG_FILE_PATH="/scratch/PI/rondror/akma327/DynamicNetworks/data/DI-Pipeline-Config/DynamicNetwork-Configuration.txt"
JOB_FOLDER_PATH="/scratch/PI/rondror/akma327/DynamicNetworks/src/pipeline/calculate/job-scripts/redo-ligand-3.5A70Djobs"
JOB_FOLDER_NAME="cond30_rep1,2,3_lhbstitch_3.5_70"
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/pipeline/calculate
python create-Pipeline.py $SIM_TOOL $USER_EMAIL $CONFIG_FILE_PATH $JOB_FOLDER_PATH $JOB_FOLDER_NAME 30 -replist rep_1,rep_2,rep_3 -stitch -stride 1 -chain A -ligand EJ4 -titrateid HB_3.5A_70D -interlist -lwb

SIM_TOOL="-amber"
USER_EMAIL="akma327@stanford.edu"
CONFIG_FILE_PATH="/scratch/PI/rondror/akma327/DynamicNetworks/data/DI-Pipeline-Config/DynamicNetwork-Configuration.txt"
JOB_FOLDER_PATH="/scratch/PI/rondror/akma327/DynamicNetworks/src/pipeline/calculate/job-scripts/redo-ligand-3.5A70Djobs"
JOB_FOLDER_NAME="cond30_rep1,2,3_lhbdict_3.5_70"
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/pipeline/calculate
python create-Pipeline.py $SIM_TOOL $USER_EMAIL $CONFIG_FILE_PATH $JOB_FOLDER_PATH $JOB_FOLDER_NAME 30 -replist rep_1,rep_2,rep_3 -bindict -stride 1 -chain A -ligand EJ4 -titrateid HB_3.5A_70D -interlist -lwb




#### ACTIVE RECEPTORS



# EXP 32 b2ar-active-Gs-cond22

# 101916_Step1

# SIM_TOOL="-anton"
# USER_EMAIL="akma327@stanford.edu"
# CONFIG_FILE_PATH="/scratch/PI/rondror/akma327/DynamicNetworks/data/DI-Pipeline-Config/DynamicNetwork-Configuration.txt"
# JOB_FOLDER_PATH="/scratch/PI/rondror/akma327/DynamicNetworks/src/pipeline/calculate/job-scripts/redo-ligand-3.5A70Djobs"
# JOB_FOLDER_NAME="cond32_rep1_lhbprocess_3.5_70"
# cd /scratch/PI/rondror/akma327/DynamicNetworks/src/pipeline/calculate
# python create-Pipeline.py $SIM_TOOL $USER_EMAIL $CONFIG_FILE_PATH $JOB_FOLDER_PATH $JOB_FOLDER_NAME 32 -replist rep_1 -di -stride 1 -chain R -ligand P0G -titrateid HB_3.5A_70D -interlist -lwb


SIM_TOOL="-anton"
USER_EMAIL="akma327@stanford.edu"
CONFIG_FILE_PATH="/scratch/PI/rondror/akma327/DynamicNetworks/data/DI-Pipeline-Config/DynamicNetwork-Configuration.txt"
JOB_FOLDER_PATH="/scratch/PI/rondror/akma327/DynamicNetworks/src/pipeline/calculate/job-scripts/redo-ligand-3.5A70Djobs"
JOB_FOLDER_NAME="cond32_rep1_lhbstitch_3.5_70"
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/pipeline/calculate
python create-Pipeline.py $SIM_TOOL $USER_EMAIL $CONFIG_FILE_PATH $JOB_FOLDER_PATH $JOB_FOLDER_NAME 32 -replist rep_1 -stitch -stride 1 -chain R -ligand P0G -titrateid HB_3.5A_70D -interlist -lwb

SIM_TOOL="-anton"
USER_EMAIL="akma327@stanford.edu"
CONFIG_FILE_PATH="/scratch/PI/rondror/akma327/DynamicNetworks/data/DI-Pipeline-Config/DynamicNetwork-Configuration.txt"
JOB_FOLDER_PATH="/scratch/PI/rondror/akma327/DynamicNetworks/src/pipeline/calculate/job-scripts/redo-ligand-3.5A70Djobs"
JOB_FOLDER_NAME="cond32_rep1_lhbdict_3.5_70"
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/pipeline/calculate
python create-Pipeline.py $SIM_TOOL $USER_EMAIL $CONFIG_FILE_PATH $JOB_FOLDER_PATH $JOB_FOLDER_NAME 32 -replist rep_1 -bindict -stride 1 -chain R -ligand P0G -titrateid HB_3.5A_70D -interlist -lwb


# EXP 33 b2ar-active-Gs-cond23

# 101916_Step1

# SIM_TOOL="-anton"
# USER_EMAIL="akma327@stanford.edu"
# CONFIG_FILE_PATH="/scratch/PI/rondror/akma327/DynamicNetworks/data/DI-Pipeline-Config/DynamicNetwork-Configuration.txt"
# JOB_FOLDER_PATH="/scratch/PI/rondror/akma327/DynamicNetworks/src/pipeline/calculate/job-scripts/redo-ligand-3.5A70Djobs"
# JOB_FOLDER_NAME="cond33_rep1_lhbprocess_3.5_70"
# cd /scratch/PI/rondror/akma327/DynamicNetworks/src/pipeline/calculate
# python create-Pipeline.py $SIM_TOOL $USER_EMAIL $CONFIG_FILE_PATH $JOB_FOLDER_PATH $JOB_FOLDER_NAME 33 -replist rep_1 -di -stride 1 -chain R -ligand P0G -titrateid HB_3.5A_70D -interlist -lwb


SIM_TOOL="-anton"
USER_EMAIL="akma327@stanford.edu"
CONFIG_FILE_PATH="/scratch/PI/rondror/akma327/DynamicNetworks/data/DI-Pipeline-Config/DynamicNetwork-Configuration.txt"
JOB_FOLDER_PATH="/scratch/PI/rondror/akma327/DynamicNetworks/src/pipeline/calculate/job-scripts/redo-ligand-3.5A70Djobs"
JOB_FOLDER_NAME="cond33_rep1_lhbstitch_3.5_70"
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/pipeline/calculate
python create-Pipeline.py $SIM_TOOL $USER_EMAIL $CONFIG_FILE_PATH $JOB_FOLDER_PATH $JOB_FOLDER_NAME 33 -replist rep_1 -stitch -stride 1 -chain R -ligand P0G -titrateid HB_3.5A_70D -interlist -lwb

SIM_TOOL="-anton"
USER_EMAIL="akma327@stanford.edu"
CONFIG_FILE_PATH="/scratch/PI/rondror/akma327/DynamicNetworks/data/DI-Pipeline-Config/DynamicNetwork-Configuration.txt"
JOB_FOLDER_PATH="/scratch/PI/rondror/akma327/DynamicNetworks/src/pipeline/calculate/job-scripts/redo-ligand-3.5A70Djobs"
JOB_FOLDER_NAME="cond33_rep1_lhbdict_3.5_70"
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/pipeline/calculate
python create-Pipeline.py $SIM_TOOL $USER_EMAIL $CONFIG_FILE_PATH $JOB_FOLDER_PATH $JOB_FOLDER_NAME 33 -replist rep_1 -bindict -stride 1 -chain R -ligand P0G -titrateid HB_3.5A_70D -interlist -lwb


# EXP 34 b2ar-active-Gs-cond24

# 101916_Step1

# SIM_TOOL="-anton"
# USER_EMAIL="akma327@stanford.edu"
# CONFIG_FILE_PATH="/scratch/PI/rondror/akma327/DynamicNetworks/data/DI-Pipeline-Config/DynamicNetwork-Configuration.txt"
# JOB_FOLDER_PATH="/scratch/PI/rondror/akma327/DynamicNetworks/src/pipeline/calculate/job-scripts/redo-ligand-3.5A70Djobs"
# JOB_FOLDER_NAME="cond34_rep1_lhbprocess_3.5_70"
# cd /scratch/PI/rondror/akma327/DynamicNetworks/src/pipeline/calculate
# python create-Pipeline.py $SIM_TOOL $USER_EMAIL $CONFIG_FILE_PATH $JOB_FOLDER_PATH $JOB_FOLDER_NAME 34 -replist rep_1 -di -stride 1 -chain R -ligand P0G -titrateid HB_3.5A_70D -interlist -lwb


SIM_TOOL="-anton"
USER_EMAIL="akma327@stanford.edu"
CONFIG_FILE_PATH="/scratch/PI/rondror/akma327/DynamicNetworks/data/DI-Pipeline-Config/DynamicNetwork-Configuration.txt"
JOB_FOLDER_PATH="/scratch/PI/rondror/akma327/DynamicNetworks/src/pipeline/calculate/job-scripts/redo-ligand-3.5A70Djobs"
JOB_FOLDER_NAME="cond34_rep1_lhbstitch_3.5_70"
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/pipeline/calculate
python create-Pipeline.py $SIM_TOOL $USER_EMAIL $CONFIG_FILE_PATH $JOB_FOLDER_PATH $JOB_FOLDER_NAME 34 -replist rep_1 -stitch -stride 1 -chain R -ligand P0G -titrateid HB_3.5A_70D -interlist -lwb

SIM_TOOL="-anton"
USER_EMAIL="akma327@stanford.edu"
CONFIG_FILE_PATH="/scratch/PI/rondror/akma327/DynamicNetworks/data/DI-Pipeline-Config/DynamicNetwork-Configuration.txt"
JOB_FOLDER_PATH="/scratch/PI/rondror/akma327/DynamicNetworks/src/pipeline/calculate/job-scripts/redo-ligand-3.5A70Djobs"
JOB_FOLDER_NAME="cond34_rep1_lhbdict_3.5_70"
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/pipeline/calculate
python create-Pipeline.py $SIM_TOOL $USER_EMAIL $CONFIG_FILE_PATH $JOB_FOLDER_PATH $JOB_FOLDER_NAME 34 -replist rep_1 -bindict -stride 1 -chain R -ligand P0G -titrateid HB_3.5A_70D -interlist -lwb



# EXP 35 b2ar-active-Gs-cond65

# SIM_TOOL="-anton"
# USER_EMAIL="akma327@stanford.edu"
# CONFIG_FILE_PATH="/scratch/PI/rondror/akma327/DynamicNetworks/data/DI-Pipeline-Config/DynamicNetwork-Configuration.txt"
# JOB_FOLDER_PATH="/scratch/PI/rondror/akma327/DynamicNetworks/src/pipeline/calculate/job-scripts/redo-ligand-3.5A70Djobs"
# JOB_FOLDER_NAME="cond35_rep1_lhbprocess_3.5_70"
# cd /scratch/PI/rondror/akma327/DynamicNetworks/src/pipeline/calculate
# python create-Pipeline.py $SIM_TOOL $USER_EMAIL $CONFIG_FILE_PATH $JOB_FOLDER_PATH $JOB_FOLDER_NAME 35 -replist rep_1 -di -stride 1 -chain R -ligand P0G -titrateid HB_3.5A_70D -interlist -lwb


SIM_TOOL="-anton"
USER_EMAIL="akma327@stanford.edu"
CONFIG_FILE_PATH="/scratch/PI/rondror/akma327/DynamicNetworks/data/DI-Pipeline-Config/DynamicNetwork-Configuration.txt"
JOB_FOLDER_PATH="/scratch/PI/rondror/akma327/DynamicNetworks/src/pipeline/calculate/job-scripts/redo-ligand-3.5A70Djobs"
JOB_FOLDER_NAME="cond35_rep1_lhbstitch_3.5_70"
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/pipeline/calculate
python create-Pipeline.py $SIM_TOOL $USER_EMAIL $CONFIG_FILE_PATH $JOB_FOLDER_PATH $JOB_FOLDER_NAME 35 -replist rep_1 -stitch -stride 1 -chain R -ligand P0G -titrateid HB_3.5A_70D -interlist -lwb

SIM_TOOL="-anton"
USER_EMAIL="akma327@stanford.edu"
CONFIG_FILE_PATH="/scratch/PI/rondror/akma327/DynamicNetworks/data/DI-Pipeline-Config/DynamicNetwork-Configuration.txt"
JOB_FOLDER_PATH="/scratch/PI/rondror/akma327/DynamicNetworks/src/pipeline/calculate/job-scripts/redo-ligand-3.5A70Djobs"
JOB_FOLDER_NAME="cond35_rep1_lhbdict_3.5_70"
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/pipeline/calculate
python create-Pipeline.py $SIM_TOOL $USER_EMAIL $CONFIG_FILE_PATH $JOB_FOLDER_PATH $JOB_FOLDER_NAME 35 -replist rep_1 -bindict -stride 1 -chain R -ligand P0G -titrateid HB_3.5A_70D -interlist -lwb


# B2AR-active-pnas2011b-Q 	chain A 	ligand BIA

# /condition-Q/rep_1
# 101916_Step1


# SIM_TOOL="-anton"
# USER_EMAIL="akma327@stanford.edu"
# CONFIG_FILE_PATH="/scratch/PI/rondror/akma327/DynamicNetworks/data/DI-Pipeline-Config/DynamicNetwork-Configuration.txt"
# JOB_FOLDER_PATH="/scratch/PI/rondror/akma327/DynamicNetworks/src/pipeline/calculate/job-scripts/redo-ligand-3.5A70Djobs"
# JOB_FOLDER_NAME="cond29_rep1_lhbprocess_3.5_70"
# cd /scratch/PI/rondror/akma327/DynamicNetworks/src/pipeline/calculate
# python create-Pipeline.py $SIM_TOOL $USER_EMAIL $CONFIG_FILE_PATH $JOB_FOLDER_PATH $JOB_FOLDER_NAME 29 -replist rep_1 -di -stride 1 -chain A -ligand BIA -topid rep_1 -titrateid HB_3.5A_70D -interlist -lwb

SIM_TOOL="-anton"
USER_EMAIL="akma327@stanford.edu"
CONFIG_FILE_PATH="/scratch/PI/rondror/akma327/DynamicNetworks/data/DI-Pipeline-Config/DynamicNetwork-Configuration.txt"
JOB_FOLDER_PATH="/scratch/PI/rondror/akma327/DynamicNetworks/src/pipeline/calculate/job-scripts/redo-ligand-3.5A70Djobs"
JOB_FOLDER_NAME="cond29_rep1_lhbstitch_3.5_70"
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/pipeline/calculate
python create-Pipeline.py $SIM_TOOL $USER_EMAIL $CONFIG_FILE_PATH $JOB_FOLDER_PATH $JOB_FOLDER_NAME 29 -replist rep_1 -stitch -stride 1 -chain A -ligand BIA -titrateid HB_3.5A_70D -interlist -lwb

SIM_TOOL="-anton"
USER_EMAIL="akma327@stanford.edu"
CONFIG_FILE_PATH="/scratch/PI/rondror/akma327/DynamicNetworks/data/DI-Pipeline-Config/DynamicNetwork-Configuration.txt"
JOB_FOLDER_PATH="/scratch/PI/rondror/akma327/DynamicNetworks/src/pipeline/calculate/job-scripts/redo-ligand-3.5A70Djobs"
JOB_FOLDER_NAME="cond29_rep1_lhbdict_3.5_70"
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/pipeline/calculate
python create-Pipeline.py $SIM_TOOL $USER_EMAIL $CONFIG_FILE_PATH $JOB_FOLDER_PATH $JOB_FOLDER_NAME 29 -replist rep_1 -bindict -stride 1 -chain A -ligand BIA -titrateid HB_3.5A_70D -interlist -lwb



# /condition-Q/rep_2
# Finished Step 4 

# 101916_Step1 

# SIM_TOOL="-anton"
# USER_EMAIL="akma327@stanford.edu"
# CONFIG_FILE_PATH="/scratch/PI/rondror/akma327/DynamicNetworks/data/DI-Pipeline-Config/DynamicNetwork-Configuration.txt"
# JOB_FOLDER_PATH="/scratch/PI/rondror/akma327/DynamicNetworks/src/pipeline/calculate/job-scripts/redo-ligand-3.5A70Djobs"
# JOB_FOLDER_NAME="cond29_rep2_lhbprocess_3.5_70"
# cd /scratch/PI/rondror/akma327/DynamicNetworks/src/pipeline/calculate
# python create-Pipeline.py $SIM_TOOL $USER_EMAIL $CONFIG_FILE_PATH $JOB_FOLDER_PATH $JOB_FOLDER_NAME 29 -replist rep_2 -di -stride 1 -chain A -ligand BIA -topid rep_2 -titrateid HB_3.5A_70D -interlist -lwb

SIM_TOOL="-anton"
USER_EMAIL="akma327@stanford.edu"
CONFIG_FILE_PATH="/scratch/PI/rondror/akma327/DynamicNetworks/data/DI-Pipeline-Config/DynamicNetwork-Configuration.txt"
JOB_FOLDER_PATH="/scratch/PI/rondror/akma327/DynamicNetworks/src/pipeline/calculate/job-scripts/redo-ligand-3.5A70Djobs"
JOB_FOLDER_NAME="cond29_rep2_lhbstitch_3.5_70"
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/pipeline/calculate
python create-Pipeline.py $SIM_TOOL $USER_EMAIL $CONFIG_FILE_PATH $JOB_FOLDER_PATH $JOB_FOLDER_NAME 29 -replist rep_2 -stitch -stride 1 -chain A -ligand BIA -titrateid HB_3.5A_70D -interlist -lwb

SIM_TOOL="-anton"
USER_EMAIL="akma327@stanford.edu"
CONFIG_FILE_PATH="/scratch/PI/rondror/akma327/DynamicNetworks/data/DI-Pipeline-Config/DynamicNetwork-Configuration.txt"
JOB_FOLDER_PATH="/scratch/PI/rondror/akma327/DynamicNetworks/src/pipeline/calculate/job-scripts/redo-ligand-3.5A70Djobs"
JOB_FOLDER_NAME="cond29_rep2_lhbdict_3.5_70"
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/pipeline/calculate
python create-Pipeline.py $SIM_TOOL $USER_EMAIL $CONFIG_FILE_PATH $JOB_FOLDER_PATH $JOB_FOLDER_NAME 29 -replist rep_2 -bindict -stride 1 -chain A -ligand BIA -titrateid HB_3.5A_70D -interlist -lwb



# M2R-active-restrained-unpublished

# SIM_TOOL="-amber"
# USER_EMAIL="akma327@stanford.edu"
# CONFIG_FILE_PATH="/scratch/PI/rondror/akma327/DynamicNetworks/data/DI-Pipeline-Config/DynamicNetwork-Configuration.txt"
# JOB_FOLDER_PATH="/scratch/PI/rondror/akma327/DynamicNetworks/src/pipeline/calculate/job-scripts/redo-ligand-3.5A70Djobs"
# JOB_FOLDER_NAME="cond41_rep1,2,3_lhbprocess_3.5_70"
# cd /scratch/PI/rondror/akma327/DynamicNetworks/src/pipeline/calculate
# python create-Pipeline.py $SIM_TOOL $USER_EMAIL $CONFIG_FILE_PATH $JOB_FOLDER_PATH $JOB_FOLDER_NAME 41 -replist rep_1,rep_2,rep_3 -di -stride 1 -chain A -ligand IXO -titrateid HB_3.5A_70D -interlist -lwb

SIM_TOOL="-amber"
USER_EMAIL="akma327@stanford.edu"
CONFIG_FILE_PATH="/scratch/PI/rondror/akma327/DynamicNetworks/data/DI-Pipeline-Config/DynamicNetwork-Configuration.txt"
JOB_FOLDER_PATH="/scratch/PI/rondror/akma327/DynamicNetworks/src/pipeline/calculate/job-scripts/redo-ligand-3.5A70Djobs"
JOB_FOLDER_NAME="cond41_rep1,2,3_lhbstitch_3.5_70"
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/pipeline/calculate
python create-Pipeline.py $SIM_TOOL $USER_EMAIL $CONFIG_FILE_PATH $JOB_FOLDER_PATH $JOB_FOLDER_NAME 41 -replist rep_1,rep_2,rep_3 -stitch -stride 1 -chain A -ligand IXO -titrateid HB_3.5A_70D -interlist -lwb

SIM_TOOL="-amber"
USER_EMAIL="akma327@stanford.edu"
CONFIG_FILE_PATH="/scratch/PI/rondror/akma327/DynamicNetworks/data/DI-Pipeline-Config/DynamicNetwork-Configuration.txt"
JOB_FOLDER_PATH="/scratch/PI/rondror/akma327/DynamicNetworks/src/pipeline/calculate/job-scripts/redo-ligand-3.5A70Djobs"
JOB_FOLDER_NAME="cond41_rep1,2,3_lhbdict_3.5_70"
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/pipeline/calculate
python create-Pipeline.py $SIM_TOOL $USER_EMAIL $CONFIG_FILE_PATH $JOB_FOLDER_PATH $JOB_FOLDER_NAME 41 -replist rep_1,rep_2,rep_3 -bindict -stride 1 -chain A -ligand IXO -titrateid HB_3.5A_70D -interlist -lwb



# M2R-active-unrestrained


# SIM_TOOL="-amber"
# USER_EMAIL="akma327@stanford.edu"
# CONFIG_FILE_PATH="/scratch/PI/rondror/akma327/DynamicNetworks/data/DI-Pipeline-Config/DynamicNetwork-Configuration.txt"
# JOB_FOLDER_PATH="/scratch/PI/rondror/akma327/DynamicNetworks/src/pipeline/calculate/job-scripts/redo-ligand-3.5A70Djobs"
# JOB_FOLDER_NAME="cond45_rep1,2,3_lhbprocess_3.5_70"
# cd /scratch/PI/rondror/akma327/DynamicNetworks/src/pipeline/calculate
# python create-Pipeline.py $SIM_TOOL $USER_EMAIL $CONFIG_FILE_PATH $JOB_FOLDER_PATH $JOB_FOLDER_NAME 45 -replist rep_1,rep_2,rep_3 -di -stride 1 -chain A -ligand IXO -titrateid HB_3.5A_70D -interlist -lwb

SIM_TOOL="-amber"
USER_EMAIL="akma327@stanford.edu"
CONFIG_FILE_PATH="/scratch/PI/rondror/akma327/DynamicNetworks/data/DI-Pipeline-Config/DynamicNetwork-Configuration.txt"
JOB_FOLDER_PATH="/scratch/PI/rondror/akma327/DynamicNetworks/src/pipeline/calculate/job-scripts/redo-ligand-3.5A70Djobs"
JOB_FOLDER_NAME="cond45_rep1,2,3_lhbstitch_3.5_70"
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/pipeline/calculate
python create-Pipeline.py $SIM_TOOL $USER_EMAIL $CONFIG_FILE_PATH $JOB_FOLDER_PATH $JOB_FOLDER_NAME 45 -replist rep_1,rep_2,rep_3 -stitch -stride 1 -chain A -ligand IXO -titrateid HB_3.5A_70D -interlist -lwb

SIM_TOOL="-amber"
USER_EMAIL="akma327@stanford.edu"
CONFIG_FILE_PATH="/scratch/PI/rondror/akma327/DynamicNetworks/data/DI-Pipeline-Config/DynamicNetwork-Configuration.txt"
JOB_FOLDER_PATH="/scratch/PI/rondror/akma327/DynamicNetworks/src/pipeline/calculate/job-scripts/redo-ligand-3.5A70Djobs"
JOB_FOLDER_NAME="cond45_rep1,2,3_lhbdict_3.5_70"
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/pipeline/calculate
python create-Pipeline.py $SIM_TOOL $USER_EMAIL $CONFIG_FILE_PATH $JOB_FOLDER_PATH $JOB_FOLDER_NAME 45 -replist rep_1,rep_2,rep_3 -bindict -stride 1 -chain A -ligand IXO -titrateid HB_3.5A_70D -interlist -lwb




# EXP 5 mor-active-restrained

# SIM_TOOL="-amber"
# USER_EMAIL="akma327@stanford.edu"
# CONFIG_FILE_PATH="/scratch/PI/rondror/akma327/DynamicNetworks/data/DI-Pipeline-Config/DynamicNetwork-Configuration.txt"
# JOB_FOLDER_PATH="/scratch/PI/rondror/akma327/DynamicNetworks/src/pipeline/calculate/job-scripts/redo-ligand-3.5A70Djobs"
# JOB_FOLDER_NAME="cond5_rep1,2,3_lhbprocess_3.5_70"
# cd /scratch/PI/rondror/akma327/DynamicNetworks/src/pipeline/calculate
# python create-Pipeline.py $SIM_TOOL $USER_EMAIL $CONFIG_FILE_PATH $JOB_FOLDER_PATH $JOB_FOLDER_NAME 5 -replist rep_1,rep_2,rep_3 -di -stride 1 -chain A -ligand H3B -titrateid HB_3.5A_70D -interlist -lwb

SIM_TOOL="-amber"
USER_EMAIL="akma327@stanford.edu"
CONFIG_FILE_PATH="/scratch/PI/rondror/akma327/DynamicNetworks/data/DI-Pipeline-Config/DynamicNetwork-Configuration.txt"
JOB_FOLDER_PATH="/scratch/PI/rondror/akma327/DynamicNetworks/src/pipeline/calculate/job-scripts/redo-ligand-3.5A70Djobs"
JOB_FOLDER_NAME="cond5_rep1,2,3_lhbstitch_3.5_70"
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/pipeline/calculate
python create-Pipeline.py $SIM_TOOL $USER_EMAIL $CONFIG_FILE_PATH $JOB_FOLDER_PATH $JOB_FOLDER_NAME 5 -replist rep_1,rep_2,rep_3 -stitch -stride 1 -chain A -ligand H3B -titrateid HB_3.5A_70D -interlist -lwb

SIM_TOOL="-amber"
USER_EMAIL="akma327@stanford.edu"
CONFIG_FILE_PATH="/scratch/PI/rondror/akma327/DynamicNetworks/data/DI-Pipeline-Config/DynamicNetwork-Configuration.txt"
JOB_FOLDER_PATH="/scratch/PI/rondror/akma327/DynamicNetworks/src/pipeline/calculate/job-scripts/redo-ligand-3.5A70Djobs"
JOB_FOLDER_NAME="cond5_rep1,2,3_lhbdict_3.5_70"
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/pipeline/calculate
python create-Pipeline.py $SIM_TOOL $USER_EMAIL $CONFIG_FILE_PATH $JOB_FOLDER_PATH $JOB_FOLDER_NAME 5 -replist rep_1,rep_2,rep_3 -bindict -stride 1 -chain A -ligand H3B -titrateid HB_3.5A_70D -interlist -lwb



# MOR-active-Nb-unrestrained-unpublished -chain A -ligand H3B

# SIM_TOOL="-amber"
# USER_EMAIL="akma327@stanford.edu"
# CONFIG_FILE_PATH="/scratch/PI/rondror/akma327/DynamicNetworks/data/DI-Pipeline-Config/DynamicNetwork-Configuration.txt"
# JOB_FOLDER_PATH="/scratch/PI/rondror/akma327/DynamicNetworks/src/pipeline/calculate/job-scripts/redo-ligand-3.5A70Djobs"
# JOB_FOLDER_NAME="cond40_rep1,2,3_lhbprocess_3.5_70"
# cd /scratch/PI/rondror/akma327/DynamicNetworks/src/pipeline/calculate
# python create-Pipeline.py $SIM_TOOL $USER_EMAIL $CONFIG_FILE_PATH $JOB_FOLDER_PATH $JOB_FOLDER_NAME 40 -replist rep_1,rep_2,rep_3 -di -stride 1 -chain A -ligand H3B -titrateid HB_3.5A_70D -interlist -lwb

SIM_TOOL="-amber"
USER_EMAIL="akma327@stanford.edu"
CONFIG_FILE_PATH="/scratch/PI/rondror/akma327/DynamicNetworks/data/DI-Pipeline-Config/DynamicNetwork-Configuration.txt"
JOB_FOLDER_PATH="/scratch/PI/rondror/akma327/DynamicNetworks/src/pipeline/calculate/job-scripts/redo-ligand-3.5A70Djobs"
JOB_FOLDER_NAME="cond40_rep1,2,3_lhbstitch_3.5_70"
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/pipeline/calculate
python create-Pipeline.py $SIM_TOOL $USER_EMAIL $CONFIG_FILE_PATH $JOB_FOLDER_PATH $JOB_FOLDER_NAME 40 -replist rep_1,rep_2,rep_3 -stitch -stride 1 -chain A -ligand H3B -titrateid HB_3.5A_70D -interlist -lwb

SIM_TOOL="-amber"
USER_EMAIL="akma327@stanford.edu"
CONFIG_FILE_PATH="/scratch/PI/rondror/akma327/DynamicNetworks/data/DI-Pipeline-Config/DynamicNetwork-Configuration.txt"
JOB_FOLDER_PATH="/scratch/PI/rondror/akma327/DynamicNetworks/src/pipeline/calculate/job-scripts/redo-ligand-3.5A70Djobs"
JOB_FOLDER_NAME="cond40_rep1,2,3_lhbdict_3.5_70"
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/pipeline/calculate
python create-Pipeline.py $SIM_TOOL $USER_EMAIL $CONFIG_FILE_PATH $JOB_FOLDER_PATH $JOB_FOLDER_NAME 40 -replist rep_1,rep_2,rep_3 -bindict -stride 1 -chain A -ligand H3B -titrateid HB_3.5A_70D -interlist -lwb



# Rhodopsin-active-unrestrained

# SIM_TOOL="-amber"
# USER_EMAIL="akma327@stanford.edu"
# CONFIG_FILE_PATH="/scratch/PI/rondror/akma327/DynamicNetworks/data/DI-Pipeline-Config/DynamicNetwork-Configuration.txt"
# JOB_FOLDER_PATH="/scratch/PI/rondror/akma327/DynamicNetworks/src/pipeline/calculate/job-scripts/redo-ligand-3.5A70Djobs"
# JOB_FOLDER_NAME="cond42_rep1,2,3_lhbprocess_3.5_70"
# cd /scratch/PI/rondror/akma327/DynamicNetworks/src/pipeline/calculate
# python create-Pipeline.py $SIM_TOOL $USER_EMAIL $CONFIG_FILE_PATH $JOB_FOLDER_PATH $JOB_FOLDER_NAME 42 -replist rep_1,rep_2,rep_3 -di -stride 1 -chain A -ligand RET -titrateid HB_3.5A_70D -interlist -lwb

SIM_TOOL="-amber"
USER_EMAIL="akma327@stanford.edu"
CONFIG_FILE_PATH="/scratch/PI/rondror/akma327/DynamicNetworks/data/DI-Pipeline-Config/DynamicNetwork-Configuration.txt"
JOB_FOLDER_PATH="/scratch/PI/rondror/akma327/DynamicNetworks/src/pipeline/calculate/job-scripts/redo-ligand-3.5A70Djobs"
JOB_FOLDER_NAME="cond42_rep1,2,3_lhbstitch_3.5_70"
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/pipeline/calculate
python create-Pipeline.py $SIM_TOOL $USER_EMAIL $CONFIG_FILE_PATH $JOB_FOLDER_PATH $JOB_FOLDER_NAME 42 -replist rep_1,rep_2,rep_3 -stitch -stride 1 -chain A -ligand RET -titrateid HB_3.5A_70D -interlist -lwb

SIM_TOOL="-amber"
USER_EMAIL="akma327@stanford.edu"
CONFIG_FILE_PATH="/scratch/PI/rondror/akma327/DynamicNetworks/data/DI-Pipeline-Config/DynamicNetwork-Configuration.txt"
JOB_FOLDER_PATH="/scratch/PI/rondror/akma327/DynamicNetworks/src/pipeline/calculate/job-scripts/redo-ligand-3.5A70Djobs"
JOB_FOLDER_NAME="cond42_rep1,2,3_lhbdict_3.5_70"
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/pipeline/calculate
python create-Pipeline.py $SIM_TOOL $USER_EMAIL $CONFIG_FILE_PATH $JOB_FOLDER_PATH $JOB_FOLDER_NAME 42 -replist rep_1,rep_2,rep_3 -bindict -stride 1 -chain A -ligand RET -titrateid HB_3.5A_70D -interlist -lwb




# US28-active-unrestrained

# SIM_TOOL="-amber"
# USER_EMAIL="akma327@stanford.edu"
# CONFIG_FILE_PATH="/scratch/PI/rondror/akma327/DynamicNetworks/data/DI-Pipeline-Config/DynamicNetwork-Configuration.txt"
# JOB_FOLDER_PATH="/scratch/PI/rondror/akma327/DynamicNetworks/src/pipeline/calculate/job-scripts/redo-ligand-3.5A70Djobs"
# JOB_FOLDER_NAME="cond43_rep1,2,3_lhbprocess_3.5_70"
# cd /scratch/PI/rondror/akma327/DynamicNetworks/src/pipeline/calculate
# python create-Pipeline.py $SIM_TOOL $USER_EMAIL $CONFIG_FILE_PATH $JOB_FOLDER_PATH $JOB_FOLDER_NAME 43 -replist rep_1,rep_2,rep_3 -di -stride 1 -chain A -ligand CHAIN_B -titrateid HB_3.5A_70D -interlist -lwb

SIM_TOOL="-amber"
USER_EMAIL="akma327@stanford.edu"
CONFIG_FILE_PATH="/scratch/PI/rondror/akma327/DynamicNetworks/data/DI-Pipeline-Config/DynamicNetwork-Configuration.txt"
JOB_FOLDER_PATH="/scratch/PI/rondror/akma327/DynamicNetworks/src/pipeline/calculate/job-scripts/redo-ligand-3.5A70Djobs"
JOB_FOLDER_NAME="cond43_rep1,2,3_lhbstitch_3.5_70"
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/pipeline/calculate
python create-Pipeline.py $SIM_TOOL $USER_EMAIL $CONFIG_FILE_PATH $JOB_FOLDER_PATH $JOB_FOLDER_NAME 43 -replist rep_1,rep_2,rep_3 -stitch -stride 1 -chain A -ligand CHAIN_B -titrateid HB_3.5A_70D -interlist -lwb

SIM_TOOL="-amber"
USER_EMAIL="akma327@stanford.edu"
CONFIG_FILE_PATH="/scratch/PI/rondror/akma327/DynamicNetworks/data/DI-Pipeline-Config/DynamicNetwork-Configuration.txt"
JOB_FOLDER_PATH="/scratch/PI/rondror/akma327/DynamicNetworks/src/pipeline/calculate/job-scripts/redo-ligand-3.5A70Djobs"
JOB_FOLDER_NAME="cond43_rep1,2,3_lhbdict_3.5_70"
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/pipeline/calculate
python create-Pipeline.py $SIM_TOOL $USER_EMAIL $CONFIG_FILE_PATH $JOB_FOLDER_PATH $JOB_FOLDER_NAME 43 -replist rep_1,rep_2,rep_3 -bindict -stride 1 -chain A -ligand CHAIN_B -titrateid HB_3.5A_70D -interlist -lwb



# US28-active-restrained 

# SIM_TOOL="-amber"
# USER_EMAIL="akma327@stanford.edu"
# CONFIG_FILE_PATH="/scratch/PI/rondror/akma327/DynamicNetworks/data/DI-Pipeline-Config/DynamicNetwork-Configuration.txt"
# JOB_FOLDER_PATH="/scratch/PI/rondror/akma327/DynamicNetworks/src/pipeline/calculate/job-scripts/redo-ligand-3.5A70Djobs"
# JOB_FOLDER_NAME="cond44_rep1,2,3_lhbprocess_3.5_70"
# cd /scratch/PI/rondror/akma327/DynamicNetworks/src/pipeline/calculate
# python create-Pipeline.py $SIM_TOOL $USER_EMAIL $CONFIG_FILE_PATH $JOB_FOLDER_PATH $JOB_FOLDER_NAME 44 -replist rep_1,rep_2,rep_3 -di -stride 1 -chain A -ligand CHAIN_B -titrateid HB_3.5A_70D -interlist -lwb

SIM_TOOL="-amber"
USER_EMAIL="akma327@stanford.edu"
CONFIG_FILE_PATH="/scratch/PI/rondror/akma327/DynamicNetworks/data/DI-Pipeline-Config/DynamicNetwork-Configuration.txt"
JOB_FOLDER_PATH="/scratch/PI/rondror/akma327/DynamicNetworks/src/pipeline/calculate/job-scripts/redo-ligand-3.5A70Djobs"
JOB_FOLDER_NAME="cond44_rep1,2,3_lhbstitch_3.5_70"
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/pipeline/calculate
python create-Pipeline.py $SIM_TOOL $USER_EMAIL $CONFIG_FILE_PATH $JOB_FOLDER_PATH $JOB_FOLDER_NAME 44 -replist rep_1,rep_2,rep_3 -stitch -stride 1 -chain A -ligand CHAIN_B -titrateid HB_3.5A_70D -interlist -lwb

SIM_TOOL="-amber"
USER_EMAIL="akma327@stanford.edu"
CONFIG_FILE_PATH="/scratch/PI/rondror/akma327/DynamicNetworks/data/DI-Pipeline-Config/DynamicNetwork-Configuration.txt"
JOB_FOLDER_PATH="/scratch/PI/rondror/akma327/DynamicNetworks/src/pipeline/calculate/job-scripts/redo-ligand-3.5A70Djobs"
JOB_FOLDER_NAME="cond44_rep1,2,3_lhbdict_3.5_70"
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/pipeline/calculate
python create-Pipeline.py $SIM_TOOL $USER_EMAIL $CONFIG_FILE_PATH $JOB_FOLDER_PATH $JOB_FOLDER_NAME 44 -replist rep_1,rep_2,rep_3 -bindict -stride 1 -chain A -ligand CHAIN_B -titrateid HB_3.5A_70D -interlist -lwb






