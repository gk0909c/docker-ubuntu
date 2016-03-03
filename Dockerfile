FROM ubuntu:trusty-20160119
MAINTAINER gk0909c@gmail.com

RUN echo 'APT::Install-Recommends 0;' >> /etc/apt/apt.conf.d/01norecommends \
 && echo 'APT::Install-Suggests 0;' >> /etc/apt/apt.conf.d/01norecommends \
 && apt-get update \
 && DEBIAN_FRONTEND=noninteractive apt-get install -y vim.tiny wget sudo iproute2 ca-certificates curl telnet unzip \
 && rm -rf /var/lib/apt/lists/*
