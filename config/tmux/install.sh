#!/bin/bash

CONFIG_FILE=~/.tmux.conf

if [ -e "$CONFIG_FILE" ] || [ -L "$CONFIG_FILE" ]; then
	rm -f "$CONFIG_FILE"
fi

ln -s "$(pwd)/tmux.conf" "$CONFIG_FILE"

