FROM ubuntu:18.04

ARG DEBIAN_FRONTEND=noninteractive

RUN apt-get update

RUN apt-get -yqq install apt-transport-https \
    build-essential \
    wget \
    curl \
    git \
    maven \
    openjdk-11-jre \
    openjdk-11-jdk-headless \
    byobu \
    python 

WORKDIR /tmp

ADD ./storm  .
ADD ./zookeeper  .
COPY ./start.sh .
EXPOSE 8080

CMD ["start.sh"] 
