cd /scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/Rhodopsin-active-unpublished/Rho-active-arr-WT-prot-D83-E134-unpublished/rep_1
mkdir Prod_0
cd Prod_0
rm reimage.in
echo "parm /scratch/PI/rondror/MD_simulations/amber/rho_arrestin/rho_arr_c_tail_complexA_WT/run_1_HMR/system.prmtop
trajin /scratch/PI/rondror/MD_simulations/amber/rho_arrestin/rho_arr_c_tail_complexA_WT/run_1_HMR/system.inpcrd
trajin /scratch/PI/rondror/MD_simulations/amber/rho_arrestin/rho_arr_c_tail_complexA_WT/run_1_HMR/Eq_15.nc
center origin '!(:POPC | :TIP3 | :SOD | :CLA)'
image origin center
trajout Prod_0_reimaged.nc
go" >> reimage.in
ml load amber
cpptraj -i reimage.in

cd /scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/Rhodopsin-active-unpublished/Rho-active-arr-WT-prot-D83-E134-unpublished/rep_1
mkdir Prod_1
cd Prod_1
rm reimage.in
echo "parm /scratch/PI/rondror/MD_simulations/amber/rho_arrestin/rho_arr_c_tail_complexA_WT/run_1_HMR/system.prmtop
trajin /scratch/PI/rondror/MD_simulations/amber/rho_arrestin/rho_arr_c_tail_complexA_WT/run_1_HMR/Prod_1.nc
center origin '!(:POPC | :TIP3 | :SOD | :CLA)'
image origin center
trajout Prod_1_reimaged.nc
go" >> reimage.in
ml load amber
cpptraj -i reimage.in

cd /scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/Rhodopsin-active-unpublished/Rho-active-arr-WT-prot-D83-E134-unpublished/rep_1
mkdir Prod_2
cd Prod_2
rm reimage.in
echo "parm /scratch/PI/rondror/MD_simulations/amber/rho_arrestin/rho_arr_c_tail_complexA_WT/run_1_HMR/system.prmtop
trajin /scratch/PI/rondror/MD_simulations/amber/rho_arrestin/rho_arr_c_tail_complexA_WT/run_1_HMR/Prod_2.nc
center origin '!(:POPC | :TIP3 | :SOD | :CLA)'
image origin center
trajout Prod_2_reimaged.nc
go" >> reimage.in
ml load amber
cpptraj -i reimage.in

cd /scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/Rhodopsin-active-unpublished/Rho-active-arr-WT-prot-D83-E134-unpublished/rep_1
mkdir Prod_3
cd Prod_3
rm reimage.in
echo "parm /scratch/PI/rondror/MD_simulations/amber/rho_arrestin/rho_arr_c_tail_complexA_WT/run_1_HMR/system.prmtop
trajin /scratch/PI/rondror/MD_simulations/amber/rho_arrestin/rho_arr_c_tail_complexA_WT/run_1_HMR/Prod_3.nc
center origin '!(:POPC | :TIP3 | :SOD | :CLA)'
image origin center
trajout Prod_3_reimaged.nc
go" >> reimage.in
ml load amber
cpptraj -i reimage.in

cd /scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/Rhodopsin-active-unpublished/Rho-active-arr-WT-prot-D83-E134-unpublished/rep_1
mkdir Prod_4
cd Prod_4
rm reimage.in
echo "parm /scratch/PI/rondror/MD_simulations/amber/rho_arrestin/rho_arr_c_tail_complexA_WT/run_1_HMR/system.prmtop
trajin /scratch/PI/rondror/MD_simulations/amber/rho_arrestin/rho_arr_c_tail_complexA_WT/run_1_HMR/Prod_4.nc
center origin '!(:POPC | :TIP3 | :SOD | :CLA)'
image origin center
trajout Prod_4_reimaged.nc
go" >> reimage.in
ml load amber
cpptraj -i reimage.in

cd /scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/Rhodopsin-active-unpublished/Rho-active-arr-WT-prot-D83-E134-unpublished/rep_1
mkdir Prod_5
cd Prod_5
rm reimage.in
echo "parm /scratch/PI/rondror/MD_simulations/amber/rho_arrestin/rho_arr_c_tail_complexA_WT/run_1_HMR/system.prmtop
trajin /scratch/PI/rondror/MD_simulations/amber/rho_arrestin/rho_arr_c_tail_complexA_WT/run_1_HMR/Prod_5.nc
center origin '!(:POPC | :TIP3 | :SOD | :CLA)'
image origin center
trajout Prod_5_reimaged.nc
go" >> reimage.in
ml load amber
cpptraj -i reimage.in

cd /scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/Rhodopsin-active-unpublished/Rho-active-arr-WT-prot-D83-E134-unpublished/rep_1
mkdir Prod_6
cd Prod_6
rm reimage.in
echo "parm /scratch/PI/rondror/MD_simulations/amber/rho_arrestin/rho_arr_c_tail_complexA_WT/run_1_HMR/system.prmtop
trajin /scratch/PI/rondror/MD_simulations/amber/rho_arrestin/rho_arr_c_tail_complexA_WT/run_1_HMR/Prod_6.nc
center origin '!(:POPC | :TIP3 | :SOD | :CLA)'
image origin center
trajout Prod_6_reimaged.nc
go" >> reimage.in
ml load amber
cpptraj -i reimage.in

cd /scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/Rhodopsin-active-unpublished/Rho-active-arr-WT-prot-D83-E134-unpublished/rep_1
mkdir Prod_7
cd Prod_7
rm reimage.in
echo "parm /scratch/PI/rondror/MD_simulations/amber/rho_arrestin/rho_arr_c_tail_complexA_WT/run_1_HMR/system.prmtop
trajin /scratch/PI/rondror/MD_simulations/amber/rho_arrestin/rho_arr_c_tail_complexA_WT/run_1_HMR/Prod_7.nc
center origin '!(:POPC | :TIP3 | :SOD | :CLA)'
image origin center
trajout Prod_7_reimaged.nc
go" >> reimage.in
ml load amber
cpptraj -i reimage.in

cd /scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/Rhodopsin-active-unpublished/Rho-active-arr-WT-prot-D83-E134-unpublished/rep_1
mkdir Prod_8
cd Prod_8
rm reimage.in
echo "parm /scratch/PI/rondror/MD_simulations/amber/rho_arrestin/rho_arr_c_tail_complexA_WT/run_1_HMR/system.prmtop
trajin /scratch/PI/rondror/MD_simulations/amber/rho_arrestin/rho_arr_c_tail_complexA_WT/run_1_HMR/Prod_8.nc
center origin '!(:POPC | :TIP3 | :SOD | :CLA)'
image origin center
trajout Prod_8_reimaged.nc
go" >> reimage.in
ml load amber
cpptraj -i reimage.in

cd /scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/Rhodopsin-active-unpublished/Rho-active-arr-WT-prot-D83-E134-unpublished/rep_1
mkdir Prod_9
cd Prod_9
rm reimage.in
echo "parm /scratch/PI/rondror/MD_simulations/amber/rho_arrestin/rho_arr_c_tail_complexA_WT/run_1_HMR/system.prmtop
trajin /scratch/PI/rondror/MD_simulations/amber/rho_arrestin/rho_arr_c_tail_complexA_WT/run_1_HMR/Prod_9.nc
center origin '!(:POPC | :TIP3 | :SOD | :CLA)'
image origin center
trajout Prod_9_reimaged.nc
go" >> reimage.in
ml load amber
cpptraj -i reimage.in

cd /scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/Rhodopsin-active-unpublished/Rho-active-arr-WT-prot-D83-E134-unpublished/rep_1
mkdir Prod_10
cd Prod_10
rm reimage.in
echo "parm /scratch/PI/rondror/MD_simulations/amber/rho_arrestin/rho_arr_c_tail_complexA_WT/run_1_HMR/system.prmtop
trajin /scratch/PI/rondror/MD_simulations/amber/rho_arrestin/rho_arr_c_tail_complexA_WT/run_1_HMR/Prod_10.nc
center origin '!(:POPC | :TIP3 | :SOD | :CLA)'
image origin center
trajout Prod_10_reimaged.nc
go" >> reimage.in
ml load amber
cpptraj -i reimage.in

cd /scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/Rhodopsin-active-unpublished/Rho-active-arr-WT-prot-D83-E134-unpublished/rep_1
mkdir Prod_11
cd Prod_11
rm reimage.in
echo "parm /scratch/PI/rondror/MD_simulations/amber/rho_arrestin/rho_arr_c_tail_complexA_WT/run_1_HMR/system.prmtop
trajin /scratch/PI/rondror/MD_simulations/amber/rho_arrestin/rho_arr_c_tail_complexA_WT/run_1_HMR/Prod_11.nc
center origin '!(:POPC | :TIP3 | :SOD | :CLA)'
image origin center
trajout Prod_11_reimaged.nc
go" >> reimage.in
ml load amber
cpptraj -i reimage.in

cd /scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/Rhodopsin-active-unpublished/Rho-active-arr-WT-prot-D83-E134-unpublished/rep_1
mkdir Prod_12
cd Prod_12
rm reimage.in
echo "parm /scratch/PI/rondror/MD_simulations/amber/rho_arrestin/rho_arr_c_tail_complexA_WT/run_1_HMR/system.prmtop
trajin /scratch/PI/rondror/MD_simulations/amber/rho_arrestin/rho_arr_c_tail_complexA_WT/run_1_HMR/Prod_12.nc
center origin '!(:POPC | :TIP3 | :SOD | :CLA)'
image origin center
trajout Prod_12_reimaged.nc
go" >> reimage.in
ml load amber
cpptraj -i reimage.in

cd /scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/Rhodopsin-active-unpublished/Rho-active-arr-WT-prot-D83-E134-unpublished/rep_1
mkdir Prod_13
cd Prod_13
rm reimage.in
echo "parm /scratch/PI/rondror/MD_simulations/amber/rho_arrestin/rho_arr_c_tail_complexA_WT/run_1_HMR/system.prmtop
trajin /scratch/PI/rondror/MD_simulations/amber/rho_arrestin/rho_arr_c_tail_complexA_WT/run_1_HMR/Prod_13.nc
center origin '!(:POPC | :TIP3 | :SOD | :CLA)'
image origin center
trajout Prod_13_reimaged.nc
go" >> reimage.in
ml load amber
cpptraj -i reimage.in

cd /scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/Rhodopsin-active-unpublished/Rho-active-arr-WT-prot-D83-E134-unpublished/rep_1
mkdir Prod_14
cd Prod_14
rm reimage.in
echo "parm /scratch/PI/rondror/MD_simulations/amber/rho_arrestin/rho_arr_c_tail_complexA_WT/run_1_HMR/system.prmtop
trajin /scratch/PI/rondror/MD_simulations/amber/rho_arrestin/rho_arr_c_tail_complexA_WT/run_1_HMR/Prod_14.nc
center origin '!(:POPC | :TIP3 | :SOD | :CLA)'
image origin center
trajout Prod_14_reimaged.nc
go" >> reimage.in
ml load amber
cpptraj -i reimage.in

cd /scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/Rhodopsin-active-unpublished/Rho-active-arr-WT-prot-D83-E134-unpublished/rep_1
mkdir Prod_15
cd Prod_15
rm reimage.in
echo "parm /scratch/PI/rondror/MD_simulations/amber/rho_arrestin/rho_arr_c_tail_complexA_WT/run_1_HMR/system.prmtop
trajin /scratch/PI/rondror/MD_simulations/amber/rho_arrestin/rho_arr_c_tail_complexA_WT/run_1_HMR/Prod_15.nc
center origin '!(:POPC | :TIP3 | :SOD | :CLA)'
image origin center
trajout Prod_15_reimaged.nc
go" >> reimage.in
ml load amber
cpptraj -i reimage.in

cd /scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/Rhodopsin-active-unpublished/Rho-active-arr-WT-prot-D83-E134-unpublished/rep_1
mkdir Prod_16
cd Prod_16
rm reimage.in
echo "parm /scratch/PI/rondror/MD_simulations/amber/rho_arrestin/rho_arr_c_tail_complexA_WT/run_1_HMR/system.prmtop
trajin /scratch/PI/rondror/MD_simulations/amber/rho_arrestin/rho_arr_c_tail_complexA_WT/run_1_HMR/Prod_16.nc
center origin '!(:POPC | :TIP3 | :SOD | :CLA)'
image origin center
trajout Prod_16_reimaged.nc
go" >> reimage.in
ml load amber
cpptraj -i reimage.in

cd /scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/Rhodopsin-active-unpublished/Rho-active-arr-WT-prot-D83-E134-unpublished/rep_1
mkdir Prod_17
cd Prod_17
rm reimage.in
echo "parm /scratch/PI/rondror/MD_simulations/amber/rho_arrestin/rho_arr_c_tail_complexA_WT/run_1_HMR/system.prmtop
trajin /scratch/PI/rondror/MD_simulations/amber/rho_arrestin/rho_arr_c_tail_complexA_WT/run_1_HMR/Prod_17.nc
center origin '!(:POPC | :TIP3 | :SOD | :CLA)'
image origin center
trajout Prod_17_reimaged.nc
go" >> reimage.in
ml load amber
cpptraj -i reimage.in

cd /scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/Rhodopsin-active-unpublished/Rho-active-arr-WT-prot-D83-E134-unpublished/rep_1
mkdir Prod_18
cd Prod_18
rm reimage.in
echo "parm /scratch/PI/rondror/MD_simulations/amber/rho_arrestin/rho_arr_c_tail_complexA_WT/run_1_HMR/system.prmtop
trajin /scratch/PI/rondror/MD_simulations/amber/rho_arrestin/rho_arr_c_tail_complexA_WT/run_1_HMR/Prod_18.nc
center origin '!(:POPC | :TIP3 | :SOD | :CLA)'
image origin center
trajout Prod_18_reimaged.nc
go" >> reimage.in
ml load amber
cpptraj -i reimage.in

cd /scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/Rhodopsin-active-unpublished/Rho-active-arr-WT-prot-D83-E134-unpublished/rep_1
mkdir Prod_19
cd Prod_19
rm reimage.in
echo "parm /scratch/PI/rondror/MD_simulations/amber/rho_arrestin/rho_arr_c_tail_complexA_WT/run_1_HMR/system.prmtop
trajin /scratch/PI/rondror/MD_simulations/amber/rho_arrestin/rho_arr_c_tail_complexA_WT/run_1_HMR/Prod_19.nc
center origin '!(:POPC | :TIP3 | :SOD | :CLA)'
image origin center
trajout Prod_19_reimaged.nc
go" >> reimage.in
ml load amber
cpptraj -i reimage.in

cd /scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/Rhodopsin-active-unpublished/Rho-active-arr-WT-prot-D83-E134-unpublished/rep_1
mkdir Prod_20
cd Prod_20
rm reimage.in
echo "parm /scratch/PI/rondror/MD_simulations/amber/rho_arrestin/rho_arr_c_tail_complexA_WT/run_1_HMR/system.prmtop
trajin /scratch/PI/rondror/MD_simulations/amber/rho_arrestin/rho_arr_c_tail_complexA_WT/run_1_HMR/Prod_20.nc
center origin '!(:POPC | :TIP3 | :SOD | :CLA)'
image origin center
trajout Prod_20_reimaged.nc
go" >> reimage.in
ml load amber
cpptraj -i reimage.in

cd /scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/Rhodopsin-active-unpublished/Rho-active-arr-WT-prot-D83-E134-unpublished/rep_1
mkdir Prod_21
cd Prod_21
rm reimage.in
echo "parm /scratch/PI/rondror/MD_simulations/amber/rho_arrestin/rho_arr_c_tail_complexA_WT/run_1_HMR/system.prmtop
trajin /scratch/PI/rondror/MD_simulations/amber/rho_arrestin/rho_arr_c_tail_complexA_WT/run_1_HMR/Prod_21.nc
center origin '!(:POPC | :TIP3 | :SOD | :CLA)'
image origin center
trajout Prod_21_reimaged.nc
go" >> reimage.in
ml load amber
cpptraj -i reimage.in

cd /scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/Rhodopsin-active-unpublished/Rho-active-arr-WT-prot-D83-E134-unpublished/rep_1
mkdir Prod_22
cd Prod_22
rm reimage.in
echo "parm /scratch/PI/rondror/MD_simulations/amber/rho_arrestin/rho_arr_c_tail_complexA_WT/run_1_HMR/system.prmtop
trajin /scratch/PI/rondror/MD_simulations/amber/rho_arrestin/rho_arr_c_tail_complexA_WT/run_1_HMR/Prod_22.nc
center origin '!(:POPC | :TIP3 | :SOD | :CLA)'
image origin center
trajout Prod_22_reimaged.nc
go" >> reimage.in
ml load amber
cpptraj -i reimage.in

cd /scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/Rhodopsin-active-unpublished/Rho-active-arr-WT-prot-D83-E134-unpublished/rep_1
mkdir Prod_23
cd Prod_23
rm reimage.in
echo "parm /scratch/PI/rondror/MD_simulations/amber/rho_arrestin/rho_arr_c_tail_complexA_WT/run_1_HMR/system.prmtop
trajin /scratch/PI/rondror/MD_simulations/amber/rho_arrestin/rho_arr_c_tail_complexA_WT/run_1_HMR/Prod_23.nc
center origin '!(:POPC | :TIP3 | :SOD | :CLA)'
image origin center
trajout Prod_23_reimaged.nc
go" >> reimage.in
ml load amber
cpptraj -i reimage.in

cd /scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/Rhodopsin-active-unpublished/Rho-active-arr-WT-prot-D83-E134-unpublished/rep_1
mkdir Prod_24
cd Prod_24
rm reimage.in
echo "parm /scratch/PI/rondror/MD_simulations/amber/rho_arrestin/rho_arr_c_tail_complexA_WT/run_1_HMR/system.prmtop
trajin /scratch/PI/rondror/MD_simulations/amber/rho_arrestin/rho_arr_c_tail_complexA_WT/run_1_HMR/Prod_24.nc
center origin '!(:POPC | :TIP3 | :SOD | :CLA)'
image origin center
trajout Prod_24_reimaged.nc
go" >> reimage.in
ml load amber
cpptraj -i reimage.in

cd /scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/Rhodopsin-active-unpublished/Rho-active-arr-WT-prot-D83-E134-unpublished/rep_1
mkdir Prod_25
cd Prod_25
rm reimage.in
echo "parm /scratch/PI/rondror/MD_simulations/amber/rho_arrestin/rho_arr_c_tail_complexA_WT/run_1_HMR/system.prmtop
trajin /scratch/PI/rondror/MD_simulations/amber/rho_arrestin/rho_arr_c_tail_complexA_WT/run_1_HMR/Prod_25.nc
center origin '!(:POPC | :TIP3 | :SOD | :CLA)'
image origin center
trajout Prod_25_reimaged.nc
go" >> reimage.in
ml load amber
cpptraj -i reimage.in

