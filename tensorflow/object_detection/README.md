# Object Detection API

## References
 - [Tensorflow Object Detection API - GitHub](https://github.com/tensorflow/models/tree/master/research/object_detection)
 - [Tensorflow Object Detection API Docker Image Usage](../docker/README.md)

## Prerequisites
 - [Tensorflow Object Detection API Docker Image](../docker/README.md)

## Usages
 1. Prepare dataset
    - TBD
 2. Get pre-trained Model
    - TBD
 3. Configure pipeline
    - TBD

<!-- 
## Prerequisites
 - [Ubuntu 18.04](https://ubuntu.com/#download)
 - [Python 3](https://www.python.org/)
 - [Tensorflow 1.x](https://www.tensorflow.org/install/) 
    >**Note: Now (Mar, 2020), tensorflow 2.x does not fully support backward compatibility with 1.x in Object Detection API codes**
 - [Git](git/README.md)
 - [Tensorflow Models](https://github.com/tensorflow/models.git)

## Installation
 1. Dependency Installation
  - Install Dependencies
    ```
    $ apt install -y protobuf-compiler
    $ pip install --upgrade pip
    $ pip install --user Cython
    $ pip install --user matplotlib
    $ pip install --user pillow
    $ pip install tensorflow==1.15.2
    ```   
  - Get Tensorflow Models
    ```
    $ cd /tf
    $ git clone https://github.com/tensorflow/models.git
    ```   
 2. COCO API Installation
  - Download the [cocoapi](https://github.com/cocodataset/cocoapi)
    ```
    $ cd tf/dataset
    $ git clone https://github.com/cocodataset/cocoapi.git
    $ cd cocoapi/PythonAPI
    $ make
    $ cp -r pycocotools /tf/models/research/
    ```
  - Protobuf Compilation
    ```
    $ cd /tf/models/research
    $ protoc object_detection/protos/*.proto --python_out=.
    ```
  - Add Libraries to PYTHONPATH
    ```
    $ cd /tf/models/research
    $ export PYTHONPATH=$PYTHONPATH:`pwd`:`pwd`/slim
    ```
  - Testing the Installation
    ```
    $ cd /tf/models/research
    $ python object_detection/builders/model_builder_test.py
    ``` -->