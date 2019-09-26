  
#!/usr/bin/env bash

# Todo:
# Tester function 
# add serverless, aws-cli

# System updates
sudo apt update -y
sudo apt upgrade -y
sudo apt dist-upgrade -y

# Git Install & Config
sudo apt install git -y
git config --global user.email "dev@iosifv.com"
git config --global user.name "Iosif V."
git config --global core.autocrlf true

# Nginx
sudo apt install nginx

# MySql
sudo apt install mysql-server mysqltuner -y
sudo mysql_secure_installation

# PHP
sudo apt install php7.2 -y
#sudo apt install php7.3 -y
sudo apt install php7.2-xml php-zip php-mbstring php7.2-sqlite3 php-mysql -y
curl -sS https://getcomposer.org/installer | sudo php -- --install-dir=/usr/local/bin --filename=composer

# Node.JS
sudo apt install nodejs npm -y
npm install -g pm2 grunt documentation

# Python
sudo apt install python-pip -y

# Tools
sudo apt install thefuck -y # In case you fuck it up :)
sudo apt install dos2unix -y # CRLF stuff
sudo apt install xclip -y # copy stuff to clipboard
sudo apt install ncdu -y # Analyze disk usage
sudo apt install tmux -y # Terminal multiplexer
sudo apt install ack -y # Great search tool
sudo apt install mc -y # Midnight Commander
sudo apt install curl -y # Curly curl
sudo apt install multitail -y # Multiple tails in one feed
sudo apt install yarn -y
curl -sLO https://github.com/sharkdp/bat/releases/download/v0.12.1/bat_0.12.1_amd64.deb && sudo dpkg -i bat_0.12.1_amd64.deb && rm bat_0.12.1_amd64.deb

# Monitoring
sudo apt install htop -y
sudo npm i gtop -g
sudo npm i vtop -g
sudo apt install nmon -y && export NMON=clmnd
sudo pip install glances
sudo apt install speedtest-cli -y

# Fun Stuff
sudo apt install cowsay fortune lolcat -y

