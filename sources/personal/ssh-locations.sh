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
alias sshto-rigs-update-babun='cd /home/Vigh/terminal-toolbelt && git remote update && git pull origin master'
alias sshto-rigs-update-ubuntu='cd /home/vigh54/terminal-toolbelt && git remote update && git pull origin master'
alias sshto-rigs-copy-id='ssh-copy-id user@192.168.0.201 && \
                            ssh-copy-id user@192.168.0.202 && \
                            ssh-copy-id user@192.168.0.203 && \
                            ssh-copy-id user@192.168.0.204 && \
                            ssh-copy-id user@192.168.0.206'

function tm-rigs {
  session="rigs4"

  # set up tmux
  tmux start-server

  # create a new tmux session, starting vim from a saved session in the new window
  tmux new-session -d -s $session -n vim
  
#   tmux selectp -t 1
  tmux splitw -h -p 50
  tmux send-keys "sshto-rig2" C-m
  tmux send-keys "miner" C-m

  tmux splitw -v -p 65
  tmux send-keys "echo 'empty'" C-m

  tmux splitw -v -p 50
  tmux send-keys "sshto-rig6" C-m
  tmux send-keys "miner" C-m

  tmux selectp -t 1
  tmux send-keys "sshto-rig1" C-m
  tmux send-keys "miner" C-m

  tmux splitw -v -p 65
  tmux send-keys "sshto-rig2" C-m
  tmux send-keys "miner" C-m

  tmux splitw -v -p 50
  tmux send-keys "sshto-rig4" C-m
  tmux send-keys "miner" C-m

  tmux selectp -t 5 # The Empty Window...

  # return to main vim window
  tmux select-window -t $session:0

  # Finished setup, attach to the tmux session!
  tmux attach-session -t $session
}

function sshto-all-rigs {
  session="rigs4"

  # set up tmux
  tmux start-server

  # create a new tmux session, starting vim from a saved session in the new window
  tmux new-session -d -s $session -n vim
  
#   tmux selectp -t 1
  tmux splitw -h -p 50
  tmux send-keys "sshto-rig2" C-m
#   tmux send-keys "miner" C-m

  tmux splitw -v -p 65
  tmux send-keys "echo 'empty'" C-m

  tmux splitw -v -p 50
  tmux send-keys "sshto-rig6" C-m
#   tmux send-keys "miner" C-m

  tmux selectp -t 1
  tmux send-keys "sshto-rig1" C-m
#   tmux send-keys "miner" C-m

  tmux splitw -v -p 65
  tmux send-keys "sshto-rig2" C-m
#   tmux send-keys "miner" C-m

  tmux splitw -v -p 50
  tmux send-keys "sshto-rig4" C-m
#   tmux send-keys "miner" C-m

  tmux selectp -t 5 # The Empty Window...

  # return to main vim window
  tmux select-window -t $session:0

  # Finished setup, attach to the tmux session!
  tmux attach-session -t $session
}

alias tm-kill-session='tmux kill-session && tmux ls'