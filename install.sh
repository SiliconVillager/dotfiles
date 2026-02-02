#!/bin/bash

# Install fonts
FONTS_DIR="$HOME/.local/share/fonts"
if [ -d "$FONTS_DIR" ] || [ -L "$FONTS_DIR" ]; then
		rm -rf "$FONTS_DIR"
fi
ln -s "$(pwd)/fonts" "$FONTS_DIR"

# Process config files
cd ./config
./install.sh
cd ..

