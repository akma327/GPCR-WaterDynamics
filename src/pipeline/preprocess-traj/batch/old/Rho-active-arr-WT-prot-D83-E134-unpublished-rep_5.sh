cd /scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/Rhodopsin-active-unpublished/Rho-active-arr-WT-prot-D83-E134-unpublished/rep_5
mkdir Prod_0
cd Prod_0
rm reimage.in
echo "parm /scratch/PI/rondror/MD_simulations/amber/rho_arrestin/rho_arr_c_tail_complexA_WT/run_5_HMR/system.prmtop
trajin /scratch/PI/rondror/MD_simulations/amber/rho_arrestin/rho_arr_c_tail_complexA_WT/run_5_HMR/system.inpcrd
trajin /scratch/PI/rondror/MD_simulations/amber/rho_arrestin/rho_arr_c_tail_complexA_WT/run_5_HMR/Eq_15.nc
center origin '!(:POPC | :TIP3 | :SOD | :CLA)'
image origin center
trajout Prod_0_reimaged.nc
go" >> reimage.in
ml load amber
cpptraj -i reimage.in

cd /scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/Rhodopsin-active-unpublished/Rho-active-arr-WT-prot-D83-E134-unpublished/rep_5
mkdir Prod_1
cd Prod_1
rm reimage.in
echo "parm /scratch/PI/rondror/MD_simulations/amber/rho_arrestin/rho_arr_c_tail_complexA_WT/run_5_HMR/system.prmtop
trajin /scratch/PI/rondror/MD_simulations/amber/rho_arrestin/rho_arr_c_tail_complexA_WT/run_5_HMR/Prod_1.nc
center origin '!(:POPC | :TIP3 | :SOD | :CLA)'
image origin center
trajout Prod_1_reimaged.nc
go" >> reimage.in
ml load amber
cpptraj -i reimage.in

cd /scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/Rhodopsin-active-unpublished/Rho-active-arr-WT-prot-D83-E134-unpublished/rep_5
mkdir Prod_2
cd Prod_2
rm reimage.in
echo "parm /scratch/PI/rondror/MD_simulations/amber/rho_arrestin/rho_arr_c_tail_complexA_WT/run_5_HMR/system.prmtop
trajin /scratch/PI/rondror/MD_simulations/amber/rho_arrestin/rho_arr_c_tail_complexA_WT/run_5_HMR/Prod_2.nc
center origin '!(:POPC | :TIP3 | :SOD | :CLA)'
image origin center
trajout Prod_2_reimaged.nc
go" >> reimage.in
ml load amber
cpptraj -i reimage.in

cd /scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/Rhodopsin-active-unpublished/Rho-active-arr-WT-prot-D83-E134-unpublished/rep_5
mkdir Prod_3
cd Prod_3
rm reimage.in
echo "parm /scratch/PI/rondror/MD_simulations/amber/rho_arrestin/rho_arr_c_tail_complexA_WT/run_5_HMR/system.prmtop
trajin /scratch/PI/rondror/MD_simulations/amber/rho_arrestin/rho_arr_c_tail_complexA_WT/run_5_HMR/Prod_3.nc
center origin '!(:POPC | :TIP3 | :SOD | :CLA)'
image origin center
trajout Prod_3_reimaged.nc
go" >> reimage.in
ml load amber
cpptraj -i reimage.in

cd /scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/Rhodopsin-active-unpublished/Rho-active-arr-WT-prot-D83-E134-unpublished/rep_5
mkdir Prod_4
cd Prod_4
rm reimage.in
echo "parm /scratch/PI/rondror/MD_simulations/amber/rho_arrestin/rho_arr_c_tail_complexA_WT/run_5_HMR/system.prmtop
trajin /scratch/PI/rondror/MD_simulations/amber/rho_arrestin/rho_arr_c_tail_complexA_WT/run_5_HMR/Prod_4.nc
center origin '!(:POPC | :TIP3 | :SOD | :CLA)'
image origin center
trajout Prod_4_reimaged.nc
go" >> reimage.in
ml load amber
cpptraj -i reimage.in

cd /scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/Rhodopsin-active-unpublished/Rho-active-arr-WT-prot-D83-E134-unpublished/rep_5
mkdir Prod_5
cd Prod_5
rm reimage.in
echo "parm /scratch/PI/rondror/MD_simulations/amber/rho_arrestin/rho_arr_c_tail_complexA_WT/run_5_HMR/system.prmtop
trajin /scratch/PI/rondror/MD_simulations/amber/rho_arrestin/rho_arr_c_tail_complexA_WT/run_5_HMR/Prod_5.nc
center origin '!(:POPC | :TIP3 | :SOD | :CLA)'
image origin center
trajout Prod_5_reimaged.nc
go" >> reimage.in
ml load amber
cpptraj -i reimage.in

cd /scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/Rhodopsin-active-unpublished/Rho-active-arr-WT-prot-D83-E134-unpublished/rep_5
mkdir Prod_6
cd Prod_6
rm reimage.in
echo "parm /scratch/PI/rondror/MD_simulations/amber/rho_arrestin/rho_arr_c_tail_complexA_WT/run_5_HMR/system.prmtop
trajin /scratch/PI/rondror/MD_simulations/amber/rho_arrestin/rho_arr_c_tail_complexA_WT/run_5_HMR/Prod_6.nc
center origin '!(:POPC | :TIP3 | :SOD | :CLA)'
image origin center
trajout Prod_6_reimaged.nc
go" >> reimage.in
ml load amber
cpptraj -i reimage.in

cd /scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/Rhodopsin-active-unpublished/Rho-active-arr-WT-prot-D83-E134-unpublished/rep_5
mkdir Prod_7
cd Prod_7
rm reimage.in
echo "parm /scratch/PI/rondror/MD_simulations/amber/rho_arrestin/rho_arr_c_tail_complexA_WT/run_5_HMR/system.prmtop
trajin /scratch/PI/rondror/MD_simulations/amber/rho_arrestin/rho_arr_c_tail_complexA_WT/run_5_HMR/Prod_7.nc
center origin '!(:POPC | :TIP3 | :SOD | :CLA)'
image origin center
trajout Prod_7_reimaged.nc
go" >> reimage.in
ml load amber
cpptraj -i reimage.in

cd /scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/Rhodopsin-active-unpublished/Rho-active-arr-WT-prot-D83-E134-unpublished/rep_5
mkdir Prod_8
cd Prod_8
rm reimage.in
echo "parm /scratch/PI/rondror/MD_simulations/amber/rho_arrestin/rho_arr_c_tail_complexA_WT/run_5_HMR/system.prmtop
trajin /scratch/PI/rondror/MD_simulations/amber/rho_arrestin/rho_arr_c_tail_complexA_WT/run_5_HMR/Prod_8.nc
center origin '!(:POPC | :TIP3 | :SOD | :CLA)'
image origin center
trajout Prod_8_reimaged.nc
go" >> reimage.in
ml load amber
cpptraj -i reimage.in

