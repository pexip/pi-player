#!/bin/bash

# Promote self to root
if [ $EUID != 0 ]; then
  sudo "$0" "$@"
  exit $?
fi

# Stop service
systemctl stop video.service

# Remove systemd unit
systemctl disable video.service

# Remove scripts
rm -f /opt/player.sh
rm -f /usr/local/bin/video

# Uninstall packages
apt purge -y omxplayer

echo "Uninstall complete."

