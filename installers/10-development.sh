#!/usr/bin/env bash

# Nginx
sudo apt install nginx

# PHP Dependencies
sudo apt install php7.2-xml
sudo apt install php-zip
sudo apt install php-mbstring
sudo apt install php7.2-sqlite3

# Composer
curl -sS https://getcomposer.org/installer | sudo php -- --install-dir=/usr/local/bin --filename=composer

# Yarn
sudo apt install yarn
