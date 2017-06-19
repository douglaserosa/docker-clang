FROM ubuntu
LABEL maintainer="Douglas Eduardo Rosa douglas.erosa@gmail.com"

RUN apt-get update
RUN apt-get upgrade -y
RUN apt-get install -y build-essential
RUN apt-get install -y vim
RUN apt-get install -y clang

RUN apt-get autoremove
RUN apt-get clean