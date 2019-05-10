
function tb-help-persona {
    print-status "persona:"
    echo "prs-status"
}

alias persona-status=''
alias iv-photos='cd /home/ioto/www/iosifv/storage/app/public/photos'
alias iv-photos-backup='mv /home/ioto/www/iosifv/storage/app/public/photos /home/ioto/www/iosifv/storage/app/public/photos-bck'
alias iv-photos-pcloud-copy='rclone copy -v pcloud:Fotografii/__iosifv.com /home/ioto/www/iosifv/storage/app/public/photos'
alias iv-photos-pcloud-replace='rm -rfv /home/ioto/www/iosifv/storage/app/public/photos && rclone copy -v pcloud:Fotografii/__iosifv.com /home/ioto/www/iosifv/storage/app/public/photos'
alias iv-log='cd /home/ioto/www/iosifv/storage/logs'
alias iv-log-tail='tail -f /home/ioto/www/iosifv/storage/logs/laravel.log'
