#!/bin/bash 

for i in /home/qiime2/Greenhouse_experiment_2017/unzipped_GH17-seqs/*R1_001.fastq

do
SAMPLE=$(echo ${i} | basename ${i} _R1_001.fastq ) 
echo ${SAMPLE}
cutadapt -a CCGYCAATTYMTTTRAGTT -A GTGCCAGCMGCCGCGGTAA --match-read-wildcards --discard-trimmed -m 1 -o /home/qiime2/Greenhouse_experiment_2017/trimmed_ITS/${SAMPLE}_R1_trimmed.fastq -p /home/qiime2/Greenhouse_experiment_2017/trimmed_ITS/${SAMPLE}_R2_trimmed.fastq /home/qiime2/Greenhouse_experiment_2017/unzipped_GH17-seqs/${SAMPLE}_R1_001.fastq /home/qiime2/Greenhouse_experiment_2017/unzipped_GH17-seqs/${SAMPLE}_R2_001.fastq

mv /home/qiime2/Greenhouse_experiment_2017/trimmed_ITS/${SAMPLE}_R1_trimmed.fastq /home/qiime2/Greenhouse_experiment_2017/trimmed_ITS/

mv /home/qiime2/Greenhouse_experiment_2017/trimmed_ITS/{SAMPLE}_R2_trimmed.fastq /home/qiime2/Greenhouse_experiment_2017/trimmed_ITS/

done

