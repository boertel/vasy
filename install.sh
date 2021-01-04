#!/bin/bash


PROFILE=$1
if [[ -z "$PROFILE" ]]; then
    PROFILE=~/.bash_profile
fi

SRC=$(pwd)
grep "vasy-function" -- $PROFILE || echo "[[ -s \"$SRC/vasy-function\" ]] && source $SRC/vasy-function" >> $PROFILE
#grep "vasy-completion.sh" -- $PROFILE || echo "[[ -s \"$SRC/vasy-completion.sh\" ]] && source $SRC/vasy-completion.sh" >> $PROFILE


DEST=${2:-"/usr/local/bin"}
cp ./vasy-resolve "$DEST"
chmod +x "$DEST"/vasy-resolve
