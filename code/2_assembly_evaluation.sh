#!/bin/bash -l

#SBATCH -A g2018003
#SBATCH -p core
#SBATCH -n 1 
#SBATCH -t 01:00:00
#SBATCH -J 2_assembly_eval
#SBATCH --mail-type=ALL
#SBATCH --mail-user ina.oden_osterbo.5951@student.uu.se

#modules
module load bioinfo-tools quast/4.5.4

#commands
quast \
-o /home/inod5951/GA_Project/data/assembled_data/DNA/PacBio/QUAST_eval/
