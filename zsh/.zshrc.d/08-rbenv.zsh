#!/usr/bin/env zsh

CMD=$(type rbenv)
if [ "x$?" == "x0" ]; then
    export PATH="$HOME/.rbenv/bin:$PATH"
    which rbenv && eval "$(rbenv init -)"
fi
