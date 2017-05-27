cd /scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/Rhodopsin-active-unpublished/Rho-active-arr-mut-prot-D83-E134-unpublished/rep_8
mkdir Prod_0
cd Prod_0
rm reimage.in
echo "parm /scratch/PI/rondror/MD_simulations/amber/rho_arrestin/rho_arr_c_tail_complexA/run_8_HMR/system.prmtop
trajin /scratch/PI/rondror/MD_simulations/amber/rho_arrestin/rho_arr_c_tail_complexA/run_8_HMR/system.inpcrd
trajin /scratch/PI/rondror/MD_simulations/amber/rho_arrestin/rho_arr_c_tail_complexA/run_8_HMR/Eq_6.nc
center origin '!(:POPC | :TIP3 | :SOD | :CLA)'
image origin center
trajout Prod_0_reimaged.nc
go" >> reimage.in
ml load amber
cpptraj -i reimage.in

cd /scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/Rhodopsin-active-unpublished/Rho-active-arr-mut-prot-D83-E134-unpublished/rep_8
mkdir Prod_1
cd Prod_1
rm reimage.in
echo "parm /scratch/PI/rondror/MD_simulations/amber/rho_arrestin/rho_arr_c_tail_complexA/run_8_HMR/system.prmtop
trajin /scratch/PI/rondror/MD_simulations/amber/rho_arrestin/rho_arr_c_tail_complexA/run_8_HMR/Prod_1.nc
center origin '!(:POPC | :TIP3 | :SOD | :CLA)'
image origin center
trajout Prod_1_reimaged.nc
go" >> reimage.in
ml load amber
cpptraj -i reimage.in

cd /scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/Rhodopsin-active-unpublished/Rho-active-arr-mut-prot-D83-E134-unpublished/rep_8
mkdir Prod_2
cd Prod_2
rm reimage.in
echo "parm /scratch/PI/rondror/MD_simulations/amber/rho_arrestin/rho_arr_c_tail_complexA/run_8_HMR/system.prmtop
trajin /scratch/PI/rondror/MD_simulations/amber/rho_arrestin/rho_arr_c_tail_complexA/run_8_HMR/Prod_2.nc
center origin '!(:POPC | :TIP3 | :SOD | :CLA)'
image origin center
trajout Prod_2_reimaged.nc
go" >> reimage.in
ml load amber
cpptraj -i reimage.in

cd /scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/Rhodopsin-active-unpublished/Rho-active-arr-mut-prot-D83-E134-unpublished/rep_8
mkdir Prod_3
cd Prod_3
rm reimage.in
echo "parm /scratch/PI/rondror/MD_simulations/amber/rho_arrestin/rho_arr_c_tail_complexA/run_8_HMR/system.prmtop
trajin /scratch/PI/rondror/MD_simulations/amber/rho_arrestin/rho_arr_c_tail_complexA/run_8_HMR/Prod_3.nc
center origin '!(:POPC | :TIP3 | :SOD | :CLA)'
image origin center
trajout Prod_3_reimaged.nc
go" >> reimage.in
ml load amber
cpptraj -i reimage.in

cd /scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/Rhodopsin-active-unpublished/Rho-active-arr-mut-prot-D83-E134-unpublished/rep_8
mkdir Prod_4
cd Prod_4
rm reimage.in
echo "parm /scratch/PI/rondror/MD_simulations/amber/rho_arrestin/rho_arr_c_tail_complexA/run_8_HMR/system.prmtop
trajin /scratch/PI/rondror/MD_simulations/amber/rho_arrestin/rho_arr_c_tail_complexA/run_8_HMR/Prod_4.nc
center origin '!(:POPC | :TIP3 | :SOD | :CLA)'
image origin center
trajout Prod_4_reimaged.nc
go" >> reimage.in
ml load amber
cpptraj -i reimage.in

cd /scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/Rhodopsin-active-unpublished/Rho-active-arr-mut-prot-D83-E134-unpublished/rep_8
mkdir Prod_6
cd Prod_6
rm reimage.in
echo "parm /scratch/PI/rondror/MD_simulations/amber/rho_arrestin/rho_arr_c_tail_complexA/run_8_HMR/system.prmtop
trajin /scratch/PI/rondror/MD_simulations/amber/rho_arrestin/rho_arr_c_tail_complexA/run_8_HMR/Prod_6.nc
center origin '!(:POPC | :TIP3 | :SOD | :CLA)'
image origin center
trajout Prod_6_reimaged.nc
go" >> reimage.in
ml load amber
cpptraj -i reimage.in

cd /scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/Rhodopsin-active-unpublished/Rho-active-arr-mut-prot-D83-E134-unpublished/rep_8
mkdir Prod_8
cd Prod_8
rm reimage.in
echo "parm /scratch/PI/rondror/MD_simulations/amber/rho_arrestin/rho_arr_c_tail_complexA/run_8_HMR/system.prmtop
trajin /scratch/PI/rondror/MD_simulations/amber/rho_arrestin/rho_arr_c_tail_complexA/run_8_HMR/Prod_8.nc
center origin '!(:POPC | :TIP3 | :SOD | :CLA)'
image origin center
trajout Prod_8_reimaged.nc
go" >> reimage.in
ml load amber
cpptraj -i reimage.in

cd /scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/Rhodopsin-active-unpublished/Rho-active-arr-mut-prot-D83-E134-unpublished/rep_8
mkdir Prod_9
cd Prod_9
rm reimage.in
echo "parm /scratch/PI/rondror/MD_simulations/amber/rho_arrestin/rho_arr_c_tail_complexA/run_8_HMR/system.prmtop
trajin /scratch/PI/rondror/MD_simulations/amber/rho_arrestin/rho_arr_c_tail_complexA/run_8_HMR/Prod_9.nc
center origin '!(:POPC | :TIP3 | :SOD | :CLA)'
image origin center
trajout Prod_9_reimaged.nc
go" >> reimage.in
ml load amber
cpptraj -i reimage.in

cd /scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/Rhodopsin-active-unpublished/Rho-active-arr-mut-prot-D83-E134-unpublished/rep_8
mkdir Prod_10
cd Prod_10
rm reimage.in
echo "parm /scratch/PI/rondror/MD_simulations/amber/rho_arrestin/rho_arr_c_tail_complexA/run_8_HMR/system.prmtop
trajin /scratch/PI/rondror/MD_simulations/amber/rho_arrestin/rho_arr_c_tail_complexA/run_8_HMR/Prod_10.nc
center origin '!(:POPC | :TIP3 | :SOD | :CLA)'
image origin center
trajout Prod_10_reimaged.nc
go" >> reimage.in
ml load amber
cpptraj -i reimage.in

cd /scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/Rhodopsin-active-unpublished/Rho-active-arr-mut-prot-D83-E134-unpublished/rep_8
mkdir Prod_11
cd Prod_11
rm reimage.in
echo "parm /scratch/PI/rondror/MD_simulations/amber/rho_arrestin/rho_arr_c_tail_complexA/run_8_HMR/system.prmtop
trajin /scratch/PI/rondror/MD_simulations/amber/rho_arrestin/rho_arr_c_tail_complexA/run_8_HMR/Prod_11.nc
center origin '!(:POPC | :TIP3 | :SOD | :CLA)'
image origin center
trajout Prod_11_reimaged.nc
go" >> reimage.in
ml load amber
cpptraj -i reimage.in

cd /scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/Rhodopsin-active-unpublished/Rho-active-arr-mut-prot-D83-E134-unpublished/rep_8
mkdir Prod_12
cd Prod_12
rm reimage.in
echo "parm /scratch/PI/rondror/MD_simulations/amber/rho_arrestin/rho_arr_c_tail_complexA/run_8_HMR/system.prmtop
trajin /scratch/PI/rondror/MD_simulations/amber/rho_arrestin/rho_arr_c_tail_complexA/run_8_HMR/Prod_12.nc
center origin '!(:POPC | :TIP3 | :SOD | :CLA)'
image origin center
trajout Prod_12_reimaged.nc
go" >> reimage.in
ml load amber
cpptraj -i reimage.in

