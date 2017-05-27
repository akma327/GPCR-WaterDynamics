cd /scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/US28-active-unrestrained-unpublished/fractalkine-bound/rep_1
mkdir Prod_0
cd Prod_0
rm reimage.in
echo "parm /scratch/PI/rondror/MD_simulations/amber/US28/4xt1/4xt1_A_B_wCLR_100ns_equil/rep1/system.prmtop
trajin /scratch/PI/rondror/MD_simulations/amber/US28/4xt1/4xt1_A_B_wCLR_100ns_equil/rep1/system.inpcrd
trajin /scratch/PI/rondror/MD_simulations/amber/US28/4xt1/4xt1_A_B_wCLR_100ns_equil/rep1/Eq_15.nc
center origin '!(:POPC | :TIP3 | :SOD | :CLA)'
image origin center
trajout Prod_0_reimaged.nc
go" >> reimage.in
ml load amber
cpptraj -i reimage.in

cd /scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/US28-active-unrestrained-unpublished/fractalkine-bound/rep_1
mkdir Prod_1
cd Prod_1
rm reimage.in
echo "parm /scratch/PI/rondror/MD_simulations/amber/US28/4xt1/4xt1_A_B_wCLR_100ns_equil/rep1/system.prmtop
trajin /scratch/PI/rondror/MD_simulations/amber/US28/4xt1/4xt1_A_B_wCLR_100ns_equil/rep1/Prod_1.nc
center origin '!(:POPC | :TIP3 | :SOD | :CLA)'
image origin center
trajout Prod_1_reimaged.nc
go" >> reimage.in
ml load amber
cpptraj -i reimage.in

cd /scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/US28-active-unrestrained-unpublished/fractalkine-bound/rep_1
mkdir Prod_2
cd Prod_2
rm reimage.in
echo "parm /scratch/PI/rondror/MD_simulations/amber/US28/4xt1/4xt1_A_B_wCLR_100ns_equil/rep1/system.prmtop
trajin /scratch/PI/rondror/MD_simulations/amber/US28/4xt1/4xt1_A_B_wCLR_100ns_equil/rep1/Prod_2.nc
center origin '!(:POPC | :TIP3 | :SOD | :CLA)'
image origin center
trajout Prod_2_reimaged.nc
go" >> reimage.in
ml load amber
cpptraj -i reimage.in

cd /scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/US28-active-unrestrained-unpublished/fractalkine-bound/rep_1
mkdir Prod_3
cd Prod_3
rm reimage.in
echo "parm /scratch/PI/rondror/MD_simulations/amber/US28/4xt1/4xt1_A_B_wCLR_100ns_equil/rep1/system.prmtop
trajin /scratch/PI/rondror/MD_simulations/amber/US28/4xt1/4xt1_A_B_wCLR_100ns_equil/rep1/Prod_3.nc
center origin '!(:POPC | :TIP3 | :SOD | :CLA)'
image origin center
trajout Prod_3_reimaged.nc
go" >> reimage.in
ml load amber
cpptraj -i reimage.in

cd /scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/US28-active-unrestrained-unpublished/fractalkine-bound/rep_1
mkdir Prod_4
cd Prod_4
rm reimage.in
echo "parm /scratch/PI/rondror/MD_simulations/amber/US28/4xt1/4xt1_A_B_wCLR_100ns_equil/rep1/system.prmtop
trajin /scratch/PI/rondror/MD_simulations/amber/US28/4xt1/4xt1_A_B_wCLR_100ns_equil/rep1/Prod_4.nc
center origin '!(:POPC | :TIP3 | :SOD | :CLA)'
image origin center
trajout Prod_4_reimaged.nc
go" >> reimage.in
ml load amber
cpptraj -i reimage.in

cd /scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/US28-active-unrestrained-unpublished/fractalkine-bound/rep_1
mkdir Prod_5
cd Prod_5
rm reimage.in
echo "parm /scratch/PI/rondror/MD_simulations/amber/US28/4xt1/4xt1_A_B_wCLR_100ns_equil/rep1/system.prmtop
trajin /scratch/PI/rondror/MD_simulations/amber/US28/4xt1/4xt1_A_B_wCLR_100ns_equil/rep1/Prod_5.nc
center origin '!(:POPC | :TIP3 | :SOD | :CLA)'
image origin center
trajout Prod_5_reimaged.nc
go" >> reimage.in
ml load amber
cpptraj -i reimage.in

cd /scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/US28-active-unrestrained-unpublished/fractalkine-bound/rep_1
mkdir Prod_6
cd Prod_6
rm reimage.in
echo "parm /scratch/PI/rondror/MD_simulations/amber/US28/4xt1/4xt1_A_B_wCLR_100ns_equil/rep1/system.prmtop
trajin /scratch/PI/rondror/MD_simulations/amber/US28/4xt1/4xt1_A_B_wCLR_100ns_equil/rep1/Prod_6.nc
center origin '!(:POPC | :TIP3 | :SOD | :CLA)'
image origin center
trajout Prod_6_reimaged.nc
go" >> reimage.in
ml load amber
cpptraj -i reimage.in

cd /scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/US28-active-unrestrained-unpublished/fractalkine-bound/rep_1
mkdir Prod_7
cd Prod_7
rm reimage.in
echo "parm /scratch/PI/rondror/MD_simulations/amber/US28/4xt1/4xt1_A_B_wCLR_100ns_equil/rep1/system.prmtop
trajin /scratch/PI/rondror/MD_simulations/amber/US28/4xt1/4xt1_A_B_wCLR_100ns_equil/rep1/Prod_7.nc
center origin '!(:POPC | :TIP3 | :SOD | :CLA)'
image origin center
trajout Prod_7_reimaged.nc
go" >> reimage.in
ml load amber
cpptraj -i reimage.in

cd /scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/US28-active-unrestrained-unpublished/fractalkine-bound/rep_1
mkdir Prod_8
cd Prod_8
rm reimage.in
echo "parm /scratch/PI/rondror/MD_simulations/amber/US28/4xt1/4xt1_A_B_wCLR_100ns_equil/rep1/system.prmtop
trajin /scratch/PI/rondror/MD_simulations/amber/US28/4xt1/4xt1_A_B_wCLR_100ns_equil/rep1/Prod_8.nc
center origin '!(:POPC | :TIP3 | :SOD | :CLA)'
image origin center
trajout Prod_8_reimaged.nc
go" >> reimage.in
ml load amber
cpptraj -i reimage.in

cd /scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/US28-active-unrestrained-unpublished/fractalkine-bound/rep_1
mkdir Prod_9
cd Prod_9
rm reimage.in
echo "parm /scratch/PI/rondror/MD_simulations/amber/US28/4xt1/4xt1_A_B_wCLR_100ns_equil/rep1/system.prmtop
trajin /scratch/PI/rondror/MD_simulations/amber/US28/4xt1/4xt1_A_B_wCLR_100ns_equil/rep1/Prod_9.nc
center origin '!(:POPC | :TIP3 | :SOD | :CLA)'
image origin center
trajout Prod_9_reimaged.nc
go" >> reimage.in
ml load amber
cpptraj -i reimage.in

cd /scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/US28-active-unrestrained-unpublished/fractalkine-bound/rep_1
mkdir Prod_10
cd Prod_10
rm reimage.in
echo "parm /scratch/PI/rondror/MD_simulations/amber/US28/4xt1/4xt1_A_B_wCLR_100ns_equil/rep1/system.prmtop
trajin /scratch/PI/rondror/MD_simulations/amber/US28/4xt1/4xt1_A_B_wCLR_100ns_equil/rep1/Prod_10.nc
center origin '!(:POPC | :TIP3 | :SOD | :CLA)'
image origin center
trajout Prod_10_reimaged.nc
go" >> reimage.in
ml load amber
cpptraj -i reimage.in

cd /scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/US28-active-unrestrained-unpublished/fractalkine-bound/rep_1
mkdir Prod_11
cd Prod_11
rm reimage.in
echo "parm /scratch/PI/rondror/MD_simulations/amber/US28/4xt1/4xt1_A_B_wCLR_100ns_equil/rep1/system.prmtop
trajin /scratch/PI/rondror/MD_simulations/amber/US28/4xt1/4xt1_A_B_wCLR_100ns_equil/rep1/Prod_11.nc
center origin '!(:POPC | :TIP3 | :SOD | :CLA)'
image origin center
trajout Prod_11_reimaged.nc
go" >> reimage.in
ml load amber
cpptraj -i reimage.in

cd /scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/US28-active-unrestrained-unpublished/fractalkine-bound/rep_1
mkdir Prod_12
cd Prod_12
rm reimage.in
echo "parm /scratch/PI/rondror/MD_simulations/amber/US28/4xt1/4xt1_A_B_wCLR_100ns_equil/rep1/system.prmtop
trajin /scratch/PI/rondror/MD_simulations/amber/US28/4xt1/4xt1_A_B_wCLR_100ns_equil/rep1/Prod_12.nc
center origin '!(:POPC | :TIP3 | :SOD | :CLA)'
image origin center
trajout Prod_12_reimaged.nc
go" >> reimage.in
ml load amber
cpptraj -i reimage.in

cd /scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/US28-active-unrestrained-unpublished/fractalkine-bound/rep_1
mkdir Prod_13
cd Prod_13
rm reimage.in
echo "parm /scratch/PI/rondror/MD_simulations/amber/US28/4xt1/4xt1_A_B_wCLR_100ns_equil/rep1/system.prmtop
trajin /scratch/PI/rondror/MD_simulations/amber/US28/4xt1/4xt1_A_B_wCLR_100ns_equil/rep1/Prod_13.nc
center origin '!(:POPC | :TIP3 | :SOD | :CLA)'
image origin center
trajout Prod_13_reimaged.nc
go" >> reimage.in
ml load amber
cpptraj -i reimage.in

cd /scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/US28-active-unrestrained-unpublished/fractalkine-bound/rep_1
mkdir Prod_14
cd Prod_14
rm reimage.in
echo "parm /scratch/PI/rondror/MD_simulations/amber/US28/4xt1/4xt1_A_B_wCLR_100ns_equil/rep1/system.prmtop
trajin /scratch/PI/rondror/MD_simulations/amber/US28/4xt1/4xt1_A_B_wCLR_100ns_equil/rep1/Prod_14.nc
center origin '!(:POPC | :TIP3 | :SOD | :CLA)'
image origin center
trajout Prod_14_reimaged.nc
go" >> reimage.in
ml load amber
cpptraj -i reimage.in

cd /scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/US28-active-unrestrained-unpublished/fractalkine-bound/rep_1
mkdir Prod_15
cd Prod_15
rm reimage.in
echo "parm /scratch/PI/rondror/MD_simulations/amber/US28/4xt1/4xt1_A_B_wCLR_100ns_equil/rep1/system.prmtop
trajin /scratch/PI/rondror/MD_simulations/amber/US28/4xt1/4xt1_A_B_wCLR_100ns_equil/rep1/Prod_15.nc
center origin '!(:POPC | :TIP3 | :SOD | :CLA)'
image origin center
trajout Prod_15_reimaged.nc
go" >> reimage.in
ml load amber
cpptraj -i reimage.in

