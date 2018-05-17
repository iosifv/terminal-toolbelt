alias dus='du -sckxh * | sort -nr'
alias dir-sizes='du -skxh * && echo "\nTotal:" && du -skxh'
alias dir-info='ncdu'

# turn hidden files on/off in Finder
#----------------------------
function hiddenOn() { defaults write com.apple.Finder AppleShowAllFiles YES ; }
function hiddenOff() { defaults write com.apple.Finder AppleShowAllFiles NO ; }

# turn shadows for windows on/off in OSX
#----------------------------
function shadowOn() { defaults write com.apple.screencapture disable-shadow -bool true; }
function shadowOff() { defaults write com.apple.screencapture disable-shadow -bool false; }

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

# Change habits
#alias sudo="echo '${C_YELLOW}Are you sure?${C_RESET}'"


# Rarely used ones, but cool
alias epoch='date +"%s"'
alias version='echo "bash version: ${BASH_VERSION}"'
alias path='echo -e ${PATH//:/\\n}' # nice path printing

# Misc
alias kill-ds-store='find . -name "*.DS_Store" -type f -delete'

### OSX ###
alias edit-hosts='sudo nano /private/etc/hosts'
alias fs-usage='sudo fs_usage'