cd /scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/Rhodopsin-active-unpublished/Rho-active-arr-WT-prot-D83-E134-unpublished/rep_1
mkdir Prod_26
cd Prod_26
rm reimage.in
echo "parm /scratch/PI/rondror/MD_simulations/amber/rho_arrestin/rho_arr_c_tail_complexA_WT/run_1_HMR/system.prmtop
trajin /scratch/PI/rondror/MD_simulations/amber/rho_arrestin/rho_arr_c_tail_complexA_WT/run_1_HMR/Prod_26.nc
center origin '!(:POPC | :TIP3 | :SOD | :CLA)'
image origin center
trajout Prod_26_reimaged.nc
go" >> reimage.in
ml load amber
cpptraj -i reimage.in

cd /scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/Rhodopsin-active-unpublished/Rho-active-arr-WT-prot-D83-E134-unpublished/rep_1
mkdir Prod_27
cd Prod_27
rm reimage.in
echo "parm /scratch/PI/rondror/MD_simulations/amber/rho_arrestin/rho_arr_c_tail_complexA_WT/run_1_HMR/system.prmtop
trajin /scratch/PI/rondror/MD_simulations/amber/rho_arrestin/rho_arr_c_tail_complexA_WT/run_1_HMR/Prod_27.nc
center origin '!(:POPC | :TIP3 | :SOD | :CLA)'
image origin center
trajout Prod_27_reimaged.nc
go" >> reimage.in
ml load amber
cpptraj -i reimage.in

cd /scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/Rhodopsin-active-unpublished/Rho-active-arr-WT-prot-D83-E134-unpublished/rep_1
mkdir Prod_28
cd Prod_28
rm reimage.in
echo "parm /scratch/PI/rondror/MD_simulations/amber/rho_arrestin/rho_arr_c_tail_complexA_WT/run_1_HMR/system.prmtop
trajin /scratch/PI/rondror/MD_simulations/amber/rho_arrestin/rho_arr_c_tail_complexA_WT/run_1_HMR/Prod_28.nc
center origin '!(:POPC | :TIP3 | :SOD | :CLA)'
image origin center
trajout Prod_28_reimaged.nc
go" >> reimage.in
ml load amber
cpptraj -i reimage.in

cd /scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/Rhodopsin-active-unpublished/Rho-active-arr-WT-prot-D83-E134-unpublished/rep_1
mkdir Prod_29
cd Prod_29
rm reimage.in
echo "parm /scratch/PI/rondror/MD_simulations/amber/rho_arrestin/rho_arr_c_tail_complexA_WT/run_1_HMR/system.prmtop
trajin /scratch/PI/rondror/MD_simulations/amber/rho_arrestin/rho_arr_c_tail_complexA_WT/run_1_HMR/Prod_29.nc
center origin '!(:POPC | :TIP3 | :SOD | :CLA)'
image origin center
trajout Prod_29_reimaged.nc
go" >> reimage.in
ml load amber
cpptraj -i reimage.in

cd /scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/Rhodopsin-active-unpublished/Rho-active-arr-WT-prot-D83-E134-unpublished/rep_1
mkdir Prod_30
cd Prod_30
rm reimage.in
echo "parm /scratch/PI/rondror/MD_simulations/amber/rho_arrestin/rho_arr_c_tail_complexA_WT/run_1_HMR/system.prmtop
trajin /scratch/PI/rondror/MD_simulations/amber/rho_arrestin/rho_arr_c_tail_complexA_WT/run_1_HMR/Prod_30.nc
center origin '!(:POPC | :TIP3 | :SOD | :CLA)'
image origin center
trajout Prod_30_reimaged.nc
go" >> reimage.in
ml load amber
cpptraj -i reimage.in

cd /scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/Rhodopsin-active-unpublished/Rho-active-arr-WT-prot-D83-E134-unpublished/rep_1
mkdir Prod_31
cd Prod_31
rm reimage.in
echo "parm /scratch/PI/rondror/MD_simulations/amber/rho_arrestin/rho_arr_c_tail_complexA_WT/run_1_HMR/system.prmtop
trajin /scratch/PI/rondror/MD_simulations/amber/rho_arrestin/rho_arr_c_tail_complexA_WT/run_1_HMR/Prod_31.nc
center origin '!(:POPC | :TIP3 | :SOD | :CLA)'
image origin center
trajout Prod_31_reimaged.nc
go" >> reimage.in
ml load amber
cpptraj -i reimage.in

cd /scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/Rhodopsin-active-unpublished/Rho-active-arr-WT-prot-D83-E134-unpublished/rep_1
mkdir Prod_32
cd Prod_32
rm reimage.in
echo "parm /scratch/PI/rondror/MD_simulations/amber/rho_arrestin/rho_arr_c_tail_complexA_WT/run_1_HMR/system.prmtop
trajin /scratch/PI/rondror/MD_simulations/amber/rho_arrestin/rho_arr_c_tail_complexA_WT/run_1_HMR/Prod_32.nc
center origin '!(:POPC | :TIP3 | :SOD | :CLA)'
image origin center
trajout Prod_32_reimaged.nc
go" >> reimage.in
ml load amber
cpptraj -i reimage.in

cd /scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/Rhodopsin-active-unpublished/Rho-active-arr-WT-prot-D83-E134-unpublished/rep_1
mkdir Prod_33
cd Prod_33
rm reimage.in
echo "parm /scratch/PI/rondror/MD_simulations/amber/rho_arrestin/rho_arr_c_tail_complexA_WT/run_1_HMR/system.prmtop
trajin /scratch/PI/rondror/MD_simulations/amber/rho_arrestin/rho_arr_c_tail_complexA_WT/run_1_HMR/Prod_33.nc
center origin '!(:POPC | :TIP3 | :SOD | :CLA)'
image origin center
trajout Prod_33_reimaged.nc
go" >> reimage.in
ml load amber
cpptraj -i reimage.in

cd /scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/Rhodopsin-active-unpublished/Rho-active-arr-WT-prot-D83-E134-unpublished/rep_1
mkdir Prod_34
cd Prod_34
rm reimage.in
echo "parm /scratch/PI/rondror/MD_simulations/amber/rho_arrestin/rho_arr_c_tail_complexA_WT/run_1_HMR/system.prmtop
trajin /scratch/PI/rondror/MD_simulations/amber/rho_arrestin/rho_arr_c_tail_complexA_WT/run_1_HMR/Prod_34.nc
center origin '!(:POPC | :TIP3 | :SOD | :CLA)'
image origin center
trajout Prod_34_reimaged.nc
go" >> reimage.in
ml load amber
cpptraj -i reimage.in

cd /scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/Rhodopsin-active-unpublished/Rho-active-arr-WT-prot-D83-E134-unpublished/rep_1
mkdir Prod_35
cd Prod_35
rm reimage.in
echo "parm /scratch/PI/rondror/MD_simulations/amber/rho_arrestin/rho_arr_c_tail_complexA_WT/run_1_HMR/system.prmtop
trajin /scratch/PI/rondror/MD_simulations/amber/rho_arrestin/rho_arr_c_tail_complexA_WT/run_1_HMR/Prod_35.nc
center origin '!(:POPC | :TIP3 | :SOD | :CLA)'
image origin center
trajout Prod_35_reimaged.nc
go" >> reimage.in
ml load amber
cpptraj -i reimage.in

cd /scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/Rhodopsin-active-unpublished/Rho-active-arr-WT-prot-D83-E134-unpublished/rep_1
mkdir Prod_36
cd Prod_36
rm reimage.in
echo "parm /scratch/PI/rondror/MD_simulations/amber/rho_arrestin/rho_arr_c_tail_complexA_WT/run_1_HMR/system.prmtop
trajin /scratch/PI/rondror/MD_simulations/amber/rho_arrestin/rho_arr_c_tail_complexA_WT/run_1_HMR/Prod_36.nc
center origin '!(:POPC | :TIP3 | :SOD | :CLA)'
image origin center
trajout Prod_36_reimaged.nc
go" >> reimage.in
ml load amber
cpptraj -i reimage.in

cd /scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/Rhodopsin-active-unpublished/Rho-active-arr-WT-prot-D83-E134-unpublished/rep_1
mkdir Prod_37
cd Prod_37
rm reimage.in
echo "parm /scratch/PI/rondror/MD_simulations/amber/rho_arrestin/rho_arr_c_tail_complexA_WT/run_1_HMR/system.prmtop
trajin /scratch/PI/rondror/MD_simulations/amber/rho_arrestin/rho_arr_c_tail_complexA_WT/run_1_HMR/Prod_37.nc
center origin '!(:POPC | :TIP3 | :SOD | :CLA)'
image origin center
trajout Prod_37_reimaged.nc
go" >> reimage.in
ml load amber
cpptraj -i reimage.in

cd /scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/Rhodopsin-active-unpublished/Rho-active-arr-WT-prot-D83-E134-unpublished/rep_1
mkdir Prod_38
cd Prod_38
rm reimage.in
echo "parm /scratch/PI/rondror/MD_simulations/amber/rho_arrestin/rho_arr_c_tail_complexA_WT/run_1_HMR/system.prmtop
trajin /scratch/PI/rondror/MD_simulations/amber/rho_arrestin/rho_arr_c_tail_complexA_WT/run_1_HMR/Prod_38.nc
center origin '!(:POPC | :TIP3 | :SOD | :CLA)'
image origin center
trajout Prod_38_reimaged.nc
go" >> reimage.in
ml load amber
cpptraj -i reimage.in

cd /scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/Rhodopsin-active-unpublished/Rho-active-arr-WT-prot-D83-E134-unpublished/rep_1
mkdir Prod_39
cd Prod_39
rm reimage.in
echo "parm /scratch/PI/rondror/MD_simulations/amber/rho_arrestin/rho_arr_c_tail_complexA_WT/run_1_HMR/system.prmtop
trajin /scratch/PI/rondror/MD_simulations/amber/rho_arrestin/rho_arr_c_tail_complexA_WT/run_1_HMR/Prod_39.nc
center origin '!(:POPC | :TIP3 | :SOD | :CLA)'
image origin center
trajout Prod_39_reimaged.nc
go" >> reimage.in
ml load amber
cpptraj -i reimage.in

cd /scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/Rhodopsin-active-unpublished/Rho-active-arr-WT-prot-D83-E134-unpublished/rep_1
mkdir Prod_40
cd Prod_40
rm reimage.in
echo "parm /scratch/PI/rondror/MD_simulations/amber/rho_arrestin/rho_arr_c_tail_complexA_WT/run_1_HMR/system.prmtop
trajin /scratch/PI/rondror/MD_simulations/amber/rho_arrestin/rho_arr_c_tail_complexA_WT/run_1_HMR/Prod_40.nc
center origin '!(:POPC | :TIP3 | :SOD | :CLA)'
image origin center
trajout Prod_40_reimaged.nc
go" >> reimage.in
ml load amber
cpptraj -i reimage.in

cd /scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/Rhodopsin-active-unpublished/Rho-active-arr-WT-prot-D83-E134-unpublished/rep_1
mkdir Prod_41
cd Prod_41
rm reimage.in
echo "parm /scratch/PI/rondror/MD_simulations/amber/rho_arrestin/rho_arr_c_tail_complexA_WT/run_1_HMR/system.prmtop
trajin /scratch/PI/rondror/MD_simulations/amber/rho_arrestin/rho_arr_c_tail_complexA_WT/run_1_HMR/Prod_41.nc
center origin '!(:POPC | :TIP3 | :SOD | :CLA)'
image origin center
trajout Prod_41_reimaged.nc
go" >> reimage.in
ml load amber
cpptraj -i reimage.in

cd /scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/Rhodopsin-active-unpublished/Rho-active-arr-WT-prot-D83-E134-unpublished/rep_1
mkdir Prod_42
cd Prod_42
rm reimage.in
echo "parm /scratch/PI/rondror/MD_simulations/amber/rho_arrestin/rho_arr_c_tail_complexA_WT/run_1_HMR/system.prmtop
trajin /scratch/PI/rondror/MD_simulations/amber/rho_arrestin/rho_arr_c_tail_complexA_WT/run_1_HMR/Prod_42.nc
center origin '!(:POPC | :TIP3 | :SOD | :CLA)'
image origin center
trajout Prod_42_reimaged.nc
go" >> reimage.in
ml load amber
cpptraj -i reimage.in

cd /scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/Rhodopsin-active-unpublished/Rho-active-arr-WT-prot-D83-E134-unpublished/rep_1
mkdir Prod_43
cd Prod_43
rm reimage.in
echo "parm /scratch/PI/rondror/MD_simulations/amber/rho_arrestin/rho_arr_c_tail_complexA_WT/run_1_HMR/system.prmtop
trajin /scratch/PI/rondror/MD_simulations/amber/rho_arrestin/rho_arr_c_tail_complexA_WT/run_1_HMR/Prod_43.nc
center origin '!(:POPC | :TIP3 | :SOD | :CLA)'
image origin center
trajout Prod_43_reimaged.nc
go" >> reimage.in
ml load amber
cpptraj -i reimage.in

cd /scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/Rhodopsin-active-unpublished/Rho-active-arr-WT-prot-D83-E134-unpublished/rep_1
mkdir Prod_44
cd Prod_44
rm reimage.in
echo "parm /scratch/PI/rondror/MD_simulations/amber/rho_arrestin/rho_arr_c_tail_complexA_WT/run_1_HMR/system.prmtop
trajin /scratch/PI/rondror/MD_simulations/amber/rho_arrestin/rho_arr_c_tail_complexA_WT/run_1_HMR/Prod_44.nc
center origin '!(:POPC | :TIP3 | :SOD | :CLA)'
image origin center
trajout Prod_44_reimaged.nc
go" >> reimage.in
ml load amber
cpptraj -i reimage.in

cd /scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/Rhodopsin-active-unpublished/Rho-active-arr-WT-prot-D83-E134-unpublished/rep_1
mkdir Prod_45
cd Prod_45
rm reimage.in
echo "parm /scratch/PI/rondror/MD_simulations/amber/rho_arrestin/rho_arr_c_tail_complexA_WT/run_1_HMR/system.prmtop
trajin /scratch/PI/rondror/MD_simulations/amber/rho_arrestin/rho_arr_c_tail_complexA_WT/run_1_HMR/Prod_45.nc
center origin '!(:POPC | :TIP3 | :SOD | :CLA)'
image origin center
trajout Prod_45_reimaged.nc
go" >> reimage.in
ml load amber
cpptraj -i reimage.in

cd /scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/Rhodopsin-active-unpublished/Rho-active-arr-WT-prot-D83-E134-unpublished/rep_1
mkdir Prod_46
cd Prod_46
rm reimage.in
echo "parm /scratch/PI/rondror/MD_simulations/amber/rho_arrestin/rho_arr_c_tail_complexA_WT/run_1_HMR/system.prmtop
trajin /scratch/PI/rondror/MD_simulations/amber/rho_arrestin/rho_arr_c_tail_complexA_WT/run_1_HMR/Prod_46.nc
center origin '!(:POPC | :TIP3 | :SOD | :CLA)'
image origin center
trajout Prod_46_reimaged.nc
go" >> reimage.in
ml load amber
cpptraj -i reimage.in

cd /scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/Rhodopsin-active-unpublished/Rho-active-arr-WT-prot-D83-E134-unpublished/rep_1
mkdir Prod_47
cd Prod_47
rm reimage.in
echo "parm /scratch/PI/rondror/MD_simulations/amber/rho_arrestin/rho_arr_c_tail_complexA_WT/run_1_HMR/system.prmtop
trajin /scratch/PI/rondror/MD_simulations/amber/rho_arrestin/rho_arr_c_tail_complexA_WT/run_1_HMR/Prod_47.nc
center origin '!(:POPC | :TIP3 | :SOD | :CLA)'
image origin center
trajout Prod_47_reimaged.nc
go" >> reimage.in
ml load amber
cpptraj -i reimage.in

cd /scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/Rhodopsin-active-unpublished/Rho-active-arr-WT-prot-D83-E134-unpublished/rep_1
mkdir Prod_48
cd Prod_48
rm reimage.in
echo "parm /scratch/PI/rondror/MD_simulations/amber/rho_arrestin/rho_arr_c_tail_complexA_WT/run_1_HMR/system.prmtop
trajin /scratch/PI/rondror/MD_simulations/amber/rho_arrestin/rho_arr_c_tail_complexA_WT/run_1_HMR/Prod_48.nc
center origin '!(:POPC | :TIP3 | :SOD | :CLA)'
image origin center
trajout Prod_48_reimaged.nc
go" >> reimage.in
ml load amber
cpptraj -i reimage.in

cd /scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/Rhodopsin-active-unpublished/Rho-active-arr-WT-prot-D83-E134-unpublished/rep_1
mkdir Prod_49
cd Prod_49
rm reimage.in
echo "parm /scratch/PI/rondror/MD_simulations/amber/rho_arrestin/rho_arr_c_tail_complexA_WT/run_1_HMR/system.prmtop
trajin /scratch/PI/rondror/MD_simulations/amber/rho_arrestin/rho_arr_c_tail_complexA_WT/run_1_HMR/Prod_49.nc
center origin '!(:POPC | :TIP3 | :SOD | :CLA)'
image origin center
trajout Prod_49_reimaged.nc
go" >> reimage.in
ml load amber
cpptraj -i reimage.in

cd /scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/Rhodopsin-active-unpublished/Rho-active-arr-WT-prot-D83-E134-unpublished/rep_1
mkdir Prod_50
cd Prod_50
rm reimage.in
echo "parm /scratch/PI/rondror/MD_simulations/amber/rho_arrestin/rho_arr_c_tail_complexA_WT/run_1_HMR/system.prmtop
trajin /scratch/PI/rondror/MD_simulations/amber/rho_arrestin/rho_arr_c_tail_complexA_WT/run_1_HMR/Prod_50.nc
center origin '!(:POPC | :TIP3 | :SOD | :CLA)'
image origin center
trajout Prod_50_reimaged.nc
go" >> reimage.in
ml load amber
cpptraj -i reimage.in

cd /scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/Rhodopsin-active-unpublished/Rho-active-arr-WT-prot-D83-E134-unpublished/rep_1
mkdir Prod_51
cd Prod_51
rm reimage.in
echo "parm /scratch/PI/rondror/MD_simulations/amber/rho_arrestin/rho_arr_c_tail_complexA_WT/run_1_HMR/system.prmtop
trajin /scratch/PI/rondror/MD_simulations/amber/rho_arrestin/rho_arr_c_tail_complexA_WT/run_1_HMR/Prod_51.nc
center origin '!(:POPC | :TIP3 | :SOD | :CLA)'
image origin center
trajout Prod_51_reimaged.nc
go" >> reimage.in
ml load amber
cpptraj -i reimage.in

cd /scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/Rhodopsin-active-unpublished/Rho-active-arr-WT-prot-D83-E134-unpublished/rep_1
mkdir Prod_52
cd Prod_52
rm reimage.in
echo "parm /scratch/PI/rondror/MD_simulations/amber/rho_arrestin/rho_arr_c_tail_complexA_WT/run_1_HMR/system.prmtop
trajin /scratch/PI/rondror/MD_simulations/amber/rho_arrestin/rho_arr_c_tail_complexA_WT/run_1_HMR/Prod_52.nc
center origin '!(:POPC | :TIP3 | :SOD | :CLA)'
image origin center
trajout Prod_52_reimaged.nc
go" >> reimage.in
ml load amber
cpptraj -i reimage.in

