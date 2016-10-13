# protection from myself
alias rm='rm -i'
alias mv='mv -i'

# change habits
alias sudo="echo '${C_YELLOW}Are you sure?${C_RESET}'"


# rarely used ones, but cool
alias epoch='date +"%s"'
alias version='echo "bash version: ${BASH_VERSION}"'
alias path='echo -e ${PATH//:/\\n}' # nice path printing

# display battery info on your Mac
# see http://blog.justingreer.com/post/45839440/a-tale-of-two-batteries
alias battery='ioreg -w0 -l | grep Capacity | cut -d " " -f 17-50'
