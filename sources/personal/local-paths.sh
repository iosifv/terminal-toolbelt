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
alias iosifvStorm='webstorm ${DIR_PATH_FOR_WWW}/bitbucket/iosifv'

alias toolbelt='cd ${DIR_PATH_FOR_TOOLBELT}'
alias toolbeltCode='code ${DIR_PATH_FOR_TOOLBELT}'
alias toolbeltDos2unix='cd ${DIR_PATH_FOR_TOOLBELT} && find . -name "*.sh" | xargs dos2unix'
alias toolbeltStorm='webstorm ${DIR_PATH_FOR_TOOLBELT}'
alias toolbeltInstallers='cd ${DIR_PATH_FOR_TOOLBELT}/installers'

alias silence='cd ${DIR_PATH_FOR_WWW}/bitbucket/silence'
alias silenceCode='code ${DIR_PATH_FOR_WWW}/bitbucket/silences'
alias silenceStorm='webstorm ${DIR_PATH_FOR_WWW}/bitbucket/silences'

alias ragus='cd ${DIR_PATH_FOR_WWW}/bitbucket/ragus'
alias ragusCode='code ${DIR_PATH_FOR_WWW}/bitbucket/ragus'
alias ragusStorm='webstorm ${DIR_PATH_FOR_WWW}/bitbucket/ragus'

alias ragusRunScrape='cd ${DIR_PATH_FOR_WWW}/bitbucket/ragus/scraper && tsc && serverless invoke local --function scrape'
alias ragusRunParse='cd ${DIR_PATH_FOR_WWW}/bitbucket/ragus/parser   && tsc && serverless invoke local --function parse'


### Personal soft ###
#----------------------------
alias etn-daemon='/Users/iosif/Google\ Drive/💰_WealthAugmentation\!/🔐Cryptocurrency/💰Wallets/\(ETN\)\ Electroneum/macOS-x64-0.11.0.0/electroneumd;'
alias etn-wallet='/Users/iosif/Google\ Drive/💰_WealthAugmentation\!/🔐Cryptocurrency/💰Wallets/\(ETN\)\ Electroneum/macOS-x64-0.11.0.0/electroneum-wallet-cli --wallet-file hidden_hash_electroneum;'

### System stuff ###
#----------------------------
#alias homestead='cd ${DIR_PATH_FOR_WWW}/soft/Homestead'
alias start-homestead='cd ${DIR_PATH_FOR_WWW}/soft/Homestead/ && vagrant reload --provision'