cd /scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/Rhodopsin-active-unpublished/Rho-active-arr-WT-prot-D83-E134-unpublished/rep_1
mkdir Prod_53
cd Prod_53
rm reimage.in
echo "parm /scratch/PI/rondror/MD_simulations/amber/rho_arrestin/rho_arr_c_tail_complexA_WT/run_1_HMR/system.prmtop
trajin /scratch/PI/rondror/MD_simulations/amber/rho_arrestin/rho_arr_c_tail_complexA_WT/run_1_HMR/Prod_53.nc
center origin '!(:POPC | :TIP3 | :SOD | :CLA)'
image origin center
trajout Prod_53_reimaged.nc
go" >> reimage.in
ml load amber
cpptraj -i reimage.in

cd /scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/Rhodopsin-active-unpublished/Rho-active-arr-WT-prot-D83-E134-unpublished/rep_1
mkdir Prod_54
cd Prod_54
rm reimage.in
echo "parm /scratch/PI/rondror/MD_simulations/amber/rho_arrestin/rho_arr_c_tail_complexA_WT/run_1_HMR/system.prmtop
trajin /scratch/PI/rondror/MD_simulations/amber/rho_arrestin/rho_arr_c_tail_complexA_WT/run_1_HMR/Prod_54.nc
center origin '!(:POPC | :TIP3 | :SOD | :CLA)'
image origin center
trajout Prod_54_reimaged.nc
go" >> reimage.in
ml load amber
cpptraj -i reimage.in

cd /scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/Rhodopsin-active-unpublished/Rho-active-arr-WT-prot-D83-E134-unpublished/rep_1
mkdir Prod_55
cd Prod_55
rm reimage.in
echo "parm /scratch/PI/rondror/MD_simulations/amber/rho_arrestin/rho_arr_c_tail_complexA_WT/run_1_HMR/system.prmtop
trajin /scratch/PI/rondror/MD_simulations/amber/rho_arrestin/rho_arr_c_tail_complexA_WT/run_1_HMR/Prod_55.nc
center origin '!(:POPC | :TIP3 | :SOD | :CLA)'
image origin center
trajout Prod_55_reimaged.nc
go" >> reimage.in
ml load amber
cpptraj -i reimage.in

cd /scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/Rhodopsin-active-unpublished/Rho-active-arr-WT-prot-D83-E134-unpublished/rep_1
mkdir Prod_56
cd Prod_56
rm reimage.in
echo "parm /scratch/PI/rondror/MD_simulations/amber/rho_arrestin/rho_arr_c_tail_complexA_WT/run_1_HMR/system.prmtop
trajin /scratch/PI/rondror/MD_simulations/amber/rho_arrestin/rho_arr_c_tail_complexA_WT/run_1_HMR/Prod_56.nc
center origin '!(:POPC | :TIP3 | :SOD | :CLA)'
image origin center
trajout Prod_56_reimaged.nc
go" >> reimage.in
ml load amber
cpptraj -i reimage.in

cd /scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/Rhodopsin-active-unpublished/Rho-active-arr-WT-prot-D83-E134-unpublished/rep_1
mkdir Prod_57
cd Prod_57
rm reimage.in
echo "parm /scratch/PI/rondror/MD_simulations/amber/rho_arrestin/rho_arr_c_tail_complexA_WT/run_1_HMR/system.prmtop
trajin /scratch/PI/rondror/MD_simulations/amber/rho_arrestin/rho_arr_c_tail_complexA_WT/run_1_HMR/Prod_57.nc
center origin '!(:POPC | :TIP3 | :SOD | :CLA)'
image origin center
trajout Prod_57_reimaged.nc
go" >> reimage.in
ml load amber
cpptraj -i reimage.in

cd /scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/Rhodopsin-active-unpublished/Rho-active-arr-WT-prot-D83-E134-unpublished/rep_1
mkdir Prod_58
cd Prod_58
rm reimage.in
echo "parm /scratch/PI/rondror/MD_simulations/amber/rho_arrestin/rho_arr_c_tail_complexA_WT/run_1_HMR/system.prmtop
trajin /scratch/PI/rondror/MD_simulations/amber/rho_arrestin/rho_arr_c_tail_complexA_WT/run_1_HMR/Prod_58.nc
center origin '!(:POPC | :TIP3 | :SOD | :CLA)'
image origin center
trajout Prod_58_reimaged.nc
go" >> reimage.in
ml load amber
cpptraj -i reimage.in

cd /scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/Rhodopsin-active-unpublished/Rho-active-arr-WT-prot-D83-E134-unpublished/rep_1
mkdir Prod_59
cd Prod_59
rm reimage.in
echo "parm /scratch/PI/rondror/MD_simulations/amber/rho_arrestin/rho_arr_c_tail_complexA_WT/run_1_HMR/system.prmtop
trajin /scratch/PI/rondror/MD_simulations/amber/rho_arrestin/rho_arr_c_tail_complexA_WT/run_1_HMR/Prod_59.nc
center origin '!(:POPC | :TIP3 | :SOD | :CLA)'
image origin center
trajout Prod_59_reimaged.nc
go" >> reimage.in
ml load amber
cpptraj -i reimage.in

cd /scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/Rhodopsin-active-unpublished/Rho-active-arr-WT-prot-D83-E134-unpublished/rep_1
mkdir Prod_60
cd Prod_60
rm reimage.in
echo "parm /scratch/PI/rondror/MD_simulations/amber/rho_arrestin/rho_arr_c_tail_complexA_WT/run_1_HMR/system.prmtop
trajin /scratch/PI/rondror/MD_simulations/amber/rho_arrestin/rho_arr_c_tail_complexA_WT/run_1_HMR/Prod_60.nc
center origin '!(:POPC | :TIP3 | :SOD | :CLA)'
image origin center
trajout Prod_60_reimaged.nc
go" >> reimage.in
ml load amber
cpptraj -i reimage.in

cd /scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/Rhodopsin-active-unpublished/Rho-active-arr-WT-prot-D83-E134-unpublished/rep_1
mkdir Prod_61
cd Prod_61
rm reimage.in
echo "parm /scratch/PI/rondror/MD_simulations/amber/rho_arrestin/rho_arr_c_tail_complexA_WT/run_1_HMR/system.prmtop
trajin /scratch/PI/rondror/MD_simulations/amber/rho_arrestin/rho_arr_c_tail_complexA_WT/run_1_HMR/Prod_61.nc
center origin '!(:POPC | :TIP3 | :SOD | :CLA)'
image origin center
trajout Prod_61_reimaged.nc
go" >> reimage.in
ml load amber
cpptraj -i reimage.in

cd /scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/Rhodopsin-active-unpublished/Rho-active-arr-WT-prot-D83-E134-unpublished/rep_1
mkdir Prod_62
cd Prod_62
rm reimage.in
echo "parm /scratch/PI/rondror/MD_simulations/amber/rho_arrestin/rho_arr_c_tail_complexA_WT/run_1_HMR/system.prmtop
trajin /scratch/PI/rondror/MD_simulations/amber/rho_arrestin/rho_arr_c_tail_complexA_WT/run_1_HMR/Prod_62.nc
center origin '!(:POPC | :TIP3 | :SOD | :CLA)'
image origin center
trajout Prod_62_reimaged.nc
go" >> reimage.in
ml load amber
cpptraj -i reimage.in

cd /scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/Rhodopsin-active-unpublished/Rho-active-arr-WT-prot-D83-E134-unpublished/rep_1
mkdir Prod_63
cd Prod_63
rm reimage.in
echo "parm /scratch/PI/rondror/MD_simulations/amber/rho_arrestin/rho_arr_c_tail_complexA_WT/run_1_HMR/system.prmtop
trajin /scratch/PI/rondror/MD_simulations/amber/rho_arrestin/rho_arr_c_tail_complexA_WT/run_1_HMR/Prod_63.nc
center origin '!(:POPC | :TIP3 | :SOD | :CLA)'
image origin center
trajout Prod_63_reimaged.nc
go" >> reimage.in
ml load amber
cpptraj -i reimage.in

cd /scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/Rhodopsin-active-unpublished/Rho-active-arr-WT-prot-D83-E134-unpublished/rep_1
mkdir Prod_64
cd Prod_64
rm reimage.in
echo "parm /scratch/PI/rondror/MD_simulations/amber/rho_arrestin/rho_arr_c_tail_complexA_WT/run_1_HMR/system.prmtop
trajin /scratch/PI/rondror/MD_simulations/amber/rho_arrestin/rho_arr_c_tail_complexA_WT/run_1_HMR/Prod_64.nc
center origin '!(:POPC | :TIP3 | :SOD | :CLA)'
image origin center
trajout Prod_64_reimaged.nc
go" >> reimage.in
ml load amber
cpptraj -i reimage.in

cd /scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/Rhodopsin-active-unpublished/Rho-active-arr-WT-prot-D83-E134-unpublished/rep_1
mkdir Prod_65
cd Prod_65
rm reimage.in
echo "parm /scratch/PI/rondror/MD_simulations/amber/rho_arrestin/rho_arr_c_tail_complexA_WT/run_1_HMR/system.prmtop
trajin /scratch/PI/rondror/MD_simulations/amber/rho_arrestin/rho_arr_c_tail_complexA_WT/run_1_HMR/Prod_65.nc
center origin '!(:POPC | :TIP3 | :SOD | :CLA)'
image origin center
trajout Prod_65_reimaged.nc
go" >> reimage.in
ml load amber
cpptraj -i reimage.in

cd /scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/Rhodopsin-active-unpublished/Rho-active-arr-WT-prot-D83-E134-unpublished/rep_1
mkdir Prod_66
cd Prod_66
rm reimage.in
echo "parm /scratch/PI/rondror/MD_simulations/amber/rho_arrestin/rho_arr_c_tail_complexA_WT/run_1_HMR/system.prmtop
trajin /scratch/PI/rondror/MD_simulations/amber/rho_arrestin/rho_arr_c_tail_complexA_WT/run_1_HMR/Prod_66.nc
center origin '!(:POPC | :TIP3 | :SOD | :CLA)'
image origin center
trajout Prod_66_reimaged.nc
go" >> reimage.in
ml load amber
cpptraj -i reimage.in

cd /scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/Rhodopsin-active-unpublished/Rho-active-arr-WT-prot-D83-E134-unpublished/rep_1
mkdir Prod_67
cd Prod_67
rm reimage.in
echo "parm /scratch/PI/rondror/MD_simulations/amber/rho_arrestin/rho_arr_c_tail_complexA_WT/run_1_HMR/system.prmtop
trajin /scratch/PI/rondror/MD_simulations/amber/rho_arrestin/rho_arr_c_tail_complexA_WT/run_1_HMR/Prod_67.nc
center origin '!(:POPC | :TIP3 | :SOD | :CLA)'
image origin center
trajout Prod_67_reimaged.nc
go" >> reimage.in
ml load amber
cpptraj -i reimage.in

cd /scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/Rhodopsin-active-unpublished/Rho-active-arr-WT-prot-D83-E134-unpublished/rep_1
mkdir Prod_68
cd Prod_68
rm reimage.in
echo "parm /scratch/PI/rondror/MD_simulations/amber/rho_arrestin/rho_arr_c_tail_complexA_WT/run_1_HMR/system.prmtop
trajin /scratch/PI/rondror/MD_simulations/amber/rho_arrestin/rho_arr_c_tail_complexA_WT/run_1_HMR/Prod_68.nc
center origin '!(:POPC | :TIP3 | :SOD | :CLA)'
image origin center
trajout Prod_68_reimaged.nc
go" >> reimage.in
ml load amber
cpptraj -i reimage.in

cd /scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/Rhodopsin-active-unpublished/Rho-active-arr-WT-prot-D83-E134-unpublished/rep_1
mkdir Prod_69
cd Prod_69
rm reimage.in
echo "parm /scratch/PI/rondror/MD_simulations/amber/rho_arrestin/rho_arr_c_tail_complexA_WT/run_1_HMR/system.prmtop
trajin /scratch/PI/rondror/MD_simulations/amber/rho_arrestin/rho_arr_c_tail_complexA_WT/run_1_HMR/Prod_69.nc
center origin '!(:POPC | :TIP3 | :SOD | :CLA)'
image origin center
trajout Prod_69_reimaged.nc
go" >> reimage.in
ml load amber
cpptraj -i reimage.in

cd /scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/Rhodopsin-active-unpublished/Rho-active-arr-WT-prot-D83-E134-unpublished/rep_1
mkdir Prod_70
cd Prod_70
rm reimage.in
echo "parm /scratch/PI/rondror/MD_simulations/amber/rho_arrestin/rho_arr_c_tail_complexA_WT/run_1_HMR/system.prmtop
trajin /scratch/PI/rondror/MD_simulations/amber/rho_arrestin/rho_arr_c_tail_complexA_WT/run_1_HMR/Prod_70.nc
center origin '!(:POPC | :TIP3 | :SOD | :CLA)'
image origin center
trajout Prod_70_reimaged.nc
go" >> reimage.in
ml load amber
cpptraj -i reimage.in

cd /scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/Rhodopsin-active-unpublished/Rho-active-arr-WT-prot-D83-E134-unpublished/rep_1
mkdir Prod_71
cd Prod_71
rm reimage.in
echo "parm /scratch/PI/rondror/MD_simulations/amber/rho_arrestin/rho_arr_c_tail_complexA_WT/run_1_HMR/system.prmtop
trajin /scratch/PI/rondror/MD_simulations/amber/rho_arrestin/rho_arr_c_tail_complexA_WT/run_1_HMR/Prod_71.nc
center origin '!(:POPC | :TIP3 | :SOD | :CLA)'
image origin center
trajout Prod_71_reimaged.nc
go" >> reimage.in
ml load amber
cpptraj -i reimage.in

cd /scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/Rhodopsin-active-unpublished/Rho-active-arr-WT-prot-D83-E134-unpublished/rep_1
mkdir Prod_72
cd Prod_72
rm reimage.in
echo "parm /scratch/PI/rondror/MD_simulations/amber/rho_arrestin/rho_arr_c_tail_complexA_WT/run_1_HMR/system.prmtop
trajin /scratch/PI/rondror/MD_simulations/amber/rho_arrestin/rho_arr_c_tail_complexA_WT/run_1_HMR/Prod_72.nc
center origin '!(:POPC | :TIP3 | :SOD | :CLA)'
image origin center
trajout Prod_72_reimaged.nc
go" >> reimage.in
ml load amber
cpptraj -i reimage.in

cd /scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/Rhodopsin-active-unpublished/Rho-active-arr-WT-prot-D83-E134-unpublished/rep_1
mkdir Prod_73
cd Prod_73
rm reimage.in
echo "parm /scratch/PI/rondror/MD_simulations/amber/rho_arrestin/rho_arr_c_tail_complexA_WT/run_1_HMR/system.prmtop
trajin /scratch/PI/rondror/MD_simulations/amber/rho_arrestin/rho_arr_c_tail_complexA_WT/run_1_HMR/Prod_73.nc
center origin '!(:POPC | :TIP3 | :SOD | :CLA)'
image origin center
trajout Prod_73_reimaged.nc
go" >> reimage.in
ml load amber
cpptraj -i reimage.in

cd /scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/Rhodopsin-active-unpublished/Rho-active-arr-WT-prot-D83-E134-unpublished/rep_1
mkdir Prod_74
cd Prod_74
rm reimage.in
echo "parm /scratch/PI/rondror/MD_simulations/amber/rho_arrestin/rho_arr_c_tail_complexA_WT/run_1_HMR/system.prmtop
trajin /scratch/PI/rondror/MD_simulations/amber/rho_arrestin/rho_arr_c_tail_complexA_WT/run_1_HMR/Prod_74.nc
center origin '!(:POPC | :TIP3 | :SOD | :CLA)'
image origin center
trajout Prod_74_reimaged.nc
go" >> reimage.in
ml load amber
cpptraj -i reimage.in

cd /scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/Rhodopsin-active-unpublished/Rho-active-arr-WT-prot-D83-E134-unpublished/rep_1
mkdir Prod_75
cd Prod_75
rm reimage.in
echo "parm /scratch/PI/rondror/MD_simulations/amber/rho_arrestin/rho_arr_c_tail_complexA_WT/run_1_HMR/system.prmtop
trajin /scratch/PI/rondror/MD_simulations/amber/rho_arrestin/rho_arr_c_tail_complexA_WT/run_1_HMR/Prod_75.nc
center origin '!(:POPC | :TIP3 | :SOD | :CLA)'
image origin center
trajout Prod_75_reimaged.nc
go" >> reimage.in
ml load amber
cpptraj -i reimage.in

cd /scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/Rhodopsin-active-unpublished/Rho-active-arr-WT-prot-D83-E134-unpublished/rep_1
mkdir Prod_76
cd Prod_76
rm reimage.in
echo "parm /scratch/PI/rondror/MD_simulations/amber/rho_arrestin/rho_arr_c_tail_complexA_WT/run_1_HMR/system.prmtop
trajin /scratch/PI/rondror/MD_simulations/amber/rho_arrestin/rho_arr_c_tail_complexA_WT/run_1_HMR/Prod_76.nc
center origin '!(:POPC | :TIP3 | :SOD | :CLA)'
image origin center
trajout Prod_76_reimaged.nc
go" >> reimage.in
ml load amber
cpptraj -i reimage.in

cd /scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/Rhodopsin-active-unpublished/Rho-active-arr-WT-prot-D83-E134-unpublished/rep_1
mkdir Prod_77
cd Prod_77
rm reimage.in
echo "parm /scratch/PI/rondror/MD_simulations/amber/rho_arrestin/rho_arr_c_tail_complexA_WT/run_1_HMR/system.prmtop
trajin /scratch/PI/rondror/MD_simulations/amber/rho_arrestin/rho_arr_c_tail_complexA_WT/run_1_HMR/Prod_77.nc
center origin '!(:POPC | :TIP3 | :SOD | :CLA)'
image origin center
trajout Prod_77_reimaged.nc
go" >> reimage.in
ml load amber
cpptraj -i reimage.in

cd /scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/Rhodopsin-active-unpublished/Rho-active-arr-WT-prot-D83-E134-unpublished/rep_1
mkdir Prod_78
cd Prod_78
rm reimage.in
echo "parm /scratch/PI/rondror/MD_simulations/amber/rho_arrestin/rho_arr_c_tail_complexA_WT/run_1_HMR/system.prmtop
trajin /scratch/PI/rondror/MD_simulations/amber/rho_arrestin/rho_arr_c_tail_complexA_WT/run_1_HMR/Prod_78.nc
center origin '!(:POPC | :TIP3 | :SOD | :CLA)'
image origin center
trajout Prod_78_reimaged.nc
go" >> reimage.in
ml load amber
cpptraj -i reimage.in

cd /scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/Rhodopsin-active-unpublished/Rho-active-arr-WT-prot-D83-E134-unpublished/rep_1
mkdir Prod_79
cd Prod_79
rm reimage.in
echo "parm /scratch/PI/rondror/MD_simulations/amber/rho_arrestin/rho_arr_c_tail_complexA_WT/run_1_HMR/system.prmtop
trajin /scratch/PI/rondror/MD_simulations/amber/rho_arrestin/rho_arr_c_tail_complexA_WT/run_1_HMR/Prod_79.nc
center origin '!(:POPC | :TIP3 | :SOD | :CLA)'
image origin center
trajout Prod_79_reimaged.nc
go" >> reimage.in
ml load amber
cpptraj -i reimage.in

