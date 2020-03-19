# Tensorflow Docker

## References
 - [Tensorflow Docker](https://www.tensorflow.org/install/docker)

## Prerequisites
 - [Docker Engine](https://docs.docker.com/install/)
 - [NVIDIA Docker](https://github.com/NVIDIA/nvidia-docker)
 - [Official Tensorflow Docker Image](https://hub.docker.com/r/tensorflow/tensorflow/)
 
## Usage
 1. CPU-Only container
  - Download
    ```
    $ docker pull tensorflow/tensorflow 
    or $ docker pull tensorflow/tensorflow:latest-jupyter
    ```
  - Run with bash shell
    ```
    $ docker run -it --rm -v ~/Data/tensorflow/dataset:/tf/dataset tensorflow/tensorflow bash
    ```
  - Run with jupyter server
    ```
    $ docker run -it --rm -p 58888:8888 -v ~/Workspace/june8ighth/Test/tensorflow/notebooks:/tf/notebooks -v ~/Data/tensorflow/datasets:/root/.keras/datasets -v ~/Data/tensorflow/logs:/tf/logs tensorflow/tensorflow:latest-jupyter
    ```
  - Run with tensorboard
    ```
    $ docker run -it --rm -p 56006:6006 -v ~/Data/tensorflow/logs:/tf/logs tensorflow/tensorflow:latest-jupyter tensorboard --logdir /tf/logs --bind_all
    ```

    