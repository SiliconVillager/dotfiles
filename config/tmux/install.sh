#!/bin/bash

TMUX_CONFIG=~/.tmux.conf

if [ -e "$TMUX_CONFIG" ]; then
	rm -rf "$TMUX_CONFIG"
fi

ln -s "$(pwd)/tmux.conf" "$TMUX_CONFIG"

