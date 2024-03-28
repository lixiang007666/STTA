#!/usr/bin/env bash

CONFIG="local_configs/segformer/B5/segformer.b5.brats_t2.py"
CHECKPOINT="pretrained/source.pth"
GPUS=$1
PORT=${PORT:-39505}
PYTHONPATH="$(dirname $0)/..":$PYTHONPATH \
CUDA_VISIBLE_DEVICES=7 python -m torch.distributed.launch --nproc_per_node=$GPUS --master_port=$PORT \
    $(dirname "$0")/stta.py $CONFIG $CHECKPOINT --launcher pytorch ${@:4}
