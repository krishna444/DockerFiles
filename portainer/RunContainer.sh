#!/bin/bash
########################################
# Script to start portainer container  #
# @Author: Krishna Paudel              #
# @Date: 2020.01.15                    #
########################################
sudo docker stop portainer
sudo docker rm portainer || sleep 10
sudo docker volume create portainer_data
sudo docker run -itd --restart=always -p 8000:8000 -p 9000:9000 -v /var/run/docker.sock:/var/run/docker.sock -v portainer_data:/data --name portainer portainer/portainer
sudo docker logs --follow portainer