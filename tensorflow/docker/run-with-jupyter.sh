#!/bin/bash

docker run -it --rm --name june8ighth-tensorflow-object-detection-api-1.0 \
    -p 58888:8888 \
    -v ~/Workspace/june8ighth/Test/tensorflow/notebooks:/tf/notebooks \
    -v ~/Data/tensorflow/datasets:/root/.keras/datasets \
    june8ighth/tensorflow:object-detection-api-1.0 
