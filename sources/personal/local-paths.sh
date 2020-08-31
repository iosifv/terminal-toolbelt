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
alias tcStart='tm-tc'
alias tcApi='cd ${DIR_PATH_FOR_WWW}/true-compliance/api'
alias tcReports='cd ${DIR_PATH_FOR_WWW}/true-compliance/reports'
alias tcProcessor='cd ${DIR_PATH_FOR_WWW}/true-compliance/processor'
alias tcDocument='cd ${DIR_PATH_FOR_WWW}/true-compliance/document-reader'
alias tcWeb='cd ${DIR_PATH_FOR_WWW}/true-compliance/web'
alias tcCode='code ${DIR_PATH_FOR_WWW}/true-compliance/api'
alias tcLogs='cd ~/www/true-compliance && multitail web/storage/logs/laravel.log -ci green -I document-reader/storage/logs/laravel.log -ci red -I processor/storage/logs/laravel.log -ci yellow -I reports/storage/logs/laravel.log -ci blue -I api/storage/logs/laravel.log'
alias tcLogsClear='cd ~/www/true-compliance && echo "empty" > api/storage/logs/laravel.log && echo "empty" >  document-reader/storage/logs/laravel.log && echo "empty" > processor/storage/logs/laravel.log && echo "empty" > reports/storage/logs/laravel.log && echo "empty" > web/storage/logs/laravel.log'

alias likeBumble='watch -n1 "xdotool mousemove 2900 1180 && xdotool click 1 && date"'
alias likeTinder='watch -n1 "xdotool mousemove 2860 1000 && xdotool click 1 && date"'