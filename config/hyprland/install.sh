#!/bin/bash

HYPRLAND_CONFIG_DIR=~/.config/hypr
NWG_DOCK_STYLE=~/.config/nwg-dock-hyprland/style.css

if [ -d "$HYPRLAND_CONFIG_DIR" ]; then
	rm -rf "$HYPRLAND_CONFIG_DIR"
fi

if [ -f "$NWG_DOCK_STYLE" ] || [ -L "$NWG_DOCK_STYLE" ]; then
	rm -f "$NWG_DOCK_STYLE"
fi

ln -s "$(pwd)" "$HYPRLAND_CONFIG_DIR"
ln -s "$(pwd)/nwg-dock-style.css" "$NWG_DOCK_STYLE"

