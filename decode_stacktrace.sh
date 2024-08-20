#!/bin/bash

docker build -t devcontainer .
docker run --rm --name devcontainer_decode_stacktrace \
  -v $STACK_TRACE_DIR:/opt/stack/trace \
  -v $LINUX_KERNEL_PATH:/opt/work \
  -w /opt/work -it devcontainer \
  /bin/bash -c "./scripts/decode_stacktrace.sh ./vmlinux . < /opt/stack/trace/$STACK_TRACE_LOG"

