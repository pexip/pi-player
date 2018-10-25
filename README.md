# Fullscreen Video Player for Raspberry Pi #

A set of scripts to automate fullscreen videos playing on a Raspberry Pi.
Designed to be as light as possible and allow starting video on boot and stopping nicely on shutdown.


## Installation ##
The easiest way to install is to run `install.sh` directly in bash from this repo like so:
```
$ bash <(curl -s https://raw.githubusercontent.com/pexip/pi-player/master/install.sh)
```
You will need to make sure you have `curl` installed first (`sudo apt install curl`).


## Operation ##
Place .mkv media files (encoded in h.264 format) inside `/home/pi/videos`.

The video player service can be started with `video start` and stopped with `video stop`. You can also restart the player service with `video restart`.

If you want to disable the video starting on boot, `video disable`, equally to enable it `video enable` (`install.sh` will enable it for you anyway).


## Uninstallation ##
Similar to installation, the easiest way to uninstall the player and scripts is like this:
```
$ bash <(curl -s https://raw.githubusercontent.com/pexip/pi-player/master/uninstall.sh)
```