cd /scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/Rhodopsin-active-unpublished/Rho-active-arr-WT-prot-D83-E134-unpublished/rep_5
mkdir Prod_9
cd Prod_9
rm reimage.in
echo "parm /scratch/PI/rondror/MD_simulations/amber/rho_arrestin/rho_arr_c_tail_complexA_WT/run_5_HMR/system.prmtop
trajin /scratch/PI/rondror/MD_simulations/amber/rho_arrestin/rho_arr_c_tail_complexA_WT/run_5_HMR/Prod_9.nc
center origin '!(:POPC | :TIP3 | :SOD | :CLA)'
image origin center
trajout Prod_9_reimaged.nc
go" >> reimage.in
ml load amber
cpptraj -i reimage.in

cd /scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/Rhodopsin-active-unpublished/Rho-active-arr-WT-prot-D83-E134-unpublished/rep_5
mkdir Prod_10
cd Prod_10
rm reimage.in
echo "parm /scratch/PI/rondror/MD_simulations/amber/rho_arrestin/rho_arr_c_tail_complexA_WT/run_5_HMR/system.prmtop
trajin /scratch/PI/rondror/MD_simulations/amber/rho_arrestin/rho_arr_c_tail_complexA_WT/run_5_HMR/Prod_10.nc
center origin '!(:POPC | :TIP3 | :SOD | :CLA)'
image origin center
trajout Prod_10_reimaged.nc
go" >> reimage.in
ml load amber
cpptraj -i reimage.in

cd /scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/Rhodopsin-active-unpublished/Rho-active-arr-WT-prot-D83-E134-unpublished/rep_5
mkdir Prod_11
cd Prod_11
rm reimage.in
echo "parm /scratch/PI/rondror/MD_simulations/amber/rho_arrestin/rho_arr_c_tail_complexA_WT/run_5_HMR/system.prmtop
trajin /scratch/PI/rondror/MD_simulations/amber/rho_arrestin/rho_arr_c_tail_complexA_WT/run_5_HMR/Prod_11.nc
center origin '!(:POPC | :TIP3 | :SOD | :CLA)'
image origin center
trajout Prod_11_reimaged.nc
go" >> reimage.in
ml load amber
cpptraj -i reimage.in

cd /scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/Rhodopsin-active-unpublished/Rho-active-arr-WT-prot-D83-E134-unpublished/rep_5
mkdir Prod_12
cd Prod_12
rm reimage.in
echo "parm /scratch/PI/rondror/MD_simulations/amber/rho_arrestin/rho_arr_c_tail_complexA_WT/run_5_HMR/system.prmtop
trajin /scratch/PI/rondror/MD_simulations/amber/rho_arrestin/rho_arr_c_tail_complexA_WT/run_5_HMR/Prod_12.nc
center origin '!(:POPC | :TIP3 | :SOD | :CLA)'
image origin center
trajout Prod_12_reimaged.nc
go" >> reimage.in
ml load amber
cpptraj -i reimage.in

cd /scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/Rhodopsin-active-unpublished/Rho-active-arr-WT-prot-D83-E134-unpublished/rep_5
mkdir Prod_13
cd Prod_13
rm reimage.in
echo "parm /scratch/PI/rondror/MD_simulations/amber/rho_arrestin/rho_arr_c_tail_complexA_WT/run_5_HMR/system.prmtop
trajin /scratch/PI/rondror/MD_simulations/amber/rho_arrestin/rho_arr_c_tail_complexA_WT/run_5_HMR/Prod_13.nc
center origin '!(:POPC | :TIP3 | :SOD | :CLA)'
image origin center
trajout Prod_13_reimaged.nc
go" >> reimage.in
ml load amber
cpptraj -i reimage.in

cd /scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/Rhodopsin-active-unpublished/Rho-active-arr-WT-prot-D83-E134-unpublished/rep_5
mkdir Prod_14
cd Prod_14
rm reimage.in
echo "parm /scratch/PI/rondror/MD_simulations/amber/rho_arrestin/rho_arr_c_tail_complexA_WT/run_5_HMR/system.prmtop
trajin /scratch/PI/rondror/MD_simulations/amber/rho_arrestin/rho_arr_c_tail_complexA_WT/run_5_HMR/Prod_14.nc
center origin '!(:POPC | :TIP3 | :SOD | :CLA)'
image origin center
trajout Prod_14_reimaged.nc
go" >> reimage.in
ml load amber
cpptraj -i reimage.in

cd /scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/Rhodopsin-active-unpublished/Rho-active-arr-WT-prot-D83-E134-unpublished/rep_5
mkdir Prod_15
cd Prod_15
rm reimage.in
echo "parm /scratch/PI/rondror/MD_simulations/amber/rho_arrestin/rho_arr_c_tail_complexA_WT/run_5_HMR/system.prmtop
trajin /scratch/PI/rondror/MD_simulations/amber/rho_arrestin/rho_arr_c_tail_complexA_WT/run_5_HMR/Prod_15.nc
center origin '!(:POPC | :TIP3 | :SOD | :CLA)'
image origin center
trajout Prod_15_reimaged.nc
go" >> reimage.in
ml load amber
cpptraj -i reimage.in

cd /scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/Rhodopsin-active-unpublished/Rho-active-arr-WT-prot-D83-E134-unpublished/rep_5
mkdir Prod_16
cd Prod_16
rm reimage.in
echo "parm /scratch/PI/rondror/MD_simulations/amber/rho_arrestin/rho_arr_c_tail_complexA_WT/run_5_HMR/system.prmtop
trajin /scratch/PI/rondror/MD_simulations/amber/rho_arrestin/rho_arr_c_tail_complexA_WT/run_5_HMR/Prod_16.nc
center origin '!(:POPC | :TIP3 | :SOD | :CLA)'
image origin center
trajout Prod_16_reimaged.nc
go" >> reimage.in
ml load amber
cpptraj -i reimage.in

cd /scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/Rhodopsin-active-unpublished/Rho-active-arr-WT-prot-D83-E134-unpublished/rep_5
mkdir Prod_17
cd Prod_17
rm reimage.in
echo "parm /scratch/PI/rondror/MD_simulations/amber/rho_arrestin/rho_arr_c_tail_complexA_WT/run_5_HMR/system.prmtop
trajin /scratch/PI/rondror/MD_simulations/amber/rho_arrestin/rho_arr_c_tail_complexA_WT/run_5_HMR/Prod_17.nc
center origin '!(:POPC | :TIP3 | :SOD | :CLA)'
image origin center
trajout Prod_17_reimaged.nc
go" >> reimage.in
ml load amber
cpptraj -i reimage.in

cd /scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/Rhodopsin-active-unpublished/Rho-active-arr-WT-prot-D83-E134-unpublished/rep_5
mkdir Prod_18
cd Prod_18
rm reimage.in
echo "parm /scratch/PI/rondror/MD_simulations/amber/rho_arrestin/rho_arr_c_tail_complexA_WT/run_5_HMR/system.prmtop
trajin /scratch/PI/rondror/MD_simulations/amber/rho_arrestin/rho_arr_c_tail_complexA_WT/run_5_HMR/Prod_18.nc
center origin '!(:POPC | :TIP3 | :SOD | :CLA)'
image origin center
trajout Prod_18_reimaged.nc
go" >> reimage.in
ml load amber
cpptraj -i reimage.in

