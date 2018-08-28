#!/usr/bin/env bash

apt-get update
apt-get upgrade
apt-get dist-upgrade
apt-get install zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

