#!/bin/bash

ROFI_CONFIG_DIR="$HOME/.config/rofi"
ROFI_DIR="$HOME/.local/share/rofi"
THEMES_DIR="$ROFI_DIR/themes"

if [ ! -d "$ROFI_DIR" ]; then
    mkdir -p "$ROFI_DIR"
fi

if [ -d "$THEMES_DIR" ]; then
		rm -rf "$THEMES_DIR"
fi

if [ -L "$THEMES_DIR" ]; then
		rm -f "$THEMES_DIR"
fi

ln -s "$(pwd)/themes" "$THEMES_DIR"

if [ -d "$ROFI_CONFIG_DIR" ] || [ -L "$ROFI_CONFIG_DIR" ]; then
	rm -rf "$ROFI_CONFIG_DIR"
fi
ln -s "$(pwd)/config" "$ROFI_CONFIG_DIR"

