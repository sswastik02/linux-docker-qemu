#!/bin/bash

LKM=${LKM:=helloworld}
docker build -t devcontainer .
docker run --rm --name devcontainer_compile_lkm -v $PWD/../../linux_mainline:/opt/work -w /opt/work/$LKM -it devcontainer \
  /bin/bash -c "make -j8"
