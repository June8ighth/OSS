#!/bin/bash

docker build --rm -f "./Dockerfile.tf.jp.od.api" -t june8ighth/tensorflow:jupyter_object-detection-api-1.0 .
docker build --rm -f "./Dockerfile.tf.jp" -t june8ighth/tensorflow:jupyter-1.0 .