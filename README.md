
# BasicSwap Docker Installation Method with basicswap-bash
#### De

BasicSwap installation method has been difficult for regular users. basicswap-bash method is community built method that works well in ubuntu 24.04, however not really working in other linux version. 

This repo combines docker method with basicswap-bash to make basicswap installation as easy as a few linux commands.

### Build Docker Image

Perform below to create host disk folders:
```
 sudo mkdir -p /root/.local
 sudo mkdir -p /root/coinswaps
```

Build docker image:
```
git clone https://github.com/ShorelineCrypto/basicswap_docker.git && cd basicswap_docker
docker build -t basicswap .
```

Or pull down a working image from docker hub:

```
 docker pull shorelinecrypto/basicswap:latest
 docker tag shorelinecrypto/basicswap:latest basicswap:latest
```

### Install BasicSwap in container

Start basicswap container:
```
  bash docker_run_basicswap.sh
```
This will start container sharing the host network. Login into this container and follow basicswap-bash method to install:

```
   docke exec -it basicswap /bin/bash
   cd basicswap-bash
   git pull
   ./basicswap-install.sh
```

Within container, the installation method is same as original guide:
https://github.com/nahuhh/basicswap-bash

To perform update on the software version, same running "bsx-update" script within container second time starting container.

The basicswap URL is accessible locally at URL: http://localhost:12700



