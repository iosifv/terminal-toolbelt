  
#!/usr/bin/env bash

# Todo:
# Tester function

# System updates
sudo apt update -y
sudo apt upgrade -y
sudo apt dist-upgrade -y
sudo apt install build-essential libssl-dev curl -y

# Git Install & Config
sudo apt install git -y
git config --global user.email "dev@iosifv.com"
git config --global user.name "Iosif V."
git config --global core.autocrlf true

# Nginx
sudo apt install nginx -y

# MySql
sudo apt install mysql-server mysqltuner -y

# PHP
sudo apt install php7.2 -y
#sudo apt install php7.3 -y
sudo apt install php7.2-xml php-zip php-mbstring php7.2-sqlite3 php-mysql -y
curl -sS https://getcomposer.org/installer | sudo php -- --install-dir=/usr/local/bin --filename=composer

# Node.JS
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.34.0/install.sh | bash
source ~/.profile    # need to resource after installing nvm
nvm install v6.17.1  # LTS
nvm install v8.16.1  # LTS
nvm install v10.16.3 # LTS
nvm install v12.11.0 # not LTS
sudo apt install npm -y
npm i -g grunt grunt-cli gulp webpack documentation
npm i -g express pm2 nodemon serverless

# Python
sudo apt install python-pip -y
export PATH=$PATH:~/home/iosif/.local/bin

# Tools
sudo apt install thefuck -y   # In case you fuck it up :)
sudo apt install dos2unix -y  # CRLF stuff
sudo apt install xclip -y     # copy stuff to clipboard
sudo apt install ncdu -y      # Analyze disk usage
sudo apt install tmux -y      # Terminal multiplexer
sudo apt install ack -y       # Great search tool
sudo apt install mc -y        # Midnight Commander
sudo apt install multitail -y # Multiple tails in one feed
sudo apt install yarn -y
curl -sLO https://github.com/sharkdp/bat/releases/download/v0.12.1/bat_0.12.1_amd64.deb && sudo dpkg -i bat_0.12.1_amd64.deb && rm bat_0.12.1_amd64.deb

# Monitoring
sudo apt install htop -y
sudo npm i -g gtop
sudo apt install nmon -y && export NMON=clmnd
sudo apt install speedtest-cli -y
sudo apt install glances

# Fun Stuff
sudo apt install cowsay fortune lolcat -y

# Glorious Snaps
sudo snap install chromium docker gitkraken postman
sudo snap install aws-cli --classic
sudo snap install code    --classic

# Snaps not needed in case of Virtual machine
sudo snap install spotify caprine snap-store vlc
sudo snap install slack   --classic

# Things to do at the end
# sudo mysql_secure_installation
