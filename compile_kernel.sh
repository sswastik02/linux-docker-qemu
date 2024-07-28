#!/bin/bash

cp .config ../../linux_mainline
docker build -t devcontainer .
docker run --rm --name devcontainer_compile_kernel -v $PWD/../../linux_mainline:/opt/work -w /opt/work -it devcontainer \
  /bin/bash -c "make -j8"

