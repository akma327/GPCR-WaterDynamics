cd /scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/Rhodopsin-active-unrestrained-unpublished/2x72-E113Q-M257Y-constitutively-active/rep_2
mkdir Prod_0
cd Prod_0
rm reimage.in
echo "parm /scratch/PI/rondror/MD_simulations/amber/rhodopsin/2x72/rep2/system.prmtop
trajin /scratch/PI/rondror/MD_simulations/amber/rhodopsin/2x72/rep2/system.inpcrd
trajin /scratch/PI/rondror/MD_simulations/amber/rhodopsin/2x72/rep2/Eq_15.nc
center origin '!(:POPC | :TIP3 | :SOD | :CLA)'
image origin center
trajout Prod_0_reimaged.nc
go" >> reimage.in
ml load amber
cpptraj -i reimage.in

cd /scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/Rhodopsin-active-unrestrained-unpublished/2x72-E113Q-M257Y-constitutively-active/rep_2
mkdir Prod_1
cd Prod_1
rm reimage.in
echo "parm /scratch/PI/rondror/MD_simulations/amber/rhodopsin/2x72/rep2/system.prmtop
trajin /scratch/PI/rondror/MD_simulations/amber/rhodopsin/2x72/rep2/Prod_1.nc
center origin '!(:POPC | :TIP3 | :SOD | :CLA)'
image origin center
trajout Prod_1_reimaged.nc
go" >> reimage.in
ml load amber
cpptraj -i reimage.in

cd /scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/Rhodopsin-active-unrestrained-unpublished/2x72-E113Q-M257Y-constitutively-active/rep_2
mkdir Prod_2
cd Prod_2
rm reimage.in
echo "parm /scratch/PI/rondror/MD_simulations/amber/rhodopsin/2x72/rep2/system.prmtop
trajin /scratch/PI/rondror/MD_simulations/amber/rhodopsin/2x72/rep2/Prod_2.nc
center origin '!(:POPC | :TIP3 | :SOD | :CLA)'
image origin center
trajout Prod_2_reimaged.nc
go" >> reimage.in
ml load amber
cpptraj -i reimage.in

cd /scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/Rhodopsin-active-unrestrained-unpublished/2x72-E113Q-M257Y-constitutively-active/rep_2
mkdir Prod_3
cd Prod_3
rm reimage.in
echo "parm /scratch/PI/rondror/MD_simulations/amber/rhodopsin/2x72/rep2/system.prmtop
trajin /scratch/PI/rondror/MD_simulations/amber/rhodopsin/2x72/rep2/Prod_3.nc
center origin '!(:POPC | :TIP3 | :SOD | :CLA)'
image origin center
trajout Prod_3_reimaged.nc
go" >> reimage.in
ml load amber
cpptraj -i reimage.in

cd /scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/Rhodopsin-active-unrestrained-unpublished/2x72-E113Q-M257Y-constitutively-active/rep_2
mkdir Prod_4
cd Prod_4
rm reimage.in
echo "parm /scratch/PI/rondror/MD_simulations/amber/rhodopsin/2x72/rep2/system.prmtop
trajin /scratch/PI/rondror/MD_simulations/amber/rhodopsin/2x72/rep2/Prod_4.nc
center origin '!(:POPC | :TIP3 | :SOD | :CLA)'
image origin center
trajout Prod_4_reimaged.nc
go" >> reimage.in
ml load amber
cpptraj -i reimage.in

cd /scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/Rhodopsin-active-unrestrained-unpublished/2x72-E113Q-M257Y-constitutively-active/rep_2
mkdir Prod_5
cd Prod_5
rm reimage.in
echo "parm /scratch/PI/rondror/MD_simulations/amber/rhodopsin/2x72/rep2/system.prmtop
trajin /scratch/PI/rondror/MD_simulations/amber/rhodopsin/2x72/rep2/Prod_5.nc
center origin '!(:POPC | :TIP3 | :SOD | :CLA)'
image origin center
trajout Prod_5_reimaged.nc
go" >> reimage.in
ml load amber
cpptraj -i reimage.in

