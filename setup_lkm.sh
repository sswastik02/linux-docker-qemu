#!/bin/bash

LKM=${LKM:=helloworld}
./compile_lkm.sh
sudo mount ./rootfs.img /mnt
sudo cp ../../linux_mainline/$LKM/$LKM.ko /mnt

sudo umount /mnt
echo -e "\nLKM setup complete"
