#!/usr/bin/zsh

[ -z "$(echo $PATH | grep $HOME/bin)" ] && [ -d "$HOME/bin" ] && export PATH="$HOME/bin:$PATH"
[ -z "$(echo $PATH | grep $HOME/.local/bin)" ] && [ -d "$HOME/.local/bin" ] && export PATH="$HOME/.local/bin:$PATH"