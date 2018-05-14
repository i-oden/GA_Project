#!/bin/bash -l

#SBATCH -A g2018003
#SBATCH -p core
#SBATCH -n 1
#SBATCH -t 15:00:00
#SBATCH -J 7_DiffExp_2
#SBATCH --mail-type=ALL
#SBATCH --mail-user your_email

#modules
module load bioinfo-tools python/2.7.9 htseq

#commands
python -m HTSeq.scripts.count -f bam -r pos -t CDS -i ID \
/home/inod5951/GA_Project/data/mapped_data/RNA/Illumina/run/sorted_BHI1.bam \
/home/inod5951/GA_Project/data/annotated_data/Prokka/efaecium_annot.gff > count_BHI1.txt;
python -m HTSeq.scripts.count -f bam -r pos -t CDS -i ID \ 
/home/inod5951/GA_Project/data/mapped_data/RNA/Illumina/run/sorted_BHI2.bam \
/home/inod5951/GA_Project/data/annotated_data/Prokka/efaecium_annot.gff > count_BHI2.txt;
python -m HTSeq.scripts.count -f bam -r pos -t CDS -i ID \ 
/home/inod5951/GA_Project/data/mapped_data/RNA/Illumina/run/sorted_BHI3.bam \
/home/inod5951/GA_Project/data/annotated_data/Prokka/efaecium_annot.gff > count_BHI3.txt;
python -m HTSeq.scripts.count -f bam -r pos -t CDS -i ID \ 
/home/inod5951/GA_Project/data/mapped_data/RNA/Illumina/run/sorted_Serum1.bam \
/home/inod5951/GA_Project/data/annotated_data/Prokka/efaecium_annot.gff > count_Serum1.txt;
python -m HTSeq.scripts.count -f bam -r pos -t CDS -i ID \
/home/inod5951/GA_Project/data/mapped_data/RNA/Illumina/run/sorted_Serum2.bam \
/home/inod5951/GA_Project/data/annotated_data/Prokka/efaecium_annot.gff > count_Serum2.txt;
python -m HTSeq.scripts.count -f bam -r pos -t CDS -i ID \
/home/inod5951/GA_Project/data/mapped_data/RNA/Illumina/run/sorted_Serum3.bam \
/home/inod5951/GA_Project/data/annotated_data/Prokka/efaecium_annot.gff > count_Serum3.txt;