cd /scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/US28-active-unrestrained-unpublished/fractalkine-bound/rep_1
mkdir Prod_16
cd Prod_16
rm reimage.in
echo "parm /scratch/PI/rondror/MD_simulations/amber/US28/4xt1/4xt1_A_B_wCLR_100ns_equil/rep1/system.prmtop
trajin /scratch/PI/rondror/MD_simulations/amber/US28/4xt1/4xt1_A_B_wCLR_100ns_equil/rep1/Prod_16.nc
center origin '!(:POPC | :TIP3 | :SOD | :CLA)'
image origin center
trajout Prod_16_reimaged.nc
go" >> reimage.in
ml load amber
cpptraj -i reimage.in

cd /scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/US28-active-unrestrained-unpublished/fractalkine-bound/rep_1
mkdir Prod_17
cd Prod_17
rm reimage.in
echo "parm /scratch/PI/rondror/MD_simulations/amber/US28/4xt1/4xt1_A_B_wCLR_100ns_equil/rep1/system.prmtop
trajin /scratch/PI/rondror/MD_simulations/amber/US28/4xt1/4xt1_A_B_wCLR_100ns_equil/rep1/Prod_17.nc
center origin '!(:POPC | :TIP3 | :SOD | :CLA)'
image origin center
trajout Prod_17_reimaged.nc
go" >> reimage.in
ml load amber
cpptraj -i reimage.in

cd /scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/US28-active-unrestrained-unpublished/fractalkine-bound/rep_1
mkdir Prod_18
cd Prod_18
rm reimage.in
echo "parm /scratch/PI/rondror/MD_simulations/amber/US28/4xt1/4xt1_A_B_wCLR_100ns_equil/rep1/system.prmtop
trajin /scratch/PI/rondror/MD_simulations/amber/US28/4xt1/4xt1_A_B_wCLR_100ns_equil/rep1/Prod_18.nc
center origin '!(:POPC | :TIP3 | :SOD | :CLA)'
image origin center
trajout Prod_18_reimaged.nc
go" >> reimage.in
ml load amber
cpptraj -i reimage.in

cd /scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/US28-active-unrestrained-unpublished/fractalkine-bound/rep_1
mkdir Prod_19
cd Prod_19
rm reimage.in
echo "parm /scratch/PI/rondror/MD_simulations/amber/US28/4xt1/4xt1_A_B_wCLR_100ns_equil/rep1/system.prmtop
trajin /scratch/PI/rondror/MD_simulations/amber/US28/4xt1/4xt1_A_B_wCLR_100ns_equil/rep1/Prod_19.nc
center origin '!(:POPC | :TIP3 | :SOD | :CLA)'
image origin center
trajout Prod_19_reimaged.nc
go" >> reimage.in
ml load amber
cpptraj -i reimage.in

cd /scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/US28-active-unrestrained-unpublished/fractalkine-bound/rep_1
mkdir Prod_20
cd Prod_20
rm reimage.in
echo "parm /scratch/PI/rondror/MD_simulations/amber/US28/4xt1/4xt1_A_B_wCLR_100ns_equil/rep1/system.prmtop
trajin /scratch/PI/rondror/MD_simulations/amber/US28/4xt1/4xt1_A_B_wCLR_100ns_equil/rep1/Prod_20.nc
center origin '!(:POPC | :TIP3 | :SOD | :CLA)'
image origin center
trajout Prod_20_reimaged.nc
go" >> reimage.in
ml load amber
cpptraj -i reimage.in

cd /scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/US28-active-unrestrained-unpublished/fractalkine-bound/rep_1
mkdir Prod_21
cd Prod_21
rm reimage.in
echo "parm /scratch/PI/rondror/MD_simulations/amber/US28/4xt1/4xt1_A_B_wCLR_100ns_equil/rep1/system.prmtop
trajin /scratch/PI/rondror/MD_simulations/amber/US28/4xt1/4xt1_A_B_wCLR_100ns_equil/rep1/Prod_21.nc
center origin '!(:POPC | :TIP3 | :SOD | :CLA)'
image origin center
trajout Prod_21_reimaged.nc
go" >> reimage.in
ml load amber
cpptraj -i reimage.in

cd /scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/US28-active-unrestrained-unpublished/fractalkine-bound/rep_1
mkdir Prod_22
cd Prod_22
rm reimage.in
echo "parm /scratch/PI/rondror/MD_simulations/amber/US28/4xt1/4xt1_A_B_wCLR_100ns_equil/rep1/system.prmtop
trajin /scratch/PI/rondror/MD_simulations/amber/US28/4xt1/4xt1_A_B_wCLR_100ns_equil/rep1/Prod_22.nc
center origin '!(:POPC | :TIP3 | :SOD | :CLA)'
image origin center
trajout Prod_22_reimaged.nc
go" >> reimage.in
ml load amber
cpptraj -i reimage.in

cd /scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/US28-active-unrestrained-unpublished/fractalkine-bound/rep_1
mkdir Prod_23
cd Prod_23
rm reimage.in
echo "parm /scratch/PI/rondror/MD_simulations/amber/US28/4xt1/4xt1_A_B_wCLR_100ns_equil/rep1/system.prmtop
trajin /scratch/PI/rondror/MD_simulations/amber/US28/4xt1/4xt1_A_B_wCLR_100ns_equil/rep1/Prod_23.nc
center origin '!(:POPC | :TIP3 | :SOD | :CLA)'
image origin center
trajout Prod_23_reimaged.nc
go" >> reimage.in
ml load amber
cpptraj -i reimage.in

cd /scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/US28-active-unrestrained-unpublished/fractalkine-bound/rep_1
mkdir Prod_24
cd Prod_24
rm reimage.in
echo "parm /scratch/PI/rondror/MD_simulations/amber/US28/4xt1/4xt1_A_B_wCLR_100ns_equil/rep1/system.prmtop
trajin /scratch/PI/rondror/MD_simulations/amber/US28/4xt1/4xt1_A_B_wCLR_100ns_equil/rep1/Prod_24.nc
center origin '!(:POPC | :TIP3 | :SOD | :CLA)'
image origin center
trajout Prod_24_reimaged.nc
go" >> reimage.in
ml load amber
cpptraj -i reimage.in

cd /scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/US28-active-unrestrained-unpublished/fractalkine-bound/rep_1
mkdir Prod_25
cd Prod_25
rm reimage.in
echo "parm /scratch/PI/rondror/MD_simulations/amber/US28/4xt1/4xt1_A_B_wCLR_100ns_equil/rep1/system.prmtop
trajin /scratch/PI/rondror/MD_simulations/amber/US28/4xt1/4xt1_A_B_wCLR_100ns_equil/rep1/Prod_25.nc
center origin '!(:POPC | :TIP3 | :SOD | :CLA)'
image origin center
trajout Prod_25_reimaged.nc
go" >> reimage.in
ml load amber
cpptraj -i reimage.in

cd /scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/US28-active-unrestrained-unpublished/fractalkine-bound/rep_1
mkdir Prod_26
cd Prod_26
rm reimage.in
echo "parm /scratch/PI/rondror/MD_simulations/amber/US28/4xt1/4xt1_A_B_wCLR_100ns_equil/rep1/system.prmtop
trajin /scratch/PI/rondror/MD_simulations/amber/US28/4xt1/4xt1_A_B_wCLR_100ns_equil/rep1/Prod_26.nc
center origin '!(:POPC | :TIP3 | :SOD | :CLA)'
image origin center
trajout Prod_26_reimaged.nc
go" >> reimage.in
ml load amber
cpptraj -i reimage.in

cd /scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/US28-active-unrestrained-unpublished/fractalkine-bound/rep_1
mkdir Prod_27
cd Prod_27
rm reimage.in
echo "parm /scratch/PI/rondror/MD_simulations/amber/US28/4xt1/4xt1_A_B_wCLR_100ns_equil/rep1/system.prmtop
trajin /scratch/PI/rondror/MD_simulations/amber/US28/4xt1/4xt1_A_B_wCLR_100ns_equil/rep1/Prod_27.nc
center origin '!(:POPC | :TIP3 | :SOD | :CLA)'
image origin center
trajout Prod_27_reimaged.nc
go" >> reimage.in
ml load amber
cpptraj -i reimage.in

cd /scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/US28-active-unrestrained-unpublished/fractalkine-bound/rep_1
mkdir Prod_28
cd Prod_28
rm reimage.in
echo "parm /scratch/PI/rondror/MD_simulations/amber/US28/4xt1/4xt1_A_B_wCLR_100ns_equil/rep1/system.prmtop
trajin /scratch/PI/rondror/MD_simulations/amber/US28/4xt1/4xt1_A_B_wCLR_100ns_equil/rep1/Prod_28.nc
center origin '!(:POPC | :TIP3 | :SOD | :CLA)'
image origin center
trajout Prod_28_reimaged.nc
go" >> reimage.in
ml load amber
cpptraj -i reimage.in

cd /scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/US28-active-unrestrained-unpublished/fractalkine-bound/rep_1
mkdir Prod_29
cd Prod_29
rm reimage.in
echo "parm /scratch/PI/rondror/MD_simulations/amber/US28/4xt1/4xt1_A_B_wCLR_100ns_equil/rep1/system.prmtop
trajin /scratch/PI/rondror/MD_simulations/amber/US28/4xt1/4xt1_A_B_wCLR_100ns_equil/rep1/Prod_29.nc
center origin '!(:POPC | :TIP3 | :SOD | :CLA)'
image origin center
trajout Prod_29_reimaged.nc
go" >> reimage.in
ml load amber
cpptraj -i reimage.in

cd /scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/US28-active-unrestrained-unpublished/fractalkine-bound/rep_1
mkdir Prod_30
cd Prod_30
rm reimage.in
echo "parm /scratch/PI/rondror/MD_simulations/amber/US28/4xt1/4xt1_A_B_wCLR_100ns_equil/rep1/system.prmtop
trajin /scratch/PI/rondror/MD_simulations/amber/US28/4xt1/4xt1_A_B_wCLR_100ns_equil/rep1/Prod_30.nc
center origin '!(:POPC | :TIP3 | :SOD | :CLA)'
image origin center
trajout Prod_30_reimaged.nc
go" >> reimage.in
ml load amber
cpptraj -i reimage.in

cd /scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/US28-active-unrestrained-unpublished/fractalkine-bound/rep_1
mkdir Prod_31
cd Prod_31
rm reimage.in
echo "parm /scratch/PI/rondror/MD_simulations/amber/US28/4xt1/4xt1_A_B_wCLR_100ns_equil/rep1/system.prmtop
trajin /scratch/PI/rondror/MD_simulations/amber/US28/4xt1/4xt1_A_B_wCLR_100ns_equil/rep1/Prod_31.nc
center origin '!(:POPC | :TIP3 | :SOD | :CLA)'
image origin center
trajout Prod_31_reimaged.nc
go" >> reimage.in
ml load amber
cpptraj -i reimage.in

cd /scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/US28-active-unrestrained-unpublished/fractalkine-bound/rep_1
mkdir Prod_32
cd Prod_32
rm reimage.in
echo "parm /scratch/PI/rondror/MD_simulations/amber/US28/4xt1/4xt1_A_B_wCLR_100ns_equil/rep1/system.prmtop
trajin /scratch/PI/rondror/MD_simulations/amber/US28/4xt1/4xt1_A_B_wCLR_100ns_equil/rep1/Prod_32.nc
center origin '!(:POPC | :TIP3 | :SOD | :CLA)'
image origin center
trajout Prod_32_reimaged.nc
go" >> reimage.in
ml load amber
cpptraj -i reimage.in

