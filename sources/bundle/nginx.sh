
function tb-help-nginx {
    print-status "nginx:"
    echo "nginx-status"
    echo "nginx-stop"
    echo "nginx-start"
    echo "nginx-restart"
    echo "nginx-reload"
    echo "nginx-goto-sites-available"
    echo "nginx-goto-sites-enabled"
    echo "nginx-log-access"
    echo "nginx-log-error"
    echo "nginx-list-sites"
}

alias nginx-status='sudo systemctl status nginx'
alias nginx-stop='sudo systemctl stop nginx'
alias nginx-start='sudo systemctl start nginx'
alias nginx-restart='sudo systemctl restart nginx'
alias nginx-reload='sudo systemctl reload nginx'
alias nginx-goto-sites-available='cd /etc/nginx/sites-available/'
alias nginx-goto-sites-enabled='cd /etc/nginx/sites-enabled/'
alias nginx-log-access='sudo multitail /var/log/nginx/access.log'
alias nginx-log-error='sudo multitail /var/log/nginx/error.log'
alias nginx-list-sites='ls -l /etc/nginx/sites-available/ && ls -l /etc/nginx/sites-enabled/'
