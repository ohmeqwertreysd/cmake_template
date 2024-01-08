FROM ubuntu:latest

RUN apt-get update -y && apt-get install -y \
    libboost-all-dev cmake make gcc g++ gdb