FROM debian:stretch
LABEL maintainer="Krishna Paudel <krishna444@gmail.com>"
LABEL TAG="krishna444/latex:debian"

ENV DEBIAN_FRONTEND noninteractive
COPY install.sh /install.sh
RUN sh /install.sh && rm /install.sh
VOLUME ["/source"]
WORKDIR  /source
CMD ["/bin/bash"]