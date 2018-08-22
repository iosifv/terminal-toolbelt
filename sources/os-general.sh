#!/usr/bin/env bash

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


