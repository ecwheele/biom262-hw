<<<<<<< HEAD
<<<<<<>
=======
>>>>>>> 3e502aff30369be1679b37062b34b470709c3a5c
=======
>>>>>>> c3855082617973dca69c01b826fc56330ee75dd9
#!/bin/bash
#PBS -q hotel
##PBS -N tf_binding.sh
#PBS -l nodes=10:ppn=2
#PBS -l walltime=0:50:00
#PBS -o tf_binding.sh.o
#PBS -e ef_binding.sh.e
#PBS -V
<<<<<<< HEAD
=======
#PBS -M e1luo@ucsd.edu
#PBS -m abe
#PBS -A e1luo
<<<<<<< HEAD
#cd /oasis/tscc/scratch/e1luo
#mpirun -v -machinefile $PBS_NODEFILE -np 20 <./mpi.out>
cd /home/ecwheele/biom262/code/biom262-2016/weeks/week01/data
>>>>>>> 3e502aff30369be1679b37062b34b470709c3a5c
=======
cd ~/code/biom262-2016/weeks/week01/data

>>>>>>> c3855082617973dca69c01b826fc56330ee75dd9

awk -F "\t" '{if($3 == "transcript") {print $0}}' gencode.v19.annotation.chr22.gtf > gencode.v19.annotation.chr22.transcript.gtf 
#EXERCISE3 (include loading of biotools)
bedtools intersect -a gencode.v19.annotation.chr22.transcript.promoter.gtf -b tf.nfkb.bed > gencode.v19.annotation.chr22.transcript.promoter.nfkb.gtf
bedtools getfasta -fi GRCh37.p13.chr22.fa -bed gencode.v19.annotation.chr22.transcript.promoter.nfkb.gtf -fo gencode.v19.annotation.chr22.transcript.promoter.nfkb.fasta
#Exercise 4: Use bedtools intersect to overlap TFs with promoter
bedtools intersect -a gencode.v19.annotation.chr22.transcript.promoter.gtf -b tf.nfkb.bed > gencode.v19.annotation.chr22.transcript.promoter.nfkb.gtf
#Exercise 5: Use bedtools getfasta to extract sequences
bedtools getfasta -fi GRCh37.p13.chr22.fa -bed gencode.v19.annotation.chr22.transcript.promoter.nfkb.gtf -s  -fo gencode.v19.annotation.chr22.transcript.promoter.nfkb.fasta
#EXERCISE6


echo "Hello I am a message in standard out (stdout)" 



