# Tensorflow Object Detection API Installation

## References
  - [Tensorflow Object Detection API](https://github.com/tensorflow/models/tree/master/research/object_detection)
  - [Tensorflow Object Detection API Installation](https://github.com/tensorflow/models/blob/master/research/object_detection/g3doc/installation.md)

## Prerequisites
  - [Ubuntu 18.04](https://ubuntu.com/#download)
  - [Python 3](https://www.python.org/)
  - [Tensorflow](https://www.tensorflow.org/install/)
  - [Git](git/README.md)
  - [Tensorflow Models](https://github.com/tensorflow/models.git)

## Steps
  1. Dependencies
     ```
     $ apt update -y && apt upgrade -y 
     $ apt install -y git
     $ apt install -y protobuf-compiler
     $ pip install --upgrade pip
     $ pip install --user Cython
     $ pip install --user matplotlib
     $ pip install --user pillow
     // $ pip install tensorflow==1.15.2 
     ```   
  2. Get Tensorflow Models
     ```
     $ cd /tf
     $ git clone https://github.com/tensorflow/models.git
     ```  
  3. Protobuf Compilation
    ```
    $ cd /tf/models/research
    $ protoc object_detection/protos/*.proto --python_out=.
    ```
  4. Add Libraries to PYTHONPATH
    ```
    $ cd /tf/models/research
    $ export PYTHONPATH=$PYTHONPATH:`pwd`:`pwd`/slim
    ```