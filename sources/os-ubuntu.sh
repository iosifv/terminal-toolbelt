#!/usr/bin/env bash

# On higher resolution laptops, text is too small for my taste
#----------------------------
alias ubuntu-text-smaller='gsettings set org.gnome.desktop.interface text-scaling-factor 0.7'
alias ubuntu-text-small='gsettings set org.gnome.desktop.interface text-scaling-factor 0.8'
alias ubuntu-text-normal='gsettings set org.gnome.desktop.interface text-scaling-factor 1.0'
alias ubuntu-text-large='gsettings set org.gnome.desktop.interface text-scaling-factor 1.2'
alias ubuntu-text-larger='gsettings set org.gnome.desktop.interface text-scaling-factor 1.3'

# Misc
#----------------------------
alias ubuntu-battery='upower -i /org/freedesktop/UPower/devices/battery_BAT0 | grep "energy:\|energy-full\|energy-full-design\|energy-rate\|voltage\|time to empty\|percentage\|capacity"'
alias dos2unix-dir='find . -name "*.*" | xargs dos2unix'

