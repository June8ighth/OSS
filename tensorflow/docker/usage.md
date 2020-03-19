# Usages

## Build
  - Build the docker image from Dockerfile
    ```
    $ build --rm -f "tensorflow/docker/Dockerfile" -t june8ighth:dl-base-0.1 "tensorflow/docker"
    ```
## Run
  - Run with jupyter
    ```
    $ docker run -it --rm -p 58888:8888 -v ~/Workspace/june8ighth/Test/tensorflow/notebooks:/tf/notebooks -v ~/Data/tensorflow/datasets:/root/.keras/datasets june8ighth:dl-base-0.1
  - Run with tensorboard
    ```
    $ docker run -it --rm -p 56006:6006 -v ~/Data/tensorflow/logs:/tf/logs june8ighth:dl-base-0.1 tensorboard --logdir /tf/logs --bind_all
    ```
