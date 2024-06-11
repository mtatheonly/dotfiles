#!/usr/bin/zsh

if [ -f $HOME/.local/bin/mise ]; then
  eval "$($HOME/.local/bin/mise activate zsh)"
  . <(mise completion zsh)
fi
