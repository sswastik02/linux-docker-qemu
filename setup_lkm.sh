#!/bin/bash

_PATH=$PWD/../../linux_mainline
LKM=${LKM:=helloworld}
./compile_lkm.sh
sudo mount ./rootfs.img /mnt
sudo cp $LINUX_KERNEL_PATH/$LKM/$LKM.ko /mnt

sudo umount /mnt
echo -e "\nLKM setup complete"