cd /scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/Rhodopsin-active-unpublished/Rho-active-arr-WT-prot-D83-E134-unpublished/rep_1
mkdir Prod_80
cd Prod_80
rm reimage.in
echo "parm /scratch/PI/rondror/MD_simulations/amber/rho_arrestin/rho_arr_c_tail_complexA_WT/run_1_HMR/system.prmtop
trajin /scratch/PI/rondror/MD_simulations/amber/rho_arrestin/rho_arr_c_tail_complexA_WT/run_1_HMR/Prod_80.nc
center origin '!(:POPC | :TIP3 | :SOD | :CLA)'
image origin center
trajout Prod_80_reimaged.nc
go" >> reimage.in
ml load amber
cpptraj -i reimage.in

cd /scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/Rhodopsin-active-unpublished/Rho-active-arr-WT-prot-D83-E134-unpublished/rep_1
mkdir Prod_81
cd Prod_81
rm reimage.in
echo "parm /scratch/PI/rondror/MD_simulations/amber/rho_arrestin/rho_arr_c_tail_complexA_WT/run_1_HMR/system.prmtop
trajin /scratch/PI/rondror/MD_simulations/amber/rho_arrestin/rho_arr_c_tail_complexA_WT/run_1_HMR/Prod_81.nc
center origin '!(:POPC | :TIP3 | :SOD | :CLA)'
image origin center
trajout Prod_81_reimaged.nc
go" >> reimage.in
ml load amber
cpptraj -i reimage.in

cd /scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/Rhodopsin-active-unpublished/Rho-active-arr-WT-prot-D83-E134-unpublished/rep_1
mkdir Prod_82
cd Prod_82
rm reimage.in
echo "parm /scratch/PI/rondror/MD_simulations/amber/rho_arrestin/rho_arr_c_tail_complexA_WT/run_1_HMR/system.prmtop
trajin /scratch/PI/rondror/MD_simulations/amber/rho_arrestin/rho_arr_c_tail_complexA_WT/run_1_HMR/Prod_82.nc
center origin '!(:POPC | :TIP3 | :SOD | :CLA)'
image origin center
trajout Prod_82_reimaged.nc
go" >> reimage.in
ml load amber
cpptraj -i reimage.in

cd /scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/Rhodopsin-active-unpublished/Rho-active-arr-WT-prot-D83-E134-unpublished/rep_1
mkdir Prod_83
cd Prod_83
rm reimage.in
echo "parm /scratch/PI/rondror/MD_simulations/amber/rho_arrestin/rho_arr_c_tail_complexA_WT/run_1_HMR/system.prmtop
trajin /scratch/PI/rondror/MD_simulations/amber/rho_arrestin/rho_arr_c_tail_complexA_WT/run_1_HMR/Prod_83.nc
center origin '!(:POPC | :TIP3 | :SOD | :CLA)'
image origin center
trajout Prod_83_reimaged.nc
go" >> reimage.in
ml load amber
cpptraj -i reimage.in

cd /scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/Rhodopsin-active-unpublished/Rho-active-arr-WT-prot-D83-E134-unpublished/rep_1
mkdir Prod_84
cd Prod_84
rm reimage.in
echo "parm /scratch/PI/rondror/MD_simulations/amber/rho_arrestin/rho_arr_c_tail_complexA_WT/run_1_HMR/system.prmtop
trajin /scratch/PI/rondror/MD_simulations/amber/rho_arrestin/rho_arr_c_tail_complexA_WT/run_1_HMR/Prod_84.nc
center origin '!(:POPC | :TIP3 | :SOD | :CLA)'
image origin center
trajout Prod_84_reimaged.nc
go" >> reimage.in
ml load amber
cpptraj -i reimage.in

cd /scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/Rhodopsin-active-unpublished/Rho-active-arr-WT-prot-D83-E134-unpublished/rep_1
mkdir Prod_85
cd Prod_85
rm reimage.in
echo "parm /scratch/PI/rondror/MD_simulations/amber/rho_arrestin/rho_arr_c_tail_complexA_WT/run_1_HMR/system.prmtop
trajin /scratch/PI/rondror/MD_simulations/amber/rho_arrestin/rho_arr_c_tail_complexA_WT/run_1_HMR/Prod_85.nc
center origin '!(:POPC | :TIP3 | :SOD | :CLA)'
image origin center
trajout Prod_85_reimaged.nc
go" >> reimage.in
ml load amber
cpptraj -i reimage.in

cd /scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/Rhodopsin-active-unpublished/Rho-active-arr-WT-prot-D83-E134-unpublished/rep_1
mkdir Prod_86
cd Prod_86
rm reimage.in
echo "parm /scratch/PI/rondror/MD_simulations/amber/rho_arrestin/rho_arr_c_tail_complexA_WT/run_1_HMR/system.prmtop
trajin /scratch/PI/rondror/MD_simulations/amber/rho_arrestin/rho_arr_c_tail_complexA_WT/run_1_HMR/Prod_86.nc
center origin '!(:POPC | :TIP3 | :SOD | :CLA)'
image origin center
trajout Prod_86_reimaged.nc
go" >> reimage.in
ml load amber
cpptraj -i reimage.in

cd /scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/Rhodopsin-active-unpublished/Rho-active-arr-WT-prot-D83-E134-unpublished/rep_1
mkdir Prod_87
cd Prod_87
rm reimage.in
echo "parm /scratch/PI/rondror/MD_simulations/amber/rho_arrestin/rho_arr_c_tail_complexA_WT/run_1_HMR/system.prmtop
trajin /scratch/PI/rondror/MD_simulations/amber/rho_arrestin/rho_arr_c_tail_complexA_WT/run_1_HMR/Prod_87.nc
center origin '!(:POPC | :TIP3 | :SOD | :CLA)'
image origin center
trajout Prod_87_reimaged.nc
go" >> reimage.in
ml load amber
cpptraj -i reimage.in

cd /scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/Rhodopsin-active-unpublished/Rho-active-arr-WT-prot-D83-E134-unpublished/rep_1
mkdir Prod_88
cd Prod_88
rm reimage.in
echo "parm /scratch/PI/rondror/MD_simulations/amber/rho_arrestin/rho_arr_c_tail_complexA_WT/run_1_HMR/system.prmtop
trajin /scratch/PI/rondror/MD_simulations/amber/rho_arrestin/rho_arr_c_tail_complexA_WT/run_1_HMR/Prod_88.nc
center origin '!(:POPC | :TIP3 | :SOD | :CLA)'
image origin center
trajout Prod_88_reimaged.nc
go" >> reimage.in
ml load amber
cpptraj -i reimage.in

cd /scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/Rhodopsin-active-unpublished/Rho-active-arr-WT-prot-D83-E134-unpublished/rep_1
mkdir Prod_89
cd Prod_89
rm reimage.in
echo "parm /scratch/PI/rondror/MD_simulations/amber/rho_arrestin/rho_arr_c_tail_complexA_WT/run_1_HMR/system.prmtop
trajin /scratch/PI/rondror/MD_simulations/amber/rho_arrestin/rho_arr_c_tail_complexA_WT/run_1_HMR/Prod_89.nc
center origin '!(:POPC | :TIP3 | :SOD | :CLA)'
image origin center
trajout Prod_89_reimaged.nc
go" >> reimage.in
ml load amber
cpptraj -i reimage.in

cd /scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/Rhodopsin-active-unpublished/Rho-active-arr-WT-prot-D83-E134-unpublished/rep_1
mkdir Prod_90
cd Prod_90
rm reimage.in
echo "parm /scratch/PI/rondror/MD_simulations/amber/rho_arrestin/rho_arr_c_tail_complexA_WT/run_1_HMR/system.prmtop
trajin /scratch/PI/rondror/MD_simulations/amber/rho_arrestin/rho_arr_c_tail_complexA_WT/run_1_HMR/Prod_90.nc
center origin '!(:POPC | :TIP3 | :SOD | :CLA)'
image origin center
trajout Prod_90_reimaged.nc
go" >> reimage.in
ml load amber
cpptraj -i reimage.in

cd /scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/Rhodopsin-active-unpublished/Rho-active-arr-WT-prot-D83-E134-unpublished/rep_1
mkdir Prod_91
cd Prod_91
rm reimage.in
echo "parm /scratch/PI/rondror/MD_simulations/amber/rho_arrestin/rho_arr_c_tail_complexA_WT/run_1_HMR/system.prmtop
trajin /scratch/PI/rondror/MD_simulations/amber/rho_arrestin/rho_arr_c_tail_complexA_WT/run_1_HMR/Prod_91.nc
center origin '!(:POPC | :TIP3 | :SOD | :CLA)'
image origin center
trajout Prod_91_reimaged.nc
go" >> reimage.in
ml load amber
cpptraj -i reimage.in

cd /scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/Rhodopsin-active-unpublished/Rho-active-arr-WT-prot-D83-E134-unpublished/rep_1
mkdir Prod_92
cd Prod_92
rm reimage.in
echo "parm /scratch/PI/rondror/MD_simulations/amber/rho_arrestin/rho_arr_c_tail_complexA_WT/run_1_HMR/system.prmtop
trajin /scratch/PI/rondror/MD_simulations/amber/rho_arrestin/rho_arr_c_tail_complexA_WT/run_1_HMR/Prod_92.nc
center origin '!(:POPC | :TIP3 | :SOD | :CLA)'
image origin center
trajout Prod_92_reimaged.nc
go" >> reimage.in
ml load amber
cpptraj -i reimage.in

cd /scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/Rhodopsin-active-unpublished/Rho-active-arr-WT-prot-D83-E134-unpublished/rep_1
mkdir Prod_93
cd Prod_93
rm reimage.in
echo "parm /scratch/PI/rondror/MD_simulations/amber/rho_arrestin/rho_arr_c_tail_complexA_WT/run_1_HMR/system.prmtop
trajin /scratch/PI/rondror/MD_simulations/amber/rho_arrestin/rho_arr_c_tail_complexA_WT/run_1_HMR/Prod_93.nc
center origin '!(:POPC | :TIP3 | :SOD | :CLA)'
image origin center
trajout Prod_93_reimaged.nc
go" >> reimage.in
ml load amber
cpptraj -i reimage.in

cd /scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/Rhodopsin-active-unpublished/Rho-active-arr-WT-prot-D83-E134-unpublished/rep_1
mkdir Prod_94
cd Prod_94
rm reimage.in
echo "parm /scratch/PI/rondror/MD_simulations/amber/rho_arrestin/rho_arr_c_tail_complexA_WT/run_1_HMR/system.prmtop
trajin /scratch/PI/rondror/MD_simulations/amber/rho_arrestin/rho_arr_c_tail_complexA_WT/run_1_HMR/Prod_94.nc
center origin '!(:POPC | :TIP3 | :SOD | :CLA)'
image origin center
trajout Prod_94_reimaged.nc
go" >> reimage.in
ml load amber
cpptraj -i reimage.in

cd /scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/Rhodopsin-active-unpublished/Rho-active-arr-WT-prot-D83-E134-unpublished/rep_1
mkdir Prod_95
cd Prod_95
rm reimage.in
echo "parm /scratch/PI/rondror/MD_simulations/amber/rho_arrestin/rho_arr_c_tail_complexA_WT/run_1_HMR/system.prmtop
trajin /scratch/PI/rondror/MD_simulations/amber/rho_arrestin/rho_arr_c_tail_complexA_WT/run_1_HMR/Prod_95.nc
center origin '!(:POPC | :TIP3 | :SOD | :CLA)'
image origin center
trajout Prod_95_reimaged.nc
go" >> reimage.in
ml load amber
cpptraj -i reimage.in

cd /scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/Rhodopsin-active-unpublished/Rho-active-arr-WT-prot-D83-E134-unpublished/rep_1
mkdir Prod_96
cd Prod_96
rm reimage.in
echo "parm /scratch/PI/rondror/MD_simulations/amber/rho_arrestin/rho_arr_c_tail_complexA_WT/run_1_HMR/system.prmtop
trajin /scratch/PI/rondror/MD_simulations/amber/rho_arrestin/rho_arr_c_tail_complexA_WT/run_1_HMR/Prod_96.nc
center origin '!(:POPC | :TIP3 | :SOD | :CLA)'
image origin center
trajout Prod_96_reimaged.nc
go" >> reimage.in
ml load amber
cpptraj -i reimage.in

cd /scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/Rhodopsin-active-unpublished/Rho-active-arr-WT-prot-D83-E134-unpublished/rep_1
mkdir Prod_97
cd Prod_97
rm reimage.in
echo "parm /scratch/PI/rondror/MD_simulations/amber/rho_arrestin/rho_arr_c_tail_complexA_WT/run_1_HMR/system.prmtop
trajin /scratch/PI/rondror/MD_simulations/amber/rho_arrestin/rho_arr_c_tail_complexA_WT/run_1_HMR/Prod_97.nc
center origin '!(:POPC | :TIP3 | :SOD | :CLA)'
image origin center
trajout Prod_97_reimaged.nc
go" >> reimage.in
ml load amber
cpptraj -i reimage.in

cd /scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/Rhodopsin-active-unpublished/Rho-active-arr-WT-prot-D83-E134-unpublished/rep_1
mkdir Prod_98
cd Prod_98
rm reimage.in
echo "parm /scratch/PI/rondror/MD_simulations/amber/rho_arrestin/rho_arr_c_tail_complexA_WT/run_1_HMR/system.prmtop
trajin /scratch/PI/rondror/MD_simulations/amber/rho_arrestin/rho_arr_c_tail_complexA_WT/run_1_HMR/Prod_98.nc
center origin '!(:POPC | :TIP3 | :SOD | :CLA)'
image origin center
trajout Prod_98_reimaged.nc
go" >> reimage.in
ml load amber
cpptraj -i reimage.in

cd /scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/Rhodopsin-active-unpublished/Rho-active-arr-WT-prot-D83-E134-unpublished/rep_1
mkdir Prod_99
cd Prod_99
rm reimage.in
echo "parm /scratch/PI/rondror/MD_simulations/amber/rho_arrestin/rho_arr_c_tail_complexA_WT/run_1_HMR/system.prmtop
trajin /scratch/PI/rondror/MD_simulations/amber/rho_arrestin/rho_arr_c_tail_complexA_WT/run_1_HMR/Prod_99.nc
center origin '!(:POPC | :TIP3 | :SOD | :CLA)'
image origin center
trajout Prod_99_reimaged.nc
go" >> reimage.in
ml load amber
cpptraj -i reimage.in

cd /scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/Rhodopsin-active-unpublished/Rho-active-arr-WT-prot-D83-E134-unpublished/rep_1
mkdir Prod_100
cd Prod_100
rm reimage.in
echo "parm /scratch/PI/rondror/MD_simulations/amber/rho_arrestin/rho_arr_c_tail_complexA_WT/run_1_HMR/system.prmtop
trajin /scratch/PI/rondror/MD_simulations/amber/rho_arrestin/rho_arr_c_tail_complexA_WT/run_1_HMR/Prod_100.nc
center origin '!(:POPC | :TIP3 | :SOD | :CLA)'
image origin center
trajout Prod_100_reimaged.nc
go" >> reimage.in
ml load amber
cpptraj -i reimage.in

cd /scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/Rhodopsin-active-unpublished/Rho-active-arr-WT-prot-D83-E134-unpublished/rep_1
mkdir Prod_101
cd Prod_101
rm reimage.in
echo "parm /scratch/PI/rondror/MD_simulations/amber/rho_arrestin/rho_arr_c_tail_complexA_WT/run_1_HMR/system.prmtop
trajin /scratch/PI/rondror/MD_simulations/amber/rho_arrestin/rho_arr_c_tail_complexA_WT/run_1_HMR/Prod_101.nc
center origin '!(:POPC | :TIP3 | :SOD | :CLA)'
image origin center
trajout Prod_101_reimaged.nc
go" >> reimage.in
ml load amber
cpptraj -i reimage.in

cd /scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/Rhodopsin-active-unpublished/Rho-active-arr-WT-prot-D83-E134-unpublished/rep_1
mkdir Prod_102
cd Prod_102
rm reimage.in
echo "parm /scratch/PI/rondror/MD_simulations/amber/rho_arrestin/rho_arr_c_tail_complexA_WT/run_1_HMR/system.prmtop
trajin /scratch/PI/rondror/MD_simulations/amber/rho_arrestin/rho_arr_c_tail_complexA_WT/run_1_HMR/Prod_102.nc
center origin '!(:POPC | :TIP3 | :SOD | :CLA)'
image origin center
trajout Prod_102_reimaged.nc
go" >> reimage.in
ml load amber
cpptraj -i reimage.in

cd /scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/Rhodopsin-active-unpublished/Rho-active-arr-WT-prot-D83-E134-unpublished/rep_1
mkdir Prod_103
cd Prod_103
rm reimage.in
echo "parm /scratch/PI/rondror/MD_simulations/amber/rho_arrestin/rho_arr_c_tail_complexA_WT/run_1_HMR/system.prmtop
trajin /scratch/PI/rondror/MD_simulations/amber/rho_arrestin/rho_arr_c_tail_complexA_WT/run_1_HMR/Prod_103.nc
center origin '!(:POPC | :TIP3 | :SOD | :CLA)'
image origin center
trajout Prod_103_reimaged.nc
go" >> reimage.in
ml load amber
cpptraj -i reimage.in

cd /scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/Rhodopsin-active-unpublished/Rho-active-arr-WT-prot-D83-E134-unpublished/rep_1
mkdir Prod_104
cd Prod_104
rm reimage.in
echo "parm /scratch/PI/rondror/MD_simulations/amber/rho_arrestin/rho_arr_c_tail_complexA_WT/run_1_HMR/system.prmtop
trajin /scratch/PI/rondror/MD_simulations/amber/rho_arrestin/rho_arr_c_tail_complexA_WT/run_1_HMR/Prod_104.nc
center origin '!(:POPC | :TIP3 | :SOD | :CLA)'
image origin center
trajout Prod_104_reimaged.nc
go" >> reimage.in
ml load amber
cpptraj -i reimage.in

cd /scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/Rhodopsin-active-unpublished/Rho-active-arr-WT-prot-D83-E134-unpublished/rep_1
mkdir Prod_105
cd Prod_105
rm reimage.in
echo "parm /scratch/PI/rondror/MD_simulations/amber/rho_arrestin/rho_arr_c_tail_complexA_WT/run_1_HMR/system.prmtop
trajin /scratch/PI/rondror/MD_simulations/amber/rho_arrestin/rho_arr_c_tail_complexA_WT/run_1_HMR/Prod_105.nc
center origin '!(:POPC | :TIP3 | :SOD | :CLA)'
image origin center
trajout Prod_105_reimaged.nc
go" >> reimage.in
ml load amber
cpptraj -i reimage.in