cd /scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/US28-active-unrestrained-unpublished/fractalkine-bound/rep_1
mkdir Prod_33
cd Prod_33
rm reimage.in
echo "parm /scratch/PI/rondror/MD_simulations/amber/US28/4xt1/4xt1_A_B_wCLR_100ns_equil/rep1/system.prmtop
trajin /scratch/PI/rondror/MD_simulations/amber/US28/4xt1/4xt1_A_B_wCLR_100ns_equil/rep1/Prod_33.nc
center origin '!(:POPC | :TIP3 | :SOD | :CLA)'
image origin center
trajout Prod_33_reimaged.nc
go" >> reimage.in
ml load amber
cpptraj -i reimage.in

cd /scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/US28-active-unrestrained-unpublished/fractalkine-bound/rep_1
mkdir Prod_34
cd Prod_34
rm reimage.in
echo "parm /scratch/PI/rondror/MD_simulations/amber/US28/4xt1/4xt1_A_B_wCLR_100ns_equil/rep1/system.prmtop
trajin /scratch/PI/rondror/MD_simulations/amber/US28/4xt1/4xt1_A_B_wCLR_100ns_equil/rep1/Prod_34.nc
center origin '!(:POPC | :TIP3 | :SOD | :CLA)'
image origin center
trajout Prod_34_reimaged.nc
go" >> reimage.in
ml load amber
cpptraj -i reimage.in

cd /scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/US28-active-unrestrained-unpublished/fractalkine-bound/rep_1
mkdir Prod_35
cd Prod_35
rm reimage.in
echo "parm /scratch/PI/rondror/MD_simulations/amber/US28/4xt1/4xt1_A_B_wCLR_100ns_equil/rep1/system.prmtop
trajin /scratch/PI/rondror/MD_simulations/amber/US28/4xt1/4xt1_A_B_wCLR_100ns_equil/rep1/Prod_35.nc
center origin '!(:POPC | :TIP3 | :SOD | :CLA)'
image origin center
trajout Prod_35_reimaged.nc
go" >> reimage.in
ml load amber
cpptraj -i reimage.in

cd /scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/US28-active-unrestrained-unpublished/fractalkine-bound/rep_1
mkdir Prod_36
cd Prod_36
rm reimage.in
echo "parm /scratch/PI/rondror/MD_simulations/amber/US28/4xt1/4xt1_A_B_wCLR_100ns_equil/rep1/system.prmtop
trajin /scratch/PI/rondror/MD_simulations/amber/US28/4xt1/4xt1_A_B_wCLR_100ns_equil/rep1/Prod_36.nc
center origin '!(:POPC | :TIP3 | :SOD | :CLA)'
image origin center
trajout Prod_36_reimaged.nc
go" >> reimage.in
ml load amber
cpptraj -i reimage.in

cd /scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/US28-active-unrestrained-unpublished/fractalkine-bound/rep_1
mkdir Prod_37
cd Prod_37
rm reimage.in
echo "parm /scratch/PI/rondror/MD_simulations/amber/US28/4xt1/4xt1_A_B_wCLR_100ns_equil/rep1/system.prmtop
trajin /scratch/PI/rondror/MD_simulations/amber/US28/4xt1/4xt1_A_B_wCLR_100ns_equil/rep1/Prod_37.nc
center origin '!(:POPC | :TIP3 | :SOD | :CLA)'
image origin center
trajout Prod_37_reimaged.nc
go" >> reimage.in
ml load amber
cpptraj -i reimage.in

cd /scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/US28-active-unrestrained-unpublished/fractalkine-bound/rep_1
mkdir Prod_38
cd Prod_38
rm reimage.in
echo "parm /scratch/PI/rondror/MD_simulations/amber/US28/4xt1/4xt1_A_B_wCLR_100ns_equil/rep1/system.prmtop
trajin /scratch/PI/rondror/MD_simulations/amber/US28/4xt1/4xt1_A_B_wCLR_100ns_equil/rep1/Prod_38.nc
center origin '!(:POPC | :TIP3 | :SOD | :CLA)'
image origin center
trajout Prod_38_reimaged.nc
go" >> reimage.in
ml load amber
cpptraj -i reimage.in

cd /scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/US28-active-unrestrained-unpublished/fractalkine-bound/rep_1
mkdir Prod_39
cd Prod_39
rm reimage.in
echo "parm /scratch/PI/rondror/MD_simulations/amber/US28/4xt1/4xt1_A_B_wCLR_100ns_equil/rep1/system.prmtop
trajin /scratch/PI/rondror/MD_simulations/amber/US28/4xt1/4xt1_A_B_wCLR_100ns_equil/rep1/Prod_39.nc
center origin '!(:POPC | :TIP3 | :SOD | :CLA)'
image origin center
trajout Prod_39_reimaged.nc
go" >> reimage.in
ml load amber
cpptraj -i reimage.in

cd /scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/US28-active-unrestrained-unpublished/fractalkine-bound/rep_1
mkdir Prod_40
cd Prod_40
rm reimage.in
echo "parm /scratch/PI/rondror/MD_simulations/amber/US28/4xt1/4xt1_A_B_wCLR_100ns_equil/rep1/system.prmtop
trajin /scratch/PI/rondror/MD_simulations/amber/US28/4xt1/4xt1_A_B_wCLR_100ns_equil/rep1/Prod_40.nc
center origin '!(:POPC | :TIP3 | :SOD | :CLA)'
image origin center
trajout Prod_40_reimaged.nc
go" >> reimage.in
ml load amber
cpptraj -i reimage.in

cd /scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/US28-active-unrestrained-unpublished/fractalkine-bound/rep_1
mkdir Prod_41
cd Prod_41
rm reimage.in
echo "parm /scratch/PI/rondror/MD_simulations/amber/US28/4xt1/4xt1_A_B_wCLR_100ns_equil/rep1/system.prmtop
trajin /scratch/PI/rondror/MD_simulations/amber/US28/4xt1/4xt1_A_B_wCLR_100ns_equil/rep1/Prod_41.nc
center origin '!(:POPC | :TIP3 | :SOD | :CLA)'
image origin center
trajout Prod_41_reimaged.nc
go" >> reimage.in
ml load amber
cpptraj -i reimage.in

cd /scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/US28-active-unrestrained-unpublished/fractalkine-bound/rep_1
mkdir Prod_42
cd Prod_42
rm reimage.in
echo "parm /scratch/PI/rondror/MD_simulations/amber/US28/4xt1/4xt1_A_B_wCLR_100ns_equil/rep1/system.prmtop
trajin /scratch/PI/rondror/MD_simulations/amber/US28/4xt1/4xt1_A_B_wCLR_100ns_equil/rep1/Prod_42.nc
center origin '!(:POPC | :TIP3 | :SOD | :CLA)'
image origin center
trajout Prod_42_reimaged.nc
go" >> reimage.in
ml load amber
cpptraj -i reimage.in

cd /scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/US28-active-unrestrained-unpublished/fractalkine-bound/rep_1
mkdir Prod_43
cd Prod_43
rm reimage.in
echo "parm /scratch/PI/rondror/MD_simulations/amber/US28/4xt1/4xt1_A_B_wCLR_100ns_equil/rep1/system.prmtop
trajin /scratch/PI/rondror/MD_simulations/amber/US28/4xt1/4xt1_A_B_wCLR_100ns_equil/rep1/Prod_43.nc
center origin '!(:POPC | :TIP3 | :SOD | :CLA)'
image origin center
trajout Prod_43_reimaged.nc
go" >> reimage.in
ml load amber
cpptraj -i reimage.in

cd /scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/US28-active-unrestrained-unpublished/fractalkine-bound/rep_1
mkdir Prod_44
cd Prod_44
rm reimage.in
echo "parm /scratch/PI/rondror/MD_simulations/amber/US28/4xt1/4xt1_A_B_wCLR_100ns_equil/rep1/system.prmtop
trajin /scratch/PI/rondror/MD_simulations/amber/US28/4xt1/4xt1_A_B_wCLR_100ns_equil/rep1/Prod_44.nc
center origin '!(:POPC | :TIP3 | :SOD | :CLA)'
image origin center
trajout Prod_44_reimaged.nc
go" >> reimage.in
ml load amber
cpptraj -i reimage.in

cd /scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/US28-active-unrestrained-unpublished/fractalkine-bound/rep_1
mkdir Prod_45
cd Prod_45
rm reimage.in
echo "parm /scratch/PI/rondror/MD_simulations/amber/US28/4xt1/4xt1_A_B_wCLR_100ns_equil/rep1/system.prmtop
trajin /scratch/PI/rondror/MD_simulations/amber/US28/4xt1/4xt1_A_B_wCLR_100ns_equil/rep1/Prod_45.nc
center origin '!(:POPC | :TIP3 | :SOD | :CLA)'
image origin center
trajout Prod_45_reimaged.nc
go" >> reimage.in
ml load amber
cpptraj -i reimage.in

cd /scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/US28-active-unrestrained-unpublished/fractalkine-bound/rep_1
mkdir Prod_46
cd Prod_46
rm reimage.in
echo "parm /scratch/PI/rondror/MD_simulations/amber/US28/4xt1/4xt1_A_B_wCLR_100ns_equil/rep1/system.prmtop
trajin /scratch/PI/rondror/MD_simulations/amber/US28/4xt1/4xt1_A_B_wCLR_100ns_equil/rep1/Prod_46.nc
center origin '!(:POPC | :TIP3 | :SOD | :CLA)'
image origin center
trajout Prod_46_reimaged.nc
go" >> reimage.in
ml load amber
cpptraj -i reimage.in

cd /scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/US28-active-unrestrained-unpublished/fractalkine-bound/rep_1
mkdir Prod_47
cd Prod_47
rm reimage.in
echo "parm /scratch/PI/rondror/MD_simulations/amber/US28/4xt1/4xt1_A_B_wCLR_100ns_equil/rep1/system.prmtop
trajin /scratch/PI/rondror/MD_simulations/amber/US28/4xt1/4xt1_A_B_wCLR_100ns_equil/rep1/Prod_47.nc
center origin '!(:POPC | :TIP3 | :SOD | :CLA)'
image origin center
trajout Prod_47_reimaged.nc
go" >> reimage.in
ml load amber
cpptraj -i reimage.in

cd /scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/US28-active-unrestrained-unpublished/fractalkine-bound/rep_1
mkdir Prod_48
cd Prod_48
rm reimage.in
echo "parm /scratch/PI/rondror/MD_simulations/amber/US28/4xt1/4xt1_A_B_wCLR_100ns_equil/rep1/system.prmtop
trajin /scratch/PI/rondror/MD_simulations/amber/US28/4xt1/4xt1_A_B_wCLR_100ns_equil/rep1/Prod_48.nc
center origin '!(:POPC | :TIP3 | :SOD | :CLA)'
image origin center
trajout Prod_48_reimaged.nc
go" >> reimage.in
ml load amber
cpptraj -i reimage.in

cd /scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/US28-active-unrestrained-unpublished/fractalkine-bound/rep_1
mkdir Prod_49
cd Prod_49
rm reimage.in
echo "parm /scratch/PI/rondror/MD_simulations/amber/US28/4xt1/4xt1_A_B_wCLR_100ns_equil/rep1/system.prmtop
trajin /scratch/PI/rondror/MD_simulations/amber/US28/4xt1/4xt1_A_B_wCLR_100ns_equil/rep1/Prod_49.nc
center origin '!(:POPC | :TIP3 | :SOD | :CLA)'
image origin center
trajout Prod_49_reimaged.nc
go" >> reimage.in
ml load amber
cpptraj -i reimage.in