cd /scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/Rhodopsin-active-unpublished/Rho-active-arr-mut-prot-D83-E134-unpublished/rep_8
mkdir Prod_13
cd Prod_13
rm reimage.in
echo "parm /scratch/PI/rondror/MD_simulations/amber/rho_arrestin/rho_arr_c_tail_complexA/run_8_HMR/system.prmtop
trajin /scratch/PI/rondror/MD_simulations/amber/rho_arrestin/rho_arr_c_tail_complexA/run_8_HMR/Prod_13.nc
center origin '!(:POPC | :TIP3 | :SOD | :CLA)'
image origin center
trajout Prod_13_reimaged.nc
go" >> reimage.in
ml load amber
cpptraj -i reimage.in

cd /scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/Rhodopsin-active-unpublished/Rho-active-arr-mut-prot-D83-E134-unpublished/rep_8
mkdir Prod_16
cd Prod_16
rm reimage.in
echo "parm /scratch/PI/rondror/MD_simulations/amber/rho_arrestin/rho_arr_c_tail_complexA/run_8_HMR/system.prmtop
trajin /scratch/PI/rondror/MD_simulations/amber/rho_arrestin/rho_arr_c_tail_complexA/run_8_HMR/Prod_16.nc
center origin '!(:POPC | :TIP3 | :SOD | :CLA)'
image origin center
trajout Prod_16_reimaged.nc
go" >> reimage.in
ml load amber
cpptraj -i reimage.in

cd /scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/Rhodopsin-active-unpublished/Rho-active-arr-mut-prot-D83-E134-unpublished/rep_8
mkdir Prod_17
cd Prod_17
rm reimage.in
echo "parm /scratch/PI/rondror/MD_simulations/amber/rho_arrestin/rho_arr_c_tail_complexA/run_8_HMR/system.prmtop
trajin /scratch/PI/rondror/MD_simulations/amber/rho_arrestin/rho_arr_c_tail_complexA/run_8_HMR/Prod_17.nc
center origin '!(:POPC | :TIP3 | :SOD | :CLA)'
image origin center
trajout Prod_17_reimaged.nc
go" >> reimage.in
ml load amber
cpptraj -i reimage.in

cd /scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/Rhodopsin-active-unpublished/Rho-active-arr-mut-prot-D83-E134-unpublished/rep_8
mkdir Prod_18
cd Prod_18
rm reimage.in
echo "parm /scratch/PI/rondror/MD_simulations/amber/rho_arrestin/rho_arr_c_tail_complexA/run_8_HMR/system.prmtop
trajin /scratch/PI/rondror/MD_simulations/amber/rho_arrestin/rho_arr_c_tail_complexA/run_8_HMR/Prod_18.nc
center origin '!(:POPC | :TIP3 | :SOD | :CLA)'
image origin center
trajout Prod_18_reimaged.nc
go" >> reimage.in
ml load amber
cpptraj -i reimage.in

cd /scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/Rhodopsin-active-unpublished/Rho-active-arr-mut-prot-D83-E134-unpublished/rep_8
mkdir Prod_20
cd Prod_20
rm reimage.in
echo "parm /scratch/PI/rondror/MD_simulations/amber/rho_arrestin/rho_arr_c_tail_complexA/run_8_HMR/system.prmtop
trajin /scratch/PI/rondror/MD_simulations/amber/rho_arrestin/rho_arr_c_tail_complexA/run_8_HMR/Prod_20.nc
center origin '!(:POPC | :TIP3 | :SOD | :CLA)'
image origin center
trajout Prod_20_reimaged.nc
go" >> reimage.in
ml load amber
cpptraj -i reimage.in

cd /scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/Rhodopsin-active-unpublished/Rho-active-arr-mut-prot-D83-E134-unpublished/rep_8
mkdir Prod_21
cd Prod_21
rm reimage.in
echo "parm /scratch/PI/rondror/MD_simulations/amber/rho_arrestin/rho_arr_c_tail_complexA/run_8_HMR/system.prmtop
trajin /scratch/PI/rondror/MD_simulations/amber/rho_arrestin/rho_arr_c_tail_complexA/run_8_HMR/Prod_21.nc
center origin '!(:POPC | :TIP3 | :SOD | :CLA)'
image origin center
trajout Prod_21_reimaged.nc
go" >> reimage.in
ml load amber
cpptraj -i reimage.in

cd /scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/Rhodopsin-active-unpublished/Rho-active-arr-mut-prot-D83-E134-unpublished/rep_8
mkdir Prod_23
cd Prod_23
rm reimage.in
echo "parm /scratch/PI/rondror/MD_simulations/amber/rho_arrestin/rho_arr_c_tail_complexA/run_8_HMR/system.prmtop
trajin /scratch/PI/rondror/MD_simulations/amber/rho_arrestin/rho_arr_c_tail_complexA/run_8_HMR/Prod_23.nc
center origin '!(:POPC | :TIP3 | :SOD | :CLA)'
image origin center
trajout Prod_23_reimaged.nc
go" >> reimage.in
ml load amber
cpptraj -i reimage.in

cd /scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/Rhodopsin-active-unpublished/Rho-active-arr-mut-prot-D83-E134-unpublished/rep_8
mkdir Prod_24
cd Prod_24
rm reimage.in
echo "parm /scratch/PI/rondror/MD_simulations/amber/rho_arrestin/rho_arr_c_tail_complexA/run_8_HMR/system.prmtop
trajin /scratch/PI/rondror/MD_simulations/amber/rho_arrestin/rho_arr_c_tail_complexA/run_8_HMR/Prod_24.nc
center origin '!(:POPC | :TIP3 | :SOD | :CLA)'
image origin center
trajout Prod_24_reimaged.nc
go" >> reimage.in
ml load amber
cpptraj -i reimage.in

cd /scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/Rhodopsin-active-unpublished/Rho-active-arr-mut-prot-D83-E134-unpublished/rep_8
mkdir Prod_26
cd Prod_26
rm reimage.in
echo "parm /scratch/PI/rondror/MD_simulations/amber/rho_arrestin/rho_arr_c_tail_complexA/run_8_HMR/system.prmtop
trajin /scratch/PI/rondror/MD_simulations/amber/rho_arrestin/rho_arr_c_tail_complexA/run_8_HMR/Prod_26.nc
center origin '!(:POPC | :TIP3 | :SOD | :CLA)'
image origin center
trajout Prod_26_reimaged.nc
go" >> reimage.in
ml load amber
cpptraj -i reimage.in

cd /scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/Rhodopsin-active-unpublished/Rho-active-arr-mut-prot-D83-E134-unpublished/rep_8
mkdir Prod_29
cd Prod_29
rm reimage.in
echo "parm /scratch/PI/rondror/MD_simulations/amber/rho_arrestin/rho_arr_c_tail_complexA/run_8_HMR/system.prmtop
trajin /scratch/PI/rondror/MD_simulations/amber/rho_arrestin/rho_arr_c_tail_complexA/run_8_HMR/Prod_29.nc
center origin '!(:POPC | :TIP3 | :SOD | :CLA)'
image origin center
trajout Prod_29_reimaged.nc
go" >> reimage.in
ml load amber
cpptraj -i reimage.in

cd /scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/Rhodopsin-active-unpublished/Rho-active-arr-mut-prot-D83-E134-unpublished/rep_8
mkdir Prod_30
cd Prod_30
rm reimage.in
echo "parm /scratch/PI/rondror/MD_simulations/amber/rho_arrestin/rho_arr_c_tail_complexA/run_8_HMR/system.prmtop
trajin /scratch/PI/rondror/MD_simulations/amber/rho_arrestin/rho_arr_c_tail_complexA/run_8_HMR/Prod_30.nc
center origin '!(:POPC | :TIP3 | :SOD | :CLA)'
image origin center
trajout Prod_30_reimaged.nc
go" >> reimage.in
ml load amber
cpptraj -i reimage.in

cd /scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/Rhodopsin-active-unpublished/Rho-active-arr-mut-prot-D83-E134-unpublished/rep_8
mkdir Prod_31
cd Prod_31
rm reimage.in
echo "parm /scratch/PI/rondror/MD_simulations/amber/rho_arrestin/rho_arr_c_tail_complexA/run_8_HMR/system.prmtop
trajin /scratch/PI/rondror/MD_simulations/amber/rho_arrestin/rho_arr_c_tail_complexA/run_8_HMR/Prod_31.nc
center origin '!(:POPC | :TIP3 | :SOD | :CLA)'
image origin center
trajout Prod_31_reimaged.nc
go" >> reimage.in
ml load amber
cpptraj -i reimage.in

