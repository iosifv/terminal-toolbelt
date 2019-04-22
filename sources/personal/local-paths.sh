#!/usr/bin/env bash

function tb-help-local-paths {
    print-status "local-paths:"
}

### Generic ###
#----------------------------
alias www='cd ${DIR_PATH_FOR_WWW}'
alias bitbucket='cd ${DIR_PATH_FOR_WWW}/bitbucket'
alias github='cd ${DIR_PATH_FOR_WWW}/github'
alias drive='cd ${DIR_PATH_FOR_WWW}/../Drive'

### Personal projects ###
#----------------------------
alias iosifv='cd ${DIR_PATH_FOR_WWW}/bitbucket/iosifv'
alias iosifvCode='code ${DIR_PATH_FOR_WWW}/bitbucket/iosifv'
alias toolbelt='cd ${DIR_PATH_FOR_WWW}/github/terminal-toolbelt'
alias toolbeltCode='code ${DIR_PATH_FOR_WWW}/github/terminal-toolbelt'
alias installers='cd ${DIR_PATH_FOR_WWW}/github/terminal-toolbelt/installers'
alias silence='cd ${DIR_PATH_FOR_WWW}/bitbucket/silence'
alias silenceCode='code ${DIR_PATH_FOR_WWW}/bitbucket/silences'

### Personal soft ###
#----------------------------
alias etn-daemon='/Users/iosif/Google\ Drive/💰_WealthAugmentation\!/🔐Cryptocurrency/💰Wallets/\(ETN\)\ Electroneum/macOS-x64-0.11.0.0/electroneumd;'
alias etn-wallet='/Users/iosif/Google\ Drive/💰_WealthAugmentation\!/🔐Cryptocurrency/💰Wallets/\(ETN\)\ Electroneum/macOS-x64-0.11.0.0/electroneum-wallet-cli --wallet-file hidden_hash_electroneum;'

### System stuff ###
#----------------------------
#alias homestead='cd ${DIR_PATH_FOR_WWW}/soft/Homestead'
alias start-homestead='cd ${DIR_PATH_FOR_WWW}/soft/Homestead/ && vagrant reload --provision'