cd /scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/US28-active-unrestrained-unpublished/fractalkine-bound/rep_1
mkdir Prod_50
cd Prod_50
rm reimage.in
echo "parm /scratch/PI/rondror/MD_simulations/amber/US28/4xt1/4xt1_A_B_wCLR_100ns_equil/rep1/system.prmtop
trajin /scratch/PI/rondror/MD_simulations/amber/US28/4xt1/4xt1_A_B_wCLR_100ns_equil/rep1/Prod_50.nc
center origin '!(:POPC | :TIP3 | :SOD | :CLA)'
image origin center
trajout Prod_50_reimaged.nc
go" >> reimage.in
ml load amber
cpptraj -i reimage.in

cd /scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/US28-active-unrestrained-unpublished/fractalkine-bound/rep_1
mkdir Prod_51
cd Prod_51
rm reimage.in
echo "parm /scratch/PI/rondror/MD_simulations/amber/US28/4xt1/4xt1_A_B_wCLR_100ns_equil/rep1/system.prmtop
trajin /scratch/PI/rondror/MD_simulations/amber/US28/4xt1/4xt1_A_B_wCLR_100ns_equil/rep1/Prod_51.nc
center origin '!(:POPC | :TIP3 | :SOD | :CLA)'
image origin center
trajout Prod_51_reimaged.nc
go" >> reimage.in
ml load amber
cpptraj -i reimage.in

cd /scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/US28-active-unrestrained-unpublished/fractalkine-bound/rep_1
mkdir Prod_52
cd Prod_52
rm reimage.in
echo "parm /scratch/PI/rondror/MD_simulations/amber/US28/4xt1/4xt1_A_B_wCLR_100ns_equil/rep1/system.prmtop
trajin /scratch/PI/rondror/MD_simulations/amber/US28/4xt1/4xt1_A_B_wCLR_100ns_equil/rep1/Prod_52.nc
center origin '!(:POPC | :TIP3 | :SOD | :CLA)'
image origin center
trajout Prod_52_reimaged.nc
go" >> reimage.in
ml load amber
cpptraj -i reimage.in

cd /scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/US28-active-unrestrained-unpublished/fractalkine-bound/rep_1
mkdir Prod_53
cd Prod_53
rm reimage.in
echo "parm /scratch/PI/rondror/MD_simulations/amber/US28/4xt1/4xt1_A_B_wCLR_100ns_equil/rep1/system.prmtop
trajin /scratch/PI/rondror/MD_simulations/amber/US28/4xt1/4xt1_A_B_wCLR_100ns_equil/rep1/Prod_53.nc
center origin '!(:POPC | :TIP3 | :SOD | :CLA)'
image origin center
trajout Prod_53_reimaged.nc
go" >> reimage.in
ml load amber
cpptraj -i reimage.in

cd /scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/US28-active-unrestrained-unpublished/fractalkine-bound/rep_1
mkdir Prod_54
cd Prod_54
rm reimage.in
echo "parm /scratch/PI/rondror/MD_simulations/amber/US28/4xt1/4xt1_A_B_wCLR_100ns_equil/rep1/system.prmtop
trajin /scratch/PI/rondror/MD_simulations/amber/US28/4xt1/4xt1_A_B_wCLR_100ns_equil/rep1/Prod_54.nc
center origin '!(:POPC | :TIP3 | :SOD | :CLA)'
image origin center
trajout Prod_54_reimaged.nc
go" >> reimage.in
ml load amber
cpptraj -i reimage.in

cd /scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/US28-active-unrestrained-unpublished/fractalkine-bound/rep_1
mkdir Prod_55
cd Prod_55
rm reimage.in
echo "parm /scratch/PI/rondror/MD_simulations/amber/US28/4xt1/4xt1_A_B_wCLR_100ns_equil/rep1/system.prmtop
trajin /scratch/PI/rondror/MD_simulations/amber/US28/4xt1/4xt1_A_B_wCLR_100ns_equil/rep1/Prod_55.nc
center origin '!(:POPC | :TIP3 | :SOD | :CLA)'
image origin center
trajout Prod_55_reimaged.nc
go" >> reimage.in
ml load amber
cpptraj -i reimage.in

cd /scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/US28-active-unrestrained-unpublished/fractalkine-bound/rep_1
mkdir Prod_56
cd Prod_56
rm reimage.in
echo "parm /scratch/PI/rondror/MD_simulations/amber/US28/4xt1/4xt1_A_B_wCLR_100ns_equil/rep1/system.prmtop
trajin /scratch/PI/rondror/MD_simulations/amber/US28/4xt1/4xt1_A_B_wCLR_100ns_equil/rep1/Prod_56.nc
center origin '!(:POPC | :TIP3 | :SOD | :CLA)'
image origin center
trajout Prod_56_reimaged.nc
go" >> reimage.in
ml load amber
cpptraj -i reimage.in

cd /scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/US28-active-unrestrained-unpublished/fractalkine-bound/rep_1
mkdir Prod_57
cd Prod_57
rm reimage.in
echo "parm /scratch/PI/rondror/MD_simulations/amber/US28/4xt1/4xt1_A_B_wCLR_100ns_equil/rep1/system.prmtop
trajin /scratch/PI/rondror/MD_simulations/amber/US28/4xt1/4xt1_A_B_wCLR_100ns_equil/rep1/Prod_57.nc
center origin '!(:POPC | :TIP3 | :SOD | :CLA)'
image origin center
trajout Prod_57_reimaged.nc
go" >> reimage.in
ml load amber
cpptraj -i reimage.in

cd /scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/US28-active-unrestrained-unpublished/fractalkine-bound/rep_1
mkdir Prod_58
cd Prod_58
rm reimage.in
echo "parm /scratch/PI/rondror/MD_simulations/amber/US28/4xt1/4xt1_A_B_wCLR_100ns_equil/rep1/system.prmtop
trajin /scratch/PI/rondror/MD_simulations/amber/US28/4xt1/4xt1_A_B_wCLR_100ns_equil/rep1/Prod_58.nc
center origin '!(:POPC | :TIP3 | :SOD | :CLA)'
image origin center
trajout Prod_58_reimaged.nc
go" >> reimage.in
ml load amber
cpptraj -i reimage.in

cd /scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/US28-active-unrestrained-unpublished/fractalkine-bound/rep_1
mkdir Prod_59
cd Prod_59
rm reimage.in
echo "parm /scratch/PI/rondror/MD_simulations/amber/US28/4xt1/4xt1_A_B_wCLR_100ns_equil/rep1/system.prmtop
trajin /scratch/PI/rondror/MD_simulations/amber/US28/4xt1/4xt1_A_B_wCLR_100ns_equil/rep1/Prod_59.nc
center origin '!(:POPC | :TIP3 | :SOD | :CLA)'
image origin center
trajout Prod_59_reimaged.nc
go" >> reimage.in
ml load amber
cpptraj -i reimage.in

cd /scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/US28-active-unrestrained-unpublished/fractalkine-bound/rep_1
mkdir Prod_60
cd Prod_60
rm reimage.in
echo "parm /scratch/PI/rondror/MD_simulations/amber/US28/4xt1/4xt1_A_B_wCLR_100ns_equil/rep1/system.prmtop
trajin /scratch/PI/rondror/MD_simulations/amber/US28/4xt1/4xt1_A_B_wCLR_100ns_equil/rep1/Prod_60.nc
center origin '!(:POPC | :TIP3 | :SOD | :CLA)'
image origin center
trajout Prod_60_reimaged.nc
go" >> reimage.in
ml load amber
cpptraj -i reimage.in

cd /scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/US28-active-unrestrained-unpublished/fractalkine-bound/rep_1
mkdir Prod_61
cd Prod_61
rm reimage.in
echo "parm /scratch/PI/rondror/MD_simulations/amber/US28/4xt1/4xt1_A_B_wCLR_100ns_equil/rep1/system.prmtop
trajin /scratch/PI/rondror/MD_simulations/amber/US28/4xt1/4xt1_A_B_wCLR_100ns_equil/rep1/Prod_61.nc
center origin '!(:POPC | :TIP3 | :SOD | :CLA)'
image origin center
trajout Prod_61_reimaged.nc
go" >> reimage.in
ml load amber
cpptraj -i reimage.in

cd /scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/US28-active-unrestrained-unpublished/fractalkine-bound/rep_1
mkdir Prod_62
cd Prod_62
rm reimage.in
echo "parm /scratch/PI/rondror/MD_simulations/amber/US28/4xt1/4xt1_A_B_wCLR_100ns_equil/rep1/system.prmtop
trajin /scratch/PI/rondror/MD_simulations/amber/US28/4xt1/4xt1_A_B_wCLR_100ns_equil/rep1/Prod_62.nc
center origin '!(:POPC | :TIP3 | :SOD | :CLA)'
image origin center
trajout Prod_62_reimaged.nc
go" >> reimage.in
ml load amber
cpptraj -i reimage.in

cd /scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/US28-active-unrestrained-unpublished/fractalkine-bound/rep_1
mkdir Prod_63
cd Prod_63
rm reimage.in
echo "parm /scratch/PI/rondror/MD_simulations/amber/US28/4xt1/4xt1_A_B_wCLR_100ns_equil/rep1/system.prmtop
trajin /scratch/PI/rondror/MD_simulations/amber/US28/4xt1/4xt1_A_B_wCLR_100ns_equil/rep1/Prod_63.nc
center origin '!(:POPC | :TIP3 | :SOD | :CLA)'
image origin center
trajout Prod_63_reimaged.nc
go" >> reimage.in
ml load amber
cpptraj -i reimage.in

cd /scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/US28-active-unrestrained-unpublished/fractalkine-bound/rep_1
mkdir Prod_64
cd Prod_64
rm reimage.in
echo "parm /scratch/PI/rondror/MD_simulations/amber/US28/4xt1/4xt1_A_B_wCLR_100ns_equil/rep1/system.prmtop
trajin /scratch/PI/rondror/MD_simulations/amber/US28/4xt1/4xt1_A_B_wCLR_100ns_equil/rep1/Prod_64.nc
center origin '!(:POPC | :TIP3 | :SOD | :CLA)'
image origin center
trajout Prod_64_reimaged.nc
go" >> reimage.in
ml load amber
cpptraj -i reimage.in

cd /scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/US28-active-unrestrained-unpublished/fractalkine-bound/rep_1
mkdir Prod_65
cd Prod_65
rm reimage.in
echo "parm /scratch/PI/rondror/MD_simulations/amber/US28/4xt1/4xt1_A_B_wCLR_100ns_equil/rep1/system.prmtop
trajin /scratch/PI/rondror/MD_simulations/amber/US28/4xt1/4xt1_A_B_wCLR_100ns_equil/rep1/Prod_65.nc
center origin '!(:POPC | :TIP3 | :SOD | :CLA)'
image origin center
trajout Prod_65_reimaged.nc
go" >> reimage.in
ml load amber
cpptraj -i reimage.in

