#!/usr/bin/env bash

cd "$(dirname "${BASH_SOURCE[0]}")"
vasy_base=$(pwd)

function="$vasy_base/bin/vasy-function"
echo "function: $function"

profile=${ZDOTDIR:-~}/.zshrc
echo "profile: $profile"
already=$(grep -nF "$function" -- $profile | sed 's/:.*//' | tr '\n' ' ')
echo "already: $already"

if [[ -z "$already" ]]; then
    echo "[ -f $function ] && source $function" >> $profile
fi
