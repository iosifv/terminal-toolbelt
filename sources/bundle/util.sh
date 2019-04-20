#!/usr/bin/env bash

alias show-my-ip='curl -4 icanhazip.com'

# Super useful weather info because asking Siri or Google is mainstream
#----------------------------
alias weather='curl wttr.in/London'
alias weather-cluj='curl wttr.in/Cluj'


# Read markdown files nicely
markdown () {
  pandoc $1 | lynx -stdin
}
