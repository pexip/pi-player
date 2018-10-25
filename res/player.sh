#!/bin/bash
# Called by video.service for ExecStart to play first video.
/usr/bin/omxplayer -b --loop $(ls /home/pi/videos/*.mkv | head -n1)