cd /scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/Rhodopsin-active-unrestrained-unpublished/2x72-E113Q-M257Y-constitutively-active/rep_2
mkdir Prod_6
cd Prod_6
rm reimage.in
echo "parm /scratch/PI/rondror/MD_simulations/amber/rhodopsin/2x72/rep2/system.prmtop
trajin /scratch/PI/rondror/MD_simulations/amber/rhodopsin/2x72/rep2/Prod_6.nc
center origin '!(:POPC | :TIP3 | :SOD | :CLA)'
image origin center
trajout Prod_6_reimaged.nc
go" >> reimage.in
ml load amber
cpptraj -i reimage.in

cd /scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/Rhodopsin-active-unrestrained-unpublished/2x72-E113Q-M257Y-constitutively-active/rep_2
mkdir Prod_7
cd Prod_7
rm reimage.in
echo "parm /scratch/PI/rondror/MD_simulations/amber/rhodopsin/2x72/rep2/system.prmtop
trajin /scratch/PI/rondror/MD_simulations/amber/rhodopsin/2x72/rep2/Prod_7.nc
center origin '!(:POPC | :TIP3 | :SOD | :CLA)'
image origin center
trajout Prod_7_reimaged.nc
go" >> reimage.in
ml load amber
cpptraj -i reimage.in

cd /scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/Rhodopsin-active-unrestrained-unpublished/2x72-E113Q-M257Y-constitutively-active/rep_2
mkdir Prod_8
cd Prod_8
rm reimage.in
echo "parm /scratch/PI/rondror/MD_simulations/amber/rhodopsin/2x72/rep2/system.prmtop
trajin /scratch/PI/rondror/MD_simulations/amber/rhodopsin/2x72/rep2/Prod_8.nc
center origin '!(:POPC | :TIP3 | :SOD | :CLA)'
image origin center
trajout Prod_8_reimaged.nc
go" >> reimage.in
ml load amber
cpptraj -i reimage.in

cd /scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/Rhodopsin-active-unrestrained-unpublished/2x72-E113Q-M257Y-constitutively-active/rep_2
mkdir Prod_9
cd Prod_9
rm reimage.in
echo "parm /scratch/PI/rondror/MD_simulations/amber/rhodopsin/2x72/rep2/system.prmtop
trajin /scratch/PI/rondror/MD_simulations/amber/rhodopsin/2x72/rep2/Prod_9.nc
center origin '!(:POPC | :TIP3 | :SOD | :CLA)'
image origin center
trajout Prod_9_reimaged.nc
go" >> reimage.in
ml load amber
cpptraj -i reimage.in

cd /scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/Rhodopsin-active-unrestrained-unpublished/2x72-E113Q-M257Y-constitutively-active/rep_2
mkdir Prod_10
cd Prod_10
rm reimage.in
echo "parm /scratch/PI/rondror/MD_simulations/amber/rhodopsin/2x72/rep2/system.prmtop
trajin /scratch/PI/rondror/MD_simulations/amber/rhodopsin/2x72/rep2/Prod_10.nc
center origin '!(:POPC | :TIP3 | :SOD | :CLA)'
image origin center
trajout Prod_10_reimaged.nc
go" >> reimage.in
ml load amber
cpptraj -i reimage.in

cd /scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/Rhodopsin-active-unrestrained-unpublished/2x72-E113Q-M257Y-constitutively-active/rep_2
mkdir Prod_11
cd Prod_11
rm reimage.in
echo "parm /scratch/PI/rondror/MD_simulations/amber/rhodopsin/2x72/rep2/system.prmtop
trajin /scratch/PI/rondror/MD_simulations/amber/rhodopsin/2x72/rep2/Prod_11.nc
center origin '!(:POPC | :TIP3 | :SOD | :CLA)'
image origin center
trajout Prod_11_reimaged.nc
go" >> reimage.in
ml load amber
cpptraj -i reimage.in

cd /scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/Rhodopsin-active-unrestrained-unpublished/2x72-E113Q-M257Y-constitutively-active/rep_2
mkdir Prod_12
cd Prod_12
rm reimage.in
echo "parm /scratch/PI/rondror/MD_simulations/amber/rhodopsin/2x72/rep2/system.prmtop
trajin /scratch/PI/rondror/MD_simulations/amber/rhodopsin/2x72/rep2/Prod_12.nc
center origin '!(:POPC | :TIP3 | :SOD | :CLA)'
image origin center
trajout Prod_12_reimaged.nc
go" >> reimage.in
ml load amber
cpptraj -i reimage.in

