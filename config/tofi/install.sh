#!/bin/bash

CONFIG_DIR=~/.config/tofi

if [ -d "$CONFIG_DIR" ]; then
	rm -rf "$CONFIG_DIR"
fi

ln -s "$(pwd)" "$CONFIG_DIR"

