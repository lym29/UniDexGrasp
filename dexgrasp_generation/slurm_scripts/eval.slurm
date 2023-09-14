#!/bin/bash
#SBATCH --job-name=GPU
#SBATCH --partition=debug
#SBATCH -n 2
#SBATCH --ntasks-per-node=2
#SBATCH --gres=gpu:2
#SBATCH --output=%j.out
#SBATCH --error=%j.err

export PROJ_PATH=/public/home/v-liuym/projects/UniDexGrasp/dexgrasp_generation

cd $PROJ_PATH
singularity run ~/containers/grasp.sif ./slurm_scripts/eval.sh