cd /scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/Rhodopsin-active-unrestrained-unpublished/2x72-E113Q-M257Y-constitutively-active/rep_2
mkdir Prod_13
cd Prod_13
rm reimage.in
echo "parm /scratch/PI/rondror/MD_simulations/amber/rhodopsin/2x72/rep2/system.prmtop
trajin /scratch/PI/rondror/MD_simulations/amber/rhodopsin/2x72/rep2/Prod_13.nc
center origin '!(:POPC | :TIP3 | :SOD | :CLA)'
image origin center
trajout Prod_13_reimaged.nc
go" >> reimage.in
ml load amber
cpptraj -i reimage.in

cd /scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/Rhodopsin-active-unrestrained-unpublished/2x72-E113Q-M257Y-constitutively-active/rep_2
mkdir Prod_14
cd Prod_14
rm reimage.in
echo "parm /scratch/PI/rondror/MD_simulations/amber/rhodopsin/2x72/rep2/system.prmtop
trajin /scratch/PI/rondror/MD_simulations/amber/rhodopsin/2x72/rep2/Prod_14.nc
center origin '!(:POPC | :TIP3 | :SOD | :CLA)'
image origin center
trajout Prod_14_reimaged.nc
go" >> reimage.in
ml load amber
cpptraj -i reimage.in

cd /scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/Rhodopsin-active-unrestrained-unpublished/2x72-E113Q-M257Y-constitutively-active/rep_2
mkdir Prod_15
cd Prod_15
rm reimage.in
echo "parm /scratch/PI/rondror/MD_simulations/amber/rhodopsin/2x72/rep2/system.prmtop
trajin /scratch/PI/rondror/MD_simulations/amber/rhodopsin/2x72/rep2/Prod_15.nc
center origin '!(:POPC | :TIP3 | :SOD | :CLA)'
image origin center
trajout Prod_15_reimaged.nc
go" >> reimage.in
ml load amber
cpptraj -i reimage.in

cd /scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/Rhodopsin-active-unrestrained-unpublished/2x72-E113Q-M257Y-constitutively-active/rep_2
mkdir Prod_16
cd Prod_16
rm reimage.in
echo "parm /scratch/PI/rondror/MD_simulations/amber/rhodopsin/2x72/rep2/system.prmtop
trajin /scratch/PI/rondror/MD_simulations/amber/rhodopsin/2x72/rep2/Prod_16.nc
center origin '!(:POPC | :TIP3 | :SOD | :CLA)'
image origin center
trajout Prod_16_reimaged.nc
go" >> reimage.in
ml load amber
cpptraj -i reimage.in

cd /scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/Rhodopsin-active-unrestrained-unpublished/2x72-E113Q-M257Y-constitutively-active/rep_2
mkdir Prod_17
cd Prod_17
rm reimage.in
echo "parm /scratch/PI/rondror/MD_simulations/amber/rhodopsin/2x72/rep2/system.prmtop
trajin /scratch/PI/rondror/MD_simulations/amber/rhodopsin/2x72/rep2/Prod_17.nc
center origin '!(:POPC | :TIP3 | :SOD | :CLA)'
image origin center
trajout Prod_17_reimaged.nc
go" >> reimage.in
ml load amber
cpptraj -i reimage.in

cd /scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/Rhodopsin-active-unrestrained-unpublished/2x72-E113Q-M257Y-constitutively-active/rep_2
mkdir Prod_18
cd Prod_18
rm reimage.in
echo "parm /scratch/PI/rondror/MD_simulations/amber/rhodopsin/2x72/rep2/system.prmtop
trajin /scratch/PI/rondror/MD_simulations/amber/rhodopsin/2x72/rep2/Prod_18.nc
center origin '!(:POPC | :TIP3 | :SOD | :CLA)'
image origin center
trajout Prod_18_reimaged.nc
go" >> reimage.in
ml load amber
cpptraj -i reimage.in

