FROM ubuntu:20.04

RUN apt-get -y update \
 && apt-get -y --no-install-recommends install curl gcc g++ make \
 && apt-get clean \
 && rm -rf /var/lib/apt/lists/*