cd /scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/US28-active-unrestrained-unpublished/fractalkine-bound/rep_1
mkdir Prod_66
cd Prod_66
rm reimage.in
echo "parm /scratch/PI/rondror/MD_simulations/amber/US28/4xt1/4xt1_A_B_wCLR_100ns_equil/rep1/system.prmtop
trajin /scratch/PI/rondror/MD_simulations/amber/US28/4xt1/4xt1_A_B_wCLR_100ns_equil/rep1/Prod_66.nc
center origin '!(:POPC | :TIP3 | :SOD | :CLA)'
image origin center
trajout Prod_66_reimaged.nc
go" >> reimage.in
ml load amber
cpptraj -i reimage.in

cd /scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/US28-active-unrestrained-unpublished/fractalkine-bound/rep_1
mkdir Prod_67
cd Prod_67
rm reimage.in
echo "parm /scratch/PI/rondror/MD_simulations/amber/US28/4xt1/4xt1_A_B_wCLR_100ns_equil/rep1/system.prmtop
trajin /scratch/PI/rondror/MD_simulations/amber/US28/4xt1/4xt1_A_B_wCLR_100ns_equil/rep1/Prod_67.nc
center origin '!(:POPC | :TIP3 | :SOD | :CLA)'
image origin center
trajout Prod_67_reimaged.nc
go" >> reimage.in
ml load amber
cpptraj -i reimage.in

cd /scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/US28-active-unrestrained-unpublished/fractalkine-bound/rep_1
mkdir Prod_68
cd Prod_68
rm reimage.in
echo "parm /scratch/PI/rondror/MD_simulations/amber/US28/4xt1/4xt1_A_B_wCLR_100ns_equil/rep1/system.prmtop
trajin /scratch/PI/rondror/MD_simulations/amber/US28/4xt1/4xt1_A_B_wCLR_100ns_equil/rep1/Prod_68.nc
center origin '!(:POPC | :TIP3 | :SOD | :CLA)'
image origin center
trajout Prod_68_reimaged.nc
go" >> reimage.in
ml load amber
cpptraj -i reimage.in

cd /scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/US28-active-unrestrained-unpublished/fractalkine-bound/rep_1
mkdir Prod_69
cd Prod_69
rm reimage.in
echo "parm /scratch/PI/rondror/MD_simulations/amber/US28/4xt1/4xt1_A_B_wCLR_100ns_equil/rep1/system.prmtop
trajin /scratch/PI/rondror/MD_simulations/amber/US28/4xt1/4xt1_A_B_wCLR_100ns_equil/rep1/Prod_69.nc
center origin '!(:POPC | :TIP3 | :SOD | :CLA)'
image origin center
trajout Prod_69_reimaged.nc
go" >> reimage.in
ml load amber
cpptraj -i reimage.in

cd /scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/US28-active-unrestrained-unpublished/fractalkine-bound/rep_1
mkdir Prod_70
cd Prod_70
rm reimage.in
echo "parm /scratch/PI/rondror/MD_simulations/amber/US28/4xt1/4xt1_A_B_wCLR_100ns_equil/rep1/system.prmtop
trajin /scratch/PI/rondror/MD_simulations/amber/US28/4xt1/4xt1_A_B_wCLR_100ns_equil/rep1/Prod_70.nc
center origin '!(:POPC | :TIP3 | :SOD | :CLA)'
image origin center
trajout Prod_70_reimaged.nc
go" >> reimage.in
ml load amber
cpptraj -i reimage.in

cd /scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/US28-active-unrestrained-unpublished/fractalkine-bound/rep_1
mkdir Prod_71
cd Prod_71
rm reimage.in
echo "parm /scratch/PI/rondror/MD_simulations/amber/US28/4xt1/4xt1_A_B_wCLR_100ns_equil/rep1/system.prmtop
trajin /scratch/PI/rondror/MD_simulations/amber/US28/4xt1/4xt1_A_B_wCLR_100ns_equil/rep1/Prod_71.nc
center origin '!(:POPC | :TIP3 | :SOD | :CLA)'
image origin center
trajout Prod_71_reimaged.nc
go" >> reimage.in
ml load amber
cpptraj -i reimage.in

cd /scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/US28-active-unrestrained-unpublished/fractalkine-bound/rep_1
mkdir Prod_72
cd Prod_72
rm reimage.in
echo "parm /scratch/PI/rondror/MD_simulations/amber/US28/4xt1/4xt1_A_B_wCLR_100ns_equil/rep1/system.prmtop
trajin /scratch/PI/rondror/MD_simulations/amber/US28/4xt1/4xt1_A_B_wCLR_100ns_equil/rep1/Prod_72.nc
center origin '!(:POPC | :TIP3 | :SOD | :CLA)'
image origin center
trajout Prod_72_reimaged.nc
go" >> reimage.in
ml load amber
cpptraj -i reimage.in

cd /scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/US28-active-unrestrained-unpublished/fractalkine-bound/rep_1
mkdir Prod_73
cd Prod_73
rm reimage.in
echo "parm /scratch/PI/rondror/MD_simulations/amber/US28/4xt1/4xt1_A_B_wCLR_100ns_equil/rep1/system.prmtop
trajin /scratch/PI/rondror/MD_simulations/amber/US28/4xt1/4xt1_A_B_wCLR_100ns_equil/rep1/Prod_73.nc
center origin '!(:POPC | :TIP3 | :SOD | :CLA)'
image origin center
trajout Prod_73_reimaged.nc
go" >> reimage.in
ml load amber
cpptraj -i reimage.in

cd /scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/US28-active-unrestrained-unpublished/fractalkine-bound/rep_1
mkdir Prod_74
cd Prod_74
rm reimage.in
echo "parm /scratch/PI/rondror/MD_simulations/amber/US28/4xt1/4xt1_A_B_wCLR_100ns_equil/rep1/system.prmtop
trajin /scratch/PI/rondror/MD_simulations/amber/US28/4xt1/4xt1_A_B_wCLR_100ns_equil/rep1/Prod_74.nc
center origin '!(:POPC | :TIP3 | :SOD | :CLA)'
image origin center
trajout Prod_74_reimaged.nc
go" >> reimage.in
ml load amber
cpptraj -i reimage.in

cd /scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/US28-active-unrestrained-unpublished/fractalkine-bound/rep_1
mkdir Prod_75
cd Prod_75
rm reimage.in
echo "parm /scratch/PI/rondror/MD_simulations/amber/US28/4xt1/4xt1_A_B_wCLR_100ns_equil/rep1/system.prmtop
trajin /scratch/PI/rondror/MD_simulations/amber/US28/4xt1/4xt1_A_B_wCLR_100ns_equil/rep1/Prod_75.nc
center origin '!(:POPC | :TIP3 | :SOD | :CLA)'
image origin center
trajout Prod_75_reimaged.nc
go" >> reimage.in
ml load amber
cpptraj -i reimage.in

cd /scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/US28-active-unrestrained-unpublished/fractalkine-bound/rep_1
mkdir Prod_76
cd Prod_76
rm reimage.in
echo "parm /scratch/PI/rondror/MD_simulations/amber/US28/4xt1/4xt1_A_B_wCLR_100ns_equil/rep1/system.prmtop
trajin /scratch/PI/rondror/MD_simulations/amber/US28/4xt1/4xt1_A_B_wCLR_100ns_equil/rep1/Prod_76.nc
center origin '!(:POPC | :TIP3 | :SOD | :CLA)'
image origin center
trajout Prod_76_reimaged.nc
go" >> reimage.in
ml load amber
cpptraj -i reimage.in

cd /scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/US28-active-unrestrained-unpublished/fractalkine-bound/rep_1
mkdir Prod_77
cd Prod_77
rm reimage.in
echo "parm /scratch/PI/rondror/MD_simulations/amber/US28/4xt1/4xt1_A_B_wCLR_100ns_equil/rep1/system.prmtop
trajin /scratch/PI/rondror/MD_simulations/amber/US28/4xt1/4xt1_A_B_wCLR_100ns_equil/rep1/Prod_77.nc
center origin '!(:POPC | :TIP3 | :SOD | :CLA)'
image origin center
trajout Prod_77_reimaged.nc
go" >> reimage.in
ml load amber
cpptraj -i reimage.in

cd /scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/US28-active-unrestrained-unpublished/fractalkine-bound/rep_1
mkdir Prod_78
cd Prod_78
rm reimage.in
echo "parm /scratch/PI/rondror/MD_simulations/amber/US28/4xt1/4xt1_A_B_wCLR_100ns_equil/rep1/system.prmtop
trajin /scratch/PI/rondror/MD_simulations/amber/US28/4xt1/4xt1_A_B_wCLR_100ns_equil/rep1/Prod_78.nc
center origin '!(:POPC | :TIP3 | :SOD | :CLA)'
image origin center
trajout Prod_78_reimaged.nc
go" >> reimage.in
ml load amber
cpptraj -i reimage.in

cd /scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/US28-active-unrestrained-unpublished/fractalkine-bound/rep_1
mkdir Prod_79
cd Prod_79
rm reimage.in
echo "parm /scratch/PI/rondror/MD_simulations/amber/US28/4xt1/4xt1_A_B_wCLR_100ns_equil/rep1/system.prmtop
trajin /scratch/PI/rondror/MD_simulations/amber/US28/4xt1/4xt1_A_B_wCLR_100ns_equil/rep1/Prod_79.nc
center origin '!(:POPC | :TIP3 | :SOD | :CLA)'
image origin center
trajout Prod_79_reimaged.nc
go" >> reimage.in
ml load amber
cpptraj -i reimage.in

cd /scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/US28-active-unrestrained-unpublished/fractalkine-bound/rep_1
mkdir Prod_80
cd Prod_80
rm reimage.in
echo "parm /scratch/PI/rondror/MD_simulations/amber/US28/4xt1/4xt1_A_B_wCLR_100ns_equil/rep1/system.prmtop
trajin /scratch/PI/rondror/MD_simulations/amber/US28/4xt1/4xt1_A_B_wCLR_100ns_equil/rep1/Prod_80.nc
center origin '!(:POPC | :TIP3 | :SOD | :CLA)'
image origin center
trajout Prod_80_reimaged.nc
go" >> reimage.in
ml load amber
cpptraj -i reimage.in

cd /scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/US28-active-unrestrained-unpublished/fractalkine-bound/rep_1
mkdir Prod_81
cd Prod_81
rm reimage.in
echo "parm /scratch/PI/rondror/MD_simulations/amber/US28/4xt1/4xt1_A_B_wCLR_100ns_equil/rep1/system.prmtop
trajin /scratch/PI/rondror/MD_simulations/amber/US28/4xt1/4xt1_A_B_wCLR_100ns_equil/rep1/Prod_81.nc
center origin '!(:POPC | :TIP3 | :SOD | :CLA)'
image origin center
trajout Prod_81_reimaged.nc
go" >> reimage.in
ml load amber
cpptraj -i reimage.in

cd /scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/US28-active-unrestrained-unpublished/fractalkine-bound/rep_1
mkdir Prod_82
cd Prod_82
rm reimage.in
echo "parm /scratch/PI/rondror/MD_simulations/amber/US28/4xt1/4xt1_A_B_wCLR_100ns_equil/rep1/system.prmtop
trajin /scratch/PI/rondror/MD_simulations/amber/US28/4xt1/4xt1_A_B_wCLR_100ns_equil/rep1/Prod_82.nc
center origin '!(:POPC | :TIP3 | :SOD | :CLA)'
image origin center
trajout Prod_82_reimaged.nc
go" >> reimage.in
ml load amber
cpptraj -i reimage.in