cd /scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/Rhodopsin-active-unrestrained-unpublished/2x72-E113Q-M257Y-constitutively-active/rep_2
mkdir Prod_19
cd Prod_19
rm reimage.in
echo "parm /scratch/PI/rondror/MD_simulations/amber/rhodopsin/2x72/rep2/system.prmtop
trajin /scratch/PI/rondror/MD_simulations/amber/rhodopsin/2x72/rep2/Prod_19.nc
center origin '!(:POPC | :TIP3 | :SOD | :CLA)'
image origin center
trajout Prod_19_reimaged.nc
go" >> reimage.in
ml load amber
cpptraj -i reimage.in

cd /scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/Rhodopsin-active-unrestrained-unpublished/2x72-E113Q-M257Y-constitutively-active/rep_2
mkdir Prod_20
cd Prod_20
rm reimage.in
echo "parm /scratch/PI/rondror/MD_simulations/amber/rhodopsin/2x72/rep2/system.prmtop
trajin /scratch/PI/rondror/MD_simulations/amber/rhodopsin/2x72/rep2/Prod_20.nc
center origin '!(:POPC | :TIP3 | :SOD | :CLA)'
image origin center
trajout Prod_20_reimaged.nc
go" >> reimage.in
ml load amber
cpptraj -i reimage.in

cd /scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/Rhodopsin-active-unrestrained-unpublished/2x72-E113Q-M257Y-constitutively-active/rep_2
mkdir Prod_21
cd Prod_21
rm reimage.in
echo "parm /scratch/PI/rondror/MD_simulations/amber/rhodopsin/2x72/rep2/system.prmtop
trajin /scratch/PI/rondror/MD_simulations/amber/rhodopsin/2x72/rep2/Prod_21.nc
center origin '!(:POPC | :TIP3 | :SOD | :CLA)'
image origin center
trajout Prod_21_reimaged.nc
go" >> reimage.in
ml load amber
cpptraj -i reimage.in

cd /scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/Rhodopsin-active-unrestrained-unpublished/2x72-E113Q-M257Y-constitutively-active/rep_2
mkdir Prod_22
cd Prod_22
rm reimage.in
echo "parm /scratch/PI/rondror/MD_simulations/amber/rhodopsin/2x72/rep2/system.prmtop
trajin /scratch/PI/rondror/MD_simulations/amber/rhodopsin/2x72/rep2/Prod_22.nc
center origin '!(:POPC | :TIP3 | :SOD | :CLA)'
image origin center
trajout Prod_22_reimaged.nc
go" >> reimage.in
ml load amber
cpptraj -i reimage.in

cd /scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/Rhodopsin-active-unrestrained-unpublished/2x72-E113Q-M257Y-constitutively-active/rep_2
mkdir Prod_23
cd Prod_23
rm reimage.in
echo "parm /scratch/PI/rondror/MD_simulations/amber/rhodopsin/2x72/rep2/system.prmtop
trajin /scratch/PI/rondror/MD_simulations/amber/rhodopsin/2x72/rep2/Prod_23.nc
center origin '!(:POPC | :TIP3 | :SOD | :CLA)'
image origin center
trajout Prod_23_reimaged.nc
go" >> reimage.in
ml load amber
cpptraj -i reimage.in

cd /scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/Rhodopsin-active-unrestrained-unpublished/2x72-E113Q-M257Y-constitutively-active/rep_2
mkdir Prod_24
cd Prod_24
rm reimage.in
echo "parm /scratch/PI/rondror/MD_simulations/amber/rhodopsin/2x72/rep2/system.prmtop
trajin /scratch/PI/rondror/MD_simulations/amber/rhodopsin/2x72/rep2/Prod_24.nc
center origin '!(:POPC | :TIP3 | :SOD | :CLA)'
image origin center
trajout Prod_24_reimaged.nc
go" >> reimage.in
ml load amber
cpptraj -i reimage.in

cd /scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/Rhodopsin-active-unrestrained-unpublished/2x72-E113Q-M257Y-constitutively-active/rep_2
mkdir Prod_25
cd Prod_25
rm reimage.in
echo "parm /scratch/PI/rondror/MD_simulations/amber/rhodopsin/2x72/rep2/system.prmtop
trajin /scratch/PI/rondror/MD_simulations/amber/rhodopsin/2x72/rep2/Prod_25.nc
center origin '!(:POPC | :TIP3 | :SOD | :CLA)'
image origin center
trajout Prod_25_reimaged.nc
go" >> reimage.in
ml load amber
cpptraj -i reimage.in