cd /scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/Rhodopsin-active-unpublished/Rho-active-arr-WT-prot-D83-E134-unpublished/rep_1
mkdir Prod_106
cd Prod_106
rm reimage.in
echo "parm /scratch/PI/rondror/MD_simulations/amber/rho_arrestin/rho_arr_c_tail_complexA_WT/run_1_HMR/system.prmtop
trajin /scratch/PI/rondror/MD_simulations/amber/rho_arrestin/rho_arr_c_tail_complexA_WT/run_1_HMR/Prod_106.nc
center origin '!(:POPC | :TIP3 | :SOD | :CLA)'
image origin center
trajout Prod_106_reimaged.nc
go" >> reimage.in
ml load amber
cpptraj -i reimage.in

cd /scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/Rhodopsin-active-unpublished/Rho-active-arr-WT-prot-D83-E134-unpublished/rep_1
mkdir Prod_107
cd Prod_107
rm reimage.in
echo "parm /scratch/PI/rondror/MD_simulations/amber/rho_arrestin/rho_arr_c_tail_complexA_WT/run_1_HMR/system.prmtop
trajin /scratch/PI/rondror/MD_simulations/amber/rho_arrestin/rho_arr_c_tail_complexA_WT/run_1_HMR/Prod_107.nc
center origin '!(:POPC | :TIP3 | :SOD | :CLA)'
image origin center
trajout Prod_107_reimaged.nc
go" >> reimage.in
ml load amber
cpptraj -i reimage.in

cd /scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/Rhodopsin-active-unpublished/Rho-active-arr-WT-prot-D83-E134-unpublished/rep_1
mkdir Prod_108
cd Prod_108
rm reimage.in
echo "parm /scratch/PI/rondror/MD_simulations/amber/rho_arrestin/rho_arr_c_tail_complexA_WT/run_1_HMR/system.prmtop
trajin /scratch/PI/rondror/MD_simulations/amber/rho_arrestin/rho_arr_c_tail_complexA_WT/run_1_HMR/Prod_108.nc
center origin '!(:POPC | :TIP3 | :SOD | :CLA)'
image origin center
trajout Prod_108_reimaged.nc
go" >> reimage.in
ml load amber
cpptraj -i reimage.in

cd /scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/Rhodopsin-active-unpublished/Rho-active-arr-WT-prot-D83-E134-unpublished/rep_1
mkdir Prod_109
cd Prod_109
rm reimage.in
echo "parm /scratch/PI/rondror/MD_simulations/amber/rho_arrestin/rho_arr_c_tail_complexA_WT/run_1_HMR/system.prmtop
trajin /scratch/PI/rondror/MD_simulations/amber/rho_arrestin/rho_arr_c_tail_complexA_WT/run_1_HMR/Prod_109.nc
center origin '!(:POPC | :TIP3 | :SOD | :CLA)'
image origin center
trajout Prod_109_reimaged.nc
go" >> reimage.in
ml load amber
cpptraj -i reimage.in

cd /scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/Rhodopsin-active-unpublished/Rho-active-arr-WT-prot-D83-E134-unpublished/rep_1
mkdir Prod_110
cd Prod_110
rm reimage.in
echo "parm /scratch/PI/rondror/MD_simulations/amber/rho_arrestin/rho_arr_c_tail_complexA_WT/run_1_HMR/system.prmtop
trajin /scratch/PI/rondror/MD_simulations/amber/rho_arrestin/rho_arr_c_tail_complexA_WT/run_1_HMR/Prod_110.nc
center origin '!(:POPC | :TIP3 | :SOD | :CLA)'
image origin center
trajout Prod_110_reimaged.nc
go" >> reimage.in
ml load amber
cpptraj -i reimage.in

cd /scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/Rhodopsin-active-unpublished/Rho-active-arr-WT-prot-D83-E134-unpublished/rep_1
mkdir Prod_111
cd Prod_111
rm reimage.in
echo "parm /scratch/PI/rondror/MD_simulations/amber/rho_arrestin/rho_arr_c_tail_complexA_WT/run_1_HMR/system.prmtop
trajin /scratch/PI/rondror/MD_simulations/amber/rho_arrestin/rho_arr_c_tail_complexA_WT/run_1_HMR/Prod_111.nc
center origin '!(:POPC | :TIP3 | :SOD | :CLA)'
image origin center
trajout Prod_111_reimaged.nc
go" >> reimage.in
ml load amber
cpptraj -i reimage.in

cd /scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/Rhodopsin-active-unpublished/Rho-active-arr-WT-prot-D83-E134-unpublished/rep_1
mkdir Prod_112
cd Prod_112
rm reimage.in
echo "parm /scratch/PI/rondror/MD_simulations/amber/rho_arrestin/rho_arr_c_tail_complexA_WT/run_1_HMR/system.prmtop
trajin /scratch/PI/rondror/MD_simulations/amber/rho_arrestin/rho_arr_c_tail_complexA_WT/run_1_HMR/Prod_112.nc
center origin '!(:POPC | :TIP3 | :SOD | :CLA)'
image origin center
trajout Prod_112_reimaged.nc
go" >> reimage.in
ml load amber
cpptraj -i reimage.in

cd /scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/Rhodopsin-active-unpublished/Rho-active-arr-WT-prot-D83-E134-unpublished/rep_1
mkdir Prod_113
cd Prod_113
rm reimage.in
echo "parm /scratch/PI/rondror/MD_simulations/amber/rho_arrestin/rho_arr_c_tail_complexA_WT/run_1_HMR/system.prmtop
trajin /scratch/PI/rondror/MD_simulations/amber/rho_arrestin/rho_arr_c_tail_complexA_WT/run_1_HMR/Prod_113.nc
center origin '!(:POPC | :TIP3 | :SOD | :CLA)'
image origin center
trajout Prod_113_reimaged.nc
go" >> reimage.in
ml load amber
cpptraj -i reimage.in

cd /scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/Rhodopsin-active-unpublished/Rho-active-arr-WT-prot-D83-E134-unpublished/rep_1
mkdir Prod_114
cd Prod_114
rm reimage.in
echo "parm /scratch/PI/rondror/MD_simulations/amber/rho_arrestin/rho_arr_c_tail_complexA_WT/run_1_HMR/system.prmtop
trajin /scratch/PI/rondror/MD_simulations/amber/rho_arrestin/rho_arr_c_tail_complexA_WT/run_1_HMR/Prod_114.nc
center origin '!(:POPC | :TIP3 | :SOD | :CLA)'
image origin center
trajout Prod_114_reimaged.nc
go" >> reimage.in
ml load amber
cpptraj -i reimage.in

cd /scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/Rhodopsin-active-unpublished/Rho-active-arr-WT-prot-D83-E134-unpublished/rep_1
mkdir Prod_115
cd Prod_115
rm reimage.in
echo "parm /scratch/PI/rondror/MD_simulations/amber/rho_arrestin/rho_arr_c_tail_complexA_WT/run_1_HMR/system.prmtop
trajin /scratch/PI/rondror/MD_simulations/amber/rho_arrestin/rho_arr_c_tail_complexA_WT/run_1_HMR/Prod_115.nc
center origin '!(:POPC | :TIP3 | :SOD | :CLA)'
image origin center
trajout Prod_115_reimaged.nc
go" >> reimage.in
ml load amber
cpptraj -i reimage.in

cd /scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/Rhodopsin-active-unpublished/Rho-active-arr-WT-prot-D83-E134-unpublished/rep_1
mkdir Prod_116
cd Prod_116
rm reimage.in
echo "parm /scratch/PI/rondror/MD_simulations/amber/rho_arrestin/rho_arr_c_tail_complexA_WT/run_1_HMR/system.prmtop
trajin /scratch/PI/rondror/MD_simulations/amber/rho_arrestin/rho_arr_c_tail_complexA_WT/run_1_HMR/Prod_116.nc
center origin '!(:POPC | :TIP3 | :SOD | :CLA)'
image origin center
trajout Prod_116_reimaged.nc
go" >> reimage.in
ml load amber
cpptraj -i reimage.in

cd /scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/Rhodopsin-active-unpublished/Rho-active-arr-WT-prot-D83-E134-unpublished/rep_1
mkdir Prod_117
cd Prod_117
rm reimage.in
echo "parm /scratch/PI/rondror/MD_simulations/amber/rho_arrestin/rho_arr_c_tail_complexA_WT/run_1_HMR/system.prmtop
trajin /scratch/PI/rondror/MD_simulations/amber/rho_arrestin/rho_arr_c_tail_complexA_WT/run_1_HMR/Prod_117.nc
center origin '!(:POPC | :TIP3 | :SOD | :CLA)'
image origin center
trajout Prod_117_reimaged.nc
go" >> reimage.in
ml load amber
cpptraj -i reimage.in

cd /scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/Rhodopsin-active-unpublished/Rho-active-arr-WT-prot-D83-E134-unpublished/rep_1
mkdir Prod_118
cd Prod_118
rm reimage.in
echo "parm /scratch/PI/rondror/MD_simulations/amber/rho_arrestin/rho_arr_c_tail_complexA_WT/run_1_HMR/system.prmtop
trajin /scratch/PI/rondror/MD_simulations/amber/rho_arrestin/rho_arr_c_tail_complexA_WT/run_1_HMR/Prod_118.nc
center origin '!(:POPC | :TIP3 | :SOD | :CLA)'
image origin center
trajout Prod_118_reimaged.nc
go" >> reimage.in
ml load amber
cpptraj -i reimage.in

cd /scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/Rhodopsin-active-unpublished/Rho-active-arr-WT-prot-D83-E134-unpublished/rep_1
mkdir Prod_119
cd Prod_119
rm reimage.in
echo "parm /scratch/PI/rondror/MD_simulations/amber/rho_arrestin/rho_arr_c_tail_complexA_WT/run_1_HMR/system.prmtop
trajin /scratch/PI/rondror/MD_simulations/amber/rho_arrestin/rho_arr_c_tail_complexA_WT/run_1_HMR/Prod_119.nc
center origin '!(:POPC | :TIP3 | :SOD | :CLA)'
image origin center
trajout Prod_119_reimaged.nc
go" >> reimage.in
ml load amber
cpptraj -i reimage.in

cd /scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/Rhodopsin-active-unpublished/Rho-active-arr-WT-prot-D83-E134-unpublished/rep_1
mkdir Prod_120
cd Prod_120
rm reimage.in
echo "parm /scratch/PI/rondror/MD_simulations/amber/rho_arrestin/rho_arr_c_tail_complexA_WT/run_1_HMR/system.prmtop
trajin /scratch/PI/rondror/MD_simulations/amber/rho_arrestin/rho_arr_c_tail_complexA_WT/run_1_HMR/Prod_120.nc
center origin '!(:POPC | :TIP3 | :SOD | :CLA)'
image origin center
trajout Prod_120_reimaged.nc
go" >> reimage.in
ml load amber
cpptraj -i reimage.in

cd /scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/Rhodopsin-active-unpublished/Rho-active-arr-WT-prot-D83-E134-unpublished/rep_1
mkdir Prod_121
cd Prod_121
rm reimage.in
echo "parm /scratch/PI/rondror/MD_simulations/amber/rho_arrestin/rho_arr_c_tail_complexA_WT/run_1_HMR/system.prmtop
trajin /scratch/PI/rondror/MD_simulations/amber/rho_arrestin/rho_arr_c_tail_complexA_WT/run_1_HMR/Prod_121.nc
center origin '!(:POPC | :TIP3 | :SOD | :CLA)'
image origin center
trajout Prod_121_reimaged.nc
go" >> reimage.in
ml load amber
cpptraj -i reimage.in

cd /scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/Rhodopsin-active-unpublished/Rho-active-arr-WT-prot-D83-E134-unpublished/rep_1
mkdir Prod_122
cd Prod_122
rm reimage.in
echo "parm /scratch/PI/rondror/MD_simulations/amber/rho_arrestin/rho_arr_c_tail_complexA_WT/run_1_HMR/system.prmtop
trajin /scratch/PI/rondror/MD_simulations/amber/rho_arrestin/rho_arr_c_tail_complexA_WT/run_1_HMR/Prod_122.nc
center origin '!(:POPC | :TIP3 | :SOD | :CLA)'
image origin center
trajout Prod_122_reimaged.nc
go" >> reimage.in
ml load amber
cpptraj -i reimage.in

cd /scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/Rhodopsin-active-unpublished/Rho-active-arr-WT-prot-D83-E134-unpublished/rep_1
mkdir Prod_123
cd Prod_123
rm reimage.in
echo "parm /scratch/PI/rondror/MD_simulations/amber/rho_arrestin/rho_arr_c_tail_complexA_WT/run_1_HMR/system.prmtop
trajin /scratch/PI/rondror/MD_simulations/amber/rho_arrestin/rho_arr_c_tail_complexA_WT/run_1_HMR/Prod_123.nc
center origin '!(:POPC | :TIP3 | :SOD | :CLA)'
image origin center
trajout Prod_123_reimaged.nc
go" >> reimage.in
ml load amber
cpptraj -i reimage.in

cd /scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/Rhodopsin-active-unpublished/Rho-active-arr-WT-prot-D83-E134-unpublished/rep_1
mkdir Prod_124
cd Prod_124
rm reimage.in
echo "parm /scratch/PI/rondror/MD_simulations/amber/rho_arrestin/rho_arr_c_tail_complexA_WT/run_1_HMR/system.prmtop
trajin /scratch/PI/rondror/MD_simulations/amber/rho_arrestin/rho_arr_c_tail_complexA_WT/run_1_HMR/Prod_124.nc
center origin '!(:POPC | :TIP3 | :SOD | :CLA)'
image origin center
trajout Prod_124_reimaged.nc
go" >> reimage.in
ml load amber
cpptraj -i reimage.in

cd /scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/Rhodopsin-active-unpublished/Rho-active-arr-WT-prot-D83-E134-unpublished/rep_1
mkdir Prod_125
cd Prod_125
rm reimage.in
echo "parm /scratch/PI/rondror/MD_simulations/amber/rho_arrestin/rho_arr_c_tail_complexA_WT/run_1_HMR/system.prmtop
trajin /scratch/PI/rondror/MD_simulations/amber/rho_arrestin/rho_arr_c_tail_complexA_WT/run_1_HMR/Prod_125.nc
center origin '!(:POPC | :TIP3 | :SOD | :CLA)'
image origin center
trajout Prod_125_reimaged.nc
go" >> reimage.in
ml load amber
cpptraj -i reimage.in

cd /scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/Rhodopsin-active-unpublished/Rho-active-arr-WT-prot-D83-E134-unpublished/rep_1
mkdir Prod_126
cd Prod_126
rm reimage.in
echo "parm /scratch/PI/rondror/MD_simulations/amber/rho_arrestin/rho_arr_c_tail_complexA_WT/run_1_HMR/system.prmtop
trajin /scratch/PI/rondror/MD_simulations/amber/rho_arrestin/rho_arr_c_tail_complexA_WT/run_1_HMR/Prod_126.nc
center origin '!(:POPC | :TIP3 | :SOD | :CLA)'
image origin center
trajout Prod_126_reimaged.nc
go" >> reimage.in
ml load amber
cpptraj -i reimage.in

cd /scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/Rhodopsin-active-unpublished/Rho-active-arr-WT-prot-D83-E134-unpublished/rep_1
mkdir Prod_127
cd Prod_127
rm reimage.in
echo "parm /scratch/PI/rondror/MD_simulations/amber/rho_arrestin/rho_arr_c_tail_complexA_WT/run_1_HMR/system.prmtop
trajin /scratch/PI/rondror/MD_simulations/amber/rho_arrestin/rho_arr_c_tail_complexA_WT/run_1_HMR/Prod_127.nc
center origin '!(:POPC | :TIP3 | :SOD | :CLA)'
image origin center
trajout Prod_127_reimaged.nc
go" >> reimage.in
ml load amber
cpptraj -i reimage.in

cd /scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/Rhodopsin-active-unpublished/Rho-active-arr-WT-prot-D83-E134-unpublished/rep_1
mkdir Prod_128
cd Prod_128
rm reimage.in
echo "parm /scratch/PI/rondror/MD_simulations/amber/rho_arrestin/rho_arr_c_tail_complexA_WT/run_1_HMR/system.prmtop
trajin /scratch/PI/rondror/MD_simulations/amber/rho_arrestin/rho_arr_c_tail_complexA_WT/run_1_HMR/Prod_128.nc
center origin '!(:POPC | :TIP3 | :SOD | :CLA)'
image origin center
trajout Prod_128_reimaged.nc
go" >> reimage.in
ml load amber
cpptraj -i reimage.in

cd /scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/Rhodopsin-active-unpublished/Rho-active-arr-WT-prot-D83-E134-unpublished/rep_1
mkdir Prod_129
cd Prod_129
rm reimage.in
echo "parm /scratch/PI/rondror/MD_simulations/amber/rho_arrestin/rho_arr_c_tail_complexA_WT/run_1_HMR/system.prmtop
trajin /scratch/PI/rondror/MD_simulations/amber/rho_arrestin/rho_arr_c_tail_complexA_WT/run_1_HMR/Prod_129.nc
center origin '!(:POPC | :TIP3 | :SOD | :CLA)'
image origin center
trajout Prod_129_reimaged.nc
go" >> reimage.in
ml load amber
cpptraj -i reimage.in

cd /scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/Rhodopsin-active-unpublished/Rho-active-arr-WT-prot-D83-E134-unpublished/rep_1
mkdir Prod_130
cd Prod_130
rm reimage.in
echo "parm /scratch/PI/rondror/MD_simulations/amber/rho_arrestin/rho_arr_c_tail_complexA_WT/run_1_HMR/system.prmtop
trajin /scratch/PI/rondror/MD_simulations/amber/rho_arrestin/rho_arr_c_tail_complexA_WT/run_1_HMR/Prod_130.nc
center origin '!(:POPC | :TIP3 | :SOD | :CLA)'
image origin center
trajout Prod_130_reimaged.nc
go" >> reimage.in
ml load amber
cpptraj -i reimage.in

cd /scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/Rhodopsin-active-unpublished/Rho-active-arr-WT-prot-D83-E134-unpublished/rep_1
mkdir Prod_131
cd Prod_131
rm reimage.in
echo "parm /scratch/PI/rondror/MD_simulations/amber/rho_arrestin/rho_arr_c_tail_complexA_WT/run_1_HMR/system.prmtop
trajin /scratch/PI/rondror/MD_simulations/amber/rho_arrestin/rho_arr_c_tail_complexA_WT/run_1_HMR/Prod_131.nc
center origin '!(:POPC | :TIP3 | :SOD | :CLA)'
image origin center
trajout Prod_131_reimaged.nc
go" >> reimage.in
ml load amber
cpptraj -i reimage.in

cd /scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/Rhodopsin-active-unpublished/Rho-active-arr-WT-prot-D83-E134-unpublished/rep_1
mkdir Prod_132
cd Prod_132
rm reimage.in
echo "parm /scratch/PI/rondror/MD_simulations/amber/rho_arrestin/rho_arr_c_tail_complexA_WT/run_1_HMR/system.prmtop
trajin /scratch/PI/rondror/MD_simulations/amber/rho_arrestin/rho_arr_c_tail_complexA_WT/run_1_HMR/Prod_132.nc
center origin '!(:POPC | :TIP3 | :SOD | :CLA)'
image origin center
trajout Prod_132_reimaged.nc
go" >> reimage.in
ml load amber
cpptraj -i reimage.in

