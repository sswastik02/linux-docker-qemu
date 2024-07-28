#!/bin/bash

# Create & Format rootfs
dd if=/dev/zero of=./rootfs.img bs=1G count=2 status=progress
mkfs.ext4 ./rootfs.img

sudo mount ./rootfs.img /mnt

# Build the rootfs using devcontainer
docker build -t devcontainer .
docker run --rm --name devcontainer_create_disk -v `pwd`:/opt/work -v /mnt:/mnt -w /opt/work -it devcontainer \
  /bin/bash -c "./setup_rootfs_dc.sh"

sudo umount /mnt

echo -e "\nRoot file system initialized"
