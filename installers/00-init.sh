#!/usr/bin/env bash

apt-get update
apt-get upgrade
apt-get dist-upgrade

ssh-keygen -t rsa -b 4096 && cat ~/.ssh/id_rsa.pub
cd ~ && mkdir www && cd www/ && mkdir github && cd github/
git clone git@github.com:iosifv/terminal-toolbelt.git && cd terminal-toolbelt/installers/ && ls -l

apt-get install zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

