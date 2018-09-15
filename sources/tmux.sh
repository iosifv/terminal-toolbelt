#!/usr/bin/env bash

alias tm3='tmux new-session \; split-window -h \; split-window -v \; attach'

function tm-top {
  tmux \
  new-session "ls"\; \
  split-window -v "htop" \
  split-window -h "top" \
  attach
}

function tm-stat {
  tmux \
  new-session  "htop" \; \
  split-window "glances" \; \
  split-window "vtop" \; \
  select-layout even-vertical
}
