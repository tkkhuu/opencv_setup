FROM ubuntu:bionic

RUN apt-get update && apt-get upgrade

RUN apt-get install -y 	cmake \
		       	build-essential \
		       	git \
		    	libgtk2.0-dev \
		    	pkg-config \
		    	libavcodec-dev \
		    	libavformat-dev \
		    	libswscale-dev

RUN cd /tmp && \
    git clone https://github.com/opencv/opencv.git && \
    cd opencv && \
    ls && \
    git checkout 4.1.1 && \
    mkdir build && \
    cd build && \
    cmake -D CMAKE_BUILD_TYPE=Release -D CMAKE_INSTALL_PREFIX=/usr/local .. && \
    make -j7 && \
    make install 


