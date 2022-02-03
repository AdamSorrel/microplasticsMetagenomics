#!/bin/bash
#PBS -N metagenomics3
#PBS -m ae
#PBS -o /storage/brno3/home/stovicek/Metagenomics/metagenomics3.o
#PBS -e /storage/brno3/home/stovicek/Metagenomics/metagenomics3.e
#PBS -l select=1:ncpus=10:mem=25gb:scratch_local=10gb -l walltime=5:00:00

module add anaconda3-4.0.0

source activate bioconda

project_name=Metagenomics
project_path=/storage/brno3-cerit/home/stovicek/Metagenomics/sequences/
input1=SRR8369863_1.fastq.gz
input2=SRR8369863_2.fastq.gz
output=SRR8369863.fastq.gz

#input1=sample0_F.fastq.gz
#input2=sample0_R.fastq.gz
#output=sample0_sickle_singles.fastq.gz


/storage/brno3-cerit/home/stovicek/Programs/sickle/sickle pe -f ${project_path}${input1} \
-r ${project_path}${input2} \
-t sanger \
-o ${project_path}sickle_trimmed_${input1} \
-p ${project_path}sickle_trimmed_${input2} \
-s ${project_path}sickle_trimmed_singles_${output} \
-q 20 -l 50 -n -g
