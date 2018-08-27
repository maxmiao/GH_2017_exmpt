#!/bin/bash

for i in /home/qiime2/Greenhouse_experiment_2017/test_samples/*R1_001.fastq.gz

do
#export PATH=/home/qiime2/miniconda/pkgs/cutadapt-1.15-py35_0/bin/:$PATH
SAMPLE=$(echo ${i} | sed "s/_R1_\001\.fastq.gz//")
echo ${SAMPLE}
cutadapt -a CCGYCAATTYMTTTRAGTT ${SAMPLE}_R1_001.fastq.gz > ${SAMPLE}_R1_trimmed.fastq

mv ${SAMPLE}_R1_trimmed.fastq /home/qiime2/Greenhouse_experiment_2017/trimmed_ITS/ 

done 

