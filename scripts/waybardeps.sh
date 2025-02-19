#!/bin/bash

sh ~/dotfiles/config/waybar/start-waybar.sh &

sleep 10s

qsyncthingtray &
solaar --window hide &
dropbox start &
nm-applet &
copyq --start-server &

