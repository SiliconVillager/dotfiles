#!/bin/bash

CONFIG_PATH=~/.config/mc/ini
THEME_PATH=~/.local/share/mc/skins/skin.ini
KEYMAP_PATH=~/.config/mc/mc.keymap

if [ -e "$CONFIG_PATH" ] || [ -L "$CONFIG_PATH" ]; then
	rm -f "$CONFIG_PATH"
fi

if [ -e "$THEME_PATH" ] || [ -L "$THEME_PATH" ]; then
	rm -f "$THEME_PATH"
fi

if [ -e "$KEYMAP_PATH" ] || [ -L "$KEYMAP_PATH" ]; then
	rm -f "$KEYMAP_PATH"
fi

mkdir -p ~/.config/mc
mkdir -p ~/.local/share/mc/skins

cp "$(pwd)/ini" "$CONFIG_PATH"
ln -s "$(pwd)/skin.ini" "$THEME_PATH"
ln -s "$(pwd)/mc.keymap" "$KEYMAP_PATH"

