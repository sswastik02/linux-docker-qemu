#!/bin/bash

debootstrap --arch amd64 stable /mnt 
chroot /mnt /bin/bash<<eof
echo -e "pass\npass" | passwd root
eof
