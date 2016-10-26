function vasy {
    GOTO="$(resolve_vasy $@)"
    if [[ $? == 0 ]]; then
        builtin cd $GOTO
    else
        echo "$GOTO"
    fi
}
