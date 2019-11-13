#!/usr/bin/env bash

export CLICOLOR=true # enable colors on OSX terminal

# Warning! Sends loading errors to /dev/null
#----------------------------
source ~/.zsh/zsh-autosuggestions/zsh-autosuggestions.zsh 2> /dev/null
source /usr/local/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh 2> /dev/null
source ~/.oh-my-zsh/custom/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh 2> /dev/null

# alias composer="php $DIR_PATH_FOR_BIN/composer.phar"
# alias composer="php /usr/local/Cellar/composer/1.8.4/bin/composer"
export PATH="$PATH:/usr/local/bin"
export PATH=/home/iosif/.composer/vendor/bin:$PATH
export PATH=$PATH:~/bin

# export TERM="xterm-256color"