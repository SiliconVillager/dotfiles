#!/bin/bash

GDB_CONFIG=~/.gdbinit

if [ -e "$GDB_CONFIG" ]; then
	rm -f "$GDB_CONFIG"
fi

ln -s "$(pwd)/gdbinit" "$GDB_CONFIG"