cd /scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/Rhodopsin-active-unpublished/Rho-active-arr-WT-prot-D83-E134-unpublished/rep_1
mkdir Prod_133
cd Prod_133
rm reimage.in
echo "parm /scratch/PI/rondror/MD_simulations/amber/rho_arrestin/rho_arr_c_tail_complexA_WT/run_1_HMR/system.prmtop
trajin /scratch/PI/rondror/MD_simulations/amber/rho_arrestin/rho_arr_c_tail_complexA_WT/run_1_HMR/Prod_133.nc
center origin '!(:POPC | :TIP3 | :SOD | :CLA)'
image origin center
trajout Prod_133_reimaged.nc
go" >> reimage.in
ml load amber
cpptraj -i reimage.in

cd /scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/Rhodopsin-active-unpublished/Rho-active-arr-WT-prot-D83-E134-unpublished/rep_1
mkdir Prod_134
cd Prod_134
rm reimage.in
echo "parm /scratch/PI/rondror/MD_simulations/amber/rho_arrestin/rho_arr_c_tail_complexA_WT/run_1_HMR/system.prmtop
trajin /scratch/PI/rondror/MD_simulations/amber/rho_arrestin/rho_arr_c_tail_complexA_WT/run_1_HMR/Prod_134.nc
center origin '!(:POPC | :TIP3 | :SOD | :CLA)'
image origin center
trajout Prod_134_reimaged.nc
go" >> reimage.in
ml load amber
cpptraj -i reimage.in

cd /scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/Rhodopsin-active-unpublished/Rho-active-arr-WT-prot-D83-E134-unpublished/rep_1
mkdir Prod_135
cd Prod_135
rm reimage.in
echo "parm /scratch/PI/rondror/MD_simulations/amber/rho_arrestin/rho_arr_c_tail_complexA_WT/run_1_HMR/system.prmtop
trajin /scratch/PI/rondror/MD_simulations/amber/rho_arrestin/rho_arr_c_tail_complexA_WT/run_1_HMR/Prod_135.nc
center origin '!(:POPC | :TIP3 | :SOD | :CLA)'
image origin center
trajout Prod_135_reimaged.nc
go" >> reimage.in
ml load amber
cpptraj -i reimage.in

cd /scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/Rhodopsin-active-unpublished/Rho-active-arr-WT-prot-D83-E134-unpublished/rep_1
mkdir Prod_136
cd Prod_136
rm reimage.in
echo "parm /scratch/PI/rondror/MD_simulations/amber/rho_arrestin/rho_arr_c_tail_complexA_WT/run_1_HMR/system.prmtop
trajin /scratch/PI/rondror/MD_simulations/amber/rho_arrestin/rho_arr_c_tail_complexA_WT/run_1_HMR/Prod_136.nc
center origin '!(:POPC | :TIP3 | :SOD | :CLA)'
image origin center
trajout Prod_136_reimaged.nc
go" >> reimage.in
ml load amber
cpptraj -i reimage.in

cd /scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/Rhodopsin-active-unpublished/Rho-active-arr-WT-prot-D83-E134-unpublished/rep_1
mkdir Prod_137
cd Prod_137
rm reimage.in
echo "parm /scratch/PI/rondror/MD_simulations/amber/rho_arrestin/rho_arr_c_tail_complexA_WT/run_1_HMR/system.prmtop
trajin /scratch/PI/rondror/MD_simulations/amber/rho_arrestin/rho_arr_c_tail_complexA_WT/run_1_HMR/Prod_137.nc
center origin '!(:POPC | :TIP3 | :SOD | :CLA)'
image origin center
trajout Prod_137_reimaged.nc
go" >> reimage.in
ml load amber
cpptraj -i reimage.in

cd /scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/Rhodopsin-active-unpublished/Rho-active-arr-WT-prot-D83-E134-unpublished/rep_1
mkdir Prod_138
cd Prod_138
rm reimage.in
echo "parm /scratch/PI/rondror/MD_simulations/amber/rho_arrestin/rho_arr_c_tail_complexA_WT/run_1_HMR/system.prmtop
trajin /scratch/PI/rondror/MD_simulations/amber/rho_arrestin/rho_arr_c_tail_complexA_WT/run_1_HMR/Prod_138.nc
center origin '!(:POPC | :TIP3 | :SOD | :CLA)'
image origin center
trajout Prod_138_reimaged.nc
go" >> reimage.in
ml load amber
cpptraj -i reimage.in

cd /scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/Rhodopsin-active-unpublished/Rho-active-arr-WT-prot-D83-E134-unpublished/rep_1
mkdir Prod_139
cd Prod_139
rm reimage.in
echo "parm /scratch/PI/rondror/MD_simulations/amber/rho_arrestin/rho_arr_c_tail_complexA_WT/run_1_HMR/system.prmtop
trajin /scratch/PI/rondror/MD_simulations/amber/rho_arrestin/rho_arr_c_tail_complexA_WT/run_1_HMR/Prod_139.nc
center origin '!(:POPC | :TIP3 | :SOD | :CLA)'
image origin center
trajout Prod_139_reimaged.nc
go" >> reimage.in
ml load amber
cpptraj -i reimage.in

cd /scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/Rhodopsin-active-unpublished/Rho-active-arr-WT-prot-D83-E134-unpublished/rep_1
mkdir Prod_140
cd Prod_140
rm reimage.in
echo "parm /scratch/PI/rondror/MD_simulations/amber/rho_arrestin/rho_arr_c_tail_complexA_WT/run_1_HMR/system.prmtop
trajin /scratch/PI/rondror/MD_simulations/amber/rho_arrestin/rho_arr_c_tail_complexA_WT/run_1_HMR/Prod_140.nc
center origin '!(:POPC | :TIP3 | :SOD | :CLA)'
image origin center
trajout Prod_140_reimaged.nc
go" >> reimage.in
ml load amber
cpptraj -i reimage.in

cd /scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/Rhodopsin-active-unpublished/Rho-active-arr-WT-prot-D83-E134-unpublished/rep_1
mkdir Prod_141
cd Prod_141
rm reimage.in
echo "parm /scratch/PI/rondror/MD_simulations/amber/rho_arrestin/rho_arr_c_tail_complexA_WT/run_1_HMR/system.prmtop
trajin /scratch/PI/rondror/MD_simulations/amber/rho_arrestin/rho_arr_c_tail_complexA_WT/run_1_HMR/Prod_141.nc
center origin '!(:POPC | :TIP3 | :SOD | :CLA)'
image origin center
trajout Prod_141_reimaged.nc
go" >> reimage.in
ml load amber
cpptraj -i reimage.in

cd /scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/Rhodopsin-active-unpublished/Rho-active-arr-WT-prot-D83-E134-unpublished/rep_1
mkdir Prod_142
cd Prod_142
rm reimage.in
echo "parm /scratch/PI/rondror/MD_simulations/amber/rho_arrestin/rho_arr_c_tail_complexA_WT/run_1_HMR/system.prmtop
trajin /scratch/PI/rondror/MD_simulations/amber/rho_arrestin/rho_arr_c_tail_complexA_WT/run_1_HMR/Prod_142.nc
center origin '!(:POPC | :TIP3 | :SOD | :CLA)'
image origin center
trajout Prod_142_reimaged.nc
go" >> reimage.in
ml load amber
cpptraj -i reimage.in

cd /scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/Rhodopsin-active-unpublished/Rho-active-arr-WT-prot-D83-E134-unpublished/rep_1
mkdir Prod_143
cd Prod_143
rm reimage.in
echo "parm /scratch/PI/rondror/MD_simulations/amber/rho_arrestin/rho_arr_c_tail_complexA_WT/run_1_HMR/system.prmtop
trajin /scratch/PI/rondror/MD_simulations/amber/rho_arrestin/rho_arr_c_tail_complexA_WT/run_1_HMR/Prod_143.nc
center origin '!(:POPC | :TIP3 | :SOD | :CLA)'
image origin center
trajout Prod_143_reimaged.nc
go" >> reimage.in
ml load amber
cpptraj -i reimage.in

cd /scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/Rhodopsin-active-unpublished/Rho-active-arr-WT-prot-D83-E134-unpublished/rep_1
mkdir Prod_144
cd Prod_144
rm reimage.in
echo "parm /scratch/PI/rondror/MD_simulations/amber/rho_arrestin/rho_arr_c_tail_complexA_WT/run_1_HMR/system.prmtop
trajin /scratch/PI/rondror/MD_simulations/amber/rho_arrestin/rho_arr_c_tail_complexA_WT/run_1_HMR/Prod_144.nc
center origin '!(:POPC | :TIP3 | :SOD | :CLA)'
image origin center
trajout Prod_144_reimaged.nc
go" >> reimage.in
ml load amber
cpptraj -i reimage.in

cd /scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/Rhodopsin-active-unpublished/Rho-active-arr-WT-prot-D83-E134-unpublished/rep_1
mkdir Prod_145
cd Prod_145
rm reimage.in
echo "parm /scratch/PI/rondror/MD_simulations/amber/rho_arrestin/rho_arr_c_tail_complexA_WT/run_1_HMR/system.prmtop
trajin /scratch/PI/rondror/MD_simulations/amber/rho_arrestin/rho_arr_c_tail_complexA_WT/run_1_HMR/Prod_145.nc
center origin '!(:POPC | :TIP3 | :SOD | :CLA)'
image origin center
trajout Prod_145_reimaged.nc
go" >> reimage.in
ml load amber
cpptraj -i reimage.in

cd /scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/Rhodopsin-active-unpublished/Rho-active-arr-WT-prot-D83-E134-unpublished/rep_1
mkdir Prod_146
cd Prod_146
rm reimage.in
echo "parm /scratch/PI/rondror/MD_simulations/amber/rho_arrestin/rho_arr_c_tail_complexA_WT/run_1_HMR/system.prmtop
trajin /scratch/PI/rondror/MD_simulations/amber/rho_arrestin/rho_arr_c_tail_complexA_WT/run_1_HMR/Prod_146.nc
center origin '!(:POPC | :TIP3 | :SOD | :CLA)'
image origin center
trajout Prod_146_reimaged.nc
go" >> reimage.in
ml load amber
cpptraj -i reimage.in

cd /scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/Rhodopsin-active-unpublished/Rho-active-arr-WT-prot-D83-E134-unpublished/rep_1
mkdir Prod_147
cd Prod_147
rm reimage.in
echo "parm /scratch/PI/rondror/MD_simulations/amber/rho_arrestin/rho_arr_c_tail_complexA_WT/run_1_HMR/system.prmtop
trajin /scratch/PI/rondror/MD_simulations/amber/rho_arrestin/rho_arr_c_tail_complexA_WT/run_1_HMR/Prod_147.nc
center origin '!(:POPC | :TIP3 | :SOD | :CLA)'
image origin center
trajout Prod_147_reimaged.nc
go" >> reimage.in
ml load amber
cpptraj -i reimage.in

cd /scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/Rhodopsin-active-unpublished/Rho-active-arr-WT-prot-D83-E134-unpublished/rep_1
mkdir Prod_148
cd Prod_148
rm reimage.in
echo "parm /scratch/PI/rondror/MD_simulations/amber/rho_arrestin/rho_arr_c_tail_complexA_WT/run_1_HMR/system.prmtop
trajin /scratch/PI/rondror/MD_simulations/amber/rho_arrestin/rho_arr_c_tail_complexA_WT/run_1_HMR/Prod_148.nc
center origin '!(:POPC | :TIP3 | :SOD | :CLA)'
image origin center
trajout Prod_148_reimaged.nc
go" >> reimage.in
ml load amber
cpptraj -i reimage.in

cd /scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/Rhodopsin-active-unpublished/Rho-active-arr-WT-prot-D83-E134-unpublished/rep_1
mkdir Prod_149
cd Prod_149
rm reimage.in
echo "parm /scratch/PI/rondror/MD_simulations/amber/rho_arrestin/rho_arr_c_tail_complexA_WT/run_1_HMR/system.prmtop
trajin /scratch/PI/rondror/MD_simulations/amber/rho_arrestin/rho_arr_c_tail_complexA_WT/run_1_HMR/Prod_149.nc
center origin '!(:POPC | :TIP3 | :SOD | :CLA)'
image origin center
trajout Prod_149_reimaged.nc
go" >> reimage.in
ml load amber
cpptraj -i reimage.in

cd /scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/Rhodopsin-active-unpublished/Rho-active-arr-WT-prot-D83-E134-unpublished/rep_1
mkdir Prod_150
cd Prod_150
rm reimage.in
echo "parm /scratch/PI/rondror/MD_simulations/amber/rho_arrestin/rho_arr_c_tail_complexA_WT/run_1_HMR/system.prmtop
trajin /scratch/PI/rondror/MD_simulations/amber/rho_arrestin/rho_arr_c_tail_complexA_WT/run_1_HMR/Prod_150.nc
center origin '!(:POPC | :TIP3 | :SOD | :CLA)'
image origin center
trajout Prod_150_reimaged.nc
go" >> reimage.in
ml load amber
cpptraj -i reimage.in

cd /scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/Rhodopsin-active-unpublished/Rho-active-arr-WT-prot-D83-E134-unpublished/rep_1
mkdir Prod_151
cd Prod_151
rm reimage.in
echo "parm /scratch/PI/rondror/MD_simulations/amber/rho_arrestin/rho_arr_c_tail_complexA_WT/run_1_HMR/system.prmtop
trajin /scratch/PI/rondror/MD_simulations/amber/rho_arrestin/rho_arr_c_tail_complexA_WT/run_1_HMR/Prod_151.nc
center origin '!(:POPC | :TIP3 | :SOD | :CLA)'
image origin center
trajout Prod_151_reimaged.nc
go" >> reimage.in
ml load amber
cpptraj -i reimage.in

cd /scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/Rhodopsin-active-unpublished/Rho-active-arr-WT-prot-D83-E134-unpublished/rep_1
mkdir Prod_152
cd Prod_152
rm reimage.in
echo "parm /scratch/PI/rondror/MD_simulations/amber/rho_arrestin/rho_arr_c_tail_complexA_WT/run_1_HMR/system.prmtop
trajin /scratch/PI/rondror/MD_simulations/amber/rho_arrestin/rho_arr_c_tail_complexA_WT/run_1_HMR/Prod_152.nc
center origin '!(:POPC | :TIP3 | :SOD | :CLA)'
image origin center
trajout Prod_152_reimaged.nc
go" >> reimage.in
ml load amber
cpptraj -i reimage.in

cd /scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/Rhodopsin-active-unpublished/Rho-active-arr-WT-prot-D83-E134-unpublished/rep_1
mkdir Prod_153
cd Prod_153
rm reimage.in
echo "parm /scratch/PI/rondror/MD_simulations/amber/rho_arrestin/rho_arr_c_tail_complexA_WT/run_1_HMR/system.prmtop
trajin /scratch/PI/rondror/MD_simulations/amber/rho_arrestin/rho_arr_c_tail_complexA_WT/run_1_HMR/Prod_153.nc
center origin '!(:POPC | :TIP3 | :SOD | :CLA)'
image origin center
trajout Prod_153_reimaged.nc
go" >> reimage.in
ml load amber
cpptraj -i reimage.in

cd /scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/Rhodopsin-active-unpublished/Rho-active-arr-WT-prot-D83-E134-unpublished/rep_1
mkdir Prod_154
cd Prod_154
rm reimage.in
echo "parm /scratch/PI/rondror/MD_simulations/amber/rho_arrestin/rho_arr_c_tail_complexA_WT/run_1_HMR/system.prmtop
trajin /scratch/PI/rondror/MD_simulations/amber/rho_arrestin/rho_arr_c_tail_complexA_WT/run_1_HMR/Prod_154.nc
center origin '!(:POPC | :TIP3 | :SOD | :CLA)'
image origin center
trajout Prod_154_reimaged.nc
go" >> reimage.in
ml load amber
cpptraj -i reimage.in

cd /scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/Rhodopsin-active-unpublished/Rho-active-arr-WT-prot-D83-E134-unpublished/rep_1
mkdir Prod_155
cd Prod_155
rm reimage.in
echo "parm /scratch/PI/rondror/MD_simulations/amber/rho_arrestin/rho_arr_c_tail_complexA_WT/run_1_HMR/system.prmtop
trajin /scratch/PI/rondror/MD_simulations/amber/rho_arrestin/rho_arr_c_tail_complexA_WT/run_1_HMR/Prod_155.nc
center origin '!(:POPC | :TIP3 | :SOD | :CLA)'
image origin center
trajout Prod_155_reimaged.nc
go" >> reimage.in
ml load amber
cpptraj -i reimage.in

cd /scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/Rhodopsin-active-unpublished/Rho-active-arr-WT-prot-D83-E134-unpublished/rep_1
mkdir Prod_156
cd Prod_156
rm reimage.in
echo "parm /scratch/PI/rondror/MD_simulations/amber/rho_arrestin/rho_arr_c_tail_complexA_WT/run_1_HMR/system.prmtop
trajin /scratch/PI/rondror/MD_simulations/amber/rho_arrestin/rho_arr_c_tail_complexA_WT/run_1_HMR/Prod_156.nc
center origin '!(:POPC | :TIP3 | :SOD | :CLA)'
image origin center
trajout Prod_156_reimaged.nc
go" >> reimage.in
ml load amber
cpptraj -i reimage.in

cd /scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/Rhodopsin-active-unpublished/Rho-active-arr-WT-prot-D83-E134-unpublished/rep_1
mkdir Prod_157
cd Prod_157
rm reimage.in
echo "parm /scratch/PI/rondror/MD_simulations/amber/rho_arrestin/rho_arr_c_tail_complexA_WT/run_1_HMR/system.prmtop
trajin /scratch/PI/rondror/MD_simulations/amber/rho_arrestin/rho_arr_c_tail_complexA_WT/run_1_HMR/Prod_157.nc
center origin '!(:POPC | :TIP3 | :SOD | :CLA)'
image origin center
trajout Prod_157_reimaged.nc
go" >> reimage.in
ml load amber
cpptraj -i reimage.in

cd /scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/Rhodopsin-active-unpublished/Rho-active-arr-WT-prot-D83-E134-unpublished/rep_1
mkdir Prod_158
cd Prod_158
rm reimage.in
echo "parm /scratch/PI/rondror/MD_simulations/amber/rho_arrestin/rho_arr_c_tail_complexA_WT/run_1_HMR/system.prmtop
trajin /scratch/PI/rondror/MD_simulations/amber/rho_arrestin/rho_arr_c_tail_complexA_WT/run_1_HMR/Prod_158.nc
center origin '!(:POPC | :TIP3 | :SOD | :CLA)'
image origin center
trajout Prod_158_reimaged.nc
go" >> reimage.in
ml load amber
cpptraj -i reimage.in

cd /scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/Rhodopsin-active-unpublished/Rho-active-arr-WT-prot-D83-E134-unpublished/rep_1
mkdir Prod_159
cd Prod_159
rm reimage.in
echo "parm /scratch/PI/rondror/MD_simulations/amber/rho_arrestin/rho_arr_c_tail_complexA_WT/run_1_HMR/system.prmtop
trajin /scratch/PI/rondror/MD_simulations/amber/rho_arrestin/rho_arr_c_tail_complexA_WT/run_1_HMR/Prod_159.nc
center origin '!(:POPC | :TIP3 | :SOD | :CLA)'
image origin center
trajout Prod_159_reimaged.nc
go" >> reimage.in
ml load amber
cpptraj -i reimage.in

