FROM python:3
LABEL author="Krishna Paudel"
LABEL date="2019.12.31 12:08"
LABEL tag="krishna444/python3:1and1"
ENV WORK_SPACE="/root/1and1"
ADD requirements.txt /root/
RUN pip install -r /root/requirements.txt
RUN rm /root/requirements.txt
WORKDIR ${WORK_SPACE}
CMD ["python","-V"]