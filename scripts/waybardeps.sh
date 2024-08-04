#!/bin/bash

sh ~/dotfiles/config/waybar/start-waybar.sh &

sleep 10s

qsyncthingtray &
solaar &
dropbox start &
nm-applet &
copyq --start-server &

