function vasy {
    GOTO="$(vasy-resolve $@)"
    if [[ $? == 0 ]]; then
        builtin cd $GOTO
        if [[ -s "./.vasy" ]]; then
            eval "$(cat .vasy)"
        fi
    else
        echo "$GOTO"
    fi
}
