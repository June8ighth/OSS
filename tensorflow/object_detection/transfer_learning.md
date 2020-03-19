# Transfer Learning on the Object Detection

## References
  - [Quick Start: Training a pet detector](https://github.com/tensorflow/models/blob/master/research/object_detection/g3doc/running_pets.md)

## Prerequisites
  - [Tensorflow Object Detection API](https://github.com/tensorflow/models/tree/master/research/object_detection)

## Steps
  1. Run docker container
     ```
     $ docker run -it --rm --name june8ighth-tensorflow -p 58888:8888 -v ~/Workspace/june8ighth/Test/tensorflow/notebooks:/tf/notebooks -v ~/Data/tensorflow/datasets:/root/.keras/datasets june8ighth:dl-base-0.1
     ```
  2. Enter to the shell of the container
     ```
     $ docker exec -it june8ighth-tensorflow /bin/bash
     ```
  3. Get Oxford-IIIT Pets dataset
     ```
     $ cd /tf/models/research
     $ wget -q0- http://www.robots.ox.ac.uk/~vgg/data/pets/data/images.tar.gz | tar xvf -
     $ wget -q0- http://www.robots.ox.ac.uk/~vgg/data/pets/data/annotations.tar.gz | tar xvf -
     ```