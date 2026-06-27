FROM ubuntu:24.04

RUN apt-get update; \
    apt-get install -y --no-install-recommends \
        python3-pip libpython3-dev python3-venv gnupg pkg-config gcc libc-dev gosu tzdata wget unzip cmake ninja-build;

RUN apt-get install -y  sudo curl jq git
WORKDIR /root
RUN echo 'export PATH=/root/.local/bin:$PATH' >> /root/.bashrc
RUN git clone https://github.com/nahuhh/basicswap-bash 
