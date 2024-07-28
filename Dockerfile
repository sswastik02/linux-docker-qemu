FROM debian:trixie

# Install dependencies for building a basic directory 
RUN apt update
RUN apt install -y build-essential bc make debootstrap vim qemu-system qemu-user-static libelf-dev libncurses-dev libssl-dev flex bison zstd binutils-dev


