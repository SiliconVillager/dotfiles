#!/bin/bash

CONFIG_FILE=~/.gdbinit

if [ -e "$CONFIG_FILE" ] || [ -L "$CONFIG_FILE" ]; then
	rm -f "$CONFIG_FILE"
fi

ln -s "$(pwd)/gdbinit" "$CONFIG_FILE"

