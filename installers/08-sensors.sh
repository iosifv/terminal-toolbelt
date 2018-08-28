#!/usr/bin/env bash

# Takes a shitload of time
sudo apt-get install lm-sensors
(while :; do echo "y"; done ) | sensors-detect
service kmod start
sensors
