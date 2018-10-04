#!/usr/bin/env bash

# Top on steroids
sudo apt-get install htop

# Top on mega-steroids
sudo npm install gtop -g
sudo npm install vtop -g

# Nmon
sudo apt-get install nmon && export NMON=clmnd

# Install Glances
# usage: glances, glances -w
sudo apt-get install python-pip
sudo pip install glances
#sudo pip install bottle

# Tail on steroids
sudo apt-get install multitail

# usage: speedtest
sudo apt-get install speedtest-cli
