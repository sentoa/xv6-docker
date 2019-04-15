FROM ubuntu:latest

RUN apt-get -qq update

RUN apt-get install -y git \
                    build-essential \
                    gdb \
                    gcc-multilib \
                    tmux \
                    qemu

RUN git clone https://github.com/mit-pdos/xv6-public.git 

RUN apt-get install -y libsdl1.2-dev \
                        libtool-bin \
                        libglib2.0-dev \
                        libz-dev \
                        libpixman-1-dev
