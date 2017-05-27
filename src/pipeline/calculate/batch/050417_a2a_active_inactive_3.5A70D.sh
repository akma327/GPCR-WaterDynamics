# 05/04/17
# A2A Active and Inactive Simulations

# A2A-inactive-ZMA-unpublished 

# SIM_TOOL="-amber"
# USER_EMAIL="akma327@stanford.edu"
# CONFIG_FILE_PATH="/scratch/PI/rondror/akma327/DynamicNetworks/data/DI-Pipeline-Config/DynamicNetwork-Configuration.txt"
# JOB_FOLDER_PATH="/scratch/PI/rondror/akma327/DynamicNetworks/src/pipeline/calculate/job-scripts/new-active-3.5A70Djobs"
# JOB_FOLDER_NAME="cond46_rep1,2,3,4,5_hbw_3.5_70"
# cd /scratch/PI/rondror/akma327/DynamicNetworks/src/pipeline/calculate
# python create-Pipeline.py $SIM_TOOL $USER_EMAIL $CONFIG_FILE_PATH $JOB_FOLDER_PATH $JOB_FOLDER_NAME 46 -replist rep_1,rep_2,rep_3,rep_4,rep_5 -di -stride 1 -chain A -titrateid HB_3.5A_70D -interlist -hbw

# SIM_TOOL="-amber"
# USER_EMAIL="akma327@stanford.edu"
# CONFIG_FILE_PATH="/scratch/PI/rondror/akma327/DynamicNetworks/data/DI-Pipeline-Config/DynamicNetwork-Configuration.txt"
# JOB_FOLDER_PATH="/scratch/PI/rondror/akma327/DynamicNetworks/src/pipeline/calculate/job-scripts/new-active-3.5A70Djobs"
# JOB_FOLDER_NAME="cond46_rep1,2,3,4,5_hbprocess_3.5_70"
# cd /scratch/PI/rondror/akma327/DynamicNetworks/src/pipeline/calculate
# python create-Pipeline.py $SIM_TOOL $USER_EMAIL $CONFIG_FILE_PATH $JOB_FOLDER_PATH $JOB_FOLDER_NAME 46 -replist rep_1,rep_2,rep_3,rep_4,rep_5 -di -stride 1 -chain A -titrateid HB_3.5A_70D -interlist -hbbb -hbss -hbsb -wb -wb2 -rw

# SIM_TOOL="-amber"
# USER_EMAIL="akma327@stanford.edu"
# CONFIG_FILE_PATH="/scratch/PI/rondror/akma327/DynamicNetworks/data/DI-Pipeline-Config/DynamicNetwork-Configuration.txt"
# JOB_FOLDER_PATH="/scratch/PI/rondror/akma327/DynamicNetworks/src/pipeline/calculate/job-scripts/new-active-3.5A70Djobs"
# JOB_FOLDER_NAME="cond46_rep1,2,3,4,5_hbstitch_3.5_70"
# cd /scratch/PI/rondror/akma327/DynamicNetworks/src/pipeline/calculate
# python create-Pipeline.py $SIM_TOOL $USER_EMAIL $CONFIG_FILE_PATH $JOB_FOLDER_PATH $JOB_FOLDER_NAME 46 -replist rep_1,rep_2,rep_3,rep_4,rep_5 -stitch -stride 1 -chain A -titrateid HB_3.5A_70D -interlist -hbbb -hbss -hbsb -wb -wb2 -rw

SIM_TOOL="-amber"
USER_EMAIL="akma327@stanford.edu"
CONFIG_FILE_PATH="/scratch/PI/rondror/akma327/DynamicNetworks/data/DI-Pipeline-Config/DynamicNetwork-Configuration.txt"
JOB_FOLDER_PATH="/scratch/PI/rondror/akma327/DynamicNetworks/src/pipeline/calculate/job-scripts/new-active-3.5A70Djobs"
JOB_FOLDER_NAME="cond46_rep1,2,3,4,5_hbdict_3.5_70"
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/pipeline/calculate
python create-Pipeline.py $SIM_TOOL $USER_EMAIL $CONFIG_FILE_PATH $JOB_FOLDER_PATH $JOB_FOLDER_NAME 46 -replist rep_1,rep_2,rep_3,rep_4,rep_5 -bindict -stride 1 -chain A -titrateid HB_3.5A_70D -interlist -hbbb -hbss -hbsb -wb -wb2 -rw



