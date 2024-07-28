# Linux kernel docker compiler and qemu runner

This project is a collection of scripts for compiling and running linux kernel in a containerized environment

# Tools Required

| Tool | Usage|
|-|-|
|Docker|Devcontainer (for build)
|qemu-system| Emulator for running kernel 
|mkfs.ext4| Root file system
| dd | Format disk image

# Usage 

> [!IMPORTANT]
> Please modify the variable `LINUX_KERNEL_PATH` in the `env.sh` before proceeding with below scripts

1. Source `env.sh`
```sh
source ./env.sh
```
2. Compile the kernel
```sh
./compile_kernel.sh
```
3. Create the root file system (debian)
```sh
./create_rootfs.sh
```
4. Run the kernel in `qemu`
```sh
./start_vm.sh
```
