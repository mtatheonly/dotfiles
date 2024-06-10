if [ -f $HOME/.zsh_aliases -a -n $HOME/.zsh_aliases ]; then
  . $HOME/.zsh_aliases
fi

if [ -f $HOME/.zsh_aliases_local -a -n $HOME/.zsh_aliases_local ]; then
  . $HOME/.zsh_aliases_local
fi
