#!/usr/bin/env bash

SOURCES_PATH=$DIR_PATH_FOR_TOOLBELT/sources

# Need to be first
#----------------------------
source $SOURCES_PATH/configs.sh
source $SOURCES_PATH/colors.sh
source $SOURCES_PATH/welcome.sh

# All others
#----------------------------
source $SOURCES_PATH/apps.sh
source $SOURCES_PATH/find.sh
source $SOURCES_PATH/git.sh
source $SOURCES_PATH/paths.sh
source $SOURCES_PATH/ssh.sh
source $SOURCES_PATH/fun.sh
source $SOURCES_PATH/os-general.sh
source $SOURCES_PATH/os-ubuntu-server.sh
source $SOURCES_PATH/os-ubuntu.sh
source $SOURCES_PATH/os-osx.sh