cd /scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/Rhodopsin-active-unpublished/Rho-active-arr-WT-prot-D83-E134-unpublished/rep_5
mkdir Prod_19
cd Prod_19
rm reimage.in
echo "parm /scratch/PI/rondror/MD_simulations/amber/rho_arrestin/rho_arr_c_tail_complexA_WT/run_5_HMR/system.prmtop
trajin /scratch/PI/rondror/MD_simulations/amber/rho_arrestin/rho_arr_c_tail_complexA_WT/run_5_HMR/Prod_19.nc
center origin '!(:POPC | :TIP3 | :SOD | :CLA)'
image origin center
trajout Prod_19_reimaged.nc
go" >> reimage.in
ml load amber
cpptraj -i reimage.in

cd /scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/Rhodopsin-active-unpublished/Rho-active-arr-WT-prot-D83-E134-unpublished/rep_5
mkdir Prod_20
cd Prod_20
rm reimage.in
echo "parm /scratch/PI/rondror/MD_simulations/amber/rho_arrestin/rho_arr_c_tail_complexA_WT/run_5_HMR/system.prmtop
trajin /scratch/PI/rondror/MD_simulations/amber/rho_arrestin/rho_arr_c_tail_complexA_WT/run_5_HMR/Prod_20.nc
center origin '!(:POPC | :TIP3 | :SOD | :CLA)'
image origin center
trajout Prod_20_reimaged.nc
go" >> reimage.in
ml load amber
cpptraj -i reimage.in

cd /scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/Rhodopsin-active-unpublished/Rho-active-arr-WT-prot-D83-E134-unpublished/rep_5
mkdir Prod_21
cd Prod_21
rm reimage.in
echo "parm /scratch/PI/rondror/MD_simulations/amber/rho_arrestin/rho_arr_c_tail_complexA_WT/run_5_HMR/system.prmtop
trajin /scratch/PI/rondror/MD_simulations/amber/rho_arrestin/rho_arr_c_tail_complexA_WT/run_5_HMR/Prod_21.nc
center origin '!(:POPC | :TIP3 | :SOD | :CLA)'
image origin center
trajout Prod_21_reimaged.nc
go" >> reimage.in
ml load amber
cpptraj -i reimage.in

cd /scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/Rhodopsin-active-unpublished/Rho-active-arr-WT-prot-D83-E134-unpublished/rep_5
mkdir Prod_22
cd Prod_22
rm reimage.in
echo "parm /scratch/PI/rondror/MD_simulations/amber/rho_arrestin/rho_arr_c_tail_complexA_WT/run_5_HMR/system.prmtop
trajin /scratch/PI/rondror/MD_simulations/amber/rho_arrestin/rho_arr_c_tail_complexA_WT/run_5_HMR/Prod_22.nc
center origin '!(:POPC | :TIP3 | :SOD | :CLA)'
image origin center
trajout Prod_22_reimaged.nc
go" >> reimage.in
ml load amber
cpptraj -i reimage.in

cd /scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/Rhodopsin-active-unpublished/Rho-active-arr-WT-prot-D83-E134-unpublished/rep_5
mkdir Prod_23
cd Prod_23
rm reimage.in
echo "parm /scratch/PI/rondror/MD_simulations/amber/rho_arrestin/rho_arr_c_tail_complexA_WT/run_5_HMR/system.prmtop
trajin /scratch/PI/rondror/MD_simulations/amber/rho_arrestin/rho_arr_c_tail_complexA_WT/run_5_HMR/Prod_23.nc
center origin '!(:POPC | :TIP3 | :SOD | :CLA)'
image origin center
trajout Prod_23_reimaged.nc
go" >> reimage.in
ml load amber
cpptraj -i reimage.in

cd /scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/Rhodopsin-active-unpublished/Rho-active-arr-WT-prot-D83-E134-unpublished/rep_5
mkdir Prod_24
cd Prod_24
rm reimage.in
echo "parm /scratch/PI/rondror/MD_simulations/amber/rho_arrestin/rho_arr_c_tail_complexA_WT/run_5_HMR/system.prmtop
trajin /scratch/PI/rondror/MD_simulations/amber/rho_arrestin/rho_arr_c_tail_complexA_WT/run_5_HMR/Prod_24.nc
center origin '!(:POPC | :TIP3 | :SOD | :CLA)'
image origin center
trajout Prod_24_reimaged.nc
go" >> reimage.in
ml load amber
cpptraj -i reimage.in

cd /scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/Rhodopsin-active-unpublished/Rho-active-arr-WT-prot-D83-E134-unpublished/rep_5
mkdir Prod_25
cd Prod_25
rm reimage.in
echo "parm /scratch/PI/rondror/MD_simulations/amber/rho_arrestin/rho_arr_c_tail_complexA_WT/run_5_HMR/system.prmtop
trajin /scratch/PI/rondror/MD_simulations/amber/rho_arrestin/rho_arr_c_tail_complexA_WT/run_5_HMR/Prod_25.nc
center origin '!(:POPC | :TIP3 | :SOD | :CLA)'
image origin center
trajout Prod_25_reimaged.nc
go" >> reimage.in
ml load amber
cpptraj -i reimage.in

cd /scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/Rhodopsin-active-unpublished/Rho-active-arr-WT-prot-D83-E134-unpublished/rep_5
mkdir Prod_26
cd Prod_26
rm reimage.in
echo "parm /scratch/PI/rondror/MD_simulations/amber/rho_arrestin/rho_arr_c_tail_complexA_WT/run_5_HMR/system.prmtop
trajin /scratch/PI/rondror/MD_simulations/amber/rho_arrestin/rho_arr_c_tail_complexA_WT/run_5_HMR/Prod_26.nc
center origin '!(:POPC | :TIP3 | :SOD | :CLA)'
image origin center
trajout Prod_26_reimaged.nc
go" >> reimage.in
ml load amber
cpptraj -i reimage.in

cd /scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/Rhodopsin-active-unpublished/Rho-active-arr-WT-prot-D83-E134-unpublished/rep_5
mkdir Prod_27
cd Prod_27
rm reimage.in
echo "parm /scratch/PI/rondror/MD_simulations/amber/rho_arrestin/rho_arr_c_tail_complexA_WT/run_5_HMR/system.prmtop
trajin /scratch/PI/rondror/MD_simulations/amber/rho_arrestin/rho_arr_c_tail_complexA_WT/run_5_HMR/Prod_27.nc
center origin '!(:POPC | :TIP3 | :SOD | :CLA)'
image origin center
trajout Prod_27_reimaged.nc
go" >> reimage.in
ml load amber
cpptraj -i reimage.in

