FROM tensorflow/tensorflow:latest-py3-jupyter

# install latest libs
RUN \
    apt update -y && apt upgrade -y && \
    pip install --upgrade pip && \
    # dependencies for tensorflow object detection
    apt install -y git && \
    apt install -y protobuf-compiler && \
    pip install Cython && \
    pip install matplotlib && \
    pip install pillow

# install tensorflow obejct detection api
RUN \
    cd /tf && \
    git clone https://github.com/tensorflow/models.git && \
    cd /tf/models/research && \
    protoc object_detection/protos/*.proto --python_out=. && \
    export PYTHONPATH=$PYTHONPATH:`pwd`:`pwd`/slim
