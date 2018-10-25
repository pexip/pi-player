#!/bin/bash

# Promote self to root
if [ $EUID != 0 ]; then
  sudo "$0" "$@"
  exit $?
fi

# Install deps
apt update
apt install -y omxplayer curl

# Install scripts
curl -s https://raw.githubusercontent.com/pexip/pi-player/master/res/player.sh -o /opt/player.sh
chmod +x /opt/player.sh
curl -s https://raw.githubusercontent.com/pexip/pi-player/master/res/video -o /usr/local/bin/video
chmod +x /usr/local/bin/video

# Install systemd unit
curl -s https://raw.githubusercontent.com/pexip/pi-player/master/res/video.service -o /etc/systemd/system/video.service
systemctl enable video.service

if [ ! -d "/home/pi/videos" ]; then
  echo "WARNING: Before starting the video service, place some .mkv video files in /home/pi/videos"
fi

echo "Installed services, video will play at next boot."
echo "To start now, run 'video start'."
