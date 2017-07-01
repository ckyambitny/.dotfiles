#!/usr/bin/zsh

export EDITOR="webstorm"

# FileSearch
function f() { find . -iname "*$1*" ${@:2} }
function r() { grep "$1" ${@:2} -R . }

alias pro="cd ~/projects/"

