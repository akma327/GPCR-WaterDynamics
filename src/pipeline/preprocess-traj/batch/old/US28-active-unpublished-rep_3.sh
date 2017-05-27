cd /scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/US28-active-unpublished/US28-active-unpublished/rep_3
mkdir Prod_0
cd Prod_0
rm reimage.in
echo "parm /scratch/PI/rondror/MD_simulations/amber/US28/4xt1-restrained/nanobody_restraints/run_3/system.prmtop
trajin /scratch/PI/rondror/MD_simulations/amber/US28/4xt1-restrained/nanobody_restraints/run_3/system.inpcrd
trajin /scratch/PI/rondror/MD_simulations/amber/US28/4xt1-restrained/nanobody_restraints/run_3/Eq_6.nc
center origin '!(:POPC | :TIP3 | :SOD | :CLA)'
image origin center
trajout Prod_0_reimaged.nc
go" >> reimage.in
ml load amber
cpptraj -i reimage.in

cd /scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/US28-active-unpublished/US28-active-unpublished/rep_3
mkdir Prod_1
cd Prod_1
rm reimage.in
echo "parm /scratch/PI/rondror/MD_simulations/amber/US28/4xt1-restrained/nanobody_restraints/run_3/system.prmtop
trajin /scratch/PI/rondror/MD_simulations/amber/US28/4xt1-restrained/nanobody_restraints/run_3/Prod_1.nc
center origin '!(:POPC | :TIP3 | :SOD | :CLA)'
image origin center
trajout Prod_1_reimaged.nc
go" >> reimage.in
ml load amber
cpptraj -i reimage.in

cd /scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/US28-active-unpublished/US28-active-unpublished/rep_3
mkdir Prod_2
cd Prod_2
rm reimage.in
echo "parm /scratch/PI/rondror/MD_simulations/amber/US28/4xt1-restrained/nanobody_restraints/run_3/system.prmtop
trajin /scratch/PI/rondror/MD_simulations/amber/US28/4xt1-restrained/nanobody_restraints/run_3/Prod_2.nc
center origin '!(:POPC | :TIP3 | :SOD | :CLA)'
image origin center
trajout Prod_2_reimaged.nc
go" >> reimage.in
ml load amber
cpptraj -i reimage.in

cd /scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/US28-active-unpublished/US28-active-unpublished/rep_3
mkdir Prod_3
cd Prod_3
rm reimage.in
echo "parm /scratch/PI/rondror/MD_simulations/amber/US28/4xt1-restrained/nanobody_restraints/run_3/system.prmtop
trajin /scratch/PI/rondror/MD_simulations/amber/US28/4xt1-restrained/nanobody_restraints/run_3/Prod_3.nc
center origin '!(:POPC | :TIP3 | :SOD | :CLA)'
image origin center
trajout Prod_3_reimaged.nc
go" >> reimage.in
ml load amber
cpptraj -i reimage.in

cd /scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/US28-active-unpublished/US28-active-unpublished/rep_3
mkdir Prod_4
cd Prod_4
rm reimage.in
echo "parm /scratch/PI/rondror/MD_simulations/amber/US28/4xt1-restrained/nanobody_restraints/run_3/system.prmtop
trajin /scratch/PI/rondror/MD_simulations/amber/US28/4xt1-restrained/nanobody_restraints/run_3/Prod_4.nc
center origin '!(:POPC | :TIP3 | :SOD | :CLA)'
image origin center
trajout Prod_4_reimaged.nc
go" >> reimage.in
ml load amber
cpptraj -i reimage.in

cd /scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/US28-active-unpublished/US28-active-unpublished/rep_3
mkdir Prod_5
cd Prod_5
rm reimage.in
echo "parm /scratch/PI/rondror/MD_simulations/amber/US28/4xt1-restrained/nanobody_restraints/run_3/system.prmtop
trajin /scratch/PI/rondror/MD_simulations/amber/US28/4xt1-restrained/nanobody_restraints/run_3/Prod_5.nc
center origin '!(:POPC | :TIP3 | :SOD | :CLA)'
image origin center
trajout Prod_5_reimaged.nc
go" >> reimage.in
ml load amber
cpptraj -i reimage.in

cd /scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/US28-active-unpublished/US28-active-unpublished/rep_3
mkdir Prod_6
cd Prod_6
rm reimage.in
echo "parm /scratch/PI/rondror/MD_simulations/amber/US28/4xt1-restrained/nanobody_restraints/run_3/system.prmtop
trajin /scratch/PI/rondror/MD_simulations/amber/US28/4xt1-restrained/nanobody_restraints/run_3/Prod_6.nc
center origin '!(:POPC | :TIP3 | :SOD | :CLA)'
image origin center
trajout Prod_6_reimaged.nc
go" >> reimage.in
ml load amber
cpptraj -i reimage.in

