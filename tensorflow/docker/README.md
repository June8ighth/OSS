# Custom Docker Image Usages

## References
 - [Build and run your image](https://docs.docker.com/get-started/part2/)

## Prerequisites
 - [Docker Engine](https://docs.docker.com/install/)
 - [Git](../../git/README.md)

## Build Images
 - Get Dockerfile from repository
    ```
    $ git clone https://github.com/June8ighth/OSS.git
    $ cd OSS/tensorflow/docker
    ```
 - Build the docker image from Dockerfile
    ```
    # from OSS/tensorflow/docker
    $ ./build.sh
    ```

## Run a container
  - Run with shell
    ```
    # from OSS/tensorflow/docker
    $ ./run.sh
    ```
  - Run with jupyter
    ```
    # from OSS/tensorflow/docker
    $ ./run-with-jupyter.sh
    ```
  - Run with tensorboard
    ```
    # from OSS/tensorflow/docker
    $ ./run-with-tensorboard.sh
    ```
