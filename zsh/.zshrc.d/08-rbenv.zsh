#!/usr/bin/env zsh

CMD=$(which rbenv)

if [ "0" == "$?" ]; then
    export PATH="$HOME/.rbenv/bin:$PATH"
    which rbenv && eval "$(rbenv init -)"
fi
