#! /bin/bach -l

#SBATCH -A g2018003
#SBATCH -p core
#SBATCH -n 1
#SBATCH -t 08:00:00
#SBATCH -J 1_pb_assembly
#SBATCH --mail-type=ALL
#SBATCH --mail-user ina.oden_osterbo.5951@student.uu.se

# Load modules
module load bioinfo-tools

# Commands 
canu \
-p *name* \
-d *output directory* \
genomeSize=** \
-pacbio-raw *input file directory* 
