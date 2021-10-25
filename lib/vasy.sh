#!/bin/bash

function _vasy {
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

alias vasy='_vasy 2>&1'

#_vasy_zsh_tab_completion() {
#    reply=(${(f)"$(_vasy --keys "$1")"})
#}
#compctl -U -K _vasy_zsh_tab_completion _vasy
