#!/usr/bin/env bash

function tb-help-system {
    print-status "system:"
    echo "resource   = sources ~/.zshrc (so that you don't need to restart your terminal when modifying)"
    echo "edit-zsh   = edits ~/.zshrc"
    echo "apt-update = updates the shit out of your system"
    echo "path       = lists all system paths"
}

# Change habits
#alias sudo="echo '${C_YELLOW}Are you sure?${C_RESET}'"
alias please=sudo

# Useful if I make changes to this repository
#----------------------------
resource() {
    print-status "Sourcing ~/.zshrc"
    source ~/.zshrc;
}

alias edit-zsh='nano +100 ~/.zshrc'


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

# Rarely used
#----------------------------
alias path='echo -e ${PATH//:/\\n}' # nice path printing
