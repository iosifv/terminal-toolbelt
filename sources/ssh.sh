# Push all changes to origin branch named as current branch
# Ex: gpush "<<commit-message>>"
#----------------------------
function ssh-make {
  ssh-keygen -t rsa -b 4096 -C "$1"
}

alias ssh-show='cat ~/.ssh/id_rsa.pub'
alias ssh-copy='cat ~/.ssh/id_rsa.pub | pbcopy'
alias ssh-list='ls -al ~/.ssh'

# ssh-copy-id ioto@173.236.227.58
alias sshto-dreamhost='ssh ioto@173.236.227.58'
alias sshto-ysa='ssh forge@178.62.1.65'
alias sshto-oddprophet='ssh forge@46.101.62.66'
