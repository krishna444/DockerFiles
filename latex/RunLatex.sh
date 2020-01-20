#!/bin/bash
IMAGE=krishna444/latex:debian
#sudo docker run --rm -i --user="$(id -u):$(id -g)" --net=none -v "$PWD":/data $IMAGE $@
#sudo docker run --rm -i -v "$PWD":/source "$IMAGE" "$@"
sudo docker run --rm -it --net=none -v $PWD:/source  krishna444/latex:debian /bin/bash -c "cd workspace;pdflatex beamer-it.tex"