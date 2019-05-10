
function tb-help-persona {
    print-status "persona:"
    echo "persona-status"
}

alias persona-status=''

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
