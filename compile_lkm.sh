#!/bin/bash

_PATH=$PWD/../../linux_mainline
LKM=${LKM:=helloworld}
docker build -t devcontainer .
docker run --rm --name devcontainer_compile_lkm -v $LINUX_KERNEL_PATH:/opt/work -w /opt/work/$LKM -it devcontainer \
  /bin/bash -c "make"
