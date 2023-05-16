#!/bin/bash

clear

APP=$(dirname "$0")/$(basename "$0")
APP_NAME="boing.sh"
SYM_PATH=$(readlink -f "$APP")

BASE_PATH=$(echo "$SYM_PATH" | sed "s/\/boing.sh//")
APP_PATH=$BASE_PATH/app
APP_CFG=$BASE_PATH/cfgs/config
FLOPPY_SETS_FOLDER=$BASE_PATH/floppy_sets/
TMP_CFG=/tmp/amiga_menu.fs-uae

# Confirm the config exists.
if [ ! -f "$APP_CFG" ]; then
	echo -e "\e[31mMISSING CONFIG FILE\e[0m"
	exit 1;
fi 

# Load the config.
declare -A CFGS
source $APP_CFG

# Check the various variables exist
VARS=("FS_UAE_BIN" "FS_UAE_LAUNCHER_BIN" "FS_FOLDER" "GAMES_FOLDER" "CFG_FOLDER")
for VAR in ${VARS[@]}; do
	if [ ! -n "${!VAR}" ]; then
		echo -e "\e[31mINVALID CONFIG\e[0m"
		echo -e "\e[33m$VAR\e[0m is missing or not set"
		exit 1; 
	fi
done

# Globals
load_game=""
load_floppy_set=""

tput setaf 7

# Helpers
source $APP_PATH/helpers.boing

# Summary
source $APP_PATH/summary.boing

# Configuration
source $APP_PATH/configuration.boing

# Menu app
source $APP_PATH/menu.boing

# Floppy control app
source $APP_PATH/floppy.boing

# Tools
source $APP_PATH/tools.boing

# Help
source $APP_PATH/help.boing

# Games loader
source $APP_PATH/games.boing

# Theme
source $APP_PATH/theme.boing

#Trigger the menu
menu