cd /scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/Rhodopsin-active-unpublished/Rho-active-arr-mut-prot-D83-E134-unpublished/rep_8
mkdir Prod_32
cd Prod_32
rm reimage.in
echo "parm /scratch/PI/rondror/MD_simulations/amber/rho_arrestin/rho_arr_c_tail_complexA/run_8_HMR/system.prmtop
trajin /scratch/PI/rondror/MD_simulations/amber/rho_arrestin/rho_arr_c_tail_complexA/run_8_HMR/Prod_32.nc
center origin '!(:POPC | :TIP3 | :SOD | :CLA)'
image origin center
trajout Prod_32_reimaged.nc
go" >> reimage.in
ml load amber
cpptraj -i reimage.in

cd /scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/Rhodopsin-active-unpublished/Rho-active-arr-mut-prot-D83-E134-unpublished/rep_8
mkdir Prod_35
cd Prod_35
rm reimage.in
echo "parm /scratch/PI/rondror/MD_simulations/amber/rho_arrestin/rho_arr_c_tail_complexA/run_8_HMR/system.prmtop
trajin /scratch/PI/rondror/MD_simulations/amber/rho_arrestin/rho_arr_c_tail_complexA/run_8_HMR/Prod_35.nc
center origin '!(:POPC | :TIP3 | :SOD | :CLA)'
image origin center
trajout Prod_35_reimaged.nc
go" >> reimage.in
ml load amber
cpptraj -i reimage.in

cd /scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/Rhodopsin-active-unpublished/Rho-active-arr-mut-prot-D83-E134-unpublished/rep_8
mkdir Prod_36
cd Prod_36
rm reimage.in
echo "parm /scratch/PI/rondror/MD_simulations/amber/rho_arrestin/rho_arr_c_tail_complexA/run_8_HMR/system.prmtop
trajin /scratch/PI/rondror/MD_simulations/amber/rho_arrestin/rho_arr_c_tail_complexA/run_8_HMR/Prod_36.nc
center origin '!(:POPC | :TIP3 | :SOD | :CLA)'
image origin center
trajout Prod_36_reimaged.nc
go" >> reimage.in
ml load amber
cpptraj -i reimage.in

cd /scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/Rhodopsin-active-unpublished/Rho-active-arr-mut-prot-D83-E134-unpublished/rep_8
mkdir Prod_37
cd Prod_37
rm reimage.in
echo "parm /scratch/PI/rondror/MD_simulations/amber/rho_arrestin/rho_arr_c_tail_complexA/run_8_HMR/system.prmtop
trajin /scratch/PI/rondror/MD_simulations/amber/rho_arrestin/rho_arr_c_tail_complexA/run_8_HMR/Prod_37.nc
center origin '!(:POPC | :TIP3 | :SOD | :CLA)'
image origin center
trajout Prod_37_reimaged.nc
go" >> reimage.in
ml load amber
cpptraj -i reimage.in

cd /scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/Rhodopsin-active-unpublished/Rho-active-arr-mut-prot-D83-E134-unpublished/rep_8
mkdir Prod_38
cd Prod_38
rm reimage.in
echo "parm /scratch/PI/rondror/MD_simulations/amber/rho_arrestin/rho_arr_c_tail_complexA/run_8_HMR/system.prmtop
trajin /scratch/PI/rondror/MD_simulations/amber/rho_arrestin/rho_arr_c_tail_complexA/run_8_HMR/Prod_38.nc
center origin '!(:POPC | :TIP3 | :SOD | :CLA)'
image origin center
trajout Prod_38_reimaged.nc
go" >> reimage.in
ml load amber
cpptraj -i reimage.in

cd /scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/Rhodopsin-active-unpublished/Rho-active-arr-mut-prot-D83-E134-unpublished/rep_8
mkdir Prod_39
cd Prod_39
rm reimage.in
echo "parm /scratch/PI/rondror/MD_simulations/amber/rho_arrestin/rho_arr_c_tail_complexA/run_8_HMR/system.prmtop
trajin /scratch/PI/rondror/MD_simulations/amber/rho_arrestin/rho_arr_c_tail_complexA/run_8_HMR/Prod_39.nc
center origin '!(:POPC | :TIP3 | :SOD | :CLA)'
image origin center
trajout Prod_39_reimaged.nc
go" >> reimage.in
ml load amber
cpptraj -i reimage.in

cd /scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/Rhodopsin-active-unpublished/Rho-active-arr-mut-prot-D83-E134-unpublished/rep_8
mkdir Prod_40
cd Prod_40
rm reimage.in
echo "parm /scratch/PI/rondror/MD_simulations/amber/rho_arrestin/rho_arr_c_tail_complexA/run_8_HMR/system.prmtop
trajin /scratch/PI/rondror/MD_simulations/amber/rho_arrestin/rho_arr_c_tail_complexA/run_8_HMR/Prod_40.nc
center origin '!(:POPC | :TIP3 | :SOD | :CLA)'
image origin center
trajout Prod_40_reimaged.nc
go" >> reimage.in
ml load amber
cpptraj -i reimage.in

cd /scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/Rhodopsin-active-unpublished/Rho-active-arr-mut-prot-D83-E134-unpublished/rep_8
mkdir Prod_41
cd Prod_41
rm reimage.in
echo "parm /scratch/PI/rondror/MD_simulations/amber/rho_arrestin/rho_arr_c_tail_complexA/run_8_HMR/system.prmtop
trajin /scratch/PI/rondror/MD_simulations/amber/rho_arrestin/rho_arr_c_tail_complexA/run_8_HMR/Prod_41.nc
center origin '!(:POPC | :TIP3 | :SOD | :CLA)'
image origin center
trajout Prod_41_reimaged.nc
go" >> reimage.in
ml load amber
cpptraj -i reimage.in

cd /scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/Rhodopsin-active-unpublished/Rho-active-arr-mut-prot-D83-E134-unpublished/rep_8
mkdir Prod_42
cd Prod_42
rm reimage.in
echo "parm /scratch/PI/rondror/MD_simulations/amber/rho_arrestin/rho_arr_c_tail_complexA/run_8_HMR/system.prmtop
trajin /scratch/PI/rondror/MD_simulations/amber/rho_arrestin/rho_arr_c_tail_complexA/run_8_HMR/Prod_42.nc
center origin '!(:POPC | :TIP3 | :SOD | :CLA)'
image origin center
trajout Prod_42_reimaged.nc
go" >> reimage.in
ml load amber
cpptraj -i reimage.in

cd /scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/Rhodopsin-active-unpublished/Rho-active-arr-mut-prot-D83-E134-unpublished/rep_8
mkdir Prod_43
cd Prod_43
rm reimage.in
echo "parm /scratch/PI/rondror/MD_simulations/amber/rho_arrestin/rho_arr_c_tail_complexA/run_8_HMR/system.prmtop
trajin /scratch/PI/rondror/MD_simulations/amber/rho_arrestin/rho_arr_c_tail_complexA/run_8_HMR/Prod_43.nc
center origin '!(:POPC | :TIP3 | :SOD | :CLA)'
image origin center
trajout Prod_43_reimaged.nc
go" >> reimage.in
ml load amber
cpptraj -i reimage.in

cd /scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/Rhodopsin-active-unpublished/Rho-active-arr-mut-prot-D83-E134-unpublished/rep_8
mkdir Prod_44
cd Prod_44
rm reimage.in
echo "parm /scratch/PI/rondror/MD_simulations/amber/rho_arrestin/rho_arr_c_tail_complexA/run_8_HMR/system.prmtop
trajin /scratch/PI/rondror/MD_simulations/amber/rho_arrestin/rho_arr_c_tail_complexA/run_8_HMR/Prod_44.nc
center origin '!(:POPC | :TIP3 | :SOD | :CLA)'
image origin center
trajout Prod_44_reimaged.nc
go" >> reimage.in
ml load amber
cpptraj -i reimage.in

cd /scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/Rhodopsin-active-unpublished/Rho-active-arr-mut-prot-D83-E134-unpublished/rep_8
mkdir Prod_45
cd Prod_45
rm reimage.in
echo "parm /scratch/PI/rondror/MD_simulations/amber/rho_arrestin/rho_arr_c_tail_complexA/run_8_HMR/system.prmtop
trajin /scratch/PI/rondror/MD_simulations/amber/rho_arrestin/rho_arr_c_tail_complexA/run_8_HMR/Prod_45.nc
center origin '!(:POPC | :TIP3 | :SOD | :CLA)'
image origin center
trajout Prod_45_reimaged.nc
go" >> reimage.in
ml load amber
cpptraj -i reimage.in

