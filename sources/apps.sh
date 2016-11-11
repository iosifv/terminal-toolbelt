#============================
# Laravel ===================
#============================
function artisan {
  php artisan $1 $2 $3
}

function lroute {
  php artisan route:list --method=$1
  php artisan route:list --name=$1
  php artisan route:list --path=$1
}

alias sqlite-open='sqlite3 storage/database.sqlite'
alias lcache='touch bootstrap/cache/foo.php && rm bootstrap/cache/*.php && composer dump-autoload && composer install && php artisan cache:clear && php artisan view:clear && php artisan clear-compiled && php artisan ide-helper:generate && php artisan ide-helper:meta && php artisan ide-helper:models -W && php artisan optimize --force'
alias tinker='php artisan tinker'
