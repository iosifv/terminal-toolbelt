#!/usr/bin/env bash

# Top on steroids
sudo apt-get install htop

# Nmon
sudo apt-get install nmon && export NMON=mndc

# Tail on steroids
sudo apt-get install multitail

# Install Glances
# usage: glances, glances -w
sudo apt-get install python-pip
sudo pip install glances
#sudo pip install bottle


# usage: speedtest
speedtest-cli