cd /scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/Rhodopsin-active-unpublished/Rho-active-arr-WT-prot-D83-E134-unpublished/rep_5
mkdir Prod_28
cd Prod_28
rm reimage.in
echo "parm /scratch/PI/rondror/MD_simulations/amber/rho_arrestin/rho_arr_c_tail_complexA_WT/run_5_HMR/system.prmtop
trajin /scratch/PI/rondror/MD_simulations/amber/rho_arrestin/rho_arr_c_tail_complexA_WT/run_5_HMR/Prod_28.nc
center origin '!(:POPC | :TIP3 | :SOD | :CLA)'
image origin center
trajout Prod_28_reimaged.nc
go" >> reimage.in
ml load amber
cpptraj -i reimage.in

cd /scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/Rhodopsin-active-unpublished/Rho-active-arr-WT-prot-D83-E134-unpublished/rep_5
mkdir Prod_29
cd Prod_29
rm reimage.in
echo "parm /scratch/PI/rondror/MD_simulations/amber/rho_arrestin/rho_arr_c_tail_complexA_WT/run_5_HMR/system.prmtop
trajin /scratch/PI/rondror/MD_simulations/amber/rho_arrestin/rho_arr_c_tail_complexA_WT/run_5_HMR/Prod_29.nc
center origin '!(:POPC | :TIP3 | :SOD | :CLA)'
image origin center
trajout Prod_29_reimaged.nc
go" >> reimage.in
ml load amber
cpptraj -i reimage.in

cd /scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/Rhodopsin-active-unpublished/Rho-active-arr-WT-prot-D83-E134-unpublished/rep_5
mkdir Prod_30
cd Prod_30
rm reimage.in
echo "parm /scratch/PI/rondror/MD_simulations/amber/rho_arrestin/rho_arr_c_tail_complexA_WT/run_5_HMR/system.prmtop
trajin /scratch/PI/rondror/MD_simulations/amber/rho_arrestin/rho_arr_c_tail_complexA_WT/run_5_HMR/Prod_30.nc
center origin '!(:POPC | :TIP3 | :SOD | :CLA)'
image origin center
trajout Prod_30_reimaged.nc
go" >> reimage.in
ml load amber
cpptraj -i reimage.in

cd /scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/Rhodopsin-active-unpublished/Rho-active-arr-WT-prot-D83-E134-unpublished/rep_5
mkdir Prod_31
cd Prod_31
rm reimage.in
echo "parm /scratch/PI/rondror/MD_simulations/amber/rho_arrestin/rho_arr_c_tail_complexA_WT/run_5_HMR/system.prmtop
trajin /scratch/PI/rondror/MD_simulations/amber/rho_arrestin/rho_arr_c_tail_complexA_WT/run_5_HMR/Prod_31.nc
center origin '!(:POPC | :TIP3 | :SOD | :CLA)'
image origin center
trajout Prod_31_reimaged.nc
go" >> reimage.in
ml load amber
cpptraj -i reimage.in

cd /scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/Rhodopsin-active-unpublished/Rho-active-arr-WT-prot-D83-E134-unpublished/rep_5
mkdir Prod_32
cd Prod_32
rm reimage.in
echo "parm /scratch/PI/rondror/MD_simulations/amber/rho_arrestin/rho_arr_c_tail_complexA_WT/run_5_HMR/system.prmtop
trajin /scratch/PI/rondror/MD_simulations/amber/rho_arrestin/rho_arr_c_tail_complexA_WT/run_5_HMR/Prod_32.nc
center origin '!(:POPC | :TIP3 | :SOD | :CLA)'
image origin center
trajout Prod_32_reimaged.nc
go" >> reimage.in
ml load amber
cpptraj -i reimage.in

cd /scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/Rhodopsin-active-unpublished/Rho-active-arr-WT-prot-D83-E134-unpublished/rep_5
mkdir Prod_33
cd Prod_33
rm reimage.in
echo "parm /scratch/PI/rondror/MD_simulations/amber/rho_arrestin/rho_arr_c_tail_complexA_WT/run_5_HMR/system.prmtop
trajin /scratch/PI/rondror/MD_simulations/amber/rho_arrestin/rho_arr_c_tail_complexA_WT/run_5_HMR/Prod_33.nc
center origin '!(:POPC | :TIP3 | :SOD | :CLA)'
image origin center
trajout Prod_33_reimaged.nc
go" >> reimage.in
ml load amber
cpptraj -i reimage.in

cd /scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/Rhodopsin-active-unpublished/Rho-active-arr-WT-prot-D83-E134-unpublished/rep_5
mkdir Prod_34
cd Prod_34
rm reimage.in
echo "parm /scratch/PI/rondror/MD_simulations/amber/rho_arrestin/rho_arr_c_tail_complexA_WT/run_5_HMR/system.prmtop
trajin /scratch/PI/rondror/MD_simulations/amber/rho_arrestin/rho_arr_c_tail_complexA_WT/run_5_HMR/Prod_34.nc
center origin '!(:POPC | :TIP3 | :SOD | :CLA)'
image origin center
trajout Prod_34_reimaged.nc
go" >> reimage.in
ml load amber
cpptraj -i reimage.in

cd /scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/Rhodopsin-active-unpublished/Rho-active-arr-WT-prot-D83-E134-unpublished/rep_5
mkdir Prod_35
cd Prod_35
rm reimage.in
echo "parm /scratch/PI/rondror/MD_simulations/amber/rho_arrestin/rho_arr_c_tail_complexA_WT/run_5_HMR/system.prmtop
trajin /scratch/PI/rondror/MD_simulations/amber/rho_arrestin/rho_arr_c_tail_complexA_WT/run_5_HMR/Prod_35.nc
center origin '!(:POPC | :TIP3 | :SOD | :CLA)'
image origin center
trajout Prod_35_reimaged.nc
go" >> reimage.in
ml load amber
cpptraj -i reimage.in

cd /scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/Rhodopsin-active-unpublished/Rho-active-arr-WT-prot-D83-E134-unpublished/rep_5
mkdir Prod_36
cd Prod_36
rm reimage.in
echo "parm /scratch/PI/rondror/MD_simulations/amber/rho_arrestin/rho_arr_c_tail_complexA_WT/run_5_HMR/system.prmtop
trajin /scratch/PI/rondror/MD_simulations/amber/rho_arrestin/rho_arr_c_tail_complexA_WT/run_5_HMR/Prod_36.nc
center origin '!(:POPC | :TIP3 | :SOD | :CLA)'
image origin center
trajout Prod_36_reimaged.nc
go" >> reimage.in
ml load amber
cpptraj -i reimage.in

cd /scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/Rhodopsin-active-unpublished/Rho-active-arr-WT-prot-D83-E134-unpublished/rep_5
mkdir Prod_37
cd Prod_37
rm reimage.in
echo "parm /scratch/PI/rondror/MD_simulations/amber/rho_arrestin/rho_arr_c_tail_complexA_WT/run_5_HMR/system.prmtop
trajin /scratch/PI/rondror/MD_simulations/amber/rho_arrestin/rho_arr_c_tail_complexA_WT/run_5_HMR/Prod_37.nc
center origin '!(:POPC | :TIP3 | :SOD | :CLA)'
image origin center
trajout Prod_37_reimaged.nc
go" >> reimage.in
ml load amber
cpptraj -i reimage.in

