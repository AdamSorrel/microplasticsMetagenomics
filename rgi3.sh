#!/bin/bash
#PBS -N rgi0
#PBS -m ae
#PBS -o /storage/brno2/home/stovicek/metagenomics/rgi/SRR8369863.o
#PBS -e /storage/brno2/home/stovicek/metagenomics/rgi/SRR8369863.e
#PBS -l select=1:ncpus=15:mem=60gb:scratch_local=50gb -l walltime=16:00:00

source /storage/brno2/home/stovicek/.bashrc

conda activate rgi

cd /storage/brno2/home/stovicek/metagenomics/rgi/

rgi main -i /storage/brno2/home/stovicek/metagenomics/contigs/SRR8369863_contigs.fasta \
-o /storage/brno2/home/stovicek/metagenomics/rgi/output/SRR8369863.txt \
-t contig \
-a DIAMOND \
-n 15 \
--local
