# Usages

## Build
  - Build the docker image from Dockerfile
    ```
    # from docker/
    $ docker build --rm -f "./Dockerfile.tf" -t june8ighth/tensorflow:jupyter-1.0 .
    ```
## Run
  - Run with jupyter
    ```
    # from docker/
    $ docker run -it --rm --name june8ighth-tensorflow-object-detection-api-1.0 \
        -p 58888:8888 \
        -v ~/Workspace/june8ighth/Test/tensorflow/notebooks:/tf/notebooks \
        -v ~/Data/tensorflow/datasets:/root/.keras/datasets \
        june8ighth/tensorflow:object-detection-api-1.0 
    ```
  - Run with tensorboard
    ```
    $ docker run -it --rm --name june8ighth-tensorflow-object-detection-api-1.0 \
        -p 56006:6006 \
        -v ~/Data/tensorflow/logs:/tf/logs \
        june8ighth/tensorflow:jupyter-1.0 tensorboard --logdir /tf/logs --bind_all

    ```