cd /scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/US28-active-unpublished/US28-active-unpublished/rep_3
mkdir Prod_7
cd Prod_7
rm reimage.in
echo "parm /scratch/PI/rondror/MD_simulations/amber/US28/4xt1-restrained/nanobody_restraints/run_3/system.prmtop
trajin /scratch/PI/rondror/MD_simulations/amber/US28/4xt1-restrained/nanobody_restraints/run_3/Prod_7.nc
center origin '!(:POPC | :TIP3 | :SOD | :CLA)'
image origin center
trajout Prod_7_reimaged.nc
go" >> reimage.in
ml load amber
cpptraj -i reimage.in

cd /scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/US28-active-unpublished/US28-active-unpublished/rep_3
mkdir Prod_8
cd Prod_8
rm reimage.in
echo "parm /scratch/PI/rondror/MD_simulations/amber/US28/4xt1-restrained/nanobody_restraints/run_3/system.prmtop
trajin /scratch/PI/rondror/MD_simulations/amber/US28/4xt1-restrained/nanobody_restraints/run_3/Prod_8.nc
center origin '!(:POPC | :TIP3 | :SOD | :CLA)'
image origin center
trajout Prod_8_reimaged.nc
go" >> reimage.in
ml load amber
cpptraj -i reimage.in

cd /scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/US28-active-unpublished/US28-active-unpublished/rep_3
mkdir Prod_9
cd Prod_9
rm reimage.in
echo "parm /scratch/PI/rondror/MD_simulations/amber/US28/4xt1-restrained/nanobody_restraints/run_3/system.prmtop
trajin /scratch/PI/rondror/MD_simulations/amber/US28/4xt1-restrained/nanobody_restraints/run_3/Prod_9.nc
center origin '!(:POPC | :TIP3 | :SOD | :CLA)'
image origin center
trajout Prod_9_reimaged.nc
go" >> reimage.in
ml load amber
cpptraj -i reimage.in

cd /scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/US28-active-unpublished/US28-active-unpublished/rep_3
mkdir Prod_10
cd Prod_10
rm reimage.in
echo "parm /scratch/PI/rondror/MD_simulations/amber/US28/4xt1-restrained/nanobody_restraints/run_3/system.prmtop
trajin /scratch/PI/rondror/MD_simulations/amber/US28/4xt1-restrained/nanobody_restraints/run_3/Prod_10.nc
center origin '!(:POPC | :TIP3 | :SOD | :CLA)'
image origin center
trajout Prod_10_reimaged.nc
go" >> reimage.in
ml load amber
cpptraj -i reimage.in

cd /scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/US28-active-unpublished/US28-active-unpublished/rep_3
mkdir Prod_11
cd Prod_11
rm reimage.in
echo "parm /scratch/PI/rondror/MD_simulations/amber/US28/4xt1-restrained/nanobody_restraints/run_3/system.prmtop
trajin /scratch/PI/rondror/MD_simulations/amber/US28/4xt1-restrained/nanobody_restraints/run_3/Prod_11.nc
center origin '!(:POPC | :TIP3 | :SOD | :CLA)'
image origin center
trajout Prod_11_reimaged.nc
go" >> reimage.in
ml load amber
cpptraj -i reimage.in

cd /scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/US28-active-unpublished/US28-active-unpublished/rep_3
mkdir Prod_12
cd Prod_12
rm reimage.in
echo "parm /scratch/PI/rondror/MD_simulations/amber/US28/4xt1-restrained/nanobody_restraints/run_3/system.prmtop
trajin /scratch/PI/rondror/MD_simulations/amber/US28/4xt1-restrained/nanobody_restraints/run_3/Prod_12.nc
center origin '!(:POPC | :TIP3 | :SOD | :CLA)'
image origin center
trajout Prod_12_reimaged.nc
go" >> reimage.in
ml load amber
cpptraj -i reimage.in

cd /scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/US28-active-unpublished/US28-active-unpublished/rep_3
mkdir Prod_13
cd Prod_13
rm reimage.in
echo "parm /scratch/PI/rondror/MD_simulations/amber/US28/4xt1-restrained/nanobody_restraints/run_3/system.prmtop
trajin /scratch/PI/rondror/MD_simulations/amber/US28/4xt1-restrained/nanobody_restraints/run_3/Prod_13.nc
center origin '!(:POPC | :TIP3 | :SOD | :CLA)'
image origin center
trajout Prod_13_reimaged.nc
go" >> reimage.in
ml load amber
cpptraj -i reimage.in

cd /scratch/PI/rondror/akma327/DynamicNetworks/data/DynamicNetworksOutput/InteractionOutput/US28-active-unpublished/US28-active-unpublished/rep_3
mkdir Prod_14
cd Prod_14
rm reimage.in
echo "parm /scratch/PI/rondror/MD_simulations/amber/US28/4xt1-restrained/nanobody_restraints/run_3/system.prmtop
trajin /scratch/PI/rondror/MD_simulations/amber/US28/4xt1-restrained/nanobody_restraints/run_3/Prod_14.nc
center origin '!(:POPC | :TIP3 | :SOD | :CLA)'
image origin center
trajout Prod_14_reimaged.nc
go" >> reimage.in
ml load amber
cpptraj -i reimage.in

