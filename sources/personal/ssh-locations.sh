#!/usr/bin/env bash

function tb-help-locations {
    print-status "locations:"
}

# SSH to my servers
#----------------------------

# Personal
alias sshto-dreamhost='ssh ioto@173.236.227.58'
alias sshto-vultr='ssh ioto@104.238.172.170'
alias sshto-iosifv='ssh ioto@104.238.172.170'
alias sshto-vultroot='confirmDragons ssh root@104.238.172.170'
alias sshto-persona-root='confirmDragons ssh root@45.76.86.153'
alias sshto-persona-blacksmith='ssh blacksmith@45.76.86.153'


# Mining Farm
# default user/pass is miner/myEmail for SimpleMiner
# default user/pass is user/1 for HiveOS
#----------------------------
alias sshto-rig1='ssh user@192.168.0.201'
alias sshto-rig2='ssh user@192.168.0.202'
alias sshto-rig3='ssh user@192.168.0.203'
alias sshto-rig4='ssh user@192.168.0.204'
alias sshto-rig6='ssh user@192.168.0.206'
alias sshto-rigs-update='cd /home/Vigh/terminal-toolbelt && git remote update && git pull origin master'
alias sshto-rigs-copy-id='ssh-copy-id user@192.168.0.201 && \
                            ssh-copy-id user@192.168.0.202 && \
                            ssh-copy-id user@192.168.0.203 && \
                            ssh-copy-id user@192.168.0.204 && \
                            ssh-copy-id user@192.168.0.206'