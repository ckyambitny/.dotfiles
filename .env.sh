#!/usr/bin/zsh


if [ -f ~/.git-completion.bash ]; then
  . ~/.git-completion.bash
fi

source $HOME/.aliases

# FileSearch
function f() { find . -iname "*$1*" ${@:2} }
function r() { grep "$1" ${@:2} -R . }
