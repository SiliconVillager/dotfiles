#!/bin/bash

# Get the directory of the script
SCRIPT_DIR=$(dirname "$(realpath "$0")")

# Find all subdirectories and check for install.sh
find "$SCRIPT_DIR" -mindepth 1 -type d | while read -r dir; do
    if [ -f "$dir/install.sh" ]; then
        echo "Running install.sh in $dir"
        (cd "$dir" && bash install.sh)
    fi
done

cd "$SCRIPT_DIR"
cd ..
