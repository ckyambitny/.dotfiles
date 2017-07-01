#!/usr/bin/zsh

export EDITOR="webstorm"

source $HOME/.aliases

# FileSearch
function f() { find . -iname "*$1*" ${@:2} }
function r() { grep "$1" ${@:2} -R . }