cd /scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/Rhodopsin-active-unpublished/Rho-active-arr-mut-prot-D83-E134-unpublished/rep_8
mkdir Prod_46
cd Prod_46
rm reimage.in
echo "parm /scratch/PI/rondror/MD_simulations/amber/rho_arrestin/rho_arr_c_tail_complexA/run_8_HMR/system.prmtop
trajin /scratch/PI/rondror/MD_simulations/amber/rho_arrestin/rho_arr_c_tail_complexA/run_8_HMR/Prod_46.nc
center origin '!(:POPC | :TIP3 | :SOD | :CLA)'
image origin center
trajout Prod_46_reimaged.nc
go" >> reimage.in
ml load amber
cpptraj -i reimage.in

cd /scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/Rhodopsin-active-unpublished/Rho-active-arr-mut-prot-D83-E134-unpublished/rep_8
mkdir Prod_48
cd Prod_48
rm reimage.in
echo "parm /scratch/PI/rondror/MD_simulations/amber/rho_arrestin/rho_arr_c_tail_complexA/run_8_HMR/system.prmtop
trajin /scratch/PI/rondror/MD_simulations/amber/rho_arrestin/rho_arr_c_tail_complexA/run_8_HMR/Prod_48.nc
center origin '!(:POPC | :TIP3 | :SOD | :CLA)'
image origin center
trajout Prod_48_reimaged.nc
go" >> reimage.in
ml load amber
cpptraj -i reimage.in

cd /scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/Rhodopsin-active-unpublished/Rho-active-arr-mut-prot-D83-E134-unpublished/rep_8
mkdir Prod_49
cd Prod_49
rm reimage.in
echo "parm /scratch/PI/rondror/MD_simulations/amber/rho_arrestin/rho_arr_c_tail_complexA/run_8_HMR/system.prmtop
trajin /scratch/PI/rondror/MD_simulations/amber/rho_arrestin/rho_arr_c_tail_complexA/run_8_HMR/Prod_49.nc
center origin '!(:POPC | :TIP3 | :SOD | :CLA)'
image origin center
trajout Prod_49_reimaged.nc
go" >> reimage.in
ml load amber
cpptraj -i reimage.in

cd /scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/Rhodopsin-active-unpublished/Rho-active-arr-mut-prot-D83-E134-unpublished/rep_8
mkdir Prod_50
cd Prod_50
rm reimage.in
echo "parm /scratch/PI/rondror/MD_simulations/amber/rho_arrestin/rho_arr_c_tail_complexA/run_8_HMR/system.prmtop
trajin /scratch/PI/rondror/MD_simulations/amber/rho_arrestin/rho_arr_c_tail_complexA/run_8_HMR/Prod_50.nc
center origin '!(:POPC | :TIP3 | :SOD | :CLA)'
image origin center
trajout Prod_50_reimaged.nc
go" >> reimage.in
ml load amber
cpptraj -i reimage.in

cd /scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/Rhodopsin-active-unpublished/Rho-active-arr-mut-prot-D83-E134-unpublished/rep_8
mkdir Prod_51
cd Prod_51
rm reimage.in
echo "parm /scratch/PI/rondror/MD_simulations/amber/rho_arrestin/rho_arr_c_tail_complexA/run_8_HMR/system.prmtop
trajin /scratch/PI/rondror/MD_simulations/amber/rho_arrestin/rho_arr_c_tail_complexA/run_8_HMR/Prod_51.nc
center origin '!(:POPC | :TIP3 | :SOD | :CLA)'
image origin center
trajout Prod_51_reimaged.nc
go" >> reimage.in
ml load amber
cpptraj -i reimage.in

cd /scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/Rhodopsin-active-unpublished/Rho-active-arr-mut-prot-D83-E134-unpublished/rep_8
mkdir Prod_52
cd Prod_52
rm reimage.in
echo "parm /scratch/PI/rondror/MD_simulations/amber/rho_arrestin/rho_arr_c_tail_complexA/run_8_HMR/system.prmtop
trajin /scratch/PI/rondror/MD_simulations/amber/rho_arrestin/rho_arr_c_tail_complexA/run_8_HMR/Prod_52.nc
center origin '!(:POPC | :TIP3 | :SOD | :CLA)'
image origin center
trajout Prod_52_reimaged.nc
go" >> reimage.in
ml load amber
cpptraj -i reimage.in

cd /scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/Rhodopsin-active-unpublished/Rho-active-arr-mut-prot-D83-E134-unpublished/rep_8
mkdir Prod_54
cd Prod_54
rm reimage.in
echo "parm /scratch/PI/rondror/MD_simulations/amber/rho_arrestin/rho_arr_c_tail_complexA/run_8_HMR/system.prmtop
trajin /scratch/PI/rondror/MD_simulations/amber/rho_arrestin/rho_arr_c_tail_complexA/run_8_HMR/Prod_54.nc
center origin '!(:POPC | :TIP3 | :SOD | :CLA)'
image origin center
trajout Prod_54_reimaged.nc
go" >> reimage.in
ml load amber
cpptraj -i reimage.in

cd /scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/Rhodopsin-active-unpublished/Rho-active-arr-mut-prot-D83-E134-unpublished/rep_8
mkdir Prod_55
cd Prod_55
rm reimage.in
echo "parm /scratch/PI/rondror/MD_simulations/amber/rho_arrestin/rho_arr_c_tail_complexA/run_8_HMR/system.prmtop
trajin /scratch/PI/rondror/MD_simulations/amber/rho_arrestin/rho_arr_c_tail_complexA/run_8_HMR/Prod_55.nc
center origin '!(:POPC | :TIP3 | :SOD | :CLA)'
image origin center
trajout Prod_55_reimaged.nc
go" >> reimage.in
ml load amber
cpptraj -i reimage.in

cd /scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/Rhodopsin-active-unpublished/Rho-active-arr-mut-prot-D83-E134-unpublished/rep_8
mkdir Prod_56
cd Prod_56
rm reimage.in
echo "parm /scratch/PI/rondror/MD_simulations/amber/rho_arrestin/rho_arr_c_tail_complexA/run_8_HMR/system.prmtop
trajin /scratch/PI/rondror/MD_simulations/amber/rho_arrestin/rho_arr_c_tail_complexA/run_8_HMR/Prod_56.nc
center origin '!(:POPC | :TIP3 | :SOD | :CLA)'
image origin center
trajout Prod_56_reimaged.nc
go" >> reimage.in
ml load amber
cpptraj -i reimage.in

cd /scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/Rhodopsin-active-unpublished/Rho-active-arr-mut-prot-D83-E134-unpublished/rep_8
mkdir Prod_57
cd Prod_57
rm reimage.in
echo "parm /scratch/PI/rondror/MD_simulations/amber/rho_arrestin/rho_arr_c_tail_complexA/run_8_HMR/system.prmtop
trajin /scratch/PI/rondror/MD_simulations/amber/rho_arrestin/rho_arr_c_tail_complexA/run_8_HMR/Prod_57.nc
center origin '!(:POPC | :TIP3 | :SOD | :CLA)'
image origin center
trajout Prod_57_reimaged.nc
go" >> reimage.in
ml load amber
cpptraj -i reimage.in

cd /scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/Rhodopsin-active-unpublished/Rho-active-arr-mut-prot-D83-E134-unpublished/rep_8
mkdir Prod_58
cd Prod_58
rm reimage.in
echo "parm /scratch/PI/rondror/MD_simulations/amber/rho_arrestin/rho_arr_c_tail_complexA/run_8_HMR/system.prmtop
trajin /scratch/PI/rondror/MD_simulations/amber/rho_arrestin/rho_arr_c_tail_complexA/run_8_HMR/Prod_58.nc
center origin '!(:POPC | :TIP3 | :SOD | :CLA)'
image origin center
trajout Prod_58_reimaged.nc
go" >> reimage.in
ml load amber
cpptraj -i reimage.in

