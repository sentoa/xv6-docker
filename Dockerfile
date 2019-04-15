FROM ubuntu:latest

RUN apt-get -qq update

RUN apt-get install -y git \
                    build-essential \
                    gdb \
                    gcc-multilib \
                    tmux

RUN git clone https://github.com/mit-pdos/xv6-public.git 

RUN apt-get install -y libsdl1.2-dev \
                        libtool-bin \
                        libglib2.0-dev \
                        libz-dev \
                        libpixman-1-dev

RUN cd qemu && \
        ./configure --disable-kvm --target-list="i386-softmmu x86_64-softmmu" && \
        make && \
        make install && \
        cd ..

ADD ./jos jos

WORKDIR jos

CMD ["sh"]
