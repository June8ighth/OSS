#!/bin/bash

docker run -it --rm --name june8ighth-tensorflow-jupyter_object-detection-api-1.0 \
    -p 58888:8888 \
    -v ~/gdrive_j8/DeepLearning/data/Oxford-IIIT-Pet/tfrecords:/tf/data \
    -v ~/gdrive_j8/DeepLearning/models/faster_rcnn_resnet101_pets:/tf/model \
    -v ~/gdrive_j8/DeepLearning/datasets:/root/.keras/datasets \
    -v ~/Workspace/june8ighth/OSS/tensorflow/object_detection:/tf/notebooks \
    june8ighth/tensorflow:jupyter_object-detection-api-1.0

# jupyter listen port : 58888
# volume mount : dataset, model, external_dataset, notebook
