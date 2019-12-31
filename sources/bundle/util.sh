#!/usr/bin/env bash

function tb-help-util {
    print-status "util:"
    echo "markdown      = takes a file as an argument to simply read .md files"
    echo "weather       = shows the weather locally"
    echo "weather-[london|cluj|wroclaw]"
    echo "json-pretty-print"
    echo "json-pretty-color"
    echo "show-my-ip"
    echo "show-my-ip-detailed"
    echo "internet-ping"
    echo "internet-speed"
    echo "internet-graph"
    echo "dir-dos2unix / dos2unix-dir"
}

alias json-pretty-print='python -m json.tool'
alias json-pretty-color='pygmentize -l json'

alias show-my-ip='curl -4 icanhazip.com'
alias show-my-ip-detailed='curl ifconfig.co/json --silent | json-pretty-print | json-pretty-color'

function internet-ping {
  print-status "IP information:"
  curl ifconfig.co/json --silent | json-pretty-print #| json-pretty-color

  print-status "Google.com:"
  ping www.google.com -c 2

  print-status "Amazon.co.uk"
  ping www.amazon.co.uk -c 2

  print-status "Amazon.com"
  ping www.amazon.com -c 2
}

alias internet-speed='speedtest'

function internet-speed-world {
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

alias internet-graph='speedometer -r eth0'

# Super useful weather info because asking Siri or Google is mainstream
#----------------------------
alias weather='curl wttr.in'
alias weather2='curl "wttr.in/?format=v2"'
alias weatherLondon='curl wttr.in/London'
alias weatherCluj='curl wttr.in/Cluj'
alias weatherWroclaw='curl wttr.in/Wroclaw'

alias json-pretty-print-python='python -m json.tool'
alias json-pretty-print='jq'


# Read markdown files nicely
markdown () {
  pandoc $1 | lynx -stdin
}

alias dos2unix-dir='find . -name "*.*" | xargs dos2unix'
alias dir-dos2unix='dos2unix-dir'

function test-drive-speed {
  sudo echo '.'
  print-status "Test Write Speed:"
  sync; dd if=/dev/zero of=tempfile bs=1M count=1024; sync

  print-status "Test Read Speed from buffer:"
  dd if=tempfile of=/dev/null bs=1M count=1024

  print-status "Test Read Speed no buffer:"
  sudo /sbin/sysctl -w vm.drop_caches=3
  dd if=tempfile of=/dev/null bs=1M count=1024

  rm -v tempfile

  print-status "Use hdparm:"
  sudo hdparm -Tt /dev/sda
}

function phpStorm-reset-trial-v2019.2 {
  cd ~/.PhpStorm2019.2
  rm -v config/eval/*.evaluation.key
  sed -i '/evlsprt/d' config/options/*.xml
  cd ~/.java/.userPrefs/jetbrains
  rm -rfv phpstorm
}

function phpStorm-reset-trial-v2019.3 {
  cd ~/.PhpStorm2019.3
  rm -v config/eval/*.evaluation.key
  sed -i '/evlsprt/d' config/options/*.xml
  cd ~/.java/.userPrefs/jetbrains
  rm -rfv phpstorm
}