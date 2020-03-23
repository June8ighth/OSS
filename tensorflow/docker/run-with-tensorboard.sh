#!/bin/bash

docker run -it --rm --name june8ighth-tensorflow-object-detection-api-1.0 \
    -p 56006:6006 \
    -v ~/Data/tensorflow/logs:/tf/logs \
    june8ighth/tensorflow:jupyter-1.0 tensorboard --logdir /tf/logs --bind_all
