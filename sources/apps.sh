#============================
# Laravel ===================
#============================
function artisan {
  php artisan $1 $2 $3
}

# Search for a certain route
#----------------------------
function lroute {
  php artisan route:list --name=$1
  php artisan route:list --path=$1
}

# Deletes everything cache related
#----------------------------
function lcache {
  echo "${C_YELLOW}Removing bootstrap cache...${C_RESET}"
  touch bootstrap/cache/foo.php
  rm bootstrap/cache/*.php
  echo "${C_YELLOW}Composer stuff...${C_RESET}"
  composer dump-autoload
  composer install
  echo "${C_YELLOW}Removing artisan cache...${C_RESET}"
  php artisan cache:clear
  php artisan view:clear
  php artisan clear-compiled
  echo "${C_YELLOW}Recreating ide-helper${C_RESET}"
  php artisan ide-helper:generate
  php artisan ide-helper:meta
  php artisan ide-helper:models -W
}

alias sqlite-open='sqlite3 database/database.sqlite'
alias lcache-bck='touch bootstrap/cache/foo.php && rm bootstrap/cache/*.php && composer dump-autoload && composer install && php artisan cache:clear && php artisan view:clear && php artisan clear-compiled && php artisan ide-helper:generate && php artisan ide-helper:meta && php artisan ide-helper:models -W'
alias tinker='php artisan tinker'

alias art='php artisan'
