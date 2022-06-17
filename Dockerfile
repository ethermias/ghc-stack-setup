FROM ubuntu:16.04

MAINTAINER jermi

RUN  apt-get update \
  && apt-get -y upgrade \
  && apt-get install -y wget \
  && rm -rf /var/lib/apt/lists/* \
  && apt-get update

RUN wget -qO- https://get.haskellstack.org/ | sh

RUN stack setup