cd /scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/Rhodopsin-active-unpublished/Rho-active-arr-WT-prot-D83-E134-unpublished/rep_5
mkdir Prod_38
cd Prod_38
rm reimage.in
echo "parm /scratch/PI/rondror/MD_simulations/amber/rho_arrestin/rho_arr_c_tail_complexA_WT/run_5_HMR/system.prmtop
trajin /scratch/PI/rondror/MD_simulations/amber/rho_arrestin/rho_arr_c_tail_complexA_WT/run_5_HMR/Prod_38.nc
center origin '!(:POPC | :TIP3 | :SOD | :CLA)'
image origin center
trajout Prod_38_reimaged.nc
go" >> reimage.in
ml load amber
cpptraj -i reimage.in

cd /scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/Rhodopsin-active-unpublished/Rho-active-arr-WT-prot-D83-E134-unpublished/rep_5
mkdir Prod_39
cd Prod_39
rm reimage.in
echo "parm /scratch/PI/rondror/MD_simulations/amber/rho_arrestin/rho_arr_c_tail_complexA_WT/run_5_HMR/system.prmtop
trajin /scratch/PI/rondror/MD_simulations/amber/rho_arrestin/rho_arr_c_tail_complexA_WT/run_5_HMR/Prod_39.nc
center origin '!(:POPC | :TIP3 | :SOD | :CLA)'
image origin center
trajout Prod_39_reimaged.nc
go" >> reimage.in
ml load amber
cpptraj -i reimage.in

cd /scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/Rhodopsin-active-unpublished/Rho-active-arr-WT-prot-D83-E134-unpublished/rep_5
mkdir Prod_40
cd Prod_40
rm reimage.in
echo "parm /scratch/PI/rondror/MD_simulations/amber/rho_arrestin/rho_arr_c_tail_complexA_WT/run_5_HMR/system.prmtop
trajin /scratch/PI/rondror/MD_simulations/amber/rho_arrestin/rho_arr_c_tail_complexA_WT/run_5_HMR/Prod_40.nc
center origin '!(:POPC | :TIP3 | :SOD | :CLA)'
image origin center
trajout Prod_40_reimaged.nc
go" >> reimage.in
ml load amber
cpptraj -i reimage.in

cd /scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/Rhodopsin-active-unpublished/Rho-active-arr-WT-prot-D83-E134-unpublished/rep_5
mkdir Prod_41
cd Prod_41
rm reimage.in
echo "parm /scratch/PI/rondror/MD_simulations/amber/rho_arrestin/rho_arr_c_tail_complexA_WT/run_5_HMR/system.prmtop
trajin /scratch/PI/rondror/MD_simulations/amber/rho_arrestin/rho_arr_c_tail_complexA_WT/run_5_HMR/Prod_41.nc
center origin '!(:POPC | :TIP3 | :SOD | :CLA)'
image origin center
trajout Prod_41_reimaged.nc
go" >> reimage.in
ml load amber
cpptraj -i reimage.in

cd /scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/Rhodopsin-active-unpublished/Rho-active-arr-WT-prot-D83-E134-unpublished/rep_5
mkdir Prod_42
cd Prod_42
rm reimage.in
echo "parm /scratch/PI/rondror/MD_simulations/amber/rho_arrestin/rho_arr_c_tail_complexA_WT/run_5_HMR/system.prmtop
trajin /scratch/PI/rondror/MD_simulations/amber/rho_arrestin/rho_arr_c_tail_complexA_WT/run_5_HMR/Prod_42.nc
center origin '!(:POPC | :TIP3 | :SOD | :CLA)'
image origin center
trajout Prod_42_reimaged.nc
go" >> reimage.in
ml load amber
cpptraj -i reimage.in

cd /scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/Rhodopsin-active-unpublished/Rho-active-arr-WT-prot-D83-E134-unpublished/rep_5
mkdir Prod_43
cd Prod_43
rm reimage.in
echo "parm /scratch/PI/rondror/MD_simulations/amber/rho_arrestin/rho_arr_c_tail_complexA_WT/run_5_HMR/system.prmtop
trajin /scratch/PI/rondror/MD_simulations/amber/rho_arrestin/rho_arr_c_tail_complexA_WT/run_5_HMR/Prod_43.nc
center origin '!(:POPC | :TIP3 | :SOD | :CLA)'
image origin center
trajout Prod_43_reimaged.nc
go" >> reimage.in
ml load amber
cpptraj -i reimage.in

cd /scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/Rhodopsin-active-unpublished/Rho-active-arr-WT-prot-D83-E134-unpublished/rep_5
mkdir Prod_44
cd Prod_44
rm reimage.in
echo "parm /scratch/PI/rondror/MD_simulations/amber/rho_arrestin/rho_arr_c_tail_complexA_WT/run_5_HMR/system.prmtop
trajin /scratch/PI/rondror/MD_simulations/amber/rho_arrestin/rho_arr_c_tail_complexA_WT/run_5_HMR/Prod_44.nc
center origin '!(:POPC | :TIP3 | :SOD | :CLA)'
image origin center
trajout Prod_44_reimaged.nc
go" >> reimage.in
ml load amber
cpptraj -i reimage.in

cd /scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/Rhodopsin-active-unpublished/Rho-active-arr-WT-prot-D83-E134-unpublished/rep_5
mkdir Prod_45
cd Prod_45
rm reimage.in
echo "parm /scratch/PI/rondror/MD_simulations/amber/rho_arrestin/rho_arr_c_tail_complexA_WT/run_5_HMR/system.prmtop
trajin /scratch/PI/rondror/MD_simulations/amber/rho_arrestin/rho_arr_c_tail_complexA_WT/run_5_HMR/Prod_45.nc
center origin '!(:POPC | :TIP3 | :SOD | :CLA)'
image origin center
trajout Prod_45_reimaged.nc
go" >> reimage.in
ml load amber
cpptraj -i reimage.in

cd /scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/Rhodopsin-active-unpublished/Rho-active-arr-WT-prot-D83-E134-unpublished/rep_5
mkdir Prod_46
cd Prod_46
rm reimage.in
echo "parm /scratch/PI/rondror/MD_simulations/amber/rho_arrestin/rho_arr_c_tail_complexA_WT/run_5_HMR/system.prmtop
trajin /scratch/PI/rondror/MD_simulations/amber/rho_arrestin/rho_arr_c_tail_complexA_WT/run_5_HMR/Prod_46.nc
center origin '!(:POPC | :TIP3 | :SOD | :CLA)'
image origin center
trajout Prod_46_reimaged.nc
go" >> reimage.in
ml load amber
cpptraj -i reimage.in

