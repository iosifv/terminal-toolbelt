  
#!/usr/bin/env bash

# Todo:
# Tester function

# System updates
sudo apt update -y
sudo apt upgrade -y
sudo apt dist-upgrade -y

# System software
sudo apt install build-essential libssl-dev curl -y

# Git Install & Config
sudo apt install git -y
git config --global user.email "dev@iosifv.com"
git config --global user.name "Iosif V."
git config --global core.autocrlf false

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
sudo apt install npm -y
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.34.0/install.sh | bash
source ~/.profile    # need to resource after installing nvm
nvm install v6.17.1  # LTS
nvm install v8.16.1  # LTS
nvm install v10.16.3 # LTS
nvm install v12.11.0 # not LTS
npm i -g grunt grunt-cli gulp webpack documentation
npm i -g express pm2 nodemon serverless

# Python
sudo apt install python-pip python3-pip -y
export PATH=$PATH:~/home/iosif/.local/bin

# AWS
pip3 install --upgrade --user awscli

# Tools
sudo apt install dos2unix -y  # CRLF stuff
sudo apt install xclip -y     # copy stuff to clipboard
sudo apt install ncdu -y      # Analyze disk usage
sudo apt install tmux -y      # Terminal multiplexer
sudo apt install ack -y       # Great search tool
sudo apt install mc -y        # Midnight Commander
sudo apt install multitail -y # Multiple tails in one feed
sudo apt install yarn -y
sudo apt install zsh -y       # Needed for oh-my-zsh
sudo pip3 install thefuck -y  # In case you fuck it up :)
sudo curl -L https://yt-dl.org/downloads/latest/youtube-dl -o /usr/local/bin/youtube-dl && sudo chmod a+rx /usr/local/bin/youtube-dl

# Bat = cat with wings
curl -sLO https://github.com/sharkdp/bat/releases/download/v0.12.1/bat_0.12.1_amd64.deb && sudo dpkg -i bat_0.12.1_amd64.deb && rm bat_0.12.1_amd64.deb

# Monitoring
sudo apt install htop -y
sudo npm i -g gtop
sudo apt install nmon -y && export NMON=clmnd
sudo apt install speedtest-cli -y
sudo apt install glances -y

# Fun Stuff
sudo apt install cowsay fortune lolcat -y
sudo apt install screenfetch -y # Shows system information with nice graphics
sudo apt install inxi -y        # Shows system information condensed in 2 lines
sudo apt install ansiweather -y # Shows brief information about the weather

# Glorious Snaps
sudo snap install chromium docker gitkraken postman
sudo snap install aws-cli --classic
sudo snap install code    --classic

# Snaps not needed in case of Virtual machine
sudo snap install spotify caprine snap-store vlc
sudo snap install slack   --classic


## Things to do at the end
# aws configure ====>>> Not needed any more as silence takes care of this
# sudo mysql_secure_installation

# Install oh-my-zsh 
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
# !! This needs to be the last thing as the installer reloads the shell !!
# !!   The default shell will only change after you log-out and log-in  !!
