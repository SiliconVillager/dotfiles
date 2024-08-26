#!/bin/bash

if [[ $# -ne 1 ]]; then
    echo "Illegal parameters"
    exit 2
fi

gpg --import $1.pub.asc
gpg --import $1.priv.asc
gpg --import $1.sub_priv.asc
gpg --import-ownertrust ownertrust.txt
