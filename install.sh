#!/bin/bash


PROFILE=$1
if [[ -z "$PROFILE" ]]; then
    PROFILE=~/.bash_profile
fi

SRC=$(pwd)
grep "vasy-function.sh" -- $PROFILE || echo "[[ -s \"$SRC/vasy-function.sh\" ]] && source $SRC/vasy-function.sh" >> $PROFILE
grep "vasy-completion.sh" -- $PROFILE || echo "[[ -s \"$SRC/vasy-completion.sh\" ]] && source $SRC/vasy-completion.sh" >> $PROFILE


DEST=$2
if [[ -d "${DEST}" ]]; then
    cp ./vasy-resolve $DEST
    chmod +x $DEST/vasy-resolve
fi
