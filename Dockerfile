FROM ubuntu:16.04
MAINTAINER gk0909c@gmail.com

RUN echo 'APT::Install-Recommends 0;' >> /etc/apt/apt.conf.d/01norecommends \
  && echo 'APT::Install-Suggests 0;' >> /etc/apt/apt.conf.d/01norecommends \
  && apt-get update \
  && DEBIAN_FRONTEND=noninteractive \
    apt-get install -y vim-nox bash-completion git \
                       wget sudo iproute2 ca-certificates curl telnet unzip \
  && rm -rf /var/lib/apt/lists/*

# bash completion
ADD https://raw.githubusercontent.com/git/git/master/contrib/completion/git-completion.bash /etc/bash_completion.d/
RUN echo ". /etc/bash_completion" >> /root/.bashrc

# vim setting
COPY .vimrc /root/


