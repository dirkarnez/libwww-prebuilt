#!/bin/bash

workspace=$(pwd) && \
export PATH="$workspace/mingw64:$workspace/mingw64/bin:$workspace/msys64/usr/bin:/usr/bin" && \
g++ --version && \
cd $1 && \
autoreconf -ivf && \
./configure --help && \
./configure --with-expat=no --enable-static --prefix="$workspace/installation" && \
make install