# A2A-inactive-ZMA-unpublished  LIGAND


# SIM_TOOL="-amber"
# USER_EMAIL="akma327@stanford.edu"
# CONFIG_FILE_PATH="/scratch/PI/rondror/akma327/DynamicNetworks/data/DI-Pipeline-Config/DynamicNetwork-Configuration.txt"
# JOB_FOLDER_PATH="/scratch/PI/rondror/akma327/DynamicNetworks/src/pipeline/calculate/job-scripts/new-active-3.5A70Djobs"
# JOB_FOLDER_NAME="cond46_rep1,2,3,4,5_lhbw_3.5_70"
# cd /scratch/PI/rondror/akma327/DynamicNetworks/src/pipeline/calculate
# python create-Pipeline.py $SIM_TOOL $USER_EMAIL $CONFIG_FILE_PATH $JOB_FOLDER_PATH $JOB_FOLDER_NAME 46 -replist rep_1,rep_2,rep_3,rep_4,rep_5 -di -stride 1 -chain A -ligand ZMA -titrateid HB_3.5A_70D -interlist -lhbw

# SIM_TOOL="-amber"
# USER_EMAIL="akma327@stanford.edu"
# CONFIG_FILE_PATH="/scratch/PI/rondror/akma327/DynamicNetworks/data/DI-Pipeline-Config/DynamicNetwork-Configuration.txt"
# JOB_FOLDER_PATH="/scratch/PI/rondror/akma327/DynamicNetworks/src/pipeline/calculate/job-scripts/new-active-3.5A70Djobs"
# JOB_FOLDER_NAME="cond46_rep1,2,3,4,5_lhbprocess_3.5_70"
# cd /scratch/PI/rondror/akma327/DynamicNetworks/src/pipeline/calculate
# python create-Pipeline.py $SIM_TOOL $USER_EMAIL $CONFIG_FILE_PATH $JOB_FOLDER_PATH $JOB_FOLDER_NAME 46 -replist rep_1,rep_2,rep_3,rep_4,rep_5 -di -stride 1 -chain A -ligand ZMA -titrateid HB_3.5A_70D -interlist -hlb -hls -lw -lwb -lwb2

# SIM_TOOL="-amber"
# USER_EMAIL="akma327@stanford.edu"
# CONFIG_FILE_PATH="/scratch/PI/rondror/akma327/DynamicNetworks/data/DI-Pipeline-Config/DynamicNetwork-Configuration.txt"
# JOB_FOLDER_PATH="/scratch/PI/rondror/akma327/DynamicNetworks/src/pipeline/calculate/job-scripts/new-active-3.5A70Djobs"
# JOB_FOLDER_NAME="cond46_rep1,2,3,4,5_lhbstitch_3.5_70"
# cd /scratch/PI/rondror/akma327/DynamicNetworks/src/pipeline/calculate
# python create-Pipeline.py $SIM_TOOL $USER_EMAIL $CONFIG_FILE_PATH $JOB_FOLDER_PATH $JOB_FOLDER_NAME 46 -replist rep_1,rep_2,rep_3,rep_4,rep_5 -stitch -stride 1 -chain A -ligand ZMA -titrateid HB_3.5A_70D -interlist -hlb -hls -lw -lwb -lwb2

SIM_TOOL="-amber"
USER_EMAIL="akma327@stanford.edu"
CONFIG_FILE_PATH="/scratch/PI/rondror/akma327/DynamicNetworks/data/DI-Pipeline-Config/DynamicNetwork-Configuration.txt"
JOB_FOLDER_PATH="/scratch/PI/rondror/akma327/DynamicNetworks/src/pipeline/calculate/job-scripts/new-active-3.5A70Djobs"
JOB_FOLDER_NAME="cond46_rep1,2,3,4,5_lhbdict_3.5_70"
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/pipeline/calculate
python create-Pipeline.py $SIM_TOOL $USER_EMAIL $CONFIG_FILE_PATH $JOB_FOLDER_PATH $JOB_FOLDER_NAME 46 -replist rep_1,rep_2,rep_3,rep_4,rep_5 -bindict -stride 1 -chain A -ligand ZMA -titrateid HB_3.5A_70D -interlist -hlb -hls -lw -lwb -lwb2




