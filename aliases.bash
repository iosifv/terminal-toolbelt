#===============================================
######## Run this to resource this file ========
#===============================================
alias reload-zsh='source ~/.zshrc'
alias edit-zsh='nano ~/.zshrc'

#===============================================
######## PATHS =================================
#===============================================

### Projects ###
alias www='cd ~/www'
alias bitbucket='cd ~/www/bitbucket'
alias github='cd ~/www/github'
alias temper='cd ~/www/temper'

### OSX Paths ###

### Server ###
alias srv-logs='cd /var/log/apache2'


#===============================================
######## Git Special ===========================
#===============================================
alias checkout-master='git checkout master && git remote update && git pull origin master && git status'
alias checkout-development='git checkout development && git remote update && git pull origin development && git status'
alias gl='git log --pretty=format:"[%C(auto)%h][%Cgreen%an%Creset]%C(auto)%d %s (%Cblue%ar%Creset)" --graph --color -8'
alias glall='git log --pretty=format:"[%C(auto)%h][%Cgreen%an%Creset]%C(auto)%d %s (%Cblue%ar%Creset)" --graph --color'
alias git-ignore='git ls-files --others -i --exclude-standard'


#===============================================
######## App Shortcuts =========================
#===============================================
alias sqlite-open='sqlite3 storage/database.sqlite'


#===============================================
######## SSH COMMANDS ==========================
#===============================================
alias ssh-show='cat ~/.ssh/id_rsa.pub'
alias ssh-copy-'cat ~/.ssh/id_rsa.pub | pbcopy'
alias ssh-list='ls -al ~/.ssh'



#===============================================
######## Other Sources =========================
#===============================================
source ~/.zsh/zsh-autosuggestions/zsh-autosuggestions.zsh
source /usr/local/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

export PATH="$PATH:$HOME/.composer/vendor/bin"
