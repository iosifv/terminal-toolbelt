alias take-master='git checkout master && git remote update && git pull origin master && git status'
alias take-production='git checkout production && git remote update && git pull origin production && git status'
alias take-development='git checkout development && git remote update && git pull origin development && git status'
alias gl='git log --pretty=format:"[%C(auto)%h][%Cgreen%an%Creset]%C(auto)%d %s (%Cblue%ar%Creset)" --graph --color -8'
alias glall='git log --pretty=format:"[%C(auto)%h][%Cgreen%an%Creset]%C(auto)%d %s (%Cblue%ar%Creset)" --graph --color'
alias gignore='git ls-files --others -i --exclude-standard'
alias gonline='open $(git config --get remote.origin.url)'
alias gclean='git branch --merged | grep -v "\*" | grep -v "production" | grep -v "master" | xargs -n 1 git branch -d'
alias gpop='git remote update && git pull origin production'
alias gpom='git remote update && git pull origin master'

# Push all changes to origin branch named as current branch
# Ex: gpush "<<commit-message>>"
#----------------------------
function gpush {
  git add .
  git commit -m "$1"
  git push origin $(git rev-parse --abbrev-ref HEAD) # branch I am on right now
  echo "------"
  git status
}


# Push all changes as a fixup to the previous commit
# Ex: gfixup "<<commit-message>>"
#----------------------------
function gfixup {
  git add .
  git commit --fixup $(git rev-parse --verify HEAD)  # hash of the last commit
  git push origin $(git rev-parse --abbrev-ref HEAD) # branch I am on right now
  echo "------"
  git status
}


# Ex: gc "<<commit-message>>"
#----------------------------
function gc {
  git commit -m "$1"
}



function current_git_branch {
  ref=$(git symbolic-ref HEAD 2> /dev/null)
  current_branch=${ref#refs/heads/}

  # warn me if not working on master
  if [[ "${current_branch}" == "master" ]]; then
    echo "${C_GREEN}${current_branch}${C_RESET}"
  elif [[ -z "${current_branch}" ]]; then
    echo "${C_RED}detached${C_RESET}"
  else
    echo "${C_YELLOW}${current_branch}${C_RESET}"
  fi
}

function minutes_since_last_commit {
    now=`date +%s`
    last_commit=$(git log --pretty=format:'%at' -1 2> /dev/null) || return
    seconds_since_last_commit=$((now-last_commit))
    minutes_since_last_commit=$((seconds_since_last_commit/60))
    echo $minutes_since_last_commit
}

function git_current_author() {
  author=${GIT_AUTHOR_NAME:-$(git config --get user.name)}
  [[ ${author} != "Marco Valtas" ]] && echo "${C_YELLOW}A${C_RESET}"
}

# rendering git prompt if we are in a git repo
function git_prompt {
    $(git rev-parse --is-inside-work-tree 2> /dev/null) || return

    extra_info="["
    extra_info+="$(git_current_author)"
    extra_info+="]"
    [[ ${extra_info} == "[]" ]] && extra_info=""

    echo "($(current_git_branch))${extra_info}"
}

git-author() {
  args=(${@})
  case ${1} in
    set)
      export GIT_AUTHOR_NAME=${args[@]:1:2}
      ;;
    unset)
      unset GIT_AUTHOR_NAME
      ;;
    show|get)
      echo "Current authors: ${GIT_AUTHOR_NAME:-$(git config --get user.name)}"
      ;;
    *)
      echo "Usage git-author [set AUTHORS|unset|show|get]"
      git-author show
      ;;
  esac
}

# git prompt
# export PS1="\[${C_RESET}\]\W \$(git_prompt)\$ "
