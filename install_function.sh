#!/bin/bash

DEST=$1
if [[ -z "$DEST" ]]; then
    DEST=~/.bash_profile
fi

grep "vasy" -- $DEST || cat ./vasy_function >> $DEST
