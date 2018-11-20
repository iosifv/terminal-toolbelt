#!/usr/bin/env bash

echo "deb https://apache.bintray.com/couchdb-deb bionic main"
sudo tee -a /etc/apt/sources.list
# https://askubuntu.com/questions/20725/gpg-error-the-following-signatures-couldnt-be-verified-because-the-public-key
sudo apt-key adv --keyserver keyserver.ubuntu.com --recv-keys 379CE192D401AB61
sudo apt-get update
sudo apt-get install couchdb