cd /scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/Rhodopsin-active-unpublished/Rho-active-arr-mut-prot-D83-E134-unpublished/rep_8
mkdir Prod_59
cd Prod_59
rm reimage.in
echo "parm /scratch/PI/rondror/MD_simulations/amber/rho_arrestin/rho_arr_c_tail_complexA/run_8_HMR/system.prmtop
trajin /scratch/PI/rondror/MD_simulations/amber/rho_arrestin/rho_arr_c_tail_complexA/run_8_HMR/Prod_59.nc
center origin '!(:POPC | :TIP3 | :SOD | :CLA)'
image origin center
trajout Prod_59_reimaged.nc
go" >> reimage.in
ml load amber
cpptraj -i reimage.in

cd /scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/Rhodopsin-active-unpublished/Rho-active-arr-mut-prot-D83-E134-unpublished/rep_8
mkdir Prod_60
cd Prod_60
rm reimage.in
echo "parm /scratch/PI/rondror/MD_simulations/amber/rho_arrestin/rho_arr_c_tail_complexA/run_8_HMR/system.prmtop
trajin /scratch/PI/rondror/MD_simulations/amber/rho_arrestin/rho_arr_c_tail_complexA/run_8_HMR/Prod_60.nc
center origin '!(:POPC | :TIP3 | :SOD | :CLA)'
image origin center
trajout Prod_60_reimaged.nc
go" >> reimage.in
ml load amber
cpptraj -i reimage.in

cd /scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/Rhodopsin-active-unpublished/Rho-active-arr-mut-prot-D83-E134-unpublished/rep_8
mkdir Prod_61
cd Prod_61
rm reimage.in
echo "parm /scratch/PI/rondror/MD_simulations/amber/rho_arrestin/rho_arr_c_tail_complexA/run_8_HMR/system.prmtop
trajin /scratch/PI/rondror/MD_simulations/amber/rho_arrestin/rho_arr_c_tail_complexA/run_8_HMR/Prod_61.nc
center origin '!(:POPC | :TIP3 | :SOD | :CLA)'
image origin center
trajout Prod_61_reimaged.nc
go" >> reimage.in
ml load amber
cpptraj -i reimage.in

cd /scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/Rhodopsin-active-unpublished/Rho-active-arr-mut-prot-D83-E134-unpublished/rep_8
mkdir Prod_62
cd Prod_62
rm reimage.in
echo "parm /scratch/PI/rondror/MD_simulations/amber/rho_arrestin/rho_arr_c_tail_complexA/run_8_HMR/system.prmtop
trajin /scratch/PI/rondror/MD_simulations/amber/rho_arrestin/rho_arr_c_tail_complexA/run_8_HMR/Prod_62.nc
center origin '!(:POPC | :TIP3 | :SOD | :CLA)'
image origin center
trajout Prod_62_reimaged.nc
go" >> reimage.in
ml load amber
cpptraj -i reimage.in

cd /scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/Rhodopsin-active-unpublished/Rho-active-arr-mut-prot-D83-E134-unpublished/rep_8
mkdir Prod_63
cd Prod_63
rm reimage.in
echo "parm /scratch/PI/rondror/MD_simulations/amber/rho_arrestin/rho_arr_c_tail_complexA/run_8_HMR/system.prmtop
trajin /scratch/PI/rondror/MD_simulations/amber/rho_arrestin/rho_arr_c_tail_complexA/run_8_HMR/Prod_63.nc
center origin '!(:POPC | :TIP3 | :SOD | :CLA)'
image origin center
trajout Prod_63_reimaged.nc
go" >> reimage.in
ml load amber
cpptraj -i reimage.in

cd /scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/Rhodopsin-active-unpublished/Rho-active-arr-mut-prot-D83-E134-unpublished/rep_8
mkdir Prod_65
cd Prod_65
rm reimage.in
echo "parm /scratch/PI/rondror/MD_simulations/amber/rho_arrestin/rho_arr_c_tail_complexA/run_8_HMR/system.prmtop
trajin /scratch/PI/rondror/MD_simulations/amber/rho_arrestin/rho_arr_c_tail_complexA/run_8_HMR/Prod_65.nc
center origin '!(:POPC | :TIP3 | :SOD | :CLA)'
image origin center
trajout Prod_65_reimaged.nc
go" >> reimage.in
ml load amber
cpptraj -i reimage.in

cd /scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/Rhodopsin-active-unpublished/Rho-active-arr-mut-prot-D83-E134-unpublished/rep_8
mkdir Prod_67
cd Prod_67
rm reimage.in
echo "parm /scratch/PI/rondror/MD_simulations/amber/rho_arrestin/rho_arr_c_tail_complexA/run_8_HMR/system.prmtop
trajin /scratch/PI/rondror/MD_simulations/amber/rho_arrestin/rho_arr_c_tail_complexA/run_8_HMR/Prod_67.nc
center origin '!(:POPC | :TIP3 | :SOD | :CLA)'
image origin center
trajout Prod_67_reimaged.nc
go" >> reimage.in
ml load amber
cpptraj -i reimage.in

cd /scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/Rhodopsin-active-unpublished/Rho-active-arr-mut-prot-D83-E134-unpublished/rep_8
mkdir Prod_69
cd Prod_69
rm reimage.in
echo "parm /scratch/PI/rondror/MD_simulations/amber/rho_arrestin/rho_arr_c_tail_complexA/run_8_HMR/system.prmtop
trajin /scratch/PI/rondror/MD_simulations/amber/rho_arrestin/rho_arr_c_tail_complexA/run_8_HMR/Prod_69.nc
center origin '!(:POPC | :TIP3 | :SOD | :CLA)'
image origin center
trajout Prod_69_reimaged.nc
go" >> reimage.in
ml load amber
cpptraj -i reimage.in

cd /scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/Rhodopsin-active-unpublished/Rho-active-arr-mut-prot-D83-E134-unpublished/rep_8
mkdir Prod_70
cd Prod_70
rm reimage.in
echo "parm /scratch/PI/rondror/MD_simulations/amber/rho_arrestin/rho_arr_c_tail_complexA/run_8_HMR/system.prmtop
trajin /scratch/PI/rondror/MD_simulations/amber/rho_arrestin/rho_arr_c_tail_complexA/run_8_HMR/Prod_70.nc
center origin '!(:POPC | :TIP3 | :SOD | :CLA)'
image origin center
trajout Prod_70_reimaged.nc
go" >> reimage.in
ml load amber
cpptraj -i reimage.in

cd /scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/Rhodopsin-active-unpublished/Rho-active-arr-mut-prot-D83-E134-unpublished/rep_8
mkdir Prod_71
cd Prod_71
rm reimage.in
echo "parm /scratch/PI/rondror/MD_simulations/amber/rho_arrestin/rho_arr_c_tail_complexA/run_8_HMR/system.prmtop
trajin /scratch/PI/rondror/MD_simulations/amber/rho_arrestin/rho_arr_c_tail_complexA/run_8_HMR/Prod_71.nc
center origin '!(:POPC | :TIP3 | :SOD | :CLA)'
image origin center
trajout Prod_71_reimaged.nc
go" >> reimage.in
ml load amber
cpptraj -i reimage.in

cd /scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/Rhodopsin-active-unpublished/Rho-active-arr-mut-prot-D83-E134-unpublished/rep_8
mkdir Prod_73
cd Prod_73
rm reimage.in
echo "parm /scratch/PI/rondror/MD_simulations/amber/rho_arrestin/rho_arr_c_tail_complexA/run_8_HMR/system.prmtop
trajin /scratch/PI/rondror/MD_simulations/amber/rho_arrestin/rho_arr_c_tail_complexA/run_8_HMR/Prod_73.nc
center origin '!(:POPC | :TIP3 | :SOD | :CLA)'
image origin center
trajout Prod_73_reimaged.nc
go" >> reimage.in
ml load amber
cpptraj -i reimage.in

cd /scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/Rhodopsin-active-unpublished/Rho-active-arr-mut-prot-D83-E134-unpublished/rep_8
mkdir Prod_77
cd Prod_77
rm reimage.in
echo "parm /scratch/PI/rondror/MD_simulations/amber/rho_arrestin/rho_arr_c_tail_complexA/run_8_HMR/system.prmtop
trajin /scratch/PI/rondror/MD_simulations/amber/rho_arrestin/rho_arr_c_tail_complexA/run_8_HMR/Prod_77.nc
center origin '!(:POPC | :TIP3 | :SOD | :CLA)'
image origin center
trajout Prod_77_reimaged.nc
go" >> reimage.in
ml load amber
cpptraj -i reimage.in

