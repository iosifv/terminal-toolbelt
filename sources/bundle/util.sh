#!/usr/bin/env bash

function tb-help-util {
    print-status "util:"
    echo "markdown      = takes a file as an argument to simply read .md files"
    echo "weather       = shows the weather in london"
    echo "weather-[london|cluj|wroclaw]"
    echo "json-pretty-print"
    echo "json-pretty-color"
    echo "show-my-ip"
    echo "show-my-ip-detailed"
    echo "net-ping-test"
    echo "net-speed-test"
    echo "net-usage-graph"
}

alias json-pretty-print='python -m json.tool'
alias json-pretty-color='pygmentize -l json'

alias show-my-ip='curl -4 icanhazip.com'
alias show-my-ip-detailed='curl ifconfig.co/json --silent | json-pretty-print | json-pretty-color'

function net-ping-test {
  print-status "IP information:"
  curl ifconfig.co/json --silent | json-pretty-print | json-pretty-color

  print-status "Google.com:"
  ping www.google.com -c 2

  print-status "Amazon.co.uk"
  ping www.amazon.co.uk -c 2

  print-status "Amazon.com"
  ping www.amazon.com -c 2
}

alias net-speed-test='speedtest'

function net-speed-test-world {
  print-status "New York:"
  wget --output-document=/dev/null -q --show-progress http://speedtest-nyc1.digitalocean.com/10mb.test
  print-status "Amsterdam:"
  wget --output-document=/dev/null -q --show-progress http://speedtest-ams2.digitalocean.com/10mb.test
  print-status "San Francisco:"
  wget --output-document=/dev/null -q --show-progress http://speedtest-sfo1.digitalocean.com/10mb.test
  print-status "Singapore:"
  wget --output-document=/dev/null -q --show-progress http://speedtest-sgp1.digitalocean.com/10mb.test
  print-status "London:"
  wget --output-document=/dev/null -q --show-progress http://speedtest-lon1.digitalocean.com/10mb.test
  print-status "Frankfurt:"
  wget --output-document=/dev/null -q --show-progress http://speedtest-fra1.digitalocean.com/10mb.test
  print-status "Toronto:"
  wget --output-document=/dev/null -q --show-progress http://speedtest-tor1.digitalocean.com/10mb.test
  print-status "Bangalore:"
  wget --output-document=/dev/null -q --show-progress http://speedtest-blr1.digitalocean.com/10mb.test
}

alias net-usage-graph='speedometer -r eth0'

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
