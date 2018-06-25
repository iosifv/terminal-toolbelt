
function ssh-make {
  ssh-keygen -t rsa -b 4096 -C "$1"
}

alias ssh-show='cat ~/.ssh/id_rsa.pub'
alias ssh-copy='cat ~/.ssh/id_rsa.pub | pbcopy'
alias ssh-list='ls -al ~/.ssh'

# Personal
alias sshto-dreamhost='ssh ioto@173.236.227.58'
alias sshto-vultr='ssh ioto@104.238.172.170'
alias sshto-vultroot='ssh root@104.238.172.170'
alias sshto-tpersona='ssh root@108.61.196.229'
alias sshto-persona='ssh root@108.61.196.229'

# Work - Misc
alias sshto-selectron='ssh root@178.62.59.175'
alias sshto-fresh='ssh forge@138.68.149.28'
alias sshto-stale='ssh forge@178.62.6.15'

# Work - Woooba
alias sshto-jump='ssh forge@138.68.190.83'

# Work - Clients
alias sshto-ysa='ssh forge@178.62.1.65'
alias sshto-oddprophet='ssh forge@46.101.62.66'
alias sshto-oddprophet-prod='ssh forge@206.189.29.114'
alias sshto-opentrack='ssh forge@139.59.190.154'
alias sshto-teps='ssh forge@139.59.174.110'
alias sshto-teps-prod='ssh forge@138.68.171.213'

# Mining Farm
# default user/pass is miner/myEmail for SimpleMiner
# default user/pass is user/1 for HiveOS

alias sshto-rig2='ssh user@192.168.1.146'
alias sshto-rig3='ssh user@192.168.1.119'
alias sshto-rig4='ssh user@192.168.1.111'
alias sshto-rig6='ssh user@192.168.1.134'
alias sshto-rig7='ssh user@192.168.1.142'
alias sshto-rig8='ssh user@192.168.1.145'
