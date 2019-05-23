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
alias sshto-vega='ssh user@192.168.1.105'
alias sshto-rig2='ssh user@192.168.1.146'
alias sshto-rig3='ssh user@192.168.1.119'
alias sshto-rig4='ssh user@192.168.1.111'
alias sshto-rig6='ssh user@192.168.1.134'
alias sshto-rig7='ssh user@192.168.1.142'
alias sshto-rig8='ssh user@192.168.1.116'
