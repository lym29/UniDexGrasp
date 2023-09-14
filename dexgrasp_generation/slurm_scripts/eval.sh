#!/bin/bash

source /usr/miniconda3/etc/profile.d/conda.sh
conda activate unidexgrasp
cd /public/home/v-liuym/projects/UniDexGrasp/dexgrasp_generation
python ./network/eval.py  --config-name eval_config \
                          --exp-dir=./eval