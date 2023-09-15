#!/bin/bash
#SBATCH --job-name=GPU
#SBATCH --partition=debug #critical_a40
#SBATCH -n 1
#SBATCH --ntasks-per-node=1
#SBATCH --gres=gpu:NVIDIAGeForceRTX2080Ti:1   #NVIDIATITANRTX  gpu:NVIDIAA40:1  NVIDIAGeForceRTX2080Ti  TeslaM4024GB  NVIDIAGeForceGTX1080 NVIDIAA40
#SBATCH --output=/public/home/v-liuym/sbatch-out/%j.out
#SBATCH --error=/public/home/v-liuym/sbatch-out/%j.err

export CUDA_PATH=/public/software/CUDA
export PROJ_PATH=/public/home/v-liuym/projects/UniDexGrasp/dexgrasp_generation/slurm_scripts
singularity exec --nv -B $CUDA_PATH ~/containers/unidexgrasp.sif bash eval.sh