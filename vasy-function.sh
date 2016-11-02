function vasy {
    GOTO="$(vasy-resolve $@)"
    if [[ $? == 0 ]]; then
        builtin cd $GOTO
    else
        echo "$GOTO"
    fi
}
