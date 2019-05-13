
function tb-help-persona {
    print-status "persona:"
    echo "persona-list"
}

function persona-listConfig-personaCore {
    print-status 'Displaying files from ~/.config/persona-core/mainnet/'
    echo ''
    print-status '[delegates.json]'
    cat ~/.config/persona-core/mainnet/delegates.json
    print-status '[peers.json]'
    cat ~/.config/persona-core/mainnet/peers.json
    print-status '[plugins.js]'
    cat ~/.config/persona-core/mainnet/plugins.js
}

function persona-listConfig-networks {
    print-status 'Displaying files from ~/persona-core/packages/crypto/dist/networks/mainnet/'
    echo ''
    print-status '[exceptions.json]'
    cat ~/persona-core/packages/crypto/dist/networks/mainnet/exceptions.json
    print-status '[genesisBlock.json]'
    cat ~/persona-core/packages/crypto/dist/networks/mainnet/genesisBlock.json
    print-status '[index.js]'
    cat ~/persona-core/packages/crypto/dist/networks/mainnet/index.json
    print-status '[network.json]'
    cat ~/persona-core/packages/crypto/dist/networks/mainnet/network.json
}

function persona-listConfig-tbw {
    print-status 'Displaying files from cat ~/tbw/config/'
    echo ''
    print-status '[config.json]'
    cat cat ~/tbw/config/config.json
    print-status '[pool.json]'
    cat cat ~/tbw/config/pool.json
}

alias persona-relay-start='~/core-control/ccontrol.sh start relay'

alias persona-show-databses='psql -l'
alias persona-payments-manual='python3 ~/tbw/core_v1/tbw.py'
alias persona-payments-start='pm2 start ~/tbw/core_v1/apps.json'
alias persona-payments-stop='pm2 stop ~/tbw/core_v1/apps.json'
