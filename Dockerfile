FROM nvidia/cuda:11.3.1-devel-ubuntu20.04

RUN apt update && apt install -y bash \
                   git \
                   curl

RUN apt-get update && apt-get install -y python3 python3-pip

RUN apt-get install -y swig

RUN python3 -m pip install mujoco==2.2.0 \
        gym==0.25.2 \
        tensorboard==2.10.0 \
        tensorboardX==2.5.1 \
        matplotlib==3.5.3 \
        ipython==7.34.0 \
        moviepy==1.0.3 \
        pyvirtualdisplay==3.0 \
        torch==1.12.1 \
        opencv-python==4.6.0.66 \
        ipdb==0.13.9 \
        # this need to match the version of box2d-py
        decorator===4.0.2 \
        box2d-py==2.3.8