#!/bin/bash

LINUX_MAINLINE_SRC_PATH=$PWD/../../linux_mainline
# Copy bzimage to cwd
cp $LINUX_MAINLINE_SRC_PATH/arch/x86_64/boot/bzImage .
# Start VM
qemu-system-x86_64 \
  -kernel bzImage \
  -append "console=ttyS0,115200 root=/dev/vda rw" \
  -drive file=./rootfs.img,format=raw,index=0,if=virtio \
  -nographic \
  -enable-kvm

