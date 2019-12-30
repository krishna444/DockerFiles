FROM ubuntu:18.04
LABEL autor="Krishna Paudel"
ENV WORK_DIR=/root
WORKDIR ${WORK_DIR}
RUN apt update &&\
    apt install -y tzdata && \
    apt install -y iputils-ping &&\
    apt install -y net-tools &&\
    apt install -y python3 python3-pip python3-tk virtualenv &&\
    apt install -y git 
# COPY . ./
# VOLUME["/data"]
# Commands docker exec
# EntryPoint
# Copy file into docker container 
# Getting files from docker container 

CMD /bin/bash
