#!/usr/bin/env bash

function tb-help-tmux {
    print-status "tmux:"
    echo "tm"
    echo "tm3"
    echo "tm-stat"
    echo "tm-ozn"
    echo "tm-iosifv"
    echo "tm-er"
}

# Tmux
#----------------------------
tm () {
  tmux attach || tmux
}

alias tm3='tmux new-session \; split-window -h \; split-window -v \; attach'

function tm-stat {
  tmux \
  new-session  "htop" \; \
  split-window "glances" \; \
  split-window "vtop" \; \
  select-layout even-vertical
}

function tm-ozn {
  session="skin-analytics-ozone"

  # exporting NMON to have the default config
  # (l)long cpu averages, (c)cpu, (m)memory, (n)network
  export NMON="cm"

  # set up tmux
  tmux start-server

  # create a new tmux session, starting vim from a saved session in the new window
  tmux new-session -d -s $session -n vim #"vim -S ~/.vim/sessions/kittybusiness"

  # Select pane 1, set dir to ElectroRent folder
  tmux selectp -t 1
  tmux send-keys "ozn" C-m

  # Split pane 1 horizontal by 75%, start monitoring
  tmux splitw -h -p 25
  tmux send-keys "gtop" C-m

  # Select pane 2
  tmux selectp -t 2
  # Split pane 2 vertically by 50%
  tmux splitw -v -p 50

  # Select pane 3, make sure you have the latest code
  tmux selectp -t 3
  tmux send-keys "clear;ozn;gru;gst" C-m

  # Pane 3 selected
  # Split pane 3 vertically by 10% - which is ~5% from the total height
  tmux splitw -v -p 10

  # select pane 4, start artisan serve
  tmux selectp -t 4
  tmux send-keys "clear;ozn;npm run grunt" C-m

  # Select pane 1 - the first one which is ready for working.
  tmux selectp -t 1

  # create a new window called scratch
  tmux new-window -t $session:1 -n scratch

  # return to main vim window
  tmux select-window -t $session:0

  # Finished setup, attach to the tmux session!
  tmux attach-session -t $session
}

function tm-iosifv {
  session="iosifv"

  tmux start-server

  tmux new-session -d -s $session

  tmux selectp -t 1
  tmux send-keys "iosifv" C-m

  tmux splitw -h -p 25
  tmux send-keys "clear;iosifv;sshto-vultr" C-m

  tmux selectp -t 2
  tmux splitw -v -p 20

  tmux selectp -t 3
  tmux send-keys "clear;iosifv;art serve --port=8787" C-m

  tmux selectp -t 1


  # Finished setup, attach to the tmux session!
  tmux attach-session -t $session
}

function tm-er {
  session="work"

  # exporting NMON to have the default config
  # (l)long cpu averages, (c)cpu, (m)memory, (n)network
  export NMON="cm"

  # set up tmux
  tmux start-server

  # create a new tmux session, starting vim from a saved session in the new window
  tmux new-session -d -s $session -n vim #"vim -S ~/.vim/sessions/kittybusiness"

  # Select pane 1, set dir to ElectroRent folder
  tmux selectp -t 1
  tmux send-keys "er" C-m

  # Split pane 1 horizontal by 75%, start monitoring
  tmux splitw -h -p 25
  tmux send-keys "gtop" C-m

  # Select pane 2
  tmux selectp -t 2
  # Split pane 2 vertically by 50%
  tmux splitw -v -p 50

  # Select pane 3, make sure you have the latest code
  tmux selectp -t 3
  tmux send-keys "clear;er;gru;gst" C-m

  # Pane 3 selected
  # Split pane 3 vertically by 10% - which is ~5% from the total height
  tmux splitw -v -p 10

  # select pane 4, start artisan serve
  tmux selectp -t 4
  tmux send-keys "clear;er;art serve" C-m

  # Select pane 1 - the first one which is ready for working.
  tmux selectp -t 1

  # create a new window called scratch
  tmux new-window -t $session:1 -n scratch

  # return to main vim window
  tmux select-window -t $session:0

  # Finished setup, attach to the tmux session!
  tmux attach-session -t $session
}
function tm-tc {
  session="work"

  # set up tmux
  tmux start-server

  # create a new tmux session, starting vim from a saved session in the new window
  tmux new-session -d -s $session -n vim #"vim -S ~/.vim/sessions/kittybusiness"

  # Select pane 1, set dir to TrueCompliance folder
  tmux selectp -t 1
  tmux send-keys "clear && cd ~/www/true-compliance/api && art serve --port=8080" C-m

  # Split pane 1 horizontal by 75%, start monitoring
  tmux splitw -v -p 75
  tmux send-keys "clear && cd ~/www/true-compliance/processor && art serve --port=8090" C-m

    # Split pane 1 horizontal by 75%, start monitoring
  tmux splitw -v -p 65
  tmux send-keys "clear && cd ~/www/true-compliance/document-reader && art serve --port=8070" C-m

      # Split pane 1 horizontal by 75%, start monitoring
  tmux splitw -v -p 65
  tmux send-keys "clear && cd ~/www/true-compliance/web && art serve --port=8060" C-m

  # Select pane 1 - the first one which is ready for working.
  tmux selectp -t 1

  # create a new window called scratch
  tmux new-window -t $session:1 -n scratch

  # return to main vim window
  tmux select-window -t $session:0

  # Finished setup, attach to the tmux session!
  tmux attach-session -t $session
}

function tm-rigs {
  session="rigs4"

  # set up tmux
  tmux start-server

  # create a new tmux session, starting vim from a saved session in the new window
  tmux new-session -d -s $session -n vim
  
  tmux selectp -t 1
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

alias tm-kill-session='tmux kill-session'