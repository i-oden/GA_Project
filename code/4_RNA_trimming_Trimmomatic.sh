#!/bin/bash -l

#SBATCH -A g2018003
#SBATCH -p core
#SBATCH -n 1
#SBATCH -t 04:00:00
#SBATCH -J 4_RNA_Illumina_trimming
#SBATCH	--mail-type=ALL
#SBATCH --mail-user ina.oden_osterbo.5951@student.uu.se

module load bioinfo-tools trimmomatic

trimmomatic PE -threads 1 -phred64 /home/inod5951/GA_Project/data/raw_data/RNA/Illumina/1_RNA_Illumina_Serum_F.fastq.gz /home/inod5951/GA_Project/data/raw_data/RNA/Illumina/2_RNA_Illumina_Serum_R.fastq.gz \
/home/inod5951/GA_Project/data/trimmed_data/RNA/Illumina/out_F_paired.fastq.gz /home/inod5951/GA_Project/data/trimmed_data/RNA/Illumina/out_F_unpaired_fastq.gz /home/inod5951/GA_Project/data/trimmed_data/RNA/Illumina/out_R_paired.fastq.gz /home/inod5951/GA_Project/data/trimmed_data/RNA/Illumina/out_R_unpaired.fastq.gz \