cd /scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/Rhodopsin-active-unpublished/Rho-active-arr-WT-prot-D83-E134-unpublished/rep_5
mkdir Prod_47
cd Prod_47
rm reimage.in
echo "parm /scratch/PI/rondror/MD_simulations/amber/rho_arrestin/rho_arr_c_tail_complexA_WT/run_5_HMR/system.prmtop
trajin /scratch/PI/rondror/MD_simulations/amber/rho_arrestin/rho_arr_c_tail_complexA_WT/run_5_HMR/Prod_47.nc
center origin '!(:POPC | :TIP3 | :SOD | :CLA)'
image origin center
trajout Prod_47_reimaged.nc
go" >> reimage.in
ml load amber
cpptraj -i reimage.in

cd /scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/Rhodopsin-active-unpublished/Rho-active-arr-WT-prot-D83-E134-unpublished/rep_5
mkdir Prod_48
cd Prod_48
rm reimage.in
echo "parm /scratch/PI/rondror/MD_simulations/amber/rho_arrestin/rho_arr_c_tail_complexA_WT/run_5_HMR/system.prmtop
trajin /scratch/PI/rondror/MD_simulations/amber/rho_arrestin/rho_arr_c_tail_complexA_WT/run_5_HMR/Prod_48.nc
center origin '!(:POPC | :TIP3 | :SOD | :CLA)'
image origin center
trajout Prod_48_reimaged.nc
go" >> reimage.in
ml load amber
cpptraj -i reimage.in

cd /scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/Rhodopsin-active-unpublished/Rho-active-arr-WT-prot-D83-E134-unpublished/rep_5
mkdir Prod_49
cd Prod_49
rm reimage.in
echo "parm /scratch/PI/rondror/MD_simulations/amber/rho_arrestin/rho_arr_c_tail_complexA_WT/run_5_HMR/system.prmtop
trajin /scratch/PI/rondror/MD_simulations/amber/rho_arrestin/rho_arr_c_tail_complexA_WT/run_5_HMR/Prod_49.nc
center origin '!(:POPC | :TIP3 | :SOD | :CLA)'
image origin center
trajout Prod_49_reimaged.nc
go" >> reimage.in
ml load amber
cpptraj -i reimage.in

cd /scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/Rhodopsin-active-unpublished/Rho-active-arr-WT-prot-D83-E134-unpublished/rep_5
mkdir Prod_50
cd Prod_50
rm reimage.in
echo "parm /scratch/PI/rondror/MD_simulations/amber/rho_arrestin/rho_arr_c_tail_complexA_WT/run_5_HMR/system.prmtop
trajin /scratch/PI/rondror/MD_simulations/amber/rho_arrestin/rho_arr_c_tail_complexA_WT/run_5_HMR/Prod_50.nc
center origin '!(:POPC | :TIP3 | :SOD | :CLA)'
image origin center
trajout Prod_50_reimaged.nc
go" >> reimage.in
ml load amber
cpptraj -i reimage.in

cd /scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/Rhodopsin-active-unpublished/Rho-active-arr-WT-prot-D83-E134-unpublished/rep_5
mkdir Prod_51
cd Prod_51
rm reimage.in
echo "parm /scratch/PI/rondror/MD_simulations/amber/rho_arrestin/rho_arr_c_tail_complexA_WT/run_5_HMR/system.prmtop
trajin /scratch/PI/rondror/MD_simulations/amber/rho_arrestin/rho_arr_c_tail_complexA_WT/run_5_HMR/Prod_51.nc
center origin '!(:POPC | :TIP3 | :SOD | :CLA)'
image origin center
trajout Prod_51_reimaged.nc
go" >> reimage.in
ml load amber
cpptraj -i reimage.in

cd /scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/Rhodopsin-active-unpublished/Rho-active-arr-WT-prot-D83-E134-unpublished/rep_5
mkdir Prod_52
cd Prod_52
rm reimage.in
echo "parm /scratch/PI/rondror/MD_simulations/amber/rho_arrestin/rho_arr_c_tail_complexA_WT/run_5_HMR/system.prmtop
trajin /scratch/PI/rondror/MD_simulations/amber/rho_arrestin/rho_arr_c_tail_complexA_WT/run_5_HMR/Prod_52.nc
center origin '!(:POPC | :TIP3 | :SOD | :CLA)'
image origin center
trajout Prod_52_reimaged.nc
go" >> reimage.in
ml load amber
cpptraj -i reimage.in

cd /scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/Rhodopsin-active-unpublished/Rho-active-arr-WT-prot-D83-E134-unpublished/rep_5
mkdir Prod_53
cd Prod_53
rm reimage.in
echo "parm /scratch/PI/rondror/MD_simulations/amber/rho_arrestin/rho_arr_c_tail_complexA_WT/run_5_HMR/system.prmtop
trajin /scratch/PI/rondror/MD_simulations/amber/rho_arrestin/rho_arr_c_tail_complexA_WT/run_5_HMR/Prod_53.nc
center origin '!(:POPC | :TIP3 | :SOD | :CLA)'
image origin center
trajout Prod_53_reimaged.nc
go" >> reimage.in
ml load amber
cpptraj -i reimage.in

cd /scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/Rhodopsin-active-unpublished/Rho-active-arr-WT-prot-D83-E134-unpublished/rep_5
mkdir Prod_54
cd Prod_54
rm reimage.in
echo "parm /scratch/PI/rondror/MD_simulations/amber/rho_arrestin/rho_arr_c_tail_complexA_WT/run_5_HMR/system.prmtop
trajin /scratch/PI/rondror/MD_simulations/amber/rho_arrestin/rho_arr_c_tail_complexA_WT/run_5_HMR/Prod_54.nc
center origin '!(:POPC | :TIP3 | :SOD | :CLA)'
image origin center
trajout Prod_54_reimaged.nc
go" >> reimage.in
ml load amber
cpptraj -i reimage.in

cd /scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/Rhodopsin-active-unpublished/Rho-active-arr-WT-prot-D83-E134-unpublished/rep_5
mkdir Prod_55
cd Prod_55
rm reimage.in
echo "parm /scratch/PI/rondror/MD_simulations/amber/rho_arrestin/rho_arr_c_tail_complexA_WT/run_5_HMR/system.prmtop
trajin /scratch/PI/rondror/MD_simulations/amber/rho_arrestin/rho_arr_c_tail_complexA_WT/run_5_HMR/Prod_55.nc
center origin '!(:POPC | :TIP3 | :SOD | :CLA)'
image origin center
trajout Prod_55_reimaged.nc
go" >> reimage.in
ml load amber
cpptraj -i reimage.in

cd /scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/Rhodopsin-active-unpublished/Rho-active-arr-WT-prot-D83-E134-unpublished/rep_5
mkdir Prod_56
cd Prod_56
rm reimage.in
echo "parm /scratch/PI/rondror/MD_simulations/amber/rho_arrestin/rho_arr_c_tail_complexA_WT/run_5_HMR/system.prmtop
trajin /scratch/PI/rondror/MD_simulations/amber/rho_arrestin/rho_arr_c_tail_complexA_WT/run_5_HMR/Prod_56.nc
center origin '!(:POPC | :TIP3 | :SOD | :CLA)'
image origin center
trajout Prod_56_reimaged.nc
go" >> reimage.in
ml load amber
cpptraj -i reimage.in

