#============================
# Laravel ===================
#============================


function tb-help-laravel {
    print-status "laravel:"
}

# This is needed in Linux environments,
# OSX works well with just an alias
#----------------------------
function artisan {
  php artisan $1 $2 $3
}

alias art='php artisan'
alias tinker='php artisan tinker'

# Search for a certain route
# Eg. sed 's/search for text/replace with this/'
#----------------------------
function lroute {
  php artisan route:list \
  | sed 's/App\\Http\\Controllers//' \
  | sed 's/api\/v1\//\//' \
  | sed 's/api,auth:api,//' \
  | sed -E 's/([[:space:]]+).{1}$//' \
  | sed -E 's/(\|[[:space:]]+\|)/\-\>/' \
  | sed -E 's/([[:space:]]{16}\|)/\|/' \
  | sed 's/^(.{10})/x/' \
  | grep $1 \
  | grep "$2"
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

# Sqlite
#----------------------------
alias sqlite-open='sqlite3 database/database.sqlite'

# Logging stuff
#----------------------------
alias llog='multitail storage/logs/laravel.log'
alias ltail='llog'

