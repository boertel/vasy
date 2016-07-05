#!/bin/bash

DEST=~/.bash_profile
grep "vasy" -- $DEST || echo -e 'function vasy {\n    GOTO="$(resolve_vasy $@)" && builtin cd $GOTO\n}' >> $DEST