cd /scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/US28-active-unrestrained-unpublished/fractalkine-bound/rep_1
mkdir Prod_83
cd Prod_83
rm reimage.in
echo "parm /scratch/PI/rondror/MD_simulations/amber/US28/4xt1/4xt1_A_B_wCLR_100ns_equil/rep1/system.prmtop
trajin /scratch/PI/rondror/MD_simulations/amber/US28/4xt1/4xt1_A_B_wCLR_100ns_equil/rep1/Prod_83.nc
center origin '!(:POPC | :TIP3 | :SOD | :CLA)'
image origin center
trajout Prod_83_reimaged.nc
go" >> reimage.in
ml load amber
cpptraj -i reimage.in

cd /scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/US28-active-unrestrained-unpublished/fractalkine-bound/rep_1
mkdir Prod_84
cd Prod_84
rm reimage.in
echo "parm /scratch/PI/rondror/MD_simulations/amber/US28/4xt1/4xt1_A_B_wCLR_100ns_equil/rep1/system.prmtop
trajin /scratch/PI/rondror/MD_simulations/amber/US28/4xt1/4xt1_A_B_wCLR_100ns_equil/rep1/Prod_84.nc
center origin '!(:POPC | :TIP3 | :SOD | :CLA)'
image origin center
trajout Prod_84_reimaged.nc
go" >> reimage.in
ml load amber
cpptraj -i reimage.in

cd /scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/US28-active-unrestrained-unpublished/fractalkine-bound/rep_1
mkdir Prod_85
cd Prod_85
rm reimage.in
echo "parm /scratch/PI/rondror/MD_simulations/amber/US28/4xt1/4xt1_A_B_wCLR_100ns_equil/rep1/system.prmtop
trajin /scratch/PI/rondror/MD_simulations/amber/US28/4xt1/4xt1_A_B_wCLR_100ns_equil/rep1/Prod_85.nc
center origin '!(:POPC | :TIP3 | :SOD | :CLA)'
image origin center
trajout Prod_85_reimaged.nc
go" >> reimage.in
ml load amber
cpptraj -i reimage.in

cd /scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/US28-active-unrestrained-unpublished/fractalkine-bound/rep_1
mkdir Prod_86
cd Prod_86
rm reimage.in
echo "parm /scratch/PI/rondror/MD_simulations/amber/US28/4xt1/4xt1_A_B_wCLR_100ns_equil/rep1/system.prmtop
trajin /scratch/PI/rondror/MD_simulations/amber/US28/4xt1/4xt1_A_B_wCLR_100ns_equil/rep1/Prod_86.nc
center origin '!(:POPC | :TIP3 | :SOD | :CLA)'
image origin center
trajout Prod_86_reimaged.nc
go" >> reimage.in
ml load amber
cpptraj -i reimage.in

cd /scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/US28-active-unrestrained-unpublished/fractalkine-bound/rep_1
mkdir Prod_87
cd Prod_87
rm reimage.in
echo "parm /scratch/PI/rondror/MD_simulations/amber/US28/4xt1/4xt1_A_B_wCLR_100ns_equil/rep1/system.prmtop
trajin /scratch/PI/rondror/MD_simulations/amber/US28/4xt1/4xt1_A_B_wCLR_100ns_equil/rep1/Prod_87.nc
center origin '!(:POPC | :TIP3 | :SOD | :CLA)'
image origin center
trajout Prod_87_reimaged.nc
go" >> reimage.in
ml load amber
cpptraj -i reimage.in

cd /scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/US28-active-unrestrained-unpublished/fractalkine-bound/rep_1
mkdir Prod_88
cd Prod_88
rm reimage.in
echo "parm /scratch/PI/rondror/MD_simulations/amber/US28/4xt1/4xt1_A_B_wCLR_100ns_equil/rep1/system.prmtop
trajin /scratch/PI/rondror/MD_simulations/amber/US28/4xt1/4xt1_A_B_wCLR_100ns_equil/rep1/Prod_88.nc
center origin '!(:POPC | :TIP3 | :SOD | :CLA)'
image origin center
trajout Prod_88_reimaged.nc
go" >> reimage.in
ml load amber
cpptraj -i reimage.in

cd /scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/US28-active-unrestrained-unpublished/fractalkine-bound/rep_1
mkdir Prod_89
cd Prod_89
rm reimage.in
echo "parm /scratch/PI/rondror/MD_simulations/amber/US28/4xt1/4xt1_A_B_wCLR_100ns_equil/rep1/system.prmtop
trajin /scratch/PI/rondror/MD_simulations/amber/US28/4xt1/4xt1_A_B_wCLR_100ns_equil/rep1/Prod_89.nc
center origin '!(:POPC | :TIP3 | :SOD | :CLA)'
image origin center
trajout Prod_89_reimaged.nc
go" >> reimage.in
ml load amber
cpptraj -i reimage.in

cd /scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/US28-active-unrestrained-unpublished/fractalkine-bound/rep_1
mkdir Prod_90
cd Prod_90
rm reimage.in
echo "parm /scratch/PI/rondror/MD_simulations/amber/US28/4xt1/4xt1_A_B_wCLR_100ns_equil/rep1/system.prmtop
trajin /scratch/PI/rondror/MD_simulations/amber/US28/4xt1/4xt1_A_B_wCLR_100ns_equil/rep1/Prod_90.nc
center origin '!(:POPC | :TIP3 | :SOD | :CLA)'
image origin center
trajout Prod_90_reimaged.nc
go" >> reimage.in
ml load amber
cpptraj -i reimage.in

cd /scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/US28-active-unrestrained-unpublished/fractalkine-bound/rep_1
mkdir Prod_91
cd Prod_91
rm reimage.in
echo "parm /scratch/PI/rondror/MD_simulations/amber/US28/4xt1/4xt1_A_B_wCLR_100ns_equil/rep1/system.prmtop
trajin /scratch/PI/rondror/MD_simulations/amber/US28/4xt1/4xt1_A_B_wCLR_100ns_equil/rep1/Prod_91.nc
center origin '!(:POPC | :TIP3 | :SOD | :CLA)'
image origin center
trajout Prod_91_reimaged.nc
go" >> reimage.in
ml load amber
cpptraj -i reimage.in

cd /scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/US28-active-unrestrained-unpublished/fractalkine-bound/rep_1
mkdir Prod_92
cd Prod_92
rm reimage.in
echo "parm /scratch/PI/rondror/MD_simulations/amber/US28/4xt1/4xt1_A_B_wCLR_100ns_equil/rep1/system.prmtop
trajin /scratch/PI/rondror/MD_simulations/amber/US28/4xt1/4xt1_A_B_wCLR_100ns_equil/rep1/Prod_92.nc
center origin '!(:POPC | :TIP3 | :SOD | :CLA)'
image origin center
trajout Prod_92_reimaged.nc
go" >> reimage.in
ml load amber
cpptraj -i reimage.in

cd /scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/US28-active-unrestrained-unpublished/fractalkine-bound/rep_1
mkdir Prod_93
cd Prod_93
rm reimage.in
echo "parm /scratch/PI/rondror/MD_simulations/amber/US28/4xt1/4xt1_A_B_wCLR_100ns_equil/rep1/system.prmtop
trajin /scratch/PI/rondror/MD_simulations/amber/US28/4xt1/4xt1_A_B_wCLR_100ns_equil/rep1/Prod_93.nc
center origin '!(:POPC | :TIP3 | :SOD | :CLA)'
image origin center
trajout Prod_93_reimaged.nc
go" >> reimage.in
ml load amber
cpptraj -i reimage.in

cd /scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/US28-active-unrestrained-unpublished/fractalkine-bound/rep_1
mkdir Prod_94
cd Prod_94
rm reimage.in
echo "parm /scratch/PI/rondror/MD_simulations/amber/US28/4xt1/4xt1_A_B_wCLR_100ns_equil/rep1/system.prmtop
trajin /scratch/PI/rondror/MD_simulations/amber/US28/4xt1/4xt1_A_B_wCLR_100ns_equil/rep1/Prod_94.nc
center origin '!(:POPC | :TIP3 | :SOD | :CLA)'
image origin center
trajout Prod_94_reimaged.nc
go" >> reimage.in
ml load amber
cpptraj -i reimage.in

cd /scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/US28-active-unrestrained-unpublished/fractalkine-bound/rep_1
mkdir Prod_95
cd Prod_95
rm reimage.in
echo "parm /scratch/PI/rondror/MD_simulations/amber/US28/4xt1/4xt1_A_B_wCLR_100ns_equil/rep1/system.prmtop
trajin /scratch/PI/rondror/MD_simulations/amber/US28/4xt1/4xt1_A_B_wCLR_100ns_equil/rep1/Prod_95.nc
center origin '!(:POPC | :TIP3 | :SOD | :CLA)'
image origin center
trajout Prod_95_reimaged.nc
go" >> reimage.in
ml load amber
cpptraj -i reimage.in

cd /scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/US28-active-unrestrained-unpublished/fractalkine-bound/rep_1
mkdir Prod_96
cd Prod_96
rm reimage.in
echo "parm /scratch/PI/rondror/MD_simulations/amber/US28/4xt1/4xt1_A_B_wCLR_100ns_equil/rep1/system.prmtop
trajin /scratch/PI/rondror/MD_simulations/amber/US28/4xt1/4xt1_A_B_wCLR_100ns_equil/rep1/Prod_96.nc
center origin '!(:POPC | :TIP3 | :SOD | :CLA)'
image origin center
trajout Prod_96_reimaged.nc
go" >> reimage.in
ml load amber
cpptraj -i reimage.in

cd /scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/US28-active-unrestrained-unpublished/fractalkine-bound/rep_1
mkdir Prod_97
cd Prod_97
rm reimage.in
echo "parm /scratch/PI/rondror/MD_simulations/amber/US28/4xt1/4xt1_A_B_wCLR_100ns_equil/rep1/system.prmtop
trajin /scratch/PI/rondror/MD_simulations/amber/US28/4xt1/4xt1_A_B_wCLR_100ns_equil/rep1/Prod_97.nc
center origin '!(:POPC | :TIP3 | :SOD | :CLA)'
image origin center
trajout Prod_97_reimaged.nc
go" >> reimage.in
ml load amber
cpptraj -i reimage.in

cd /scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/US28-active-unrestrained-unpublished/fractalkine-bound/rep_1
mkdir Prod_98
cd Prod_98
rm reimage.in
echo "parm /scratch/PI/rondror/MD_simulations/amber/US28/4xt1/4xt1_A_B_wCLR_100ns_equil/rep1/system.prmtop
trajin /scratch/PI/rondror/MD_simulations/amber/US28/4xt1/4xt1_A_B_wCLR_100ns_equil/rep1/Prod_98.nc
center origin '!(:POPC | :TIP3 | :SOD | :CLA)'
image origin center
trajout Prod_98_reimaged.nc
go" >> reimage.in
ml load amber
cpptraj -i reimage.in

cd /scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/US28-active-unrestrained-unpublished/fractalkine-bound/rep_1
mkdir Prod_99
cd Prod_99
rm reimage.in
echo "parm /scratch/PI/rondror/MD_simulations/amber/US28/4xt1/4xt1_A_B_wCLR_100ns_equil/rep1/system.prmtop
trajin /scratch/PI/rondror/MD_simulations/amber/US28/4xt1/4xt1_A_B_wCLR_100ns_equil/rep1/Prod_99.nc
center origin '!(:POPC | :TIP3 | :SOD | :CLA)'
image origin center
trajout Prod_99_reimaged.nc
go" >> reimage.in
ml load amber
cpptraj -i reimage.in