cd /scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/Rhodopsin-active-unrestrained-unpublished/2x72-E113Q-M257Y-constitutively-active/rep_2
mkdir Prod_26
cd Prod_26
rm reimage.in
echo "parm /scratch/PI/rondror/MD_simulations/amber/rhodopsin/2x72/rep2/system.prmtop
trajin /scratch/PI/rondror/MD_simulations/amber/rhodopsin/2x72/rep2/Prod_26.nc
center origin '!(:POPC | :TIP3 | :SOD | :CLA)'
image origin center
trajout Prod_26_reimaged.nc
go" >> reimage.in
ml load amber
cpptraj -i reimage.in

cd /scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/Rhodopsin-active-unrestrained-unpublished/2x72-E113Q-M257Y-constitutively-active/rep_2
mkdir Prod_27
cd Prod_27
rm reimage.in
echo "parm /scratch/PI/rondror/MD_simulations/amber/rhodopsin/2x72/rep2/system.prmtop
trajin /scratch/PI/rondror/MD_simulations/amber/rhodopsin/2x72/rep2/Prod_27.nc
center origin '!(:POPC | :TIP3 | :SOD | :CLA)'
image origin center
trajout Prod_27_reimaged.nc
go" >> reimage.in
ml load amber
cpptraj -i reimage.in

cd /scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/Rhodopsin-active-unrestrained-unpublished/2x72-E113Q-M257Y-constitutively-active/rep_2
mkdir Prod_28
cd Prod_28
rm reimage.in
echo "parm /scratch/PI/rondror/MD_simulations/amber/rhodopsin/2x72/rep2/system.prmtop
trajin /scratch/PI/rondror/MD_simulations/amber/rhodopsin/2x72/rep2/Prod_28.nc
center origin '!(:POPC | :TIP3 | :SOD | :CLA)'
image origin center
trajout Prod_28_reimaged.nc
go" >> reimage.in
ml load amber
cpptraj -i reimage.in

cd /scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/Rhodopsin-active-unrestrained-unpublished/2x72-E113Q-M257Y-constitutively-active/rep_2
mkdir Prod_29
cd Prod_29
rm reimage.in
echo "parm /scratch/PI/rondror/MD_simulations/amber/rhodopsin/2x72/rep2/system.prmtop
trajin /scratch/PI/rondror/MD_simulations/amber/rhodopsin/2x72/rep2/Prod_29.nc
center origin '!(:POPC | :TIP3 | :SOD | :CLA)'
image origin center
trajout Prod_29_reimaged.nc
go" >> reimage.in
ml load amber
cpptraj -i reimage.in

cd /scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/Rhodopsin-active-unrestrained-unpublished/2x72-E113Q-M257Y-constitutively-active/rep_2
mkdir Prod_30
cd Prod_30
rm reimage.in
echo "parm /scratch/PI/rondror/MD_simulations/amber/rhodopsin/2x72/rep2/system.prmtop
trajin /scratch/PI/rondror/MD_simulations/amber/rhodopsin/2x72/rep2/Prod_30.nc
center origin '!(:POPC | :TIP3 | :SOD | :CLA)'
image origin center
trajout Prod_30_reimaged.nc
go" >> reimage.in
ml load amber
cpptraj -i reimage.in

cd /scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/Rhodopsin-active-unrestrained-unpublished/2x72-E113Q-M257Y-constitutively-active/rep_2
mkdir Prod_31
cd Prod_31
rm reimage.in
echo "parm /scratch/PI/rondror/MD_simulations/amber/rhodopsin/2x72/rep2/system.prmtop
trajin /scratch/PI/rondror/MD_simulations/amber/rhodopsin/2x72/rep2/Prod_31.nc
center origin '!(:POPC | :TIP3 | :SOD | :CLA)'
image origin center
trajout Prod_31_reimaged.nc
go" >> reimage.in
ml load amber
cpptraj -i reimage.in

