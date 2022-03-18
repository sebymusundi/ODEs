#! /bin/bash

VAR=$(cat sequences.txt)
URL="ftp://ftp.sra.ebi.ac.uk/vol1/fastq/SRR425/000/"
for  i in ${VAR}
	do
	echo  "(o) downloading entry ${i}"
	wget $URL${i}/${i}.fastq.gz
	echo  "(o) done downloading entry ${i}"
done


