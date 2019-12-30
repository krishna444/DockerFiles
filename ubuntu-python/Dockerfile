FROM ubuntu:18.04
LABEL autor="Krishna Paudel"
ENV WORK_DIR=/opt/1and1
WORKDIR ${WORK_DIR}
RUN apt update &&\
    apt install -y tzdata && \
    apt install -y iputils-ping &&\
    apt install -y net-tools &&\
    apt install -y python3 python3-pip python3-tk virtualenv &&\
    apt install -y git 
CMD /bin/bash
