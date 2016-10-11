#===============================================
######## Git ===================================
#===============================================

# Push all changes to custom branch
# Ex: gp <<branch-name>> "<<commit-message>>"
function gp {
  git add .
  git commit -m "$2"
  git push origin $1
  echo "------"
  git status
}

# Push all changes to master
# Ex: gpm "<<commit-message>>"
function gpm {
  git add .
  git commit -m "$1"
  git push origin master
  echo "------"
  git status
}

# Push all changes as a fixup to the previous commit
#
# Which is the branch I am on right now:
# git rev-parse --abbrev-ref HEAD
#
# What's the hash of my last commit
# git rev-parse --verify HEAD
#
# Ex: gfixup "<<commit-message>>"
function gfixup {
  git add .
  git commit --fixup $(git rev-parse --verify HEAD)
  git push origin $(git rev-parse --abbrev-ref HEAD)
  echo "------"
  git status
}


# Ex: gc "<<commit-message>>"
function gc {
  git commit -m "$1"
}


#===============================================
######## Laravel ===============================
#===============================================
function artisan {
  php artisan $1
}
