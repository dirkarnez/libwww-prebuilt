#!/bin/bash

# cd $1 && \
workspace=$(pwd) && \
export PATH="$workspace/mingw64:$workspace/mingw64/bin:$workspace/msys64/usr/bin:/usr/bin" && \
g++ --version && \
./configure --help && \
./configure -static --prefix="$workspace/installation" && \
make install
