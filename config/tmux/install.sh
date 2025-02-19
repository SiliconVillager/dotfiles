#!/bin/bash

TMUX_CONFIG=~/.tmux.conf

if [ -e "$TMUX_CONFIG" ]; then
	rm -f "$TMUX_CONFIG"
fi

ln -s "$(pwd)/tmux.conf" "$TMUX_CONFIG"

