#============================
# OSX =======================
#============================

# turn hidden files on/off in Finder
#----------------------------
function hiddenOn() { defaults write com.apple.Finder AppleShowAllFiles YES ; }
function hiddenOff() { defaults write com.apple.Finder AppleShowAllFiles NO ; }

# Copy/Move files or directories with verbose output
#----------------------------
function copy {  ditto -h $1 $2  }
function move {
  ditto -h $1 $2
  rm -rfv $1
}


#============================
# Git =======================
#============================

# Push all changes to custom branch
# Ex: gp <<branch-name>> "<<commit-message>>"
#----------------------------
function gp {
  git add .
  git commit -m "$2"
  git push origin $1
  echo "------"
  git status
}

# Push all changes to master
# Ex: gpm "<<commit-message>>"
#----------------------------
function gpm {
  git add .
  git commit -m "$1"
  git push origin master
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


#============================
# Laravel ===================
#============================
function artisan {
  php artisan $1
}
