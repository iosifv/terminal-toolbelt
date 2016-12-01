alias dus='du -sckxh * | sort -nr'

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

# display battery info on your Mac
# see http://blog.justingreer.com/post/45839440/a-tale-of-two-batteries
alias battery='ioreg -w0 -l | grep Capacity | cut -d " " -f 17-50'
alias weather='curl wttr.in/Amsterdam'
alias weather-cluj='curl wttr.in/Cluj'
