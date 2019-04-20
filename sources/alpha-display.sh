#!/usr/bin/env bash

# COLOR VARIABLES
#----------------------------
C_RED=$(tput setaf 1)
C_GREEN=$(tput setaf 2)
C_YELLOW=$(tput setaf 3)
C_BLUE=$(tput setaf 4)
C_LIGHT_GREY="\033[0;37m"

C_BOLD=$(tput bold)
C_REVERSE=$(tput rev)
C_RESET=$(tput sgr0)

# stores number of columns available in the terminal
C_COLS=$(tput cols)

# Functions for printing pretty text
#----------------------------
function print-status {
  echo "${C_YELLOW} => ${1}${C_RESET}"
}

function print-success {
  echo "${C_GREEN} => ${1}${C_RESET}"
}

function print-error {
  echo "${C_RED} => ${1}${C_RESET}"
}

function print-quote {
  echo "${C_BLUE}>"
  echo "${C_BLUE}>${C_RESET} \"${1}\"${C_RESET}"
  echo "${C_BLUE}>${C_RESET}"
}

# Functions for confirming dangerous actions
#----------------------------
function confirmDragons {
    print-error "Here be Dragons!"
    read "brave?Continue? "
    if [[ "$brave" =~ ^[Yy]$ ]]
    then
        $1 $2 $3 $4
    fi
}

function confirmStuff {
    print-status "Please don't break stuff!"
    read "oath?Promise? "
    if [[ "$oath" =~ ^[Yy]$ ]]
    then
        $1 $2 $3 $4
    fi
}
