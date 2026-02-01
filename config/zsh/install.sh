#!/bin/bash

CONFIG_FILE=~/.zshrc

if [ -e "$CONFIG_FILE" ] || [ -L "$CONFIG_FILE" ]; then
	rm -f "$CONFIG_FILE"
fi

ln -s "$(pwd)/zshrc" "$CONFIG_FILE"

