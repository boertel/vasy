#!/bin/bash

ln -s $(pwd)/resolve_vasy /usr/local/bin

SOURCE=~/.functions
grep "vasy" -- $SOURCE || echo -e 'function vasy {\n    GOTO="$(resolve_vasy $@)" && builtin cd $GOTO\n}' >> $SOURCE
