#! /bin/bash

# Set up
LIVE_DIR="/home/juan"
REPO_DIR=$1
SYNC_CMD="rsync -Cau --exclude '*/.git/'"

SUBDIRS="awesome
alacritty
dconf
gnome-session
gtk-3.0
ibus
kitty
mpDris2
ncmpcpp
procps
pulse
Signal
spotify
systemd
Thunar
xfce4
yay
zathura"

for SUBDIR in $SUBDIRS
do
  $SYNC_CMD ${LIVE_DIR}/.config/${SUBDIR}/		${REPO_DIR}/.config/${SUBDIR}
done

#$SYNC_CMD ${LIVE_DIR}/.config/		${REPO_DIR}/.config
$SYNC_CMD ${LIVE_DIR}/.mpd/		${REPO_DIR}/extras/mpd
$SYNC_CMD ${LIVE_DIR}/.ncmpcpp/ 	${REPO_DIR}/extras/ncmpcpp
$SYNC_CMD ${LIVE_DIR}/.fonts/		${REPO_DIR}/extras/fonts
$SYNC_CMD ${LIVE_DIR}/.scripts/		${REPO_DIR}/extras/scripts
$SYNC_CMD ${LIVE_DIR}/.oh-my-zsh/ 	${REPO_DIR}/extras/oh-my-zsh
