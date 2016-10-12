#============================
# Resource all configs ======
#============================
alias zsh-reload='source ~/.zshrc'
alias zsh-edit='nano ~/.zshrc'

#============================
# Paths & Files =============
#============================

### Projects ###
alias www='cd ~/www'
alias bitbucket='cd ~/www/bitbucket'
alias github='cd ~/www/github'
alias temper='cd ~/www/temper'

### OSX ###
alias osxhosts='nano /private/etc/hosts'
alias fs_usage='sudo fs_usage'

### Server ###
alias srv-logs='cd /var/log/apache2'


#============================
# System ====================
#============================
alias dus='du -sckx * | sort -nr'


#============================
# Git Special ===============
#============================
alias take-master='git checkout master && git remote update && git pull origin master && git status'
alias take-development='git checkout development && git remote update && git pull origin development && git status'
alias gl='git log --pretty=format:"[%C(auto)%h][%Cgreen%an%Creset]%C(auto)%d %s (%Cblue%ar%Creset)" --graph --color -8'
alias glall='git log --pretty=format:"[%C(auto)%h][%Cgreen%an%Creset]%C(auto)%d %s (%Cblue%ar%Creset)" --graph --color'
alias gignore='git ls-files --others -i --exclude-standard'
alias gonline='open $(git config --get remote.origin.url)'


#============================
# Apps ======================
#============================
alias sqlite-open='sqlite3 storage/database.sqlite'


#============================
# SSH =======================
#============================
alias ssh-show='cat ~/.ssh/id_rsa.pub'
alias ssh-copy-'cat ~/.ssh/id_rsa.pub | pbcopy'
alias ssh-list='ls -al ~/.ssh'
