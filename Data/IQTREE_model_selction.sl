#!/bin/bash -e
#SBATCH --account massey03727
#SBATCH --job-name=iqtree # job name (shows up in the queue)
#SBATCH --output=iqtree.log
#SBATCH --time=02:00:00 # Walltime (HH:MM:SS)
#SBATCH --cpus-per-task=16 # number of cpus/threads, in our case 4
#SBATCH --mem=20GB            # Memory in MB

module purge

module load IQ-TREE/2.2.2.2-gimpi-2022a

# iqtree -s STEC_144.fasta -m MF

iqtree --redo -s STEC_Clade1.fasta -m MF

iqtree --redo -s STEC_Clade2.fasta -m MF

iqtree --redo -s STEC_Clade3.fasta -m MF
