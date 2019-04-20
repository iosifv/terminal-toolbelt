#!/usr/bin/env bash

# Set location for these files
SOURCES_PATH=$DIR_PATH_FOR_TOOLBELT/sources

# Need to be first
#----------------------------
source $SOURCES_PATH/alpha-configs.sh
source $SOURCES_PATH/alpha-display.sh
source $SOURCES_PATH/alpha-welcome.sh


# OS Specific
#----------------------------
source $SOURCES_PATH/os-mac.sh
source $SOURCES_PATH/os-ubuntu.sh


# OS Specific
#----------------------------
source $SOURCES_PATH/bundle/fs-find.sh
source $SOURCES_PATH/bundle/fs-manage.sh
source $SOURCES_PATH/bundle/fun.sh
source $SOURCES_PATH/bundle/git.sh
source $SOURCES_PATH/bundle/laravel.sh
source $SOURCES_PATH/bundle/nginx.sh
source $SOURCES_PATH/bundle/node.sh
source $SOURCES_PATH/bundle/php.sh
source $SOURCES_PATH/bundle/ssh.sh
source $SOURCES_PATH/bundle/system.sh
source $SOURCES_PATH/bundle/tmux.sh
source $SOURCES_PATH/bundle/util.sh


# Personal stuff
#----------------------------
source $SOURCES_PATH/personal/iosifv.com.sh
source $SOURCES_PATH/personal/local-paths.sh
source $SOURCES_PATH/personal/ssh-locations.sh
