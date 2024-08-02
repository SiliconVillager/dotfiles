#!/bin/bash

CONFIG_PATH=~/.config/mc/ini
THEME_PATH=~/.local/share/mc/skins/skin.ini

if [ -e "$CONFIG_PATH" ]; then
	rm -f "$CONFIG_PATH"
fi

if [ -e "$THEME_PATH" ]; then
	rm -f "$THEME_PATH"
fi

mkdir -p ~./.config/mc
mkdir -p ~./.local/share/mc/skins

cp "$(pwd)/ini" "$CONFIG_PATH"
ln -s "$(pwd)/skin.ini" "$THEME_PATH"