cd /scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/Rhodopsin-active-unpublished/Rho-active-arr-mut-prot-D83-E134-unpublished/rep_8
mkdir Prod_82
cd Prod_82
rm reimage.in
echo "parm /scratch/PI/rondror/MD_simulations/amber/rho_arrestin/rho_arr_c_tail_complexA/run_8_HMR/system.prmtop
trajin /scratch/PI/rondror/MD_simulations/amber/rho_arrestin/rho_arr_c_tail_complexA/run_8_HMR/Prod_82.nc
center origin '!(:POPC | :TIP3 | :SOD | :CLA)'
image origin center
trajout Prod_82_reimaged.nc
go" >> reimage.in
ml load amber
cpptraj -i reimage.in

cd /scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/Rhodopsin-active-unpublished/Rho-active-arr-mut-prot-D83-E134-unpublished/rep_8
mkdir Prod_83
cd Prod_83
rm reimage.in
echo "parm /scratch/PI/rondror/MD_simulations/amber/rho_arrestin/rho_arr_c_tail_complexA/run_8_HMR/system.prmtop
trajin /scratch/PI/rondror/MD_simulations/amber/rho_arrestin/rho_arr_c_tail_complexA/run_8_HMR/Prod_83.nc
center origin '!(:POPC | :TIP3 | :SOD | :CLA)'
image origin center
trajout Prod_83_reimaged.nc
go" >> reimage.in
ml load amber
cpptraj -i reimage.in

cd /scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/Rhodopsin-active-unpublished/Rho-active-arr-mut-prot-D83-E134-unpublished/rep_8
mkdir Prod_84
cd Prod_84
rm reimage.in
echo "parm /scratch/PI/rondror/MD_simulations/amber/rho_arrestin/rho_arr_c_tail_complexA/run_8_HMR/system.prmtop
trajin /scratch/PI/rondror/MD_simulations/amber/rho_arrestin/rho_arr_c_tail_complexA/run_8_HMR/Prod_84.nc
center origin '!(:POPC | :TIP3 | :SOD | :CLA)'
image origin center
trajout Prod_84_reimaged.nc
go" >> reimage.in
ml load amber
cpptraj -i reimage.in

cd /scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/Rhodopsin-active-unpublished/Rho-active-arr-mut-prot-D83-E134-unpublished/rep_8
mkdir Prod_85
cd Prod_85
rm reimage.in
echo "parm /scratch/PI/rondror/MD_simulations/amber/rho_arrestin/rho_arr_c_tail_complexA/run_8_HMR/system.prmtop
trajin /scratch/PI/rondror/MD_simulations/amber/rho_arrestin/rho_arr_c_tail_complexA/run_8_HMR/Prod_85.nc
center origin '!(:POPC | :TIP3 | :SOD | :CLA)'
image origin center
trajout Prod_85_reimaged.nc
go" >> reimage.in
ml load amber
cpptraj -i reimage.in

cd /scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/Rhodopsin-active-unpublished/Rho-active-arr-mut-prot-D83-E134-unpublished/rep_8
mkdir Prod_86
cd Prod_86
rm reimage.in
echo "parm /scratch/PI/rondror/MD_simulations/amber/rho_arrestin/rho_arr_c_tail_complexA/run_8_HMR/system.prmtop
trajin /scratch/PI/rondror/MD_simulations/amber/rho_arrestin/rho_arr_c_tail_complexA/run_8_HMR/Prod_86.nc
center origin '!(:POPC | :TIP3 | :SOD | :CLA)'
image origin center
trajout Prod_86_reimaged.nc
go" >> reimage.in
ml load amber
cpptraj -i reimage.in

cd /scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/Rhodopsin-active-unpublished/Rho-active-arr-mut-prot-D83-E134-unpublished/rep_8
mkdir Prod_87
cd Prod_87
rm reimage.in
echo "parm /scratch/PI/rondror/MD_simulations/amber/rho_arrestin/rho_arr_c_tail_complexA/run_8_HMR/system.prmtop
trajin /scratch/PI/rondror/MD_simulations/amber/rho_arrestin/rho_arr_c_tail_complexA/run_8_HMR/Prod_87.nc
center origin '!(:POPC | :TIP3 | :SOD | :CLA)'
image origin center
trajout Prod_87_reimaged.nc
go" >> reimage.in
ml load amber
cpptraj -i reimage.in

cd /scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/Rhodopsin-active-unpublished/Rho-active-arr-mut-prot-D83-E134-unpublished/rep_8
mkdir Prod_88
cd Prod_88
rm reimage.in
echo "parm /scratch/PI/rondror/MD_simulations/amber/rho_arrestin/rho_arr_c_tail_complexA/run_8_HMR/system.prmtop
trajin /scratch/PI/rondror/MD_simulations/amber/rho_arrestin/rho_arr_c_tail_complexA/run_8_HMR/Prod_88.nc
center origin '!(:POPC | :TIP3 | :SOD | :CLA)'
image origin center
trajout Prod_88_reimaged.nc
go" >> reimage.in
ml load amber
cpptraj -i reimage.in

cd /scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/Rhodopsin-active-unpublished/Rho-active-arr-mut-prot-D83-E134-unpublished/rep_8
mkdir Prod_89
cd Prod_89
rm reimage.in
echo "parm /scratch/PI/rondror/MD_simulations/amber/rho_arrestin/rho_arr_c_tail_complexA/run_8_HMR/system.prmtop
trajin /scratch/PI/rondror/MD_simulations/amber/rho_arrestin/rho_arr_c_tail_complexA/run_8_HMR/Prod_89.nc
center origin '!(:POPC | :TIP3 | :SOD | :CLA)'
image origin center
trajout Prod_89_reimaged.nc
go" >> reimage.in
ml load amber
cpptraj -i reimage.in

cd /scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/Rhodopsin-active-unpublished/Rho-active-arr-mut-prot-D83-E134-unpublished/rep_8
mkdir Prod_93
cd Prod_93
rm reimage.in
echo "parm /scratch/PI/rondror/MD_simulations/amber/rho_arrestin/rho_arr_c_tail_complexA/run_8_HMR/system.prmtop
trajin /scratch/PI/rondror/MD_simulations/amber/rho_arrestin/rho_arr_c_tail_complexA/run_8_HMR/Prod_93.nc
center origin '!(:POPC | :TIP3 | :SOD | :CLA)'
image origin center
trajout Prod_93_reimaged.nc
go" >> reimage.in
ml load amber
cpptraj -i reimage.in

cd /scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/Rhodopsin-active-unpublished/Rho-active-arr-mut-prot-D83-E134-unpublished/rep_8
mkdir Prod_94
cd Prod_94
rm reimage.in
echo "parm /scratch/PI/rondror/MD_simulations/amber/rho_arrestin/rho_arr_c_tail_complexA/run_8_HMR/system.prmtop
trajin /scratch/PI/rondror/MD_simulations/amber/rho_arrestin/rho_arr_c_tail_complexA/run_8_HMR/Prod_94.nc
center origin '!(:POPC | :TIP3 | :SOD | :CLA)'
image origin center
trajout Prod_94_reimaged.nc
go" >> reimage.in
ml load amber
cpptraj -i reimage.in

cd /scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/Rhodopsin-active-unpublished/Rho-active-arr-mut-prot-D83-E134-unpublished/rep_8
mkdir Prod_95
cd Prod_95
rm reimage.in
echo "parm /scratch/PI/rondror/MD_simulations/amber/rho_arrestin/rho_arr_c_tail_complexA/run_8_HMR/system.prmtop
trajin /scratch/PI/rondror/MD_simulations/amber/rho_arrestin/rho_arr_c_tail_complexA/run_8_HMR/Prod_95.nc
center origin '!(:POPC | :TIP3 | :SOD | :CLA)'
image origin center
trajout Prod_95_reimaged.nc
go" >> reimage.in
ml load amber
cpptraj -i reimage.in

cd /scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/Rhodopsin-active-unpublished/Rho-active-arr-mut-prot-D83-E134-unpublished/rep_8
mkdir Prod_96
cd Prod_96
rm reimage.in
echo "parm /scratch/PI/rondror/MD_simulations/amber/rho_arrestin/rho_arr_c_tail_complexA/run_8_HMR/system.prmtop
trajin /scratch/PI/rondror/MD_simulations/amber/rho_arrestin/rho_arr_c_tail_complexA/run_8_HMR/Prod_96.nc
center origin '!(:POPC | :TIP3 | :SOD | :CLA)'
image origin center
trajout Prod_96_reimaged.nc
go" >> reimage.in
ml load amber
cpptraj -i reimage.in

