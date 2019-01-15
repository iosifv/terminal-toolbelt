#!/usr/bin/env bash

# SSH stuff
#----------------------------
function ssh-make {
  ssh-keygen -t rsa -b 4096 -C "$1"
}

alias ssh-show='cat ~/.ssh/id_rsa.pub'
alias ssh-copy='xclip -selection clipboard < ~/.ssh/id_rsa.pub'
alias ssh-copy-osx='cat ~/.ssh/id_rsa.pub | pbcopy'
alias ssh-list='ls -al ~/.ssh'

# SSH to my servers
#----------------------------

# Personal
alias sshto-dreamhost='ssh ioto@173.236.227.58'
alias sshto-vultr='ssh ioto@104.238.172.170'
alias sshto-vultroot='ssh root@104.238.172.170'
alias sshto-tpersona='ssh root@108.61.196.229'
alias sshto-persona='ssh root@108.61.196.229'

# Work - SA
# alias sshto-demo-ogp='ssh ubuntu@18.130.144.61'
# alias sshto-stage-ogp-derm='ssh ubuntu@35.177.125.192'
alias sshto-stage-ogp='ssh ubuntu@staging-derm.ogp.skin-analytics.com'
alias sshto-stage-nat='ssh -i ~/www/keys/ssh-key-derm-staging.pem ubuntu@52.16.55.147'

# Mining Farm
# default user/pass is miner/myEmail for SimpleMiner
# default user/pass is user/1 for HiveOS
#----------------------------
alias sshto-rig2='ssh user@192.168.1.146'
alias sshto-rig3='ssh user@192.168.1.119'
alias sshto-rig4='ssh user@192.168.1.111'
alias sshto-rig6='ssh user@192.168.1.134'
alias sshto-rig7='ssh user@192.168.1.142'
alias sshto-rig8='ssh user@192.168.1.116'
