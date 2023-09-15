#!/bin/bash
#SBATCH --job-name=GPU
#SBATCH --partition=debug
#SBATCH -n 2
#SBATCH --ntasks-per-node=2
#SBATCH --gres=gpu:2
#SBATCH --output=%j.out
#SBATCH --error=%j.err

source ~/.bashrc

export PROJ_PATH=/public/home/v-liuym/projects/UniDexGrasp/dexgrasp_generation
export CUDA_PATH=/public/software/CUDA/cuda-9.2
export SINGULARITY_BIND=$CUDA_PATH,/etc

cd $PROJ_PATH
singularity run ~/containers/unidexgrasp.sif ./slurm_scripts/eval.sh