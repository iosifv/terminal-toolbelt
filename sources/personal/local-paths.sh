#!/usr/bin/env bash

function tb-help-local-paths {
    print-status "local-paths:"
}

### Generic ###
#----------------------------
alias www='cd ${DIR_PATH_FOR_WWW}'
alias bitbucket='cd ${DIR_PATH_FOR_WWW}/bitbucket'
alias github='cd ${DIR_PATH_FOR_WWW}/github'
alias bitbucketCode='code ${DIR_PATH_FOR_WWW}/bitbucket'
alias githubCode='code ${DIR_PATH_FOR_WWW}/github'
alias drive='cd ${DIR_PATH_FOR_WWW}/../Drive'
alias web3='cd ${DIR_PATH_FOR_WWW}/bitbucket/web3'
alias web3Code='code ${DIR_PATH_FOR_WWW}/bitbucket/web3'

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

alias genesis='cd ${DIR_PATH_FOR_WWW}/github/genesis'
alias genesisCode='code ${DIR_PATH_FOR_WWW}/github/genesis'

alias silence='cd ${DIR_PATH_FOR_WWW}/bitbucket/silence'
alias silenceCode='code ${DIR_PATH_FOR_WWW}/bitbucket/silence'

alias silencePublic='cd ${DIR_PATH_FOR_WWW}/github/silence'
alias silencePublicCode='code ${DIR_PATH_FOR_WWW}/github/silence'

alias ragus='cd ${DIR_PATH_FOR_WWW}/bitbucket/ragus-mvp'
alias ragusCode='code ${DIR_PATH_FOR_WWW}/bitbucket/ragus-mvp'
alias ragusStorm='webstorm ${DIR_PATH_FOR_WWW}/bitbucket/ragus-mvp'
alias ragusRunScrape='cd ${DIR_PATH_FOR_WWW}/bitbucket/ragus && tsc && serverless invoke local --function scrape'
alias ragusRunParse='cd ${DIR_PATH_FOR_WWW}/bitbucket/ragus  && tsc && serverless invoke local --function parse'

alias udemy='cd ${DIR_PATH_FOR_WWW}/bitbucket/udemy'
alias udemyCode='code ${DIR_PATH_FOR_WWW}/bitbucket/udemy'

### Personal soft ###
#----------------------------
alias etn-daemon='/Users/iosif/Google\ Drive/💰_WealthAugmentation\!/🔐Cryptocurrency/💰Wallets/\(ETN\)\ Electroneum/macOS-x64-0.11.0.0/electroneumd;'
alias etn-wallet='/Users/iosif/Google\ Drive/💰_WealthAugmentation\!/🔐Cryptocurrency/💰Wallets/\(ETN\)\ Electroneum/macOS-x64-0.11.0.0/electroneum-wallet-cli --wallet-file hidden_hash_electroneum;'

### System stuff ###
#----------------------------
#alias homestead='cd ${DIR_PATH_FOR_WWW}/soft/Homestead'
alias start-homestead='cd ${DIR_PATH_FOR_WWW}/soft/Homestead/ && vagrant reload --provision'

### Work folders ###
#----------------------------
alias tc='cd ${DIR_PATH_FOR_WWW}/true-compliance'

alias likeBumble='watch -n1 "xdotool mousemove 2900 1180 && xdotool click 1 && date"'
alias likeTinder='watch -n1 "xdotool mousemove 2860 1000 && xdotool click 1 && date"'