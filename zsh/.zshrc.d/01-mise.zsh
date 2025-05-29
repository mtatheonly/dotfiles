#!/usr/bin/zsh

if [ -f $HOME/.local/bin/mise ]; then
  if [[ "$TERM_PROGRAM" == "vscode" ]]; then
    eval "$($HOME/.local/bin/mise activate zsh --shims)"
  else
    eval "$($HOME/.local/bin/mise activate zsh)"
  fi
  . <(mise completion zsh)
fi
