
function tb-help-persona {
    print-status "persona:"
    echo "persona-listConfig-[...]"
    echo "persona-start-[...]"
}

function persona-listConfig-personaCore {
    print-status 'Displaying files from ~/.config/persona-core/mainnet/'
    echo ''
    print-status '[delegates.json]'
    pygmentize -O style=colorful -l json ~/.config/persona-core/mainnet/delegates.json
    print-status '[peers.json]'
    pygmentize -O style=colorful -l json ~/.config/persona-core/mainnet/peers.json
    print-status '[plugins.js]'
    pygmentize -O style=colorful -l json ~/.config/persona-core/mainnet/plugins.js
}

function persona-listConfig-networks {
    print-status 'Displaying files from ~/persona-core/packages/crypto/dist/networks/mainnet/'
    echo ''
    print-status '[exceptions.json]'
    pygmentize -O style=colorful -l json ~/persona-core/packages/crypto/dist/networks/mainnet/exceptions.json
    print-status '[genesisBlock.json]'
    pygmentize -O style=colorful -l json ~/persona-core/packages/crypto/dist/networks/mainnet/genesisBlock.json
    print-status '[index.js]'
    pygmentize -O style=colorful -l json ~/persona-core/packages/crypto/dist/networks/mainnet/index.json
    print-status '[network.json]'
    pygmentize -O style=colorful -l json ~/persona-core/packages/crypto/dist/networks/mainnet/network.json
}

alias persona-listConfig-tbw='pygmentize -O style=colorful -l python ~/core2_tbw/core/config/config'
alias persona-listConfig-databses='psql -l'
alias persona-listConfig-secret='pygmentize -O style=colorful -l json ~/.config/persona-core/mainnet/delegates.json'

alias persona-start-relay='~/core-control/ccontrol.sh start relay'
alias persona-start-forger='~/core-control/ccontrol.sh start forger'
alias persona-start-tbw='cd ~/core2_tbw/ && bash tbw.sh'
