#!/bin/bash

SRC=$(pwd)
DEST=$1
if [[ -z "$DEST" ]]; then
    DEST=~/.bash_profile
fi



ln -s $SRC/resolve_vasy /usr/local/bin

grep "vasy-function.sh" -- DEST || echo "source $SRC/vasy-function.sh" >> $DEST
grep "vasy-completion.sh" -- $DEST || echo "source $SRC/vasy-completion.sh" >> $DEST