cd /scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/Rhodopsin-active-unpublished/Rho-active-arr-WT-prot-D83-E134-unpublished/rep_1
mkdir Prod_160
cd Prod_160
rm reimage.in
echo "parm /scratch/PI/rondror/MD_simulations/amber/rho_arrestin/rho_arr_c_tail_complexA_WT/run_1_HMR/system.prmtop
trajin /scratch/PI/rondror/MD_simulations/amber/rho_arrestin/rho_arr_c_tail_complexA_WT/run_1_HMR/Prod_160.nc
center origin '!(:POPC | :TIP3 | :SOD | :CLA)'
image origin center
trajout Prod_160_reimaged.nc
go" >> reimage.in
ml load amber
cpptraj -i reimage.in

cd /scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/Rhodopsin-active-unpublished/Rho-active-arr-WT-prot-D83-E134-unpublished/rep_1
mkdir Prod_161
cd Prod_161
rm reimage.in
echo "parm /scratch/PI/rondror/MD_simulations/amber/rho_arrestin/rho_arr_c_tail_complexA_WT/run_1_HMR/system.prmtop
trajin /scratch/PI/rondror/MD_simulations/amber/rho_arrestin/rho_arr_c_tail_complexA_WT/run_1_HMR/Prod_161.nc
center origin '!(:POPC | :TIP3 | :SOD | :CLA)'
image origin center
trajout Prod_161_reimaged.nc
go" >> reimage.in
ml load amber
cpptraj -i reimage.in

cd /scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/Rhodopsin-active-unpublished/Rho-active-arr-WT-prot-D83-E134-unpublished/rep_1
mkdir Prod_162
cd Prod_162
rm reimage.in
echo "parm /scratch/PI/rondror/MD_simulations/amber/rho_arrestin/rho_arr_c_tail_complexA_WT/run_1_HMR/system.prmtop
trajin /scratch/PI/rondror/MD_simulations/amber/rho_arrestin/rho_arr_c_tail_complexA_WT/run_1_HMR/Prod_162.nc
center origin '!(:POPC | :TIP3 | :SOD | :CLA)'
image origin center
trajout Prod_162_reimaged.nc
go" >> reimage.in
ml load amber
cpptraj -i reimage.in

cd /scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/Rhodopsin-active-unpublished/Rho-active-arr-WT-prot-D83-E134-unpublished/rep_1
mkdir Prod_163
cd Prod_163
rm reimage.in
echo "parm /scratch/PI/rondror/MD_simulations/amber/rho_arrestin/rho_arr_c_tail_complexA_WT/run_1_HMR/system.prmtop
trajin /scratch/PI/rondror/MD_simulations/amber/rho_arrestin/rho_arr_c_tail_complexA_WT/run_1_HMR/Prod_163.nc
center origin '!(:POPC | :TIP3 | :SOD | :CLA)'
image origin center
trajout Prod_163_reimaged.nc
go" >> reimage.in
ml load amber
cpptraj -i reimage.in

cd /scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/Rhodopsin-active-unpublished/Rho-active-arr-WT-prot-D83-E134-unpublished/rep_1
mkdir Prod_164
cd Prod_164
rm reimage.in
echo "parm /scratch/PI/rondror/MD_simulations/amber/rho_arrestin/rho_arr_c_tail_complexA_WT/run_1_HMR/system.prmtop
trajin /scratch/PI/rondror/MD_simulations/amber/rho_arrestin/rho_arr_c_tail_complexA_WT/run_1_HMR/Prod_164.nc
center origin '!(:POPC | :TIP3 | :SOD | :CLA)'
image origin center
trajout Prod_164_reimaged.nc
go" >> reimage.in
ml load amber
cpptraj -i reimage.in

cd /scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/Rhodopsin-active-unpublished/Rho-active-arr-WT-prot-D83-E134-unpublished/rep_1
mkdir Prod_165
cd Prod_165
rm reimage.in
echo "parm /scratch/PI/rondror/MD_simulations/amber/rho_arrestin/rho_arr_c_tail_complexA_WT/run_1_HMR/system.prmtop
trajin /scratch/PI/rondror/MD_simulations/amber/rho_arrestin/rho_arr_c_tail_complexA_WT/run_1_HMR/Prod_165.nc
center origin '!(:POPC | :TIP3 | :SOD | :CLA)'
image origin center
trajout Prod_165_reimaged.nc
go" >> reimage.in
ml load amber
cpptraj -i reimage.in

cd /scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/Rhodopsin-active-unpublished/Rho-active-arr-WT-prot-D83-E134-unpublished/rep_1
mkdir Prod_166
cd Prod_166
rm reimage.in
echo "parm /scratch/PI/rondror/MD_simulations/amber/rho_arrestin/rho_arr_c_tail_complexA_WT/run_1_HMR/system.prmtop
trajin /scratch/PI/rondror/MD_simulations/amber/rho_arrestin/rho_arr_c_tail_complexA_WT/run_1_HMR/Prod_166.nc
center origin '!(:POPC | :TIP3 | :SOD | :CLA)'
image origin center
trajout Prod_166_reimaged.nc
go" >> reimage.in
ml load amber
cpptraj -i reimage.in

cd /scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/Rhodopsin-active-unpublished/Rho-active-arr-WT-prot-D83-E134-unpublished/rep_1
mkdir Prod_167
cd Prod_167
rm reimage.in
echo "parm /scratch/PI/rondror/MD_simulations/amber/rho_arrestin/rho_arr_c_tail_complexA_WT/run_1_HMR/system.prmtop
trajin /scratch/PI/rondror/MD_simulations/amber/rho_arrestin/rho_arr_c_tail_complexA_WT/run_1_HMR/Prod_167.nc
center origin '!(:POPC | :TIP3 | :SOD | :CLA)'
image origin center
trajout Prod_167_reimaged.nc
go" >> reimage.in
ml load amber
cpptraj -i reimage.in

cd /scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/Rhodopsin-active-unpublished/Rho-active-arr-WT-prot-D83-E134-unpublished/rep_1
mkdir Prod_168
cd Prod_168
rm reimage.in
echo "parm /scratch/PI/rondror/MD_simulations/amber/rho_arrestin/rho_arr_c_tail_complexA_WT/run_1_HMR/system.prmtop
trajin /scratch/PI/rondror/MD_simulations/amber/rho_arrestin/rho_arr_c_tail_complexA_WT/run_1_HMR/Prod_168.nc
center origin '!(:POPC | :TIP3 | :SOD | :CLA)'
image origin center
trajout Prod_168_reimaged.nc
go" >> reimage.in
ml load amber
cpptraj -i reimage.in

cd /scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/Rhodopsin-active-unpublished/Rho-active-arr-WT-prot-D83-E134-unpublished/rep_1
mkdir Prod_169
cd Prod_169
rm reimage.in
echo "parm /scratch/PI/rondror/MD_simulations/amber/rho_arrestin/rho_arr_c_tail_complexA_WT/run_1_HMR/system.prmtop
trajin /scratch/PI/rondror/MD_simulations/amber/rho_arrestin/rho_arr_c_tail_complexA_WT/run_1_HMR/Prod_169.nc
center origin '!(:POPC | :TIP3 | :SOD | :CLA)'
image origin center
trajout Prod_169_reimaged.nc
go" >> reimage.in
ml load amber
cpptraj -i reimage.in

cd /scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/Rhodopsin-active-unpublished/Rho-active-arr-WT-prot-D83-E134-unpublished/rep_1
mkdir Prod_170
cd Prod_170
rm reimage.in
echo "parm /scratch/PI/rondror/MD_simulations/amber/rho_arrestin/rho_arr_c_tail_complexA_WT/run_1_HMR/system.prmtop
trajin /scratch/PI/rondror/MD_simulations/amber/rho_arrestin/rho_arr_c_tail_complexA_WT/run_1_HMR/Prod_170.nc
center origin '!(:POPC | :TIP3 | :SOD | :CLA)'
image origin center
trajout Prod_170_reimaged.nc
go" >> reimage.in
ml load amber
cpptraj -i reimage.in

cd /scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/Rhodopsin-active-unpublished/Rho-active-arr-WT-prot-D83-E134-unpublished/rep_1
mkdir Prod_171
cd Prod_171
rm reimage.in
echo "parm /scratch/PI/rondror/MD_simulations/amber/rho_arrestin/rho_arr_c_tail_complexA_WT/run_1_HMR/system.prmtop
trajin /scratch/PI/rondror/MD_simulations/amber/rho_arrestin/rho_arr_c_tail_complexA_WT/run_1_HMR/Prod_171.nc
center origin '!(:POPC | :TIP3 | :SOD | :CLA)'
image origin center
trajout Prod_171_reimaged.nc
go" >> reimage.in
ml load amber
cpptraj -i reimage.in

cd /scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/Rhodopsin-active-unpublished/Rho-active-arr-WT-prot-D83-E134-unpublished/rep_1
mkdir Prod_172
cd Prod_172
rm reimage.in
echo "parm /scratch/PI/rondror/MD_simulations/amber/rho_arrestin/rho_arr_c_tail_complexA_WT/run_1_HMR/system.prmtop
trajin /scratch/PI/rondror/MD_simulations/amber/rho_arrestin/rho_arr_c_tail_complexA_WT/run_1_HMR/Prod_172.nc
center origin '!(:POPC | :TIP3 | :SOD | :CLA)'
image origin center
trajout Prod_172_reimaged.nc
go" >> reimage.in
ml load amber
cpptraj -i reimage.in

cd /scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/Rhodopsin-active-unpublished/Rho-active-arr-WT-prot-D83-E134-unpublished/rep_1
mkdir Prod_173
cd Prod_173
rm reimage.in
echo "parm /scratch/PI/rondror/MD_simulations/amber/rho_arrestin/rho_arr_c_tail_complexA_WT/run_1_HMR/system.prmtop
trajin /scratch/PI/rondror/MD_simulations/amber/rho_arrestin/rho_arr_c_tail_complexA_WT/run_1_HMR/Prod_173.nc
center origin '!(:POPC | :TIP3 | :SOD | :CLA)'
image origin center
trajout Prod_173_reimaged.nc
go" >> reimage.in
ml load amber
cpptraj -i reimage.in

cd /scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/Rhodopsin-active-unpublished/Rho-active-arr-WT-prot-D83-E134-unpublished/rep_1
mkdir Prod_174
cd Prod_174
rm reimage.in
echo "parm /scratch/PI/rondror/MD_simulations/amber/rho_arrestin/rho_arr_c_tail_complexA_WT/run_1_HMR/system.prmtop
trajin /scratch/PI/rondror/MD_simulations/amber/rho_arrestin/rho_arr_c_tail_complexA_WT/run_1_HMR/Prod_174.nc
center origin '!(:POPC | :TIP3 | :SOD | :CLA)'
image origin center
trajout Prod_174_reimaged.nc
go" >> reimage.in
ml load amber
cpptraj -i reimage.in

cd /scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/Rhodopsin-active-unpublished/Rho-active-arr-WT-prot-D83-E134-unpublished/rep_1
mkdir Prod_175
cd Prod_175
rm reimage.in
echo "parm /scratch/PI/rondror/MD_simulations/amber/rho_arrestin/rho_arr_c_tail_complexA_WT/run_1_HMR/system.prmtop
trajin /scratch/PI/rondror/MD_simulations/amber/rho_arrestin/rho_arr_c_tail_complexA_WT/run_1_HMR/Prod_175.nc
center origin '!(:POPC | :TIP3 | :SOD | :CLA)'
image origin center
trajout Prod_175_reimaged.nc
go" >> reimage.in
ml load amber
cpptraj -i reimage.in

cd /scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/Rhodopsin-active-unpublished/Rho-active-arr-WT-prot-D83-E134-unpublished/rep_1
mkdir Prod_176
cd Prod_176
rm reimage.in
echo "parm /scratch/PI/rondror/MD_simulations/amber/rho_arrestin/rho_arr_c_tail_complexA_WT/run_1_HMR/system.prmtop
trajin /scratch/PI/rondror/MD_simulations/amber/rho_arrestin/rho_arr_c_tail_complexA_WT/run_1_HMR/Prod_176.nc
center origin '!(:POPC | :TIP3 | :SOD | :CLA)'
image origin center
trajout Prod_176_reimaged.nc
go" >> reimage.in
ml load amber
cpptraj -i reimage.in

cd /scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/Rhodopsin-active-unpublished/Rho-active-arr-WT-prot-D83-E134-unpublished/rep_1
mkdir Prod_177
cd Prod_177
rm reimage.in
echo "parm /scratch/PI/rondror/MD_simulations/amber/rho_arrestin/rho_arr_c_tail_complexA_WT/run_1_HMR/system.prmtop
trajin /scratch/PI/rondror/MD_simulations/amber/rho_arrestin/rho_arr_c_tail_complexA_WT/run_1_HMR/Prod_177.nc
center origin '!(:POPC | :TIP3 | :SOD | :CLA)'
image origin center
trajout Prod_177_reimaged.nc
go" >> reimage.in
ml load amber
cpptraj -i reimage.in

cd /scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/Rhodopsin-active-unpublished/Rho-active-arr-WT-prot-D83-E134-unpublished/rep_1
mkdir Prod_178
cd Prod_178
rm reimage.in
echo "parm /scratch/PI/rondror/MD_simulations/amber/rho_arrestin/rho_arr_c_tail_complexA_WT/run_1_HMR/system.prmtop
trajin /scratch/PI/rondror/MD_simulations/amber/rho_arrestin/rho_arr_c_tail_complexA_WT/run_1_HMR/Prod_178.nc
center origin '!(:POPC | :TIP3 | :SOD | :CLA)'
image origin center
trajout Prod_178_reimaged.nc
go" >> reimage.in
ml load amber
cpptraj -i reimage.in

cd /scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/Rhodopsin-active-unpublished/Rho-active-arr-WT-prot-D83-E134-unpublished/rep_1
mkdir Prod_179
cd Prod_179
rm reimage.in
echo "parm /scratch/PI/rondror/MD_simulations/amber/rho_arrestin/rho_arr_c_tail_complexA_WT/run_1_HMR/system.prmtop
trajin /scratch/PI/rondror/MD_simulations/amber/rho_arrestin/rho_arr_c_tail_complexA_WT/run_1_HMR/Prod_179.nc
center origin '!(:POPC | :TIP3 | :SOD | :CLA)'
image origin center
trajout Prod_179_reimaged.nc
go" >> reimage.in
ml load amber
cpptraj -i reimage.in

cd /scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/Rhodopsin-active-unpublished/Rho-active-arr-WT-prot-D83-E134-unpublished/rep_1
mkdir Prod_180
cd Prod_180
rm reimage.in
echo "parm /scratch/PI/rondror/MD_simulations/amber/rho_arrestin/rho_arr_c_tail_complexA_WT/run_1_HMR/system.prmtop
trajin /scratch/PI/rondror/MD_simulations/amber/rho_arrestin/rho_arr_c_tail_complexA_WT/run_1_HMR/Prod_180.nc
center origin '!(:POPC | :TIP3 | :SOD | :CLA)'
image origin center
trajout Prod_180_reimaged.nc
go" >> reimage.in
ml load amber
cpptraj -i reimage.in

cd /scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/Rhodopsin-active-unpublished/Rho-active-arr-WT-prot-D83-E134-unpublished/rep_1
mkdir Prod_181
cd Prod_181
rm reimage.in
echo "parm /scratch/PI/rondror/MD_simulations/amber/rho_arrestin/rho_arr_c_tail_complexA_WT/run_1_HMR/system.prmtop
trajin /scratch/PI/rondror/MD_simulations/amber/rho_arrestin/rho_arr_c_tail_complexA_WT/run_1_HMR/Prod_181.nc
center origin '!(:POPC | :TIP3 | :SOD | :CLA)'
image origin center
trajout Prod_181_reimaged.nc
go" >> reimage.in
ml load amber
cpptraj -i reimage.in

cd /scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/Rhodopsin-active-unpublished/Rho-active-arr-WT-prot-D83-E134-unpublished/rep_1
mkdir Prod_182
cd Prod_182
rm reimage.in
echo "parm /scratch/PI/rondror/MD_simulations/amber/rho_arrestin/rho_arr_c_tail_complexA_WT/run_1_HMR/system.prmtop
trajin /scratch/PI/rondror/MD_simulations/amber/rho_arrestin/rho_arr_c_tail_complexA_WT/run_1_HMR/Prod_182.nc
center origin '!(:POPC | :TIP3 | :SOD | :CLA)'
image origin center
trajout Prod_182_reimaged.nc
go" >> reimage.in
ml load amber
cpptraj -i reimage.in

cd /scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/Rhodopsin-active-unpublished/Rho-active-arr-WT-prot-D83-E134-unpublished/rep_1
mkdir Prod_183
cd Prod_183
rm reimage.in
echo "parm /scratch/PI/rondror/MD_simulations/amber/rho_arrestin/rho_arr_c_tail_complexA_WT/run_1_HMR/system.prmtop
trajin /scratch/PI/rondror/MD_simulations/amber/rho_arrestin/rho_arr_c_tail_complexA_WT/run_1_HMR/Prod_183.nc
center origin '!(:POPC | :TIP3 | :SOD | :CLA)'
image origin center
trajout Prod_183_reimaged.nc
go" >> reimage.in
ml load amber
cpptraj -i reimage.in

cd /scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/Rhodopsin-active-unpublished/Rho-active-arr-WT-prot-D83-E134-unpublished/rep_1
mkdir Prod_184
cd Prod_184
rm reimage.in
echo "parm /scratch/PI/rondror/MD_simulations/amber/rho_arrestin/rho_arr_c_tail_complexA_WT/run_1_HMR/system.prmtop
trajin /scratch/PI/rondror/MD_simulations/amber/rho_arrestin/rho_arr_c_tail_complexA_WT/run_1_HMR/Prod_184.nc
center origin '!(:POPC | :TIP3 | :SOD | :CLA)'
image origin center
trajout Prod_184_reimaged.nc
go" >> reimage.in
ml load amber
cpptraj -i reimage.in

cd /scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/Rhodopsin-active-unpublished/Rho-active-arr-WT-prot-D83-E134-unpublished/rep_1
mkdir Prod_185
cd Prod_185
rm reimage.in
echo "parm /scratch/PI/rondror/MD_simulations/amber/rho_arrestin/rho_arr_c_tail_complexA_WT/run_1_HMR/system.prmtop
trajin /scratch/PI/rondror/MD_simulations/amber/rho_arrestin/rho_arr_c_tail_complexA_WT/run_1_HMR/Prod_185.nc
center origin '!(:POPC | :TIP3 | :SOD | :CLA)'
image origin center
trajout Prod_185_reimaged.nc
go" >> reimage.in
ml load amber
cpptraj -i reimage.in

