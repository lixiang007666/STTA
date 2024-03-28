#!/usr/bin/env bash

CONFIG="local_configs/segformer/B5/segformer.b5.brats.py"
GPUS=$1
PORT=${PORT:-29606}

PYTHONPATH="$(dirname $0)/..":$PYTHONPATH \
CUDA_VISIBLE_DEVICES=0,1,2,3,4,5,6,7 python -m torch.distributed.launch --nproc_per_node=$GPUS --master_port=$PORT \
    $(dirname "$0")/train.py $CONFIG --launcher pytorch ${@:3}
