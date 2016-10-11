#===============================================
######## Git ===================================
#===============================================
function gp {
  git add .
  git commit -m "$2"
  git push origin $1
  echo "------"
  git status
}

function gp-master {
  git add .
  git commit -m "$2"
  git push origin master
  echo "------"
  git status
}

 # Which is the branch I am on right now:
 # git rev-parse --abbrev-ref HEAD

 # What's the hash of my last commit
 # git rev-parse --verify HEAD

function gfixup {
  git add .
  git commit --fixup $(git rev-parse --verify HEAD)
  git push origin $(git rev-parse --abbrev-ref HEAD)
  echo "------"
  git status
}

function gc {
  git commit -m "$1"
}


#===============================================
######## Laravel ===============================
#===============================================
function artisan {
  php artisan $1
}
