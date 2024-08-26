#!/bin/bash

if [[ $# -ne 1 ]]; then
    echo "Illegal parameters"
    exit 2
fi

gpg --export --armor $1 > $1.pub.asc
gpg --export-secret-keys --armor $1 > $1.priv.asc
gpg --export-secret-subkeys --armor $1 > $1.sub_priv.asc
gpg --export-ownertrust > ownertrust.txt