# A2A-active-NEC-unpublished 

# SIM_TOOL="-amber"
# USER_EMAIL="akma327@stanford.edu"
# CONFIG_FILE_PATH="/scratch/PI/rondror/akma327/DynamicNetworks/data/DI-Pipeline-Config/DynamicNetwork-Configuration.txt"
# JOB_FOLDER_PATH="/scratch/PI/rondror/akma327/DynamicNetworks/src/pipeline/calculate/job-scripts/new-active-3.5A70Djobs"
# JOB_FOLDER_NAME="cond47_rep1,2,3,4,5_hbw_3.5_70"
# cd /scratch/PI/rondror/akma327/DynamicNetworks/src/pipeline/calculate
# python create-Pipeline.py $SIM_TOOL $USER_EMAIL $CONFIG_FILE_PATH $JOB_FOLDER_PATH $JOB_FOLDER_NAME 47 -replist rep_1,rep_2,rep_3,rep_4,rep_5 -di -stride 1 -chain A -titrateid HB_3.5A_70D -interlist -hbw

# SIM_TOOL="-amber"
# USER_EMAIL="akma327@stanford.edu"
# CONFIG_FILE_PATH="/scratch/PI/rondror/akma327/DynamicNetworks/data/DI-Pipeline-Config/DynamicNetwork-Configuration.txt"
# JOB_FOLDER_PATH="/scratch/PI/rondror/akma327/DynamicNetworks/src/pipeline/calculate/job-scripts/new-active-3.5A70Djobs"
# JOB_FOLDER_NAME="cond47_rep1,2,3,4,5_hbprocess_3.5_70"
# cd /scratch/PI/rondror/akma327/DynamicNetworks/src/pipeline/calculate
# python create-Pipeline.py $SIM_TOOL $USER_EMAIL $CONFIG_FILE_PATH $JOB_FOLDER_PATH $JOB_FOLDER_NAME 47 -replist rep_1,rep_2,rep_3,rep_4,rep_5 -di -stride 1 -chain A -titrateid HB_3.5A_70D -interlist -hbbb -hbss -hbsb -wb -wb2 -rw

# SIM_TOOL="-amber"
# USER_EMAIL="akma327@stanford.edu"
# CONFIG_FILE_PATH="/scratch/PI/rondror/akma327/DynamicNetworks/data/DI-Pipeline-Config/DynamicNetwork-Configuration.txt"
# JOB_FOLDER_PATH="/scratch/PI/rondror/akma327/DynamicNetworks/src/pipeline/calculate/job-scripts/new-active-3.5A70Djobs"
# JOB_FOLDER_NAME="cond47_rep1,2,3,4,5_hbstitch_3.5_70"
# cd /scratch/PI/rondror/akma327/DynamicNetworks/src/pipeline/calculate
# python create-Pipeline.py $SIM_TOOL $USER_EMAIL $CONFIG_FILE_PATH $JOB_FOLDER_PATH $JOB_FOLDER_NAME 47 -replist rep_1,rep_2,rep_3,rep_4,rep_5 -stitch -stride 1 -chain A -titrateid HB_3.5A_70D -interlist -hbbb -hbss -hbsb -wb -wb2 -rw

SIM_TOOL="-amber"
USER_EMAIL="akma327@stanford.edu"
CONFIG_FILE_PATH="/scratch/PI/rondror/akma327/DynamicNetworks/data/DI-Pipeline-Config/DynamicNetwork-Configuration.txt"
JOB_FOLDER_PATH="/scratch/PI/rondror/akma327/DynamicNetworks/src/pipeline/calculate/job-scripts/new-active-3.5A70Djobs"
JOB_FOLDER_NAME="cond47_rep1,2,3,4,5_hbdict_3.5_70"
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/pipeline/calculate
python create-Pipeline.py $SIM_TOOL $USER_EMAIL $CONFIG_FILE_PATH $JOB_FOLDER_PATH $JOB_FOLDER_NAME 47 -replist rep_1,rep_2,rep_3,rep_4,rep_5 -bindict -stride 1 -chain A -titrateid HB_3.5A_70D -interlist -hbbb -hbss -hbsb -wb -wb2 -rw



