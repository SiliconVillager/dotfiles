#!/bin/bash

CONFIG_FILE=~/.config/dunst/dunstrc

if [ -f "$CONFIG_FILE" ] || [ -L "$CONFIG_FILE" ]; then
	rm -f "$CONFIG_FILE"
fi
mkdir -p ~/.config/dunst

ln -s "$(pwd)/dunstrc" "$CONFIG_FILE"