cd /scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/Rhodopsin-active-unpublished/Rho-active-arr-WT-prot-D83-E134-unpublished/rep_5
mkdir Prod_57
cd Prod_57
rm reimage.in
echo "parm /scratch/PI/rondror/MD_simulations/amber/rho_arrestin/rho_arr_c_tail_complexA_WT/run_5_HMR/system.prmtop
trajin /scratch/PI/rondror/MD_simulations/amber/rho_arrestin/rho_arr_c_tail_complexA_WT/run_5_HMR/Prod_57.nc
center origin '!(:POPC | :TIP3 | :SOD | :CLA)'
image origin center
trajout Prod_57_reimaged.nc
go" >> reimage.in
ml load amber
cpptraj -i reimage.in

cd /scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/Rhodopsin-active-unpublished/Rho-active-arr-WT-prot-D83-E134-unpublished/rep_5
mkdir Prod_58
cd Prod_58
rm reimage.in
echo "parm /scratch/PI/rondror/MD_simulations/amber/rho_arrestin/rho_arr_c_tail_complexA_WT/run_5_HMR/system.prmtop
trajin /scratch/PI/rondror/MD_simulations/amber/rho_arrestin/rho_arr_c_tail_complexA_WT/run_5_HMR/Prod_58.nc
center origin '!(:POPC | :TIP3 | :SOD | :CLA)'
image origin center
trajout Prod_58_reimaged.nc
go" >> reimage.in
ml load amber
cpptraj -i reimage.in

cd /scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/Rhodopsin-active-unpublished/Rho-active-arr-WT-prot-D83-E134-unpublished/rep_5
mkdir Prod_59
cd Prod_59
rm reimage.in
echo "parm /scratch/PI/rondror/MD_simulations/amber/rho_arrestin/rho_arr_c_tail_complexA_WT/run_5_HMR/system.prmtop
trajin /scratch/PI/rondror/MD_simulations/amber/rho_arrestin/rho_arr_c_tail_complexA_WT/run_5_HMR/Prod_59.nc
center origin '!(:POPC | :TIP3 | :SOD | :CLA)'
image origin center
trajout Prod_59_reimaged.nc
go" >> reimage.in
ml load amber
cpptraj -i reimage.in

cd /scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/Rhodopsin-active-unpublished/Rho-active-arr-WT-prot-D83-E134-unpublished/rep_5
mkdir Prod_60
cd Prod_60
rm reimage.in
echo "parm /scratch/PI/rondror/MD_simulations/amber/rho_arrestin/rho_arr_c_tail_complexA_WT/run_5_HMR/system.prmtop
trajin /scratch/PI/rondror/MD_simulations/amber/rho_arrestin/rho_arr_c_tail_complexA_WT/run_5_HMR/Prod_60.nc
center origin '!(:POPC | :TIP3 | :SOD | :CLA)'
image origin center
trajout Prod_60_reimaged.nc
go" >> reimage.in
ml load amber
cpptraj -i reimage.in

cd /scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/Rhodopsin-active-unpublished/Rho-active-arr-WT-prot-D83-E134-unpublished/rep_5
mkdir Prod_61
cd Prod_61
rm reimage.in
echo "parm /scratch/PI/rondror/MD_simulations/amber/rho_arrestin/rho_arr_c_tail_complexA_WT/run_5_HMR/system.prmtop
trajin /scratch/PI/rondror/MD_simulations/amber/rho_arrestin/rho_arr_c_tail_complexA_WT/run_5_HMR/Prod_61.nc
center origin '!(:POPC | :TIP3 | :SOD | :CLA)'
image origin center
trajout Prod_61_reimaged.nc
go" >> reimage.in
ml load amber
cpptraj -i reimage.in

cd /scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/Rhodopsin-active-unpublished/Rho-active-arr-WT-prot-D83-E134-unpublished/rep_5
mkdir Prod_62
cd Prod_62
rm reimage.in
echo "parm /scratch/PI/rondror/MD_simulations/amber/rho_arrestin/rho_arr_c_tail_complexA_WT/run_5_HMR/system.prmtop
trajin /scratch/PI/rondror/MD_simulations/amber/rho_arrestin/rho_arr_c_tail_complexA_WT/run_5_HMR/Prod_62.nc
center origin '!(:POPC | :TIP3 | :SOD | :CLA)'
image origin center
trajout Prod_62_reimaged.nc
go" >> reimage.in
ml load amber
cpptraj -i reimage.in

cd /scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/Rhodopsin-active-unpublished/Rho-active-arr-WT-prot-D83-E134-unpublished/rep_5
mkdir Prod_63
cd Prod_63
rm reimage.in
echo "parm /scratch/PI/rondror/MD_simulations/amber/rho_arrestin/rho_arr_c_tail_complexA_WT/run_5_HMR/system.prmtop
trajin /scratch/PI/rondror/MD_simulations/amber/rho_arrestin/rho_arr_c_tail_complexA_WT/run_5_HMR/Prod_63.nc
center origin '!(:POPC | :TIP3 | :SOD | :CLA)'
image origin center
trajout Prod_63_reimaged.nc
go" >> reimage.in
ml load amber
cpptraj -i reimage.in

cd /scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/Rhodopsin-active-unpublished/Rho-active-arr-WT-prot-D83-E134-unpublished/rep_5
mkdir Prod_64
cd Prod_64
rm reimage.in
echo "parm /scratch/PI/rondror/MD_simulations/amber/rho_arrestin/rho_arr_c_tail_complexA_WT/run_5_HMR/system.prmtop
trajin /scratch/PI/rondror/MD_simulations/amber/rho_arrestin/rho_arr_c_tail_complexA_WT/run_5_HMR/Prod_64.nc
center origin '!(:POPC | :TIP3 | :SOD | :CLA)'
image origin center
trajout Prod_64_reimaged.nc
go" >> reimage.in
ml load amber
cpptraj -i reimage.in

cd /scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/Rhodopsin-active-unpublished/Rho-active-arr-WT-prot-D83-E134-unpublished/rep_5
mkdir Prod_65
cd Prod_65
rm reimage.in
echo "parm /scratch/PI/rondror/MD_simulations/amber/rho_arrestin/rho_arr_c_tail_complexA_WT/run_5_HMR/system.prmtop
trajin /scratch/PI/rondror/MD_simulations/amber/rho_arrestin/rho_arr_c_tail_complexA_WT/run_5_HMR/Prod_65.nc
center origin '!(:POPC | :TIP3 | :SOD | :CLA)'
image origin center
trajout Prod_65_reimaged.nc
go" >> reimage.in
ml load amber
cpptraj -i reimage.in