# A2A-active-NEC-unpublished  LIGAND


# SIM_TOOL="-amber"
# USER_EMAIL="akma327@stanford.edu"
# CONFIG_FILE_PATH="/scratch/PI/rondror/akma327/DynamicNetworks/data/DI-Pipeline-Config/DynamicNetwork-Configuration.txt"
# JOB_FOLDER_PATH="/scratch/PI/rondror/akma327/DynamicNetworks/src/pipeline/calculate/job-scripts/new-active-3.5A70Djobs"
# JOB_FOLDER_NAME="cond47_rep1,2,3,4,5_lhbw_3.5_70"
# cd /scratch/PI/rondror/akma327/DynamicNetworks/src/pipeline/calculate
# python create-Pipeline.py $SIM_TOOL $USER_EMAIL $CONFIG_FILE_PATH $JOB_FOLDER_PATH $JOB_FOLDER_NAME 47 -replist rep_1,rep_2,rep_3,rep_4,rep_5 -di -stride 1 -chain A -ligand NEC -titrateid HB_3.5A_70D -interlist -lhbw

# SIM_TOOL="-amber"
# USER_EMAIL="akma327@stanford.edu"
# CONFIG_FILE_PATH="/scratch/PI/rondror/akma327/DynamicNetworks/data/DI-Pipeline-Config/DynamicNetwork-Configuration.txt"
# JOB_FOLDER_PATH="/scratch/PI/rondror/akma327/DynamicNetworks/src/pipeline/calculate/job-scripts/new-active-3.5A70Djobs"
# JOB_FOLDER_NAME="cond47_rep1,2,3,4,5_lhbprocess_3.5_70"
# cd /scratch/PI/rondror/akma327/DynamicNetworks/src/pipeline/calculate
# python create-Pipeline.py $SIM_TOOL $USER_EMAIL $CONFIG_FILE_PATH $JOB_FOLDER_PATH $JOB_FOLDER_NAME 47 -replist rep_1,rep_2,rep_3,rep_4,rep_5 -di -stride 1 -chain A -ligand NEC -titrateid HB_3.5A_70D -interlist -hlb -hls -lw -lwb -lwb2

# SIM_TOOL="-amber"
# USER_EMAIL="akma327@stanford.edu"
# CONFIG_FILE_PATH="/scratch/PI/rondror/akma327/DynamicNetworks/data/DI-Pipeline-Config/DynamicNetwork-Configuration.txt"
# JOB_FOLDER_PATH="/scratch/PI/rondror/akma327/DynamicNetworks/src/pipeline/calculate/job-scripts/new-active-3.5A70Djobs"
# JOB_FOLDER_NAME="cond47_rep1,2,3,4,5_lhbstitch_3.5_70"
# cd /scratch/PI/rondror/akma327/DynamicNetworks/src/pipeline/calculate
# python create-Pipeline.py $SIM_TOOL $USER_EMAIL $CONFIG_FILE_PATH $JOB_FOLDER_PATH $JOB_FOLDER_NAME 47 -replist rep_1,rep_2,rep_3,rep_4,rep_5 -stitch -stride 1 -chain A -ligand NEC -titrateid HB_3.5A_70D -interlist -hlb -hls -lw -lwb -lwb2

SIM_TOOL="-amber"
USER_EMAIL="akma327@stanford.edu"
CONFIG_FILE_PATH="/scratch/PI/rondror/akma327/DynamicNetworks/data/DI-Pipeline-Config/DynamicNetwork-Configuration.txt"
JOB_FOLDER_PATH="/scratch/PI/rondror/akma327/DynamicNetworks/src/pipeline/calculate/job-scripts/new-active-3.5A70Djobs"
JOB_FOLDER_NAME="cond47_rep1,2,3,4,5_lhbdict_3.5_70"
cd /scratch/PI/rondror/akma327/DynamicNetworks/src/pipeline/calculate
python create-Pipeline.py $SIM_TOOL $USER_EMAIL $CONFIG_FILE_PATH $JOB_FOLDER_PATH $JOB_FOLDER_NAME 47 -replist rep_1,rep_2,rep_3,rep_4,rep_5 -bindict -stride 1 -chain A -ligand NEC -titrateid HB_3.5A_70D -interlist -hlb -hls -lw -lwb -lwb2
