#!/bin/bash
# Exampel file , it can not be executed though
# @author: Krishna Paudel
# @date: 2020.12.31 16:51
 
cd "$(dirname "$0")"
#cd ../
sudo docker build -t python3:1and1 .
CONTAINER_PATH=/root/1and1/tariff-generator-bk
IMAGE=python3:1and1
COMMANDS="cd tariff-generator-bk && python TariffUtils.py"
#COMMANDS="python -V"
sudo apt update && sudo apt install -y docker
sudo docker run -it --rm --name tariff-generator  -v "$PWD":$CONTAINER_PATH $IMAGE /bin/bash -c "$COMMANDS"