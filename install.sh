#!/usr/bin/env bash

set -e

cd "$(dirname "${BASH_SOURCE[0]}")"
vasy_base=$(pwd)

function="$vasy_base/bin/vasy-function"

profile=${ZDOTDIR:-~}/.zshrc
already=$(grep -nF "$function" -- $profile | sed 's/:.*//' | tr '\n' ' ')

if [[ -z "$already" ]]; then
    echo "[ -f $function ] && source $function" >> $profile
fi
