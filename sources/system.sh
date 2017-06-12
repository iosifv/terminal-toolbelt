alias dus='du -sckxh * | sort -nr'
alias dir-sizes='du -skxh * && echo "\nTotal:" && du -skxh'
alias dir-info='ncdu'

# turn hidden files on/off in Finder
#----------------------------
function hiddenOn() { defaults write com.apple.Finder AppleShowAllFiles YES ; }
function hiddenOff() { defaults write com.apple.Finder AppleShowAllFiles NO ; }

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

# change habits
#alias sudo="echo '${C_YELLOW}Are you sure?${C_RESET}'"


# rarely used ones, but cool
alias epoch='date +"%s"'
alias version='echo "bash version: ${BASH_VERSION}"'
alias path='echo -e ${PATH//:/\\n}' # nice path printing