cd /scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/Rhodopsin-active-unrestrained-unpublished/2x72-E113Q-M257Y-constitutively-active/rep_2
mkdir Prod_32
cd Prod_32
rm reimage.in
echo "parm /scratch/PI/rondror/MD_simulations/amber/rhodopsin/2x72/rep2/system.prmtop
trajin /scratch/PI/rondror/MD_simulations/amber/rhodopsin/2x72/rep2/Prod_32.nc
center origin '!(:POPC | :TIP3 | :SOD | :CLA)'
image origin center
trajout Prod_32_reimaged.nc
go" >> reimage.in
ml load amber
cpptraj -i reimage.in

cd /scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/Rhodopsin-active-unrestrained-unpublished/2x72-E113Q-M257Y-constitutively-active/rep_2
mkdir Prod_33
cd Prod_33
rm reimage.in
echo "parm /scratch/PI/rondror/MD_simulations/amber/rhodopsin/2x72/rep2/system.prmtop
trajin /scratch/PI/rondror/MD_simulations/amber/rhodopsin/2x72/rep2/Prod_33.nc
center origin '!(:POPC | :TIP3 | :SOD | :CLA)'
image origin center
trajout Prod_33_reimaged.nc
go" >> reimage.in
ml load amber
cpptraj -i reimage.in

cd /scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/Rhodopsin-active-unrestrained-unpublished/2x72-E113Q-M257Y-constitutively-active/rep_2
mkdir Prod_34
cd Prod_34
rm reimage.in
echo "parm /scratch/PI/rondror/MD_simulations/amber/rhodopsin/2x72/rep2/system.prmtop
trajin /scratch/PI/rondror/MD_simulations/amber/rhodopsin/2x72/rep2/Prod_34.nc
center origin '!(:POPC | :TIP3 | :SOD | :CLA)'
image origin center
trajout Prod_34_reimaged.nc
go" >> reimage.in
ml load amber
cpptraj -i reimage.in

cd /scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/Rhodopsin-active-unrestrained-unpublished/2x72-E113Q-M257Y-constitutively-active/rep_2
mkdir Prod_35
cd Prod_35
rm reimage.in
echo "parm /scratch/PI/rondror/MD_simulations/amber/rhodopsin/2x72/rep2/system.prmtop
trajin /scratch/PI/rondror/MD_simulations/amber/rhodopsin/2x72/rep2/Prod_35.nc
center origin '!(:POPC | :TIP3 | :SOD | :CLA)'
image origin center
trajout Prod_35_reimaged.nc
go" >> reimage.in
ml load amber
cpptraj -i reimage.in

cd /scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/Rhodopsin-active-unrestrained-unpublished/2x72-E113Q-M257Y-constitutively-active/rep_2
mkdir Prod_36
cd Prod_36
rm reimage.in
echo "parm /scratch/PI/rondror/MD_simulations/amber/rhodopsin/2x72/rep2/system.prmtop
trajin /scratch/PI/rondror/MD_simulations/amber/rhodopsin/2x72/rep2/Prod_36.nc
center origin '!(:POPC | :TIP3 | :SOD | :CLA)'
image origin center
trajout Prod_36_reimaged.nc
go" >> reimage.in
ml load amber
cpptraj -i reimage.in

cd /scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/Rhodopsin-active-unrestrained-unpublished/2x72-E113Q-M257Y-constitutively-active/rep_2
mkdir Prod_37
cd Prod_37
rm reimage.in
echo "parm /scratch/PI/rondror/MD_simulations/amber/rhodopsin/2x72/rep2/system.prmtop
trajin /scratch/PI/rondror/MD_simulations/amber/rhodopsin/2x72/rep2/Prod_37.nc
center origin '!(:POPC | :TIP3 | :SOD | :CLA)'
image origin center
trajout Prod_37_reimaged.nc
go" >> reimage.in
ml load amber
cpptraj -i reimage.in

cd /scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/Rhodopsin-active-unrestrained-unpublished/2x72-E113Q-M257Y-constitutively-active/rep_2
mkdir Prod_38
cd Prod_38
rm reimage.in
echo "parm /scratch/PI/rondror/MD_simulations/amber/rhodopsin/2x72/rep2/system.prmtop
trajin /scratch/PI/rondror/MD_simulations/amber/rhodopsin/2x72/rep2/Prod_38.nc
center origin '!(:POPC | :TIP3 | :SOD | :CLA)'
image origin center
trajout Prod_38_reimaged.nc
go" >> reimage.in
ml load amber
cpptraj -i reimage.in

