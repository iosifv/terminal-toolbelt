# Base image will be a clean ubuntu
FROM ubuntu:18.04

# Set maintainer as myself
LABEL maintainer="Iosif V. <dev@iosifv.com>"
LABEL author="Iosif V."
LABEL email="dev@iosifv.com"
LABEL version="1.0.0"

# Update aptitude with new repo
RUN apt-get -yqq update \
    # System
    && apt-get -yqq install \
    apt-utils ssh git nano curl zsh wget \
    # Monitoring
    && apt-get -yqq install \
    multitail iputils-ping speedtest-cli ncdu speedometer htop nmon && export NMON=clmnd \
    # Fun
    && apt-get -yqq install \
    screenfetch inxi ansiweather cowsay lolcat fortune telnet \
    # Utils
    && apt-get -yqq install \
    tmux ack mc pandoc lynx thefuck python-pygments

# cat whith a nicer interface
RUN wget -O bat.deb https://github.com/sharkdp/bat/releases/download/v0.11.0/bat_0.11.0_amd64.deb  && \
    dpkg -i bat.deb && rm bat.deb

# Git Configuration
RUN git config --global user.email "dev@iosifv.com" && \
    git config --global user.name "Iosif V."
# RUN git config --global core.autocrlf true

# Make ssh dir
RUN mkdir /root/.ssh/
WORKDIR /root/.ssh

# add bitbucket and github to known hosts for ssh needs
RUN touch /root/.ssh/known_hosts
RUN chmod 0600 /root/.ssh
RUN ssh-keyscan -t rsa bitbucket.org >> /root/.ssh/known_hosts
RUN ssh-keyscan -t rsa github.com >> /root/.ssh/known_hosts


WORKDIR /www

# Install Oh my Zsh
RUN wget https://github.com/robbyrussell/oh-my-zsh/raw/master/tools/install.sh -O - | zsh || true

# Install Terminal Toolbelt
WORKDIR /www/github/terminal-toolbelt
COPY . .
RUN echo "source /www/github/terminal-toolbelt/loader-docker.sh" >> ~/.zshrc

WORKDIR /www