cd /scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/US28-active-unrestrained-unpublished/fractalkine-bound/rep_1
mkdir Prod_100
cd Prod_100
rm reimage.in
echo "parm /scratch/PI/rondror/MD_simulations/amber/US28/4xt1/4xt1_A_B_wCLR_100ns_equil/rep1/system.prmtop
trajin /scratch/PI/rondror/MD_simulations/amber/US28/4xt1/4xt1_A_B_wCLR_100ns_equil/rep1/Prod_100.nc
center origin '!(:POPC | :TIP3 | :SOD | :CLA)'
image origin center
trajout Prod_100_reimaged.nc
go" >> reimage.in
ml load amber
cpptraj -i reimage.in

cd /scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/US28-active-unrestrained-unpublished/fractalkine-bound/rep_1
mkdir Prod_101
cd Prod_101
rm reimage.in
echo "parm /scratch/PI/rondror/MD_simulations/amber/US28/4xt1/4xt1_A_B_wCLR_100ns_equil/rep1/system.prmtop
trajin /scratch/PI/rondror/MD_simulations/amber/US28/4xt1/4xt1_A_B_wCLR_100ns_equil/rep1/Prod_101.nc
center origin '!(:POPC | :TIP3 | :SOD | :CLA)'
image origin center
trajout Prod_101_reimaged.nc
go" >> reimage.in
ml load amber
cpptraj -i reimage.in

cd /scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/US28-active-unrestrained-unpublished/fractalkine-bound/rep_1
mkdir Prod_102
cd Prod_102
rm reimage.in
echo "parm /scratch/PI/rondror/MD_simulations/amber/US28/4xt1/4xt1_A_B_wCLR_100ns_equil/rep1/system.prmtop
trajin /scratch/PI/rondror/MD_simulations/amber/US28/4xt1/4xt1_A_B_wCLR_100ns_equil/rep1/Prod_102.nc
center origin '!(:POPC | :TIP3 | :SOD | :CLA)'
image origin center
trajout Prod_102_reimaged.nc
go" >> reimage.in
ml load amber
cpptraj -i reimage.in

cd /scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/US28-active-unrestrained-unpublished/fractalkine-bound/rep_1
mkdir Prod_103
cd Prod_103
rm reimage.in
echo "parm /scratch/PI/rondror/MD_simulations/amber/US28/4xt1/4xt1_A_B_wCLR_100ns_equil/rep1/system.prmtop
trajin /scratch/PI/rondror/MD_simulations/amber/US28/4xt1/4xt1_A_B_wCLR_100ns_equil/rep1/Prod_103.nc
center origin '!(:POPC | :TIP3 | :SOD | :CLA)'
image origin center
trajout Prod_103_reimaged.nc
go" >> reimage.in
ml load amber
cpptraj -i reimage.in

cd /scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/US28-active-unrestrained-unpublished/fractalkine-bound/rep_1
mkdir Prod_104
cd Prod_104
rm reimage.in
echo "parm /scratch/PI/rondror/MD_simulations/amber/US28/4xt1/4xt1_A_B_wCLR_100ns_equil/rep1/system.prmtop
trajin /scratch/PI/rondror/MD_simulations/amber/US28/4xt1/4xt1_A_B_wCLR_100ns_equil/rep1/Prod_104.nc
center origin '!(:POPC | :TIP3 | :SOD | :CLA)'
image origin center
trajout Prod_104_reimaged.nc
go" >> reimage.in
ml load amber
cpptraj -i reimage.in

cd /scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/US28-active-unrestrained-unpublished/fractalkine-bound/rep_1
mkdir Prod_105
cd Prod_105
rm reimage.in
echo "parm /scratch/PI/rondror/MD_simulations/amber/US28/4xt1/4xt1_A_B_wCLR_100ns_equil/rep1/system.prmtop
trajin /scratch/PI/rondror/MD_simulations/amber/US28/4xt1/4xt1_A_B_wCLR_100ns_equil/rep1/Prod_105.nc
center origin '!(:POPC | :TIP3 | :SOD | :CLA)'
image origin center
trajout Prod_105_reimaged.nc
go" >> reimage.in
ml load amber
cpptraj -i reimage.in

cd /scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/US28-active-unrestrained-unpublished/fractalkine-bound/rep_1
mkdir Prod_106
cd Prod_106
rm reimage.in
echo "parm /scratch/PI/rondror/MD_simulations/amber/US28/4xt1/4xt1_A_B_wCLR_100ns_equil/rep1/system.prmtop
trajin /scratch/PI/rondror/MD_simulations/amber/US28/4xt1/4xt1_A_B_wCLR_100ns_equil/rep1/Prod_106.nc
center origin '!(:POPC | :TIP3 | :SOD | :CLA)'
image origin center
trajout Prod_106_reimaged.nc
go" >> reimage.in
ml load amber
cpptraj -i reimage.in

cd /scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/US28-active-unrestrained-unpublished/fractalkine-bound/rep_1
mkdir Prod_107
cd Prod_107
rm reimage.in
echo "parm /scratch/PI/rondror/MD_simulations/amber/US28/4xt1/4xt1_A_B_wCLR_100ns_equil/rep1/system.prmtop
trajin /scratch/PI/rondror/MD_simulations/amber/US28/4xt1/4xt1_A_B_wCLR_100ns_equil/rep1/Prod_107.nc
center origin '!(:POPC | :TIP3 | :SOD | :CLA)'
image origin center
trajout Prod_107_reimaged.nc
go" >> reimage.in
ml load amber
cpptraj -i reimage.in

cd /scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/US28-active-unrestrained-unpublished/fractalkine-bound/rep_1
mkdir Prod_108
cd Prod_108
rm reimage.in
echo "parm /scratch/PI/rondror/MD_simulations/amber/US28/4xt1/4xt1_A_B_wCLR_100ns_equil/rep1/system.prmtop
trajin /scratch/PI/rondror/MD_simulations/amber/US28/4xt1/4xt1_A_B_wCLR_100ns_equil/rep1/Prod_108.nc
center origin '!(:POPC | :TIP3 | :SOD | :CLA)'
image origin center
trajout Prod_108_reimaged.nc
go" >> reimage.in
ml load amber
cpptraj -i reimage.in

cd /scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/US28-active-unrestrained-unpublished/fractalkine-bound/rep_1
mkdir Prod_109
cd Prod_109
rm reimage.in
echo "parm /scratch/PI/rondror/MD_simulations/amber/US28/4xt1/4xt1_A_B_wCLR_100ns_equil/rep1/system.prmtop
trajin /scratch/PI/rondror/MD_simulations/amber/US28/4xt1/4xt1_A_B_wCLR_100ns_equil/rep1/Prod_109.nc
center origin '!(:POPC | :TIP3 | :SOD | :CLA)'
image origin center
trajout Prod_109_reimaged.nc
go" >> reimage.in
ml load amber
cpptraj -i reimage.in

cd /scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/US28-active-unrestrained-unpublished/fractalkine-bound/rep_1
mkdir Prod_110
cd Prod_110
rm reimage.in
echo "parm /scratch/PI/rondror/MD_simulations/amber/US28/4xt1/4xt1_A_B_wCLR_100ns_equil/rep1/system.prmtop
trajin /scratch/PI/rondror/MD_simulations/amber/US28/4xt1/4xt1_A_B_wCLR_100ns_equil/rep1/Prod_110.nc
center origin '!(:POPC | :TIP3 | :SOD | :CLA)'
image origin center
trajout Prod_110_reimaged.nc
go" >> reimage.in
ml load amber
cpptraj -i reimage.in

cd /scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/US28-active-unrestrained-unpublished/fractalkine-bound/rep_1
mkdir Prod_111
cd Prod_111
rm reimage.in
echo "parm /scratch/PI/rondror/MD_simulations/amber/US28/4xt1/4xt1_A_B_wCLR_100ns_equil/rep1/system.prmtop
trajin /scratch/PI/rondror/MD_simulations/amber/US28/4xt1/4xt1_A_B_wCLR_100ns_equil/rep1/Prod_111.nc
center origin '!(:POPC | :TIP3 | :SOD | :CLA)'
image origin center
trajout Prod_111_reimaged.nc
go" >> reimage.in
ml load amber
cpptraj -i reimage.in

cd /scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/US28-active-unrestrained-unpublished/fractalkine-bound/rep_1
mkdir Prod_112
cd Prod_112
rm reimage.in
echo "parm /scratch/PI/rondror/MD_simulations/amber/US28/4xt1/4xt1_A_B_wCLR_100ns_equil/rep1/system.prmtop
trajin /scratch/PI/rondror/MD_simulations/amber/US28/4xt1/4xt1_A_B_wCLR_100ns_equil/rep1/Prod_112.nc
center origin '!(:POPC | :TIP3 | :SOD | :CLA)'
image origin center
trajout Prod_112_reimaged.nc
go" >> reimage.in
ml load amber
cpptraj -i reimage.in

cd /scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/US28-active-unrestrained-unpublished/fractalkine-bound/rep_1
mkdir Prod_113
cd Prod_113
rm reimage.in
echo "parm /scratch/PI/rondror/MD_simulations/amber/US28/4xt1/4xt1_A_B_wCLR_100ns_equil/rep1/system.prmtop
trajin /scratch/PI/rondror/MD_simulations/amber/US28/4xt1/4xt1_A_B_wCLR_100ns_equil/rep1/Prod_113.nc
center origin '!(:POPC | :TIP3 | :SOD | :CLA)'
image origin center
trajout Prod_113_reimaged.nc
go" >> reimage.in
ml load amber
cpptraj -i reimage.in

cd /scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/US28-active-unrestrained-unpublished/fractalkine-bound/rep_1
mkdir Prod_114
cd Prod_114
rm reimage.in
echo "parm /scratch/PI/rondror/MD_simulations/amber/US28/4xt1/4xt1_A_B_wCLR_100ns_equil/rep1/system.prmtop
trajin /scratch/PI/rondror/MD_simulations/amber/US28/4xt1/4xt1_A_B_wCLR_100ns_equil/rep1/Prod_114.nc
center origin '!(:POPC | :TIP3 | :SOD | :CLA)'
image origin center
trajout Prod_114_reimaged.nc
go" >> reimage.in
ml load amber
cpptraj -i reimage.in

cd /scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/US28-active-unrestrained-unpublished/fractalkine-bound/rep_1
mkdir Prod_115
cd Prod_115
rm reimage.in
echo "parm /scratch/PI/rondror/MD_simulations/amber/US28/4xt1/4xt1_A_B_wCLR_100ns_equil/rep1/system.prmtop
trajin /scratch/PI/rondror/MD_simulations/amber/US28/4xt1/4xt1_A_B_wCLR_100ns_equil/rep1/Prod_115.nc
center origin '!(:POPC | :TIP3 | :SOD | :CLA)'
image origin center
trajout Prod_115_reimaged.nc
go" >> reimage.in
ml load amber
cpptraj -i reimage.in

