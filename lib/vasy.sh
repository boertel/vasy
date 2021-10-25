#!/bin/bash

function function_vasy {
    if [[ $# == 0 ]]; then
        echo -e "usage: vasy [-k|--keys] [-s|--set] [-g|--get] <key>\n"
    fi
    GOTO=$(resolve_vasy "$@")
    if [[ $? == 0 ]]; then
        builtin cd "$GOTO"
        if [[ -s "./.vasy" ]]; then
            eval "$(cat .vasy)"
        fi
    else
        echo "$GOTO"
    fi
}

alias vasy='function_vasy 2>&1'
