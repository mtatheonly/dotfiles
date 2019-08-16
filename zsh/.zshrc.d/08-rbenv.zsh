#!/usr/bin/env zsh

[ -d $HOME/.rbenv/bin ] && ( export PATH="$HOME/.rbenv/bin:$PATH" && eval "$(rbenv init -)" ) || true
