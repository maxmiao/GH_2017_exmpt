#!/bin/bash

for i in /home/qiime2/Greenhouse_experiment_2017/test_samples/*R2_001.fastq.gz

do
SAMPLE=$(echo ${i} | sed "s/_R2_\001\.fastq.gz//")
echo ${SAMPLE} 
cutadapt -a GATGAAGAACGYAGYRAA --discard-trimmed -m 1 ${SAMPLE}_R2_001.fastq.gz > ${SAMPLE}_R2_trimmed.fastq

mv ${SAMPLE}_R2_trimmed.fastq /home/qiime2/Greenhouse_experiment_2017/trimmed_16S/

done 


