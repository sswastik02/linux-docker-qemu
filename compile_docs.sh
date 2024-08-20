#!/bin/bash

docker build -t devcontainer .
docker run --rm --name devcontainer_compile_docs \
  -v ./etc/ImageMagick-6:/etc/ImageMagick-6 \
  -v $LINUX_KERNEL_PATH:/opt/work \
  -w /opt/work -it devcontainer \
  /bin/bash -c "make infodocs"
#  /bin/bash -c "make SPHINXDIRS=\"virt\" pdfdocs"

