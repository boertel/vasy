#compdef vasy

function _vasy() {
    compadd $(cat ~/.vasy | cut -d ":" -f 1)
}

