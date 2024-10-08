FROM python:3.8-slim-buster

RUN apt update && apt upgrade -y
RUN apt install git -y
RUN apt-get install gcc -y
COPY requirements.txt /requirements.txt

RUN cd /
RUN pip3 install -U pip && pip3 install -U -r requirements.txt
RUN mkdir /fwdbot
WORKDIR /fwdbot

CMD python3 main.py
