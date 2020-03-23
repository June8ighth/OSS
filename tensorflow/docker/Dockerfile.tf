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

