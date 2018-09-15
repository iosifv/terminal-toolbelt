#!/usr/bin/env bash

# Updates
function apt-update {
    sudo echo ""
    echo "${C_YELLOW}==== Running apt-get ${C_GREEN}update${C_YELLOW} ====${C_RESET}"
    sudo apt-get update
    echo "${C_YELLOW}==== Running apt-get ${C_GREEN}upgrade${C_YELLOW} ====${C_RESET}"
    sudo apt-get upgrade -y
    echo "${C_YELLOW}==== Running apt-get ${C_GREEN}dist-upgrade${C_YELLOW} ====${C_RESET}"
    sudo apt-get dist-upgrade -y
    echo "${C_YELLOW}==== Running apt-get ${C_GREEN}autoremove${C_YELLOW} ====${C_RESET}"
    sudo apt-get autoremove -y
    echo "${C_YELLOW}==== Running apt-get ${C_GREEN}autoclean${C_YELLOW} ====${C_RESET}"
    sudo apt-get autoclean -y
    echo "${C_YELLOW}==== Running upgrade_${C_GREEN}oh_my_zsh${C_YELLOW} ====${C_RESET}"
    upgrade_oh_my_zsh
    echo "${C_YELLOW}==== ${C_GREEN}Done! :)${C_YELLOW} ====${C_RESET}"
}

# Files
#----------------------------
function dir-sizes {
    du -skxh *
    echo "${C_YELLOW}===================================${C_GREEN}"
    echo "Total: " && du -skxh
}
alias dir-info='ncdu'

# Copy/Move files or directories with verbose output
#----------------------------
function copy {  ditto -V $1 $2  }
function move {
  ditto -V $1 $2
  rm -rfv $1
}
function delete {
  rm -rfv $1
}

# Awesome php switch
#----------------------------
# Todo: make a list of constants to check for file version
function php-switch {
  echo "Switching ${C_GREEN}php$(php -r " echo phpversion()[0] . phpversion()[2];") => php$1${C_RESET}\n"

  brew unlink php$(php -r " echo phpversion()[0] . phpversion()[2];")
  echo "${C_YELLOW}===================================${C_RESET}"
  brew link php$1

  echo "${C_YELLOW}"
  php -v
  echo "${C_RESET}"
}

# Read markdown files nicely
markdown () {
  pandoc $1 | lynx -stdin
}

# Tmux
#----------------------------
tm () {
  tmux attach || tmux
}


# Change habits
#alias sudo="echo '${C_YELLOW}Are you sure?${C_RESET}'"

# Rarely used ones, but cool
#----------------------------
alias epoch='date +"%s"'
alias version='echo "bash version: ${BASH_VERSION}"'
alias path='echo -e ${PATH//:/\\n}' # nice path printing
