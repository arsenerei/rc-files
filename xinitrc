#!/bin/bash

# urxvt daemon-mode (backgrounds itself with -f)
urxvtd -o -q -f

# file browser
thunar --daemon &

# gnome dependencies
gnome-settings-daemon &         # make it look pretty
gnome-power-manager &           # power settings
gnome-volume-control-applet &   # volume settings
#nm-applet &                     # networking
wicd-client &                   # networking

# start awesome
exec awesome
