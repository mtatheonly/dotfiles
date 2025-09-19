#!/usr/bin/zsh

if type "mise" > /dev/null; then
  if [[ "$TERM_PROGRAM" == "vscode" ]]; then
    eval "$(mise activate zsh --shims)"
  else
    eval "$(mise activate zsh)"
  fi
  . <(mise completion zsh)
fi