cd /scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/Rhodopsin-active-unpublished/Rho-active-arr-WT-prot-D83-E134-unpublished/rep_5
mkdir Prod_66
cd Prod_66
rm reimage.in
echo "parm /scratch/PI/rondror/MD_simulations/amber/rho_arrestin/rho_arr_c_tail_complexA_WT/run_5_HMR/system.prmtop
trajin /scratch/PI/rondror/MD_simulations/amber/rho_arrestin/rho_arr_c_tail_complexA_WT/run_5_HMR/Prod_66.nc
center origin '!(:POPC | :TIP3 | :SOD | :CLA)'
image origin center
trajout Prod_66_reimaged.nc
go" >> reimage.in
ml load amber
cpptraj -i reimage.in

cd /scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/Rhodopsin-active-unpublished/Rho-active-arr-WT-prot-D83-E134-unpublished/rep_5
mkdir Prod_67
cd Prod_67
rm reimage.in
echo "parm /scratch/PI/rondror/MD_simulations/amber/rho_arrestin/rho_arr_c_tail_complexA_WT/run_5_HMR/system.prmtop
trajin /scratch/PI/rondror/MD_simulations/amber/rho_arrestin/rho_arr_c_tail_complexA_WT/run_5_HMR/Prod_67.nc
center origin '!(:POPC | :TIP3 | :SOD | :CLA)'
image origin center
trajout Prod_67_reimaged.nc
go" >> reimage.in
ml load amber
cpptraj -i reimage.in

cd /scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/Rhodopsin-active-unpublished/Rho-active-arr-WT-prot-D83-E134-unpublished/rep_5
mkdir Prod_68
cd Prod_68
rm reimage.in
echo "parm /scratch/PI/rondror/MD_simulations/amber/rho_arrestin/rho_arr_c_tail_complexA_WT/run_5_HMR/system.prmtop
trajin /scratch/PI/rondror/MD_simulations/amber/rho_arrestin/rho_arr_c_tail_complexA_WT/run_5_HMR/Prod_68.nc
center origin '!(:POPC | :TIP3 | :SOD | :CLA)'
image origin center
trajout Prod_68_reimaged.nc
go" >> reimage.in
ml load amber
cpptraj -i reimage.in

cd /scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/Rhodopsin-active-unpublished/Rho-active-arr-WT-prot-D83-E134-unpublished/rep_5
mkdir Prod_69
cd Prod_69
rm reimage.in
echo "parm /scratch/PI/rondror/MD_simulations/amber/rho_arrestin/rho_arr_c_tail_complexA_WT/run_5_HMR/system.prmtop
trajin /scratch/PI/rondror/MD_simulations/amber/rho_arrestin/rho_arr_c_tail_complexA_WT/run_5_HMR/Prod_69.nc
center origin '!(:POPC | :TIP3 | :SOD | :CLA)'
image origin center
trajout Prod_69_reimaged.nc
go" >> reimage.in
ml load amber
cpptraj -i reimage.in

cd /scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/Rhodopsin-active-unpublished/Rho-active-arr-WT-prot-D83-E134-unpublished/rep_5
mkdir Prod_70
cd Prod_70
rm reimage.in
echo "parm /scratch/PI/rondror/MD_simulations/amber/rho_arrestin/rho_arr_c_tail_complexA_WT/run_5_HMR/system.prmtop
trajin /scratch/PI/rondror/MD_simulations/amber/rho_arrestin/rho_arr_c_tail_complexA_WT/run_5_HMR/Prod_70.nc
center origin '!(:POPC | :TIP3 | :SOD | :CLA)'
image origin center
trajout Prod_70_reimaged.nc
go" >> reimage.in
ml load amber
cpptraj -i reimage.in

cd /scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/Rhodopsin-active-unpublished/Rho-active-arr-WT-prot-D83-E134-unpublished/rep_5
mkdir Prod_71
cd Prod_71
rm reimage.in
echo "parm /scratch/PI/rondror/MD_simulations/amber/rho_arrestin/rho_arr_c_tail_complexA_WT/run_5_HMR/system.prmtop
trajin /scratch/PI/rondror/MD_simulations/amber/rho_arrestin/rho_arr_c_tail_complexA_WT/run_5_HMR/Prod_71.nc
center origin '!(:POPC | :TIP3 | :SOD | :CLA)'
image origin center
trajout Prod_71_reimaged.nc
go" >> reimage.in
ml load amber
cpptraj -i reimage.in

cd /scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/Rhodopsin-active-unpublished/Rho-active-arr-WT-prot-D83-E134-unpublished/rep_5
mkdir Prod_72
cd Prod_72
rm reimage.in
echo "parm /scratch/PI/rondror/MD_simulations/amber/rho_arrestin/rho_arr_c_tail_complexA_WT/run_5_HMR/system.prmtop
trajin /scratch/PI/rondror/MD_simulations/amber/rho_arrestin/rho_arr_c_tail_complexA_WT/run_5_HMR/Prod_72.nc
center origin '!(:POPC | :TIP3 | :SOD | :CLA)'
image origin center
trajout Prod_72_reimaged.nc
go" >> reimage.in
ml load amber
cpptraj -i reimage.in

cd /scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/Rhodopsin-active-unpublished/Rho-active-arr-WT-prot-D83-E134-unpublished/rep_5
mkdir Prod_73
cd Prod_73
rm reimage.in
echo "parm /scratch/PI/rondror/MD_simulations/amber/rho_arrestin/rho_arr_c_tail_complexA_WT/run_5_HMR/system.prmtop
trajin /scratch/PI/rondror/MD_simulations/amber/rho_arrestin/rho_arr_c_tail_complexA_WT/run_5_HMR/Prod_73.nc
center origin '!(:POPC | :TIP3 | :SOD | :CLA)'
image origin center
trajout Prod_73_reimaged.nc
go" >> reimage.in
ml load amber
cpptraj -i reimage.in

cd /scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/Rhodopsin-active-unpublished/Rho-active-arr-WT-prot-D83-E134-unpublished/rep_5
mkdir Prod_74
cd Prod_74
rm reimage.in
echo "parm /scratch/PI/rondror/MD_simulations/amber/rho_arrestin/rho_arr_c_tail_complexA_WT/run_5_HMR/system.prmtop
trajin /scratch/PI/rondror/MD_simulations/amber/rho_arrestin/rho_arr_c_tail_complexA_WT/run_5_HMR/Prod_74.nc
center origin '!(:POPC | :TIP3 | :SOD | :CLA)'
image origin center
trajout Prod_74_reimaged.nc
go" >> reimage.in
ml load amber
cpptraj -i reimage.in

cd /scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/Rhodopsin-active-unpublished/Rho-active-arr-WT-prot-D83-E134-unpublished/rep_5
mkdir Prod_75
cd Prod_75
rm reimage.in
echo "parm /scratch/PI/rondror/MD_simulations/amber/rho_arrestin/rho_arr_c_tail_complexA_WT/run_5_HMR/system.prmtop
trajin /scratch/PI/rondror/MD_simulations/amber/rho_arrestin/rho_arr_c_tail_complexA_WT/run_5_HMR/Prod_75.nc
center origin '!(:POPC | :TIP3 | :SOD | :CLA)'
image origin center
trajout Prod_75_reimaged.nc
go" >> reimage.in
ml load amber
cpptraj -i reimage.in

