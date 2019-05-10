
function tb-help-persona {
    print-status "persona:"
    echo "persona-status"
}

alias persona-status=''
alias persona-list-configs='cat ~/.config/persona-core/mainnet/delegates.json && cat ~/.config/persona-core/mainnet/peers.json && cat ~/.config/persona-core/mainnet/plugins.js'

function persona-list-configs {
    print-status 'Displaying files from ~/.config/persona-core/mainnet/'
    echo ''
    print-status 'delegates.json'
    cat ~/.config/persona-core/mainnet/delegates.json
    print-status 'peers.json'
    cat ~/.config/persona-core/mainnet/peers.json
    print-status 'plugins.js'
    cat ~/.config/persona-core/mainnet/plugins.js
}