cd /scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/Rhodopsin-active-unrestrained-unpublished/2x72-E113Q-M257Y-constitutively-active/rep_2
mkdir Prod_39
cd Prod_39
rm reimage.in
echo "parm /scratch/PI/rondror/MD_simulations/amber/rhodopsin/2x72/rep2/system.prmtop
trajin /scratch/PI/rondror/MD_simulations/amber/rhodopsin/2x72/rep2/Prod_39.nc
center origin '!(:POPC | :TIP3 | :SOD | :CLA)'
image origin center
trajout Prod_39_reimaged.nc
go" >> reimage.in
ml load amber
cpptraj -i reimage.in

cd /scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/Rhodopsin-active-unrestrained-unpublished/2x72-E113Q-M257Y-constitutively-active/rep_2
mkdir Prod_40
cd Prod_40
rm reimage.in
echo "parm /scratch/PI/rondror/MD_simulations/amber/rhodopsin/2x72/rep2/system.prmtop
trajin /scratch/PI/rondror/MD_simulations/amber/rhodopsin/2x72/rep2/Prod_40.nc
center origin '!(:POPC | :TIP3 | :SOD | :CLA)'
image origin center
trajout Prod_40_reimaged.nc
go" >> reimage.in
ml load amber
cpptraj -i reimage.in

cd /scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/Rhodopsin-active-unrestrained-unpublished/2x72-E113Q-M257Y-constitutively-active/rep_2
mkdir Prod_41
cd Prod_41
rm reimage.in
echo "parm /scratch/PI/rondror/MD_simulations/amber/rhodopsin/2x72/rep2/system.prmtop
trajin /scratch/PI/rondror/MD_simulations/amber/rhodopsin/2x72/rep2/Prod_41.nc
center origin '!(:POPC | :TIP3 | :SOD | :CLA)'
image origin center
trajout Prod_41_reimaged.nc
go" >> reimage.in
ml load amber
cpptraj -i reimage.in

cd /scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/Rhodopsin-active-unrestrained-unpublished/2x72-E113Q-M257Y-constitutively-active/rep_2
mkdir Prod_42
cd Prod_42
rm reimage.in
echo "parm /scratch/PI/rondror/MD_simulations/amber/rhodopsin/2x72/rep2/system.prmtop
trajin /scratch/PI/rondror/MD_simulations/amber/rhodopsin/2x72/rep2/Prod_42.nc
center origin '!(:POPC | :TIP3 | :SOD | :CLA)'
image origin center
trajout Prod_42_reimaged.nc
go" >> reimage.in
ml load amber
cpptraj -i reimage.in

cd /scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/Rhodopsin-active-unrestrained-unpublished/2x72-E113Q-M257Y-constitutively-active/rep_2
mkdir Prod_43
cd Prod_43
rm reimage.in
echo "parm /scratch/PI/rondror/MD_simulations/amber/rhodopsin/2x72/rep2/system.prmtop
trajin /scratch/PI/rondror/MD_simulations/amber/rhodopsin/2x72/rep2/Prod_43.nc
center origin '!(:POPC | :TIP3 | :SOD | :CLA)'
image origin center
trajout Prod_43_reimaged.nc
go" >> reimage.in
ml load amber
cpptraj -i reimage.in

cd /scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/Rhodopsin-active-unrestrained-unpublished/2x72-E113Q-M257Y-constitutively-active/rep_2
mkdir Prod_44
cd Prod_44
rm reimage.in
echo "parm /scratch/PI/rondror/MD_simulations/amber/rhodopsin/2x72/rep2/system.prmtop
trajin /scratch/PI/rondror/MD_simulations/amber/rhodopsin/2x72/rep2/Prod_44.nc
center origin '!(:POPC | :TIP3 | :SOD | :CLA)'
image origin center
trajout Prod_44_reimaged.nc
go" >> reimage.in
ml load amber
cpptraj -i reimage.in