cd /scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/Rhodopsin-active-unpublished/Rho-active-arr-mut-prot-D83-E134-unpublished/rep_8
mkdir Prod_97
cd Prod_97
rm reimage.in
echo "parm /scratch/PI/rondror/MD_simulations/amber/rho_arrestin/rho_arr_c_tail_complexA/run_8_HMR/system.prmtop
trajin /scratch/PI/rondror/MD_simulations/amber/rho_arrestin/rho_arr_c_tail_complexA/run_8_HMR/Prod_97.nc
center origin '!(:POPC | :TIP3 | :SOD | :CLA)'
image origin center
trajout Prod_97_reimaged.nc
go" >> reimage.in
ml load amber
cpptraj -i reimage.in

cd /scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/Rhodopsin-active-unpublished/Rho-active-arr-mut-prot-D83-E134-unpublished/rep_8
mkdir Prod_99
cd Prod_99
rm reimage.in
echo "parm /scratch/PI/rondror/MD_simulations/amber/rho_arrestin/rho_arr_c_tail_complexA/run_8_HMR/system.prmtop
trajin /scratch/PI/rondror/MD_simulations/amber/rho_arrestin/rho_arr_c_tail_complexA/run_8_HMR/Prod_99.nc
center origin '!(:POPC | :TIP3 | :SOD | :CLA)'
image origin center
trajout Prod_99_reimaged.nc
go" >> reimage.in
ml load amber
cpptraj -i reimage.in

cd /scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/Rhodopsin-active-unpublished/Rho-active-arr-mut-prot-D83-E134-unpublished/rep_8
mkdir Prod_100
cd Prod_100
rm reimage.in
echo "parm /scratch/PI/rondror/MD_simulations/amber/rho_arrestin/rho_arr_c_tail_complexA/run_8_HMR/system.prmtop
trajin /scratch/PI/rondror/MD_simulations/amber/rho_arrestin/rho_arr_c_tail_complexA/run_8_HMR/Prod_100.nc
center origin '!(:POPC | :TIP3 | :SOD | :CLA)'
image origin center
trajout Prod_100_reimaged.nc
go" >> reimage.in
ml load amber
cpptraj -i reimage.in

cd /scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/Rhodopsin-active-unpublished/Rho-active-arr-mut-prot-D83-E134-unpublished/rep_8
mkdir Prod_101
cd Prod_101
rm reimage.in
echo "parm /scratch/PI/rondror/MD_simulations/amber/rho_arrestin/rho_arr_c_tail_complexA/run_8_HMR/system.prmtop
trajin /scratch/PI/rondror/MD_simulations/amber/rho_arrestin/rho_arr_c_tail_complexA/run_8_HMR/Prod_101.nc
center origin '!(:POPC | :TIP3 | :SOD | :CLA)'
image origin center
trajout Prod_101_reimaged.nc
go" >> reimage.in
ml load amber
cpptraj -i reimage.in

cd /scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/Rhodopsin-active-unpublished/Rho-active-arr-mut-prot-D83-E134-unpublished/rep_8
mkdir Prod_102
cd Prod_102
rm reimage.in
echo "parm /scratch/PI/rondror/MD_simulations/amber/rho_arrestin/rho_arr_c_tail_complexA/run_8_HMR/system.prmtop
trajin /scratch/PI/rondror/MD_simulations/amber/rho_arrestin/rho_arr_c_tail_complexA/run_8_HMR/Prod_102.nc
center origin '!(:POPC | :TIP3 | :SOD | :CLA)'
image origin center
trajout Prod_102_reimaged.nc
go" >> reimage.in
ml load amber
cpptraj -i reimage.in

cd /scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/Rhodopsin-active-unpublished/Rho-active-arr-mut-prot-D83-E134-unpublished/rep_8
mkdir Prod_105
cd Prod_105
rm reimage.in
echo "parm /scratch/PI/rondror/MD_simulations/amber/rho_arrestin/rho_arr_c_tail_complexA/run_8_HMR/system.prmtop
trajin /scratch/PI/rondror/MD_simulations/amber/rho_arrestin/rho_arr_c_tail_complexA/run_8_HMR/Prod_105.nc
center origin '!(:POPC | :TIP3 | :SOD | :CLA)'
image origin center
trajout Prod_105_reimaged.nc
go" >> reimage.in
ml load amber
cpptraj -i reimage.in

cd /scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/Rhodopsin-active-unpublished/Rho-active-arr-mut-prot-D83-E134-unpublished/rep_8
mkdir Prod_107
cd Prod_107
rm reimage.in
echo "parm /scratch/PI/rondror/MD_simulations/amber/rho_arrestin/rho_arr_c_tail_complexA/run_8_HMR/system.prmtop
trajin /scratch/PI/rondror/MD_simulations/amber/rho_arrestin/rho_arr_c_tail_complexA/run_8_HMR/Prod_107.nc
center origin '!(:POPC | :TIP3 | :SOD | :CLA)'
image origin center
trajout Prod_107_reimaged.nc
go" >> reimage.in
ml load amber
cpptraj -i reimage.in

cd /scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/Rhodopsin-active-unpublished/Rho-active-arr-mut-prot-D83-E134-unpublished/rep_8
mkdir Prod_108
cd Prod_108
rm reimage.in
echo "parm /scratch/PI/rondror/MD_simulations/amber/rho_arrestin/rho_arr_c_tail_complexA/run_8_HMR/system.prmtop
trajin /scratch/PI/rondror/MD_simulations/amber/rho_arrestin/rho_arr_c_tail_complexA/run_8_HMR/Prod_108.nc
center origin '!(:POPC | :TIP3 | :SOD | :CLA)'
image origin center
trajout Prod_108_reimaged.nc
go" >> reimage.in
ml load amber
cpptraj -i reimage.in

cd /scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/Rhodopsin-active-unpublished/Rho-active-arr-mut-prot-D83-E134-unpublished/rep_8
mkdir Prod_110
cd Prod_110
rm reimage.in
echo "parm /scratch/PI/rondror/MD_simulations/amber/rho_arrestin/rho_arr_c_tail_complexA/run_8_HMR/system.prmtop
trajin /scratch/PI/rondror/MD_simulations/amber/rho_arrestin/rho_arr_c_tail_complexA/run_8_HMR/Prod_110.nc
center origin '!(:POPC | :TIP3 | :SOD | :CLA)'
image origin center
trajout Prod_110_reimaged.nc
go" >> reimage.in
ml load amber
cpptraj -i reimage.in

cd /scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/Rhodopsin-active-unpublished/Rho-active-arr-mut-prot-D83-E134-unpublished/rep_8
mkdir Prod_111
cd Prod_111
rm reimage.in
echo "parm /scratch/PI/rondror/MD_simulations/amber/rho_arrestin/rho_arr_c_tail_complexA/run_8_HMR/system.prmtop
trajin /scratch/PI/rondror/MD_simulations/amber/rho_arrestin/rho_arr_c_tail_complexA/run_8_HMR/Prod_111.nc
center origin '!(:POPC | :TIP3 | :SOD | :CLA)'
image origin center
trajout Prod_111_reimaged.nc
go" >> reimage.in
ml load amber
cpptraj -i reimage.in

cd /scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/Rhodopsin-active-unpublished/Rho-active-arr-mut-prot-D83-E134-unpublished/rep_8
mkdir Prod_115
cd Prod_115
rm reimage.in
echo "parm /scratch/PI/rondror/MD_simulations/amber/rho_arrestin/rho_arr_c_tail_complexA/run_8_HMR/system.prmtop
trajin /scratch/PI/rondror/MD_simulations/amber/rho_arrestin/rho_arr_c_tail_complexA/run_8_HMR/Prod_115.nc
center origin '!(:POPC | :TIP3 | :SOD | :CLA)'
image origin center
trajout Prod_115_reimaged.nc
go" >> reimage.in
ml load amber
cpptraj -i reimage.in

