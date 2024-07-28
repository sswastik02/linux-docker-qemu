#!/bin/bash

# Copy bzimage to cwd
cp ../../linux_mainline/arch/x86_64/boot/bzImage .
# Start VM
qemu-system-x86_64 \
  -kernel bzImage \
  -append "console=ttyS0,115200 root=/dev/vda rw" \
  -drive file=./rootfs.img,format=raw,index=0,if=virtio \
  -nographic \
  -enable-kvm

