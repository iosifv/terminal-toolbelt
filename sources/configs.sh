# just reload the profile
# EXITS THE TERMINAL...
resource() {
    echo "Sourcing ~/.zshrc" && source ~/.zshrc;
}

alias zsh-edit='nano +100 ~/.zshrc'

export CLICOLOR=true # enable colors on OSX terminal

# Warning! Sends loading errors to /dev/null
source ~/.zsh/zsh-autosuggestions/zsh-autosuggestions.zsh 2> /dev/null
source /usr/local/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh 2> /dev/null

alias composer="php $DIR_PATH_FOR_BIN/composer.phar"
export PATH="$PATH:$HOME/.composer/vendor/bin"

DEFAULT_USER=iosif
ZSH_THEME="agnoster"
