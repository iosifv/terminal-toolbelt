#!/usr/bin/env bash

function tb-help-ssh {
    print-status "ssh:"
}

# SSH stuff
#----------------------------
function ssh-make {
  ssh-keygen -t rsa -b 4096 -C "$1"
}

alias ssh-show='cat ~/.ssh/id_rsa.pub'
alias ssh-copy-ubuntu='xclip -selection clipboard < ~/.ssh/id_rsa.pub'
alias ssh-copy-osx='cat ~/.ssh/id_rsa.pub | pbcopy'
alias ssh-list='ls -al ~/.ssh'
