#!/bin/bash

#pull latest image
sudo docker pull jenkins/jenkins:lts

#Setup local configuration folder
# Should already be in a jenkins folder when running this script.
export CONFIG_FOLDER=$PWD/config
if [ ! -d "$CONFIG_FOLDER" ]; then
    mkdir $CONFIG_FOLDER
    chown 1000 $CONFIG_FOLDER
fi


# Start container
sudo docker stop jenkins
sudo docker rm jenkins || sleep 10
sudo docker run --restart=always -d -p 49001:8080 -v $CONFIG_FOLDER:/var/jenkins_home:z --name jenkins jenkins/jenkins:lts
    # -e http_proxy='http://proxy.com:8080' \
    # -e https_proxy='http://proxy.com:8080' \   

sudo docker logs --follow jenkins