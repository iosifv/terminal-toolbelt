#!/usr/bin/env bash

TEMP_WWW="~/www"


# ====== Make Directories ========
cd ${TEMP_WWW}
mkdir github
mkdir bitbucket
mkdir public
mkdir playground
mkdir skin-analytics



# ====== Clone Repos ========
# Github
cd ${TEMP_WWW}/github
# Assume Toolbelt is already installed
# Todo: rx-vega-startup
# Todo: simplemining-tools

# Bitbucket
cd ${TEMP_WWW}/bitbucket
# Todo: iosifv
# Todo: persona

# Public
cd ${TEMP_WWW}/public
# Todo: fonts


# Playground
cd ${TEMP_WWW}/playground



# Skin Analytics
cd ${TEMP_WWW}/skin-analytics
git clone https://iosif@team.skin-analytics.com/bitbucket/scm/plat/skin-platform.git


# ====== Project Configs ========
cd ${TEMP_WWW}/bitbucket/iosifv
composer install
npm install
npm run dev


cd ${TEMP_WWW}/skin-analytics/skin-platform
npm install -g pm2 grunt documentation
npm install
npm run grunt
./install.sh
