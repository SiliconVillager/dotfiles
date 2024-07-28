#!/bin/bash

HYPRLAND_CONFIG_DIR=~/.config/hypr

if [ -d "$HYPRLAND_CONFIG_DIR" ]; then
	rm -rf "$HYPRLAND_CONFIG_DIR"
fi

ln -s "$(pwd)" "$HYPRLAND_CONFIG_DIR"