cd /scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/Rhodopsin-active-unpublished/Rho-active-arr-mut-prot-D83-E134-unpublished/rep_8
mkdir Prod_116
cd Prod_116
rm reimage.in
echo "parm /scratch/PI/rondror/MD_simulations/amber/rho_arrestin/rho_arr_c_tail_complexA/run_8_HMR/system.prmtop
trajin /scratch/PI/rondror/MD_simulations/amber/rho_arrestin/rho_arr_c_tail_complexA/run_8_HMR/Prod_116.nc
center origin '!(:POPC | :TIP3 | :SOD | :CLA)'
image origin center
trajout Prod_116_reimaged.nc
go" >> reimage.in
ml load amber
cpptraj -i reimage.in

cd /scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/Rhodopsin-active-unpublished/Rho-active-arr-mut-prot-D83-E134-unpublished/rep_8
mkdir Prod_117
cd Prod_117
rm reimage.in
echo "parm /scratch/PI/rondror/MD_simulations/amber/rho_arrestin/rho_arr_c_tail_complexA/run_8_HMR/system.prmtop
trajin /scratch/PI/rondror/MD_simulations/amber/rho_arrestin/rho_arr_c_tail_complexA/run_8_HMR/Prod_117.nc
center origin '!(:POPC | :TIP3 | :SOD | :CLA)'
image origin center
trajout Prod_117_reimaged.nc
go" >> reimage.in
ml load amber
cpptraj -i reimage.in

cd /scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/Rhodopsin-active-unpublished/Rho-active-arr-mut-prot-D83-E134-unpublished/rep_8
mkdir Prod_119
cd Prod_119
rm reimage.in
echo "parm /scratch/PI/rondror/MD_simulations/amber/rho_arrestin/rho_arr_c_tail_complexA/run_8_HMR/system.prmtop
trajin /scratch/PI/rondror/MD_simulations/amber/rho_arrestin/rho_arr_c_tail_complexA/run_8_HMR/Prod_119.nc
center origin '!(:POPC | :TIP3 | :SOD | :CLA)'
image origin center
trajout Prod_119_reimaged.nc
go" >> reimage.in
ml load amber
cpptraj -i reimage.in

cd /scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/Rhodopsin-active-unpublished/Rho-active-arr-mut-prot-D83-E134-unpublished/rep_8
mkdir Prod_122
cd Prod_122
rm reimage.in
echo "parm /scratch/PI/rondror/MD_simulations/amber/rho_arrestin/rho_arr_c_tail_complexA/run_8_HMR/system.prmtop
trajin /scratch/PI/rondror/MD_simulations/amber/rho_arrestin/rho_arr_c_tail_complexA/run_8_HMR/Prod_122.nc
center origin '!(:POPC | :TIP3 | :SOD | :CLA)'
image origin center
trajout Prod_122_reimaged.nc
go" >> reimage.in
ml load amber
cpptraj -i reimage.in

cd /scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/Rhodopsin-active-unpublished/Rho-active-arr-mut-prot-D83-E134-unpublished/rep_8
mkdir Prod_123
cd Prod_123
rm reimage.in
echo "parm /scratch/PI/rondror/MD_simulations/amber/rho_arrestin/rho_arr_c_tail_complexA/run_8_HMR/system.prmtop
trajin /scratch/PI/rondror/MD_simulations/amber/rho_arrestin/rho_arr_c_tail_complexA/run_8_HMR/Prod_123.nc
center origin '!(:POPC | :TIP3 | :SOD | :CLA)'
image origin center
trajout Prod_123_reimaged.nc
go" >> reimage.in
ml load amber
cpptraj -i reimage.in

cd /scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/Rhodopsin-active-unpublished/Rho-active-arr-mut-prot-D83-E134-unpublished/rep_8
mkdir Prod_124
cd Prod_124
rm reimage.in
echo "parm /scratch/PI/rondror/MD_simulations/amber/rho_arrestin/rho_arr_c_tail_complexA/run_8_HMR/system.prmtop
trajin /scratch/PI/rondror/MD_simulations/amber/rho_arrestin/rho_arr_c_tail_complexA/run_8_HMR/Prod_124.nc
center origin '!(:POPC | :TIP3 | :SOD | :CLA)'
image origin center
trajout Prod_124_reimaged.nc
go" >> reimage.in
ml load amber
cpptraj -i reimage.in

cd /scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/Rhodopsin-active-unpublished/Rho-active-arr-mut-prot-D83-E134-unpublished/rep_8
mkdir Prod_126
cd Prod_126
rm reimage.in
echo "parm /scratch/PI/rondror/MD_simulations/amber/rho_arrestin/rho_arr_c_tail_complexA/run_8_HMR/system.prmtop
trajin /scratch/PI/rondror/MD_simulations/amber/rho_arrestin/rho_arr_c_tail_complexA/run_8_HMR/Prod_126.nc
center origin '!(:POPC | :TIP3 | :SOD | :CLA)'
image origin center
trajout Prod_126_reimaged.nc
go" >> reimage.in
ml load amber
cpptraj -i reimage.in

cd /scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/Rhodopsin-active-unpublished/Rho-active-arr-mut-prot-D83-E134-unpublished/rep_8
mkdir Prod_127
cd Prod_127
rm reimage.in
echo "parm /scratch/PI/rondror/MD_simulations/amber/rho_arrestin/rho_arr_c_tail_complexA/run_8_HMR/system.prmtop
trajin /scratch/PI/rondror/MD_simulations/amber/rho_arrestin/rho_arr_c_tail_complexA/run_8_HMR/Prod_127.nc
center origin '!(:POPC | :TIP3 | :SOD | :CLA)'
image origin center
trajout Prod_127_reimaged.nc
go" >> reimage.in
ml load amber
cpptraj -i reimage.in

cd /scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/Rhodopsin-active-unpublished/Rho-active-arr-mut-prot-D83-E134-unpublished/rep_8
mkdir Prod_128
cd Prod_128
rm reimage.in
echo "parm /scratch/PI/rondror/MD_simulations/amber/rho_arrestin/rho_arr_c_tail_complexA/run_8_HMR/system.prmtop
trajin /scratch/PI/rondror/MD_simulations/amber/rho_arrestin/rho_arr_c_tail_complexA/run_8_HMR/Prod_128.nc
center origin '!(:POPC | :TIP3 | :SOD | :CLA)'
image origin center
trajout Prod_128_reimaged.nc
go" >> reimage.in
ml load amber
cpptraj -i reimage.in

cd /scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/Rhodopsin-active-unpublished/Rho-active-arr-mut-prot-D83-E134-unpublished/rep_8
mkdir Prod_129
cd Prod_129
rm reimage.in
echo "parm /scratch/PI/rondror/MD_simulations/amber/rho_arrestin/rho_arr_c_tail_complexA/run_8_HMR/system.prmtop
trajin /scratch/PI/rondror/MD_simulations/amber/rho_arrestin/rho_arr_c_tail_complexA/run_8_HMR/Prod_129.nc
center origin '!(:POPC | :TIP3 | :SOD | :CLA)'
image origin center
trajout Prod_129_reimaged.nc
go" >> reimage.in
ml load amber
cpptraj -i reimage.in

cd /scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/Rhodopsin-active-unpublished/Rho-active-arr-mut-prot-D83-E134-unpublished/rep_8
mkdir Prod_131
cd Prod_131
rm reimage.in
echo "parm /scratch/PI/rondror/MD_simulations/amber/rho_arrestin/rho_arr_c_tail_complexA/run_8_HMR/system.prmtop
trajin /scratch/PI/rondror/MD_simulations/amber/rho_arrestin/rho_arr_c_tail_complexA/run_8_HMR/Prod_131.nc
center origin '!(:POPC | :TIP3 | :SOD | :CLA)'
image origin center
trajout Prod_131_reimaged.nc
go" >> reimage.in
ml load amber
cpptraj -i reimage.in

cd /scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/Rhodopsin-active-unpublished/Rho-active-arr-mut-prot-D83-E134-unpublished/rep_8
mkdir Prod_132
cd Prod_132
rm reimage.in
echo "parm /scratch/PI/rondror/MD_simulations/amber/rho_arrestin/rho_arr_c_tail_complexA/run_8_HMR/system.prmtop
trajin /scratch/PI/rondror/MD_simulations/amber/rho_arrestin/rho_arr_c_tail_complexA/run_8_HMR/Prod_132.nc
center origin '!(:POPC | :TIP3 | :SOD | :CLA)'
image origin center
trajout Prod_132_reimaged.nc
go" >> reimage.in
ml load amber
cpptraj -i reimage.in

