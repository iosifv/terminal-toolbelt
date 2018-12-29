#!/usr/bin/env bash

### Generic ###
#----------------------------
alias www='cd ${DIR_PATH_FOR_WWW}'
alias bitbucket='cd ${DIR_PATH_FOR_WWW}/bitbucket'
alias github='cd ${DIR_PATH_FOR_WWW}/github'
alias drive='cd ${DIR_PATH_FOR_WWW}/../Drive'

### Personal projects ###
#----------------------------
alias iosifv='cd ${DIR_PATH_FOR_WWW}/bitbucket/iosifv'
alias toolbelt='cd ${DIR_PATH_FOR_WWW}/github/terminal-toolbelt'
alias installers='cd ${DIR_PATH_FOR_WWW}/github/terminal-toolbelt/installers'

### Personal soft ###
#----------------------------
alias etn-daemon='/Users/iosif/Google\ Drive/💰_WealthAugmentation\!/🔐Cryptocurrency/💰Wallets/\(ETN\)\ Electroneum/macOS-x64-0.11.0.0/electroneumd;'
alias etn-wallet='/Users/iosif/Google\ Drive/💰_WealthAugmentation\!/🔐Cryptocurrency/💰Wallets/\(ETN\)\ Electroneum/macOS-x64-0.11.0.0/electroneum-wallet-cli --wallet-file hidden_hash_electroneum;'

### System stuff ###
#----------------------------
#alias homestead='cd ${DIR_PATH_FOR_WWW}/soft/Homestead'
alias start-homestead='cd ${DIR_PATH_FOR_WWW}/soft/Homestead/ && vagrant reload --provision'

### Skin Analytics - Work ###
#----------------------------
alias sa='cd ~/www/skin-analytics'
alias ozn='cd ~/www/skin-analytics/skin-platform'
alias ogp='cd ~/www/skin-analytics/skin-platform-gp'
alias oznEnergize!='ozn && npm run grunt'
alias ogpEnergize!='ogp && cd bin-dev && npm run grunt ts:dev && node server.js -e dev'