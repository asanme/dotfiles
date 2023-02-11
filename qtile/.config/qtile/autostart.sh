#!/bin/bash
setxkbmap -layout "es,us" -option "grp:mod_shift_space_toggle" &
nm-applet &

#load default configuration for xrandr
bash ./xrandr-config.sh
