#!/bin/bash -l

#SBATCH -A g2018003
#SBATCH -p core
#SBATCH -n 2
#SBATCH -t 02:00:00
#SBATCH -J 6_RNAmapping_BWA
#SBATCH --mail-type=ALL
#SBATCH --mail-user ina.oden_osterbo.5951@student.uu.se

# modules
module load bioinfo-tools bwa samtools

# commands

bwa index -p genomeindex /home/inod5951/GA_Project/data/assembled_data/DNA/PacBio/efaecium.contigs.fasta; 

path=$(echo /home/inod5951/GA_Project/data/trimmed_data/RNA/Illumina/all/RNA_trimmed_p_)
F=$(echo _F)
R=$(echo _R)
end=$(echo .fastq.gz)

for file in Serum1 Serum2 Serum3 BHI1 BHI2 BHI3; do
bwa mem -t 1 genomeindex $path$file$F$end $path$file$R$end | samtools view -bS - \
| samtools sort - > sorted_$file;
done
