#!/bin/bash -l

#SBATCH -A g2018003
#SBATCH -p core
#SBATCH -n 1
#SBATCH -t 04:00:00
#SBATCH -J 4_RNA_Illumina_trimming
#SBATCH	--mail-type=ALL
#SBATCH --mail-user ina.oden_osterbo.5951@student.uu.se

module load bioinfo-tools trimmomatic

java -jar $TRIMMOMATIC_HOME/trimmomatic.jar PE -threads 1 -phred33 \
/home/inod5951/GA_Project/data/raw_data/RNA/Illumina/1_RNA_Illumina_Serum_F.fastq.gz \
/home/inod5951/GA_Project/data/raw_data/RNA/Illumina/2_RNA_Illumina_Serum_R.fastq.gz \
/home/inod5951/GA_Project/data/trimmed_data/RNA/Illumina/1st/output_forward_paired.fq.gz \
/home/inod5951/GA_Project/data/trimmed_data/RNA/Illumina/1st/output_forward_unpaired.fq.gz \
/home/inod5951/GA_Project/data/trimmed_data/RNA/Illumina/1st/output_reverse_paired.fq.gz \
/home/inod5951/GA_Project/data/trimmed_data/RNA/Illumina/1st/output_reverse_unpaired.fq.gz \
ILLUMINACLIP:$TRIMMOMATIC_HOME/adapters/TruSeq3-PE.fa:2:30:10 \
LEADING:3 TRAILING:3 SLIDINGWINDOW:4:15 MINLEN:36;
