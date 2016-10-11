#===============================================
######## Git ===================================
#===============================================
function push-origin {
  git add .
  git commit -m "$2"
  git push origin $1
  echo "------"
  git status
}
 
 # Which is the branch I am on right now:
 # git rev-parse --abbrev-ref HEAD
 
 # What's the hash of my last commit
 # git rev-parse --verify HEAD

function fixup {
  git add .
  git commit --fixup $(git rev-parse --verify HEAD)
  git push origin $(git rev-parse --abbrev-ref HEAD)
  echo "------"
  git status
}


#===============================================
######## Laravel ===============================
#===============================================
function artisan {
  php artisan $1
}
