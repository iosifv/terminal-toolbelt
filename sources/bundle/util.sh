#!/usr/bin/env bash

function tb-help-util {
    print-status "util:"
    echo "markdown      = takes a file as an argument to simply read .md files"
    echo "weather       = shows the weather in london"
    echo "weather-[london|cluj|wroclaw]"
}

alias show-my-ip='curl -4 icanhazip.com'

function net-test {
  print-status "ping:"
  ping www.google.com -c 2
  ping www.amazon.co.uk -c 2
  ping www.amazon.com -c 2
  wget --output-document=/dev/null http://speedtest.tele2.net/10MB.zip
}

alias speedometer='speedometer -r eth0'

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
