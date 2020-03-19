# Object Detection

## References
 - [Tensorflow Object Detection GitHub](https://github.com/tensorflow/models/tree/master/research/object_detection)

## Prerequisites
 - [Ubuntu 18.04](https://ubuntu.com/#download)
 - [Python 3](https://www.python.org/)
 - [Tensorflow](https://www.tensorflow.org/install/)
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
    ```