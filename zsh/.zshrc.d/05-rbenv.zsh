#!/usr/bin/env zsh

if [ -d "$HOME/.rbenv/bin" ]; then
    export PATH="$PATH:$HOME/.rbenv/bin"
    export PATH="$PATH:$HOME/.rbenv/shims"
    eval "$(rbenv init -)"
fi
