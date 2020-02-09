#!/usr/bin/env zsh

if [ -f ~/.fzf.zsh ]; then
    source ~/.fzf.zsh
    bindkey '^ ' autosuggest-accept
fi
