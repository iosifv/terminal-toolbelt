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
 
 # ToDo: find out which branch I am working on and reduce the arguments
 # git rev-parse --abbrev-ref HEAD
 
# Example usage: fixup my-branch "my comment"
function fixup {
  git add .
  git commit --fixup "$2"
  git push origin $1
  echo "------"
  git status
}


#===============================================
######## Laravel ===============================
#===============================================
function artisan {
  php artisan $1
}
