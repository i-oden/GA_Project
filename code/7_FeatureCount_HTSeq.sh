#!/bin/bash -l

#SBATCH -A g2018003 
#SBATCH -p core
#SBATCH	-n 1
#SBATCH	-t 15:00:00
#SBATCH	-J 7_DiffExp
#SBATCH	--mail-type=ALL
#SBATCH	--mail-user ina.oden_osterbo.5951@student.uu.se

#modules
module load bioinfo-tools python/2.7.9 htseq/0.9.1

#commands
path=$(echo /home/inod5951/GA_Project/data/mapped_data/RNA/Illumina/run/sorted_)
bamend=$(echo .bam)
txtend=$(echo .txt)

for file in Serum1 Serum2 Serum3 BHI1 BHI2 BHI3; do
python -m HTSeq.scripts.count -f bam -r pos -t CDS -i ID $path$file$bamend \
/home/inod5951/GA_Project/data/annotated_data/Prokka/efaecium_annot.gff > count_$file$txtend;
done
