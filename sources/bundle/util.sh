#!/usr/bin/env bash

function tb-help-util {
    print-status "util:"
}

alias show-my-ip='curl -4 icanhazip.com'

# Super useful weather info because asking Siri or Google is mainstream
#----------------------------
alias weather='curl wttr.in/London'
alias weather-london='curl wttr.in/London'
alias weather-cluj='curl wttr.in/Cluj'
alias weather-wroclaw='curl wttr.in/Wroclaw'


# Read markdown files nicely
markdown () {
  pandoc $1 | lynx -stdin
}
