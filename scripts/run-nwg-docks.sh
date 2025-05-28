#!/bin/bash

monitory=$(xrandr | grep " connected" | awk '{print $1}')

for monitor in $monitory; do
    nwg-dock-hyprland -p left -lp start -hd 0 -l overlay -i 32 -m -x -o $monitor &
done
