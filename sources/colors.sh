#!/usr/bin/env bash

# COLOR VARIABLES
#----------------------------
C_RED=$(tput setaf 1)
C_GREEN=$(tput setaf 2)
C_YELLOW=$(tput setaf 3)
C_RESET=$(tput sgr0)
C_REVERSE=$(tput rev)
C_LIGHT_GREY="\[\033[0;37m\]"

# Todo: this is WIP, not working atm.
function print-status {
  echo "${C_YELLOW} => ${1}${C_RESET}"
}

function print-success {
  echo "${C_GREEN} => ${1}${C_RESET}"
}

function print-error {
  echo "${C_RED} => ${1}${C_RESET}"
}
