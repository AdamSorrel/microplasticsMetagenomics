#!/bin/bash
#PBS -N megahit0
#PBS -m ae
#PBS -o /storage/brno2/home/stovicek/metagenomics/contigs/SRR8369860.o
#PBS -e /storage/brno2/home/stovicek/metagenomics/contigs/SRR8369860.e
#PBS -l select=1:ncpus=20:mem=80gb:scratch_local=50gb -l walltime=16:00:00

module add megahit-1.1.1

#project_name=Metagenomics
input_path=/storage/brno2/home/stovicek/metagenomics/sequences/
output_path=/storage/brno2/home/stovicek/metagenomics/contigs/SRR8369863
input1=sickle_trimmed_SRR8369863_1.fastq.gz
input2=sickle_trimmed_SRR8369863_2.fastq.gz
#input1=head_SRR8369860_1.fastq.gz
#input2=head_SRR8369860_2.fastq.gz
#output=SRR8369863.fastq.gz

megahit -1 ${input_path}${input1} -2 ${input_path}${input2} -o ${output_path} --num-cpu-threads 20
