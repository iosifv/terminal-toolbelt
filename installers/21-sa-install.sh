#!/usr/bin/env bash

cd /home/iosif/www/skin-analytics
git clone https://iosif@team.skin-analytics.com/bitbucket/scm/plat/skin-platform.git
cd /home/iosif/www/skin-analytics/skin-platform
git checkout -b ng4 origin/ng4
# sudo npm install -g pm2 grunt documentation
npm install
npm run grunt
/home/iosif/wwwskin-analytics/skin-platform/install.sh
