FROM tensorflow/tensorflow:1.15.5

ENV DEBIAN_FRONTEND=noninteractive

RUN apt update -y
RUN apt install git cmake build-essential libgl1-mesa-dev libsdl2-dev \
libsdl2-image-dev libsdl2-ttf-dev libsdl2-gfx-dev libboost-all-dev \
libdirectfb-dev libst-dev mesa-utils xvfb x11vnc python3-pip -y
RUN python3 -m pip install --upgrade pip setuptools wheel
RUN python3 -m pip install psutil
RUN python3 -m pip install gfootball
RUN python3 -m pip install dm-sonnet==1.* psutil
RUN python3 -m pip install git+https://github.com/openai/baselines.git@master
