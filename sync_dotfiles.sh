#! /bin/bash

# Set up
LIVE_DIR="/home/juan"
REPO_DIR=$1
SYNC_CMD="rsync -Cau --exclude '*/.git/'"

$SYNC_CMD ${LIVE_DIR}/.config/	 	${REPO_DIR}/.config
$SYNC_CMD ${LIVE_DIR}/.mpd/	 	${REPO_DIR}/extras/mpd
$SYNC_CMD ${LIVE_DIR}/.ncmpcpp/ 	${REPO_DIR}/extras/ncmpcpp
$SYNC_CMD ${LIVE_DIR}/.fonts/	 	${REPO_DIR}/extras/fonts
$SYNC_CMD ${LIVE_DIR}/.scripts/	 	${REPO_DIR}/extras/scripts
$SYNC_CMD ${LIVE_DIR}/.oh-my-zsh/ 	${REPO_DIR}/extras/oh-my-zsh

# TODO:
# - create whitelist for .config repo
