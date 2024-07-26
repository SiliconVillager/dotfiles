#!/bin/bash

KITTY_CONFIG_DIR=~/.config/kitty

if [ -d "$KITTY_CONFIG_DIR" ]; then
	rm -rf "$KITTY_CONFIG_DIR"
fi

ln -s "$(pwd)" "$KITTY_CONFIG_DIR"

