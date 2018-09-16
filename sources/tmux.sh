#!/usr/bin/env bash

alias tm3='tmux new-session \; split-window -h \; split-window -v \; attach'

function tm-stat {
  tmux \
  new-session  "htop" \; \
  split-window "glances" \; \
  split-window "vtop" \; \
  select-layout even-vertical
}

function tm-work {
  session="work"

  # exporting NMON to have the default config
  export NMON="cC"

  # set up tmux
  tmux start-server

  # create a new tmux session, starting vim from a saved session in the new window
  tmux new-session -d -s $session -n vim #"vim -S ~/.vim/sessions/kittybusiness"

  # Select pane 1, set dir to api, run vim
  tmux selectp -t 1
  tmux send-keys "er" C-m

  # Split pane 1 horizontal by 75%, start redis-server
  tmux splitw -h -p 25
  tmux send-keys "nmon" C-m

  # Select pane 2
  tmux selectp -t 2
  # Split pane 2 vertiacally by 30%
  tmux splitw -v -p 70

  # Select pane 3, set to api root
  tmux selectp -t 3
  tmux send-keys "clear;er;gru;gst" C-m

  # Pane 3 selected
  # Split pane 3 vertically by 50% - which is 35% from the total height
  tmux splitw -v -p 50

  # select pane 4, set to api root
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
