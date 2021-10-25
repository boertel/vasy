#!/bin/bash

function vasy_function {
    if [[ $# == 0 ]]; then
        echo -e "usage: vasy [-k|--keys] [-s|--set] [-g|--get] <key>\n"
    fi
    GOTO=$(vasy-resolve "$@")
    if [[ $? == 0 ]]; then
        builtin cd "$GOTO"
        if [[ -s "./.vasy" ]]; then
            eval "$(cat .vasy)"
        fi
    else
        echo "$GOTO"
    fi
}

alias vasy='vasy_function 2>&1'
