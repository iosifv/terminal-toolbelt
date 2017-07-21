# List the useful commands
#----------------------------
function ghelp {
  echo "${C_YELLOW}Take's   ${C_RESET}= take-master, take-production, take-development"
  echo "${C_YELLOW}Pull's   ${C_RESET}= gpom, gpop, gpod"
  echo "${C_YELLOW}Commit's ${C_RESET}= gpush, gfixup, gc"
  echo "${C_YELLOW}Log's    ${C_RESET}= gl, glall"
  echo "${C_YELLOW}Special  ${C_RESET}= gignore, gonline, gdelete"
}

function gtake {
    git checkout $1
    git remote update
    git pull origin $1
    echo "${C_YELLOW}------------${C_RESET}"
    git status
}

alias gpom='git remote update && git pull origin master'
alias gpop='git remote update && git pull origin production'
alias gpod='git remote update && git pull origin development'

# Git log in a nice format
alias gl='git log --pretty=format:"[%C(auto)%h][%Cgreen%an%Creset]%C(auto)%d %s (%Cblue%ar%Creset)" --graph --color -8'
alias glall='git log --pretty=format:"[%C(auto)%h][%Cgreen%an%Creset]%C(auto)%d %s (%Cblue%ar%Creset)" --graph --color'

# List all git ignored files
alias gignore='git ls-files --others -i --exclude-standard'

# Open the online location of the repository
alias gonline='open $(git config --get remote.origin.url)'

# Delete all branches which are merged and don't exist on origin
alias gdelete='git branch --merged | grep -v "\*" | grep -v "master" | grep -v "production" | grep -v "development" | grep -v "test" | grep -v "uat" | xargs -n 1 git branch -d'

# Push all changes to origin branch named as current branch
# Ex: gpush "<<commit-message>>"
#----------------------------
function gpush {
  local CURRENT_BRANCH=$(git rev-parse --abbrev-ref HEAD)

  echo "${C_YELLOW}Changes found in the following files:${C_RESET}"
  git status -s

  echo "${C_YELLOW}Pushing all changes to: origin/${C_GREEN}${CURRENT_BRANCH}${C_RESET}"
  git add .
  git commit -m "[${CURRENT_BRANCH}] - $1"
  git push origin $CURRENT_BRANCH

  echo "${C_YELLOW}====================================="
  git status
  echo "=====================================${C_RESET}"
}

function gcommit {
  local CURRENT_BRANCH=$(git rev-parse --abbrev-ref HEAD)

  echo "${C_YELLOW}Changes found in the following files:${C_RESET}"
  git status -s

  echo "${C_YELLOW}Pushing all staged files to: origin/${C_GREEN}${CURRENT_BRANCH}${C_RESET}"
  git commit -m "[${CURRENT_BRANCH}] - $1"
  git push origin $CURRENT_BRANCH

  echo "${C_YELLOW}====================================="
  git status
  echo "=====================================${C_RESET}"
}


# Push all changes as a fixup to the previous commit
# Ex: gfixup "<<commit-message>>"
#----------------------------
function gfixup {
  git add .
  git commit --fixup $(git rev-parse --verify HEAD)  # hash of the last commit
  git push origin $(git rev-parse --abbrev-ref HEAD) # branch I am on right now
  echo "${C_YELLOW}------------${C_RESET}"
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
