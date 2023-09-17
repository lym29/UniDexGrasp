#!/bin/bash

source /usr/miniconda3/etc/profile.d/conda.sh
conda activate unidexgrasp

export PATH=/public/software/CUDA/cuda-11.4/bin${PATH:+:${PATH}}
export LD_LIBRARY_PATH=/public/software/CUDA/cuda-11.4/lib64${LD_LIBRARY_PATH:+:${LD_LIBRARY_PATH}}

nvcc --version
nvidia-smi

cd /public/home/v-liuym/projects/UniDexGrasp/dexgrasp_generation

python ./network/train.py --config-name ipdf_config \
                          --exp-dir ./ipdf_train