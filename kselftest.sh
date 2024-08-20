#!/bin/bash

docker build -t devcontainer .
docker run --rm --name devcontainer_kselftest \
  -v $LINUX_KERNEL_PATH:/opt/work \
  -w /opt/work -it devcontainer \
  /bin/bash -c "make TARGETS=\"timers\" kselftest"
#  /bin/bash -c "make SPHINXDIRS=\"virt\" pdfdocs"

