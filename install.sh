#!/usr/bin/env bash

vasy_base="$1"
echo "vasy_base=$vasy_base"

function="$vasy_base/vasy-function"
echo "function: $function"

profile=${ZDOTDIR:-~}/.zshrc
echo "profile: $profile"
already=$(grep -nF "$function" -- $profile | sed 's/:.*//' | tr '\n' ' ')
echo "already: $already"

if [[ -z "$already" ]]; then
    echo "[ -f $function ] && source $function" >> $profile
fi
