#!/bin/bash

LINUX_MAINLINE_SRC_PATH=$PWD/../../linux_mainline
CORES=$(nproc)
cp .config $LINUX_MAINLINE_SRC_PATH 
docker build -t devcontainer .
docker run --rm --name devcontainer_compile_kernel -v $LINUX_MAINLINE_SRC_PATH:/opt/work -w /opt/work -it devcontainer \
  /bin/bash -c "make -j$CORES"

