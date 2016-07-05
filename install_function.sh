#!/bin/bash

DEST=$1
if [[ -z "$DEST" ]]; then
    DEST=~/.bash_profile
fi

grep "vasy" -- $DEST || echo -e 'function vasy {\n    GOTO="$(resolve_vasy $@)" && builtin cd $GOTO\n}' >> $DEST
