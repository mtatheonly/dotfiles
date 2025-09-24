#!/usr/bin/zsh

if type "mise" > /dev/null; then
  eval "$(mise activate zsh --shims)"
  . <(mise completion zsh)
fi
