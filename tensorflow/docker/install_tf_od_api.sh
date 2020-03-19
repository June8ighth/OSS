#!/bin/bash

if [ ! -d "/tf/models/research" ]; then
    echo "installing tensorflow object detection api"
    cd /tf
    git clone https://github.com/tensorflow/models.git 
    echo "...done."
fi

echo "configuring tensorflow object detection api"
cd /tf/models/research
protoc object_detection/protos/*.proto --python_out=. 
export PYTHONPATH=$PYTHONPATH:`pwd`:`pwd`/slim
echo "...done."