cd /scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/Rhodopsin-active-unpublished/Rho-active-arr-WT-prot-D83-E134-unpublished/rep_1
mkdir Prod_186
cd Prod_186
rm reimage.in
echo "parm /scratch/PI/rondror/MD_simulations/amber/rho_arrestin/rho_arr_c_tail_complexA_WT/run_1_HMR/system.prmtop
trajin /scratch/PI/rondror/MD_simulations/amber/rho_arrestin/rho_arr_c_tail_complexA_WT/run_1_HMR/Prod_186.nc
center origin '!(:POPC | :TIP3 | :SOD | :CLA)'
image origin center
trajout Prod_186_reimaged.nc
go" >> reimage.in
ml load amber
cpptraj -i reimage.in

cd /scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/Rhodopsin-active-unpublished/Rho-active-arr-WT-prot-D83-E134-unpublished/rep_1
mkdir Prod_187
cd Prod_187
rm reimage.in
echo "parm /scratch/PI/rondror/MD_simulations/amber/rho_arrestin/rho_arr_c_tail_complexA_WT/run_1_HMR/system.prmtop
trajin /scratch/PI/rondror/MD_simulations/amber/rho_arrestin/rho_arr_c_tail_complexA_WT/run_1_HMR/Prod_187.nc
center origin '!(:POPC | :TIP3 | :SOD | :CLA)'
image origin center
trajout Prod_187_reimaged.nc
go" >> reimage.in
ml load amber
cpptraj -i reimage.in

cd /scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/Rhodopsin-active-unpublished/Rho-active-arr-WT-prot-D83-E134-unpublished/rep_1
mkdir Prod_188
cd Prod_188
rm reimage.in
echo "parm /scratch/PI/rondror/MD_simulations/amber/rho_arrestin/rho_arr_c_tail_complexA_WT/run_1_HMR/system.prmtop
trajin /scratch/PI/rondror/MD_simulations/amber/rho_arrestin/rho_arr_c_tail_complexA_WT/run_1_HMR/Prod_188.nc
center origin '!(:POPC | :TIP3 | :SOD | :CLA)'
image origin center
trajout Prod_188_reimaged.nc
go" >> reimage.in
ml load amber
cpptraj -i reimage.in

cd /scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/Rhodopsin-active-unpublished/Rho-active-arr-WT-prot-D83-E134-unpublished/rep_1
mkdir Prod_189
cd Prod_189
rm reimage.in
echo "parm /scratch/PI/rondror/MD_simulations/amber/rho_arrestin/rho_arr_c_tail_complexA_WT/run_1_HMR/system.prmtop
trajin /scratch/PI/rondror/MD_simulations/amber/rho_arrestin/rho_arr_c_tail_complexA_WT/run_1_HMR/Prod_189.nc
center origin '!(:POPC | :TIP3 | :SOD | :CLA)'
image origin center
trajout Prod_189_reimaged.nc
go" >> reimage.in
ml load amber
cpptraj -i reimage.in

cd /scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/Rhodopsin-active-unpublished/Rho-active-arr-WT-prot-D83-E134-unpublished/rep_1
mkdir Prod_190
cd Prod_190
rm reimage.in
echo "parm /scratch/PI/rondror/MD_simulations/amber/rho_arrestin/rho_arr_c_tail_complexA_WT/run_1_HMR/system.prmtop
trajin /scratch/PI/rondror/MD_simulations/amber/rho_arrestin/rho_arr_c_tail_complexA_WT/run_1_HMR/Prod_190.nc
center origin '!(:POPC | :TIP3 | :SOD | :CLA)'
image origin center
trajout Prod_190_reimaged.nc
go" >> reimage.in
ml load amber
cpptraj -i reimage.in

cd /scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/Rhodopsin-active-unpublished/Rho-active-arr-WT-prot-D83-E134-unpublished/rep_1
mkdir Prod_191
cd Prod_191
rm reimage.in
echo "parm /scratch/PI/rondror/MD_simulations/amber/rho_arrestin/rho_arr_c_tail_complexA_WT/run_1_HMR/system.prmtop
trajin /scratch/PI/rondror/MD_simulations/amber/rho_arrestin/rho_arr_c_tail_complexA_WT/run_1_HMR/Prod_191.nc
center origin '!(:POPC | :TIP3 | :SOD | :CLA)'
image origin center
trajout Prod_191_reimaged.nc
go" >> reimage.in
ml load amber
cpptraj -i reimage.in

cd /scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/Rhodopsin-active-unpublished/Rho-active-arr-WT-prot-D83-E134-unpublished/rep_1
mkdir Prod_192
cd Prod_192
rm reimage.in
echo "parm /scratch/PI/rondror/MD_simulations/amber/rho_arrestin/rho_arr_c_tail_complexA_WT/run_1_HMR/system.prmtop
trajin /scratch/PI/rondror/MD_simulations/amber/rho_arrestin/rho_arr_c_tail_complexA_WT/run_1_HMR/Prod_192.nc
center origin '!(:POPC | :TIP3 | :SOD | :CLA)'
image origin center
trajout Prod_192_reimaged.nc
go" >> reimage.in
ml load amber
cpptraj -i reimage.in

cd /scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/Rhodopsin-active-unpublished/Rho-active-arr-WT-prot-D83-E134-unpublished/rep_1
mkdir Prod_193
cd Prod_193
rm reimage.in
echo "parm /scratch/PI/rondror/MD_simulations/amber/rho_arrestin/rho_arr_c_tail_complexA_WT/run_1_HMR/system.prmtop
trajin /scratch/PI/rondror/MD_simulations/amber/rho_arrestin/rho_arr_c_tail_complexA_WT/run_1_HMR/Prod_193.nc
center origin '!(:POPC | :TIP3 | :SOD | :CLA)'
image origin center
trajout Prod_193_reimaged.nc
go" >> reimage.in
ml load amber
cpptraj -i reimage.in

cd /scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/Rhodopsin-active-unpublished/Rho-active-arr-WT-prot-D83-E134-unpublished/rep_1
mkdir Prod_194
cd Prod_194
rm reimage.in
echo "parm /scratch/PI/rondror/MD_simulations/amber/rho_arrestin/rho_arr_c_tail_complexA_WT/run_1_HMR/system.prmtop
trajin /scratch/PI/rondror/MD_simulations/amber/rho_arrestin/rho_arr_c_tail_complexA_WT/run_1_HMR/Prod_194.nc
center origin '!(:POPC | :TIP3 | :SOD | :CLA)'
image origin center
trajout Prod_194_reimaged.nc
go" >> reimage.in
ml load amber
cpptraj -i reimage.in

cd /scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/Rhodopsin-active-unpublished/Rho-active-arr-WT-prot-D83-E134-unpublished/rep_1
mkdir Prod_195
cd Prod_195
rm reimage.in
echo "parm /scratch/PI/rondror/MD_simulations/amber/rho_arrestin/rho_arr_c_tail_complexA_WT/run_1_HMR/system.prmtop
trajin /scratch/PI/rondror/MD_simulations/amber/rho_arrestin/rho_arr_c_tail_complexA_WT/run_1_HMR/Prod_195.nc
center origin '!(:POPC | :TIP3 | :SOD | :CLA)'
image origin center
trajout Prod_195_reimaged.nc
go" >> reimage.in
ml load amber
cpptraj -i reimage.in

cd /scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/Rhodopsin-active-unpublished/Rho-active-arr-WT-prot-D83-E134-unpublished/rep_1
mkdir Prod_196
cd Prod_196
rm reimage.in
echo "parm /scratch/PI/rondror/MD_simulations/amber/rho_arrestin/rho_arr_c_tail_complexA_WT/run_1_HMR/system.prmtop
trajin /scratch/PI/rondror/MD_simulations/amber/rho_arrestin/rho_arr_c_tail_complexA_WT/run_1_HMR/Prod_196.nc
center origin '!(:POPC | :TIP3 | :SOD | :CLA)'
image origin center
trajout Prod_196_reimaged.nc
go" >> reimage.in
ml load amber
cpptraj -i reimage.in

cd /scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/Rhodopsin-active-unpublished/Rho-active-arr-WT-prot-D83-E134-unpublished/rep_1
mkdir Prod_197
cd Prod_197
rm reimage.in
echo "parm /scratch/PI/rondror/MD_simulations/amber/rho_arrestin/rho_arr_c_tail_complexA_WT/run_1_HMR/system.prmtop
trajin /scratch/PI/rondror/MD_simulations/amber/rho_arrestin/rho_arr_c_tail_complexA_WT/run_1_HMR/Prod_197.nc
center origin '!(:POPC | :TIP3 | :SOD | :CLA)'
image origin center
trajout Prod_197_reimaged.nc
go" >> reimage.in
ml load amber
cpptraj -i reimage.in

cd /scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/Rhodopsin-active-unpublished/Rho-active-arr-WT-prot-D83-E134-unpublished/rep_1
mkdir Prod_198
cd Prod_198
rm reimage.in
echo "parm /scratch/PI/rondror/MD_simulations/amber/rho_arrestin/rho_arr_c_tail_complexA_WT/run_1_HMR/system.prmtop
trajin /scratch/PI/rondror/MD_simulations/amber/rho_arrestin/rho_arr_c_tail_complexA_WT/run_1_HMR/Prod_198.nc
center origin '!(:POPC | :TIP3 | :SOD | :CLA)'
image origin center
trajout Prod_198_reimaged.nc
go" >> reimage.in
ml load amber
cpptraj -i reimage.in

cd /scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/Rhodopsin-active-unpublished/Rho-active-arr-WT-prot-D83-E134-unpublished/rep_1
mkdir Prod_199
cd Prod_199
rm reimage.in
echo "parm /scratch/PI/rondror/MD_simulations/amber/rho_arrestin/rho_arr_c_tail_complexA_WT/run_1_HMR/system.prmtop
trajin /scratch/PI/rondror/MD_simulations/amber/rho_arrestin/rho_arr_c_tail_complexA_WT/run_1_HMR/Prod_199.nc
center origin '!(:POPC | :TIP3 | :SOD | :CLA)'
image origin center
trajout Prod_199_reimaged.nc
go" >> reimage.in
ml load amber
cpptraj -i reimage.in

cd /scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/Rhodopsin-active-unpublished/Rho-active-arr-WT-prot-D83-E134-unpublished/rep_1
mkdir Prod_200
cd Prod_200
rm reimage.in
echo "parm /scratch/PI/rondror/MD_simulations/amber/rho_arrestin/rho_arr_c_tail_complexA_WT/run_1_HMR/system.prmtop
trajin /scratch/PI/rondror/MD_simulations/amber/rho_arrestin/rho_arr_c_tail_complexA_WT/run_1_HMR/Prod_200.nc
center origin '!(:POPC | :TIP3 | :SOD | :CLA)'
image origin center
trajout Prod_200_reimaged.nc
go" >> reimage.in
ml load amber
cpptraj -i reimage.in

cd /scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/Rhodopsin-active-unpublished/Rho-active-arr-WT-prot-D83-E134-unpublished/rep_1
mkdir Prod_201
cd Prod_201
rm reimage.in
echo "parm /scratch/PI/rondror/MD_simulations/amber/rho_arrestin/rho_arr_c_tail_complexA_WT/run_1_HMR/system.prmtop
trajin /scratch/PI/rondror/MD_simulations/amber/rho_arrestin/rho_arr_c_tail_complexA_WT/run_1_HMR/Prod_201.nc
center origin '!(:POPC | :TIP3 | :SOD | :CLA)'
image origin center
trajout Prod_201_reimaged.nc
go" >> reimage.in
ml load amber
cpptraj -i reimage.in

cd /scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/Rhodopsin-active-unpublished/Rho-active-arr-WT-prot-D83-E134-unpublished/rep_1
mkdir Prod_202
cd Prod_202
rm reimage.in
echo "parm /scratch/PI/rondror/MD_simulations/amber/rho_arrestin/rho_arr_c_tail_complexA_WT/run_1_HMR/system.prmtop
trajin /scratch/PI/rondror/MD_simulations/amber/rho_arrestin/rho_arr_c_tail_complexA_WT/run_1_HMR/Prod_202.nc
center origin '!(:POPC | :TIP3 | :SOD | :CLA)'
image origin center
trajout Prod_202_reimaged.nc
go" >> reimage.in
ml load amber
cpptraj -i reimage.in

cd /scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/Rhodopsin-active-unpublished/Rho-active-arr-WT-prot-D83-E134-unpublished/rep_1
mkdir Prod_203
cd Prod_203
rm reimage.in
echo "parm /scratch/PI/rondror/MD_simulations/amber/rho_arrestin/rho_arr_c_tail_complexA_WT/run_1_HMR/system.prmtop
trajin /scratch/PI/rondror/MD_simulations/amber/rho_arrestin/rho_arr_c_tail_complexA_WT/run_1_HMR/Prod_203.nc
center origin '!(:POPC | :TIP3 | :SOD | :CLA)'
image origin center
trajout Prod_203_reimaged.nc
go" >> reimage.in
ml load amber
cpptraj -i reimage.in

cd /scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/Rhodopsin-active-unpublished/Rho-active-arr-WT-prot-D83-E134-unpublished/rep_1
mkdir Prod_204
cd Prod_204
rm reimage.in
echo "parm /scratch/PI/rondror/MD_simulations/amber/rho_arrestin/rho_arr_c_tail_complexA_WT/run_1_HMR/system.prmtop
trajin /scratch/PI/rondror/MD_simulations/amber/rho_arrestin/rho_arr_c_tail_complexA_WT/run_1_HMR/Prod_204.nc
center origin '!(:POPC | :TIP3 | :SOD | :CLA)'
image origin center
trajout Prod_204_reimaged.nc
go" >> reimage.in
ml load amber
cpptraj -i reimage.in

cd /scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/Rhodopsin-active-unpublished/Rho-active-arr-WT-prot-D83-E134-unpublished/rep_1
mkdir Prod_205
cd Prod_205
rm reimage.in
echo "parm /scratch/PI/rondror/MD_simulations/amber/rho_arrestin/rho_arr_c_tail_complexA_WT/run_1_HMR/system.prmtop
trajin /scratch/PI/rondror/MD_simulations/amber/rho_arrestin/rho_arr_c_tail_complexA_WT/run_1_HMR/Prod_205.nc
center origin '!(:POPC | :TIP3 | :SOD | :CLA)'
image origin center
trajout Prod_205_reimaged.nc
go" >> reimage.in
ml load amber
cpptraj -i reimage.in

cd /scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/Rhodopsin-active-unpublished/Rho-active-arr-WT-prot-D83-E134-unpublished/rep_1
mkdir Prod_206
cd Prod_206
rm reimage.in
echo "parm /scratch/PI/rondror/MD_simulations/amber/rho_arrestin/rho_arr_c_tail_complexA_WT/run_1_HMR/system.prmtop
trajin /scratch/PI/rondror/MD_simulations/amber/rho_arrestin/rho_arr_c_tail_complexA_WT/run_1_HMR/Prod_206.nc
center origin '!(:POPC | :TIP3 | :SOD | :CLA)'
image origin center
trajout Prod_206_reimaged.nc
go" >> reimage.in
ml load amber
cpptraj -i reimage.in

cd /scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/Rhodopsin-active-unpublished/Rho-active-arr-WT-prot-D83-E134-unpublished/rep_1
mkdir Prod_207
cd Prod_207
rm reimage.in
echo "parm /scratch/PI/rondror/MD_simulations/amber/rho_arrestin/rho_arr_c_tail_complexA_WT/run_1_HMR/system.prmtop
trajin /scratch/PI/rondror/MD_simulations/amber/rho_arrestin/rho_arr_c_tail_complexA_WT/run_1_HMR/Prod_207.nc
center origin '!(:POPC | :TIP3 | :SOD | :CLA)'
image origin center
trajout Prod_207_reimaged.nc
go" >> reimage.in
ml load amber
cpptraj -i reimage.in

cd /scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/Rhodopsin-active-unpublished/Rho-active-arr-WT-prot-D83-E134-unpublished/rep_1
mkdir Prod_208
cd Prod_208
rm reimage.in
echo "parm /scratch/PI/rondror/MD_simulations/amber/rho_arrestin/rho_arr_c_tail_complexA_WT/run_1_HMR/system.prmtop
trajin /scratch/PI/rondror/MD_simulations/amber/rho_arrestin/rho_arr_c_tail_complexA_WT/run_1_HMR/Prod_208.nc
center origin '!(:POPC | :TIP3 | :SOD | :CLA)'
image origin center
trajout Prod_208_reimaged.nc
go" >> reimage.in
ml load amber
cpptraj -i reimage.in

cd /scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/Rhodopsin-active-unpublished/Rho-active-arr-WT-prot-D83-E134-unpublished/rep_1
mkdir Prod_209
cd Prod_209
rm reimage.in
echo "parm /scratch/PI/rondror/MD_simulations/amber/rho_arrestin/rho_arr_c_tail_complexA_WT/run_1_HMR/system.prmtop
trajin /scratch/PI/rondror/MD_simulations/amber/rho_arrestin/rho_arr_c_tail_complexA_WT/run_1_HMR/Prod_209.nc
center origin '!(:POPC | :TIP3 | :SOD | :CLA)'
image origin center
trajout Prod_209_reimaged.nc
go" >> reimage.in
ml load amber
cpptraj -i reimage.in

cd /scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/Rhodopsin-active-unpublished/Rho-active-arr-WT-prot-D83-E134-unpublished/rep_1
mkdir Prod_210
cd Prod_210
rm reimage.in
echo "parm /scratch/PI/rondror/MD_simulations/amber/rho_arrestin/rho_arr_c_tail_complexA_WT/run_1_HMR/system.prmtop
trajin /scratch/PI/rondror/MD_simulations/amber/rho_arrestin/rho_arr_c_tail_complexA_WT/run_1_HMR/Prod_210.nc
center origin '!(:POPC | :TIP3 | :SOD | :CLA)'
image origin center
trajout Prod_210_reimaged.nc
go" >> reimage.in
ml load amber
cpptraj -i reimage.in

cd /scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/Rhodopsin-active-unpublished/Rho-active-arr-WT-prot-D83-E134-unpublished/rep_1
mkdir Prod_211
cd Prod_211
rm reimage.in
echo "parm /scratch/PI/rondror/MD_simulations/amber/rho_arrestin/rho_arr_c_tail_complexA_WT/run_1_HMR/system.prmtop
trajin /scratch/PI/rondror/MD_simulations/amber/rho_arrestin/rho_arr_c_tail_complexA_WT/run_1_HMR/Prod_211.nc
center origin '!(:POPC | :TIP3 | :SOD | :CLA)'
image origin center
trajout Prod_211_reimaged.nc
go" >> reimage.in
ml load amber
cpptraj -i reimage.in

cd /scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/Rhodopsin-active-unpublished/Rho-active-arr-WT-prot-D83-E134-unpublished/rep_1
mkdir Prod_212
cd Prod_212
rm reimage.in
echo "parm /scratch/PI/rondror/MD_simulations/amber/rho_arrestin/rho_arr_c_tail_complexA_WT/run_1_HMR/system.prmtop
trajin /scratch/PI/rondror/MD_simulations/amber/rho_arrestin/rho_arr_c_tail_complexA_WT/run_1_HMR/Prod_212.nc
center origin '!(:POPC | :TIP3 | :SOD | :CLA)'
image origin center
trajout Prod_212_reimaged.nc
go" >> reimage.in
ml load amber
cpptraj -i reimage.in

