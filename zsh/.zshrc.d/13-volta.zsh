#!/usr/bin/env zsh

if [ -d "$HOME/.volta" ]; then
    export VOLTA_HOME="$HOME/.volta"
    grep --silent "$VOLTA_HOME/bin" <<< $PATH || export PATH="$VOLTA_HOME/bin:$PATH"
    if [ ! -f "$HOME/.zshrc.d/_volta" ]; then
        volta completions -o $HOME/.zshrc.d/_volta zsh
    fi
fi
