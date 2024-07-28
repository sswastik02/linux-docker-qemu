#!/bin/bash

_PATH=$PWD/../../linux_mainline
CORES=$(nproc)
cp .config $LINUX_KERNEL_PATH 
docker build -t devcontainer .
docker run --rm --name devcontainer_compile_kernel -v $LINUX_KERNEL_PATH:/opt/work -w /opt/work -it devcontainer \
  /bin/bash -c "make -j$CORES"

