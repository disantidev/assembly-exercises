FROM --platform=amd64 ubuntu:20.04

RUN apt update
RUN apt install binutils -y
