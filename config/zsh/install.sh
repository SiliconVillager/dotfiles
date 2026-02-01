#!/bin/bash

ZSH_CONFIG=~/.zshrc

if [ -e "$ZSH_CONFIG" ]; then
	rm -f "$ZSH_CONFIG"
fi

ln -s "$(pwd)/zshrc" "$ZSH_CONFIG"

