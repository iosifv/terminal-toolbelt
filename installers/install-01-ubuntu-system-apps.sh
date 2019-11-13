  
#!/usr/bin/env bash

# Todo:
# Tester function

# System updates
sudo apt update -y
sudo apt upgrade -y
sudo apt dist-upgrade -y

# System software
sudo apt install build-essential libssl-dev libpng-dev -y
sudo apt install curl snapd -y

# Git Install & Config
sudo apt install git -y
git config --global user.email "dev@iosifv.com"
git config --global user.name "Iosif V."
git config --global core.autocrlf false
sudo apt install tig -y      # A console UI for GIT

# Nginx
sudo apt install nginx -y

# MySql
sudo apt install mysql-server mysqltuner -y

# PHP
# sudo apt install php -y
sudo apt install php7.3 -y
# sudo apt install php7.2-xml php7.2-mbstring php7.2-mysql php7.2-sqlite3 php-zip -y
sudo apt install php7.3-xml php7.3-mbstring php7.3-mysql php7.3-sqlite3 php7.3-simplexml  -y
curl -sS https://getcomposer.org/installer | sudo php -- --install-dir=/usr/local/bin --filename=composer
sudo composer global require phpunit/phpunit ^8

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

# rClone
curl https://rclone.org/install.sh | sudo bash

# Tools
sudo apt install dos2unix -y  # CRLF stuff
sudo apt install xclip -y     # copy stuff to clipboard
sudo apt install ncdu -y      # Analyze disk usage
sudo apt install tmux -y      # Terminal multiplexer
sudo apt install ack -y       # Great search tool
sudo apt install mc -y        # Midnight Commander
sudo apt install multitail -y # Multiple tails in one feed
sudo apt install yarn -y      # Yet another Dependency manager
sudo apt install zsh -y       # Needed for oh-my-zsh
sudo apt install qalc -y      # Amazing Qualculator
sudo apt install cloc -y      # Counts lines of code
sudo pip3 install thefuck -y  # In case you fuck it up :)
sudo pip3 install pygments -y # Pygmentyze your output
sudo apt install ranger -y    # Alternatives to the midnight commander. 

# Controll your cloud with rclone
curl https://rclone.org/install.sh | sudo bash

# Youtube Downloader
sudo curl -L https://yt-dl.org/downloads/latest/youtube-dl -o /usr/local/bin/youtube-dl && sudo chmod a+rx /usr/local/bin/youtube-dl

# Bat = cat with wings
curl -sLO https://github.com/sharkdp/bat/releases/download/v0.12.1/bat_0.12.1_amd64.deb && sudo dpkg -i bat_0.12.1_amd64.deb && rm bat_0.12.1_amd64.deb

# Monitoring
sudo apt install htop -y
sudo npm i -g gtop
sudo apt install nmon -y && export NMON=clmnd
sudo apt install speedtest-cli -y
sudo apt install glances -y
sudo apt install speedometer -y
sudo apt install powertop -y      # Helps conserve power on Linux

# Fun Stuff
sudo apt install cowsay fortune lolcat -y
sudo apt install screenfetch -y # Shows system information with nice graphics
sudo apt install inxi -y        # Shows system information condensed in 2 lines
sudo apt install ansiweather -y # Shows brief information about the weather

# Status of the tube
sudo wget https://raw.githubusercontent.com/smallwat3r/tubestatus/master/src/tubestatus -P /usr/local/bin && sudo chmod 755 /usr/local/bin/tubestatus

# Glorious Snaps
sudo snap install docker postman
sudo snap install aws-cli --classic
sudo snap install code    --classic
sudo snap install cointop --stable

# Snaps not needed in case of Virtual machine
sudo snap install spotify caprine snap-store vlc gitkraken chromium
sudo snap install slack   --classic
sudo snap install phpstorm --classic
sudo snap install webstorm --classic


## Things to do at the end
# aws configure ====>>> Not needed any more as silence takes care of this
# sudo mysql_secure_installation

# Install oh-my-zsh 
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
# !! This needs to be the last thing as the installer reloads the shell !!
# !!   The default shell will only change after you log-out and log-in  !!
