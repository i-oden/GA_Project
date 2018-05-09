#!/bin/bash -l

#SBATCH -A g2018003 
#SBATCH -p core
#SBATCH	-n 2
#SBATCH	-t 15:00:00
#SBATCH	-J 7_DiffExp
#SBATCH	--mail-type=ALL
#SBATCH	--mail-user your_email

#modules
module load bioinfo-tools

#commands
path=$(echo /home/inod5951/GA_Project/data/mapped_data/RNA/Illumina/sorted_)

for file in Serum1 Serum2 Serum3 BHI1 BHI2 BHI3; do
echo $file;
htseq-count --format=bam <alignment_file> $path$file <gff_file>
done
