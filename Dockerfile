FROM debian:stable

# Install dependencies for building a basic directory 
RUN apt update
RUN apt install -y build-essential bc make debootstrap vim qemu-system qemu-user-static libelf-dev libncurses-dev libssl-dev flex bison zstd binutils-dev
RUN apt install -y imagemagick graphviz dvipng python3-venv fonts-noto-cjk latexmk librsvg2-bin texlive-lang-chinese texlive-xetex python3-yaml python3-sphinx


