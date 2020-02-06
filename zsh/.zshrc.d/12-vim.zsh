#!/usr/bin/env zsh

if [ -d "$HOME/tools/productivity/vim/bin" ]; then
    export PATH=$HOME/tools/productivity/vim/bin:$PATH
    alias vi=vim
fi
