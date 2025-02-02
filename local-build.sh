#!/bin/bash

workspace=$(pwd) && \
export PATH="$workspace/mingw64:$workspace/mingw64/bin:$workspace/msys64/usr/bin:/usr/bin" && \
g++ --version && \
cd $1 && \
autoreconf -ivf && \
sed -i "s/RM='\$RM'/RM='\$RM -f'/" ./configure && \
./configure --help && \
./configure --with-expat=no --enable-static --prefix="$workspace/installation" && \
make && \
make install
