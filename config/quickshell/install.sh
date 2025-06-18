#!/bin/bash

QUICKSHELL_CONFIGS=~/.config/quickshell

if [ -d "$QUICKSHELL_CONFIGS" ]; then
	rm -rf "$QUICKSHELL_CONFIGS"
fi

ln -s "$(pwd)/configs" "$QUICKSHELL_CONFIGS"

