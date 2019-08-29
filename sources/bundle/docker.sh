
function tb-help-docker {
    print-status "Docker:"
    echo "dc"
    echo "dcub"
    echo "dspa"
}

#============================
# Docker ====================
#============================

alias dc='docker-compose'
alias dcu='docker-compose up'
alias dcub='docker-compose up --build'
alias dcd='docker-compose down'
alias dspa='docker system prune -a'
