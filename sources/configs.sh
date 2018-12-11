#!/usr/bin/env bash

# Useful if I make changes to this repository
#----------------------------
resource() {
    echo "Sourcing ~/.zshrc" && source ~/.zshrc;
}

alias edit-zsh='nano +100 ~/.zshrc'

export CLICOLOR=true # enable colors on OSX terminal

# Warning! Sends loading errors to /dev/null
#----------------------------
source ~/.zsh/zsh-autosuggestions/zsh-autosuggestions.zsh 2> /dev/null
source /usr/local/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh 2> /dev/null
source /home/iosif/.oh-my-zsh/custom/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh 2> /dev/null

alias composer="php $DIR_PATH_FOR_BIN/composer.phar"
export PATH="$PATH:$HOME/.composer/vendor/bin"

# EPIC Oh-my-Zsh Plugins
# plugins=(
#   git
#   colored-man-pages
#   zsh-syntax-highlighting
# )

DEFAULT_USER=iosif
ZSH_THEME="agnoster"
unsetopt correct_all
