#!/bin/bash

HYPERLAND_CONFIG_DIR=~/.config/hypr

if [ -d "$HYPERLAND_CONFIG_DIR" ]; then
	rm -rf "$HYPERLAND_CONFIG_DIR"
fi

ln -s "$(pwd)" "$HYPERLAND_CONFIG_DIR"

