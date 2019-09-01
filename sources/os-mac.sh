#!/usr/bin/env bash

function tb-help-mac {
    print-status "mac:"
    echo "mac-kill-ds-store"
    echo "mac-edit-hosts"
    echo "mac-fs-usage"
    echo "mac-battery"
    echo "mac-hidden-files-on"
    echo "mac-hidden-files-on"
    echo "mac-window-shadows-on"
    echo "mac-window-shadows-off"
}

# Misc
#----------------------------
alias mac-kill-ds-store='find . -name "*.DS_Store" -type f -delete'
alias mac-edit-hosts='sudo nano /private/etc/hosts'
alias mac-fs-usage='sudo fs_usage'

# display battery info on your Mac
# see http://blog.justingreer.com/post/45839440/a-tale-of-two-batteries
#----------------------------
alias mac-battery='ioreg -w0 -l | grep Capacity | cut -d " " -f 17-50'

# turn hidden files on/off in Finder
#----------------------------
function mac-hidden-files-on() { defaults write com.apple.Finder AppleShowAllFiles YES ; }
function mac-hidden-files-off() { defaults write com.apple.Finder AppleShowAllFiles NO ; }

# turn shadows for windows on/off in OSX
#----------------------------
function mac-window-shadows-on() { defaults write com.apple.screencapture disable-shadow -bool true; }
function mac-window-shadows-off() { defaults write com.apple.screencapture disable-shadow -bool false; }
