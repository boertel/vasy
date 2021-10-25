#compdef vasy vasy_function vasy-resolve

function _vasy() {
    compadd $(cat ~/.vasy | cut -d ":" -f 1)
}