cd /scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/US28-active-unrestrained-unpublished/fractalkine-bound/rep_1
mkdir Prod_116
cd Prod_116
rm reimage.in
echo "parm /scratch/PI/rondror/MD_simulations/amber/US28/4xt1/4xt1_A_B_wCLR_100ns_equil/rep1/system.prmtop
trajin /scratch/PI/rondror/MD_simulations/amber/US28/4xt1/4xt1_A_B_wCLR_100ns_equil/rep1/Prod_116.nc
center origin '!(:POPC | :TIP3 | :SOD | :CLA)'
image origin center
trajout Prod_116_reimaged.nc
go" >> reimage.in
ml load amber
cpptraj -i reimage.in

cd /scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/US28-active-unrestrained-unpublished/fractalkine-bound/rep_1
mkdir Prod_117
cd Prod_117
rm reimage.in
echo "parm /scratch/PI/rondror/MD_simulations/amber/US28/4xt1/4xt1_A_B_wCLR_100ns_equil/rep1/system.prmtop
trajin /scratch/PI/rondror/MD_simulations/amber/US28/4xt1/4xt1_A_B_wCLR_100ns_equil/rep1/Prod_117.nc
center origin '!(:POPC | :TIP3 | :SOD | :CLA)'
image origin center
trajout Prod_117_reimaged.nc
go" >> reimage.in
ml load amber
cpptraj -i reimage.in

cd /scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/US28-active-unrestrained-unpublished/fractalkine-bound/rep_1
mkdir Prod_118
cd Prod_118
rm reimage.in
echo "parm /scratch/PI/rondror/MD_simulations/amber/US28/4xt1/4xt1_A_B_wCLR_100ns_equil/rep1/system.prmtop
trajin /scratch/PI/rondror/MD_simulations/amber/US28/4xt1/4xt1_A_B_wCLR_100ns_equil/rep1/Prod_118.nc
center origin '!(:POPC | :TIP3 | :SOD | :CLA)'
image origin center
trajout Prod_118_reimaged.nc
go" >> reimage.in
ml load amber
cpptraj -i reimage.in

cd /scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/US28-active-unrestrained-unpublished/fractalkine-bound/rep_1
mkdir Prod_119
cd Prod_119
rm reimage.in
echo "parm /scratch/PI/rondror/MD_simulations/amber/US28/4xt1/4xt1_A_B_wCLR_100ns_equil/rep1/system.prmtop
trajin /scratch/PI/rondror/MD_simulations/amber/US28/4xt1/4xt1_A_B_wCLR_100ns_equil/rep1/Prod_119.nc
center origin '!(:POPC | :TIP3 | :SOD | :CLA)'
image origin center
trajout Prod_119_reimaged.nc
go" >> reimage.in
ml load amber
cpptraj -i reimage.in

cd /scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/US28-active-unrestrained-unpublished/fractalkine-bound/rep_1
mkdir Prod_120
cd Prod_120
rm reimage.in
echo "parm /scratch/PI/rondror/MD_simulations/amber/US28/4xt1/4xt1_A_B_wCLR_100ns_equil/rep1/system.prmtop
trajin /scratch/PI/rondror/MD_simulations/amber/US28/4xt1/4xt1_A_B_wCLR_100ns_equil/rep1/Prod_120.nc
center origin '!(:POPC | :TIP3 | :SOD | :CLA)'
image origin center
trajout Prod_120_reimaged.nc
go" >> reimage.in
ml load amber
cpptraj -i reimage.in

cd /scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/US28-active-unrestrained-unpublished/fractalkine-bound/rep_1
mkdir Prod_121
cd Prod_121
rm reimage.in
echo "parm /scratch/PI/rondror/MD_simulations/amber/US28/4xt1/4xt1_A_B_wCLR_100ns_equil/rep1/system.prmtop
trajin /scratch/PI/rondror/MD_simulations/amber/US28/4xt1/4xt1_A_B_wCLR_100ns_equil/rep1/Prod_121.nc
center origin '!(:POPC | :TIP3 | :SOD | :CLA)'
image origin center
trajout Prod_121_reimaged.nc
go" >> reimage.in
ml load amber
cpptraj -i reimage.in

cd /scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/US28-active-unrestrained-unpublished/fractalkine-bound/rep_1
mkdir Prod_122
cd Prod_122
rm reimage.in
echo "parm /scratch/PI/rondror/MD_simulations/amber/US28/4xt1/4xt1_A_B_wCLR_100ns_equil/rep1/system.prmtop
trajin /scratch/PI/rondror/MD_simulations/amber/US28/4xt1/4xt1_A_B_wCLR_100ns_equil/rep1/Prod_122.nc
center origin '!(:POPC | :TIP3 | :SOD | :CLA)'
image origin center
trajout Prod_122_reimaged.nc
go" >> reimage.in
ml load amber
cpptraj -i reimage.in

cd /scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/US28-active-unrestrained-unpublished/fractalkine-bound/rep_1
mkdir Prod_123
cd Prod_123
rm reimage.in
echo "parm /scratch/PI/rondror/MD_simulations/amber/US28/4xt1/4xt1_A_B_wCLR_100ns_equil/rep1/system.prmtop
trajin /scratch/PI/rondror/MD_simulations/amber/US28/4xt1/4xt1_A_B_wCLR_100ns_equil/rep1/Prod_123.nc
center origin '!(:POPC | :TIP3 | :SOD | :CLA)'
image origin center
trajout Prod_123_reimaged.nc
go" >> reimage.in
ml load amber
cpptraj -i reimage.in

cd /scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/US28-active-unrestrained-unpublished/fractalkine-bound/rep_1
mkdir Prod_124
cd Prod_124
rm reimage.in
echo "parm /scratch/PI/rondror/MD_simulations/amber/US28/4xt1/4xt1_A_B_wCLR_100ns_equil/rep1/system.prmtop
trajin /scratch/PI/rondror/MD_simulations/amber/US28/4xt1/4xt1_A_B_wCLR_100ns_equil/rep1/Prod_124.nc
center origin '!(:POPC | :TIP3 | :SOD | :CLA)'
image origin center
trajout Prod_124_reimaged.nc
go" >> reimage.in
ml load amber
cpptraj -i reimage.in

cd /scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/US28-active-unrestrained-unpublished/fractalkine-bound/rep_1
mkdir Prod_125
cd Prod_125
rm reimage.in
echo "parm /scratch/PI/rondror/MD_simulations/amber/US28/4xt1/4xt1_A_B_wCLR_100ns_equil/rep1/system.prmtop
trajin /scratch/PI/rondror/MD_simulations/amber/US28/4xt1/4xt1_A_B_wCLR_100ns_equil/rep1/Prod_125.nc
center origin '!(:POPC | :TIP3 | :SOD | :CLA)'
image origin center
trajout Prod_125_reimaged.nc
go" >> reimage.in
ml load amber
cpptraj -i reimage.in

cd /scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/US28-active-unrestrained-unpublished/fractalkine-bound/rep_1
mkdir Prod_126
cd Prod_126
rm reimage.in
echo "parm /scratch/PI/rondror/MD_simulations/amber/US28/4xt1/4xt1_A_B_wCLR_100ns_equil/rep1/system.prmtop
trajin /scratch/PI/rondror/MD_simulations/amber/US28/4xt1/4xt1_A_B_wCLR_100ns_equil/rep1/Prod_126.nc
center origin '!(:POPC | :TIP3 | :SOD | :CLA)'
image origin center
trajout Prod_126_reimaged.nc
go" >> reimage.in
ml load amber
cpptraj -i reimage.in

cd /scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/US28-active-unrestrained-unpublished/fractalkine-bound/rep_1
mkdir Prod_127
cd Prod_127
rm reimage.in
echo "parm /scratch/PI/rondror/MD_simulations/amber/US28/4xt1/4xt1_A_B_wCLR_100ns_equil/rep1/system.prmtop
trajin /scratch/PI/rondror/MD_simulations/amber/US28/4xt1/4xt1_A_B_wCLR_100ns_equil/rep1/Prod_127.nc
center origin '!(:POPC | :TIP3 | :SOD | :CLA)'
image origin center
trajout Prod_127_reimaged.nc
go" >> reimage.in
ml load amber
cpptraj -i reimage.in

cd /scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/US28-active-unrestrained-unpublished/fractalkine-bound/rep_1
mkdir Prod_128
cd Prod_128
rm reimage.in
echo "parm /scratch/PI/rondror/MD_simulations/amber/US28/4xt1/4xt1_A_B_wCLR_100ns_equil/rep1/system.prmtop
trajin /scratch/PI/rondror/MD_simulations/amber/US28/4xt1/4xt1_A_B_wCLR_100ns_equil/rep1/Prod_128.nc
center origin '!(:POPC | :TIP3 | :SOD | :CLA)'
image origin center
trajout Prod_128_reimaged.nc
go" >> reimage.in
ml load amber
cpptraj -i reimage.in

cd /scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/US28-active-unrestrained-unpublished/fractalkine-bound/rep_1
mkdir Prod_129
cd Prod_129
rm reimage.in
echo "parm /scratch/PI/rondror/MD_simulations/amber/US28/4xt1/4xt1_A_B_wCLR_100ns_equil/rep1/system.prmtop
trajin /scratch/PI/rondror/MD_simulations/amber/US28/4xt1/4xt1_A_B_wCLR_100ns_equil/rep1/Prod_129.nc
center origin '!(:POPC | :TIP3 | :SOD | :CLA)'
image origin center
trajout Prod_129_reimaged.nc
go" >> reimage.in
ml load amber
cpptraj -i reimage.in

cd /scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/US28-active-unrestrained-unpublished/fractalkine-bound/rep_1
mkdir Prod_130
cd Prod_130
rm reimage.in
echo "parm /scratch/PI/rondror/MD_simulations/amber/US28/4xt1/4xt1_A_B_wCLR_100ns_equil/rep1/system.prmtop
trajin /scratch/PI/rondror/MD_simulations/amber/US28/4xt1/4xt1_A_B_wCLR_100ns_equil/rep1/Prod_130.nc
center origin '!(:POPC | :TIP3 | :SOD | :CLA)'
image origin center
trajout Prod_130_reimaged.nc
go" >> reimage.in
ml load amber
cpptraj -i reimage.in

cd /scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/US28-active-unrestrained-unpublished/fractalkine-bound/rep_1
mkdir Prod_131
cd Prod_131
rm reimage.in
echo "parm /scratch/PI/rondror/MD_simulations/amber/US28/4xt1/4xt1_A_B_wCLR_100ns_equil/rep1/system.prmtop
trajin /scratch/PI/rondror/MD_simulations/amber/US28/4xt1/4xt1_A_B_wCLR_100ns_equil/rep1/Prod_131.nc
center origin '!(:POPC | :TIP3 | :SOD | :CLA)'
image origin center
trajout Prod_131_reimaged.nc
go" >> reimage.in
ml load amber
cpptraj -i reimage.in

cd /scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/US28-active-unrestrained-unpublished/fractalkine-bound/rep_1
mkdir Prod_132
cd Prod_132
rm reimage.in
echo "parm /scratch/PI/rondror/MD_simulations/amber/US28/4xt1/4xt1_A_B_wCLR_100ns_equil/rep1/system.prmtop
trajin /scratch/PI/rondror/MD_simulations/amber/US28/4xt1/4xt1_A_B_wCLR_100ns_equil/rep1/Prod_132.nc
center origin '!(:POPC | :TIP3 | :SOD | :CLA)'
image origin center
trajout Prod_132_reimaged.nc
go" >> reimage.in
ml load amber
cpptraj -i reimage.in

