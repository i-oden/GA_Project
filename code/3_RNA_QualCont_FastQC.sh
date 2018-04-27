#!/bin/bash -l

#SBATCH -A g2018003
#SBATCH -p core
#SBATCH -n 1
#SBATCH -t 01:00:00
#SBATCH -J 3_RNAraw_QualCheck
#SBATCH --mail-type=ALL
#SBATCH --mail-user ina.oden_osterbo.5951@student.uu.se

module load bioinfo-tools FastQC

fastqc /home/inod5951/GA_Project/data/raw_data/RNA/Illumina/*
