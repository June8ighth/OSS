#!/bin/bash

docker build --rm -f "./Dockerfile.tf.od.api" -t june8ighth/tensorflow:object-detection-api-1.0 .
docker build --rm -f "./Dockerfile.tf" -t june8ighth/tensorflow:jupyter-1.0 .