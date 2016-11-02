#!/bin/bash


DEST=$1
if [[ -d "${DEST}" ]]; then
    cp ./vasy-resolve $DEST
    chmod +x $DEST/vasy-resolve
fi


PROFILE=$2
if [[ -z "$PROFILE" ]]; then
    PROFILE=~/.bash_profile
fi

SRC=$(pwd)
grep "vasy-function.sh" -- $PROFILE || echo "source $SRC/vasy-function.sh" >> $PROFILE
grep "vasy-completion.sh" -- $PROFILE || echo "source $SRC/vasy-completion.sh" >> $PROFILE
