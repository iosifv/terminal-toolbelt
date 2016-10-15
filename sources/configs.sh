# just reload the profile
# EXITS THE TERMINAL...
resource() {
    echo "Sourcing ~/.zshrc" && . ~/.zshrc;
}

alias zsh-edit='nano +100 ~/.zshrc'

export CLICOLOR=true # enable colors on OSX terminal

source ~/.zsh/zsh-autosuggestions/zsh-autosuggestions.zsh
source /usr/local/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

export PATH="$PATH:$HOME/.composer/vendor/bin"

DEFAULT_USER=iosif
ZSH_THEME="agnoster"
