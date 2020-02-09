#!/usr/bin/env zsh

local HAS_GO="$(which go)"
if [ "x0" != "x$?" ]; then
    if [ -d "$HOME/tools/lang/go/bin" ]; then
        export PATH=$HOME/tools/lang/go/bin:$HOME/workspace/go/bin:$PATH
        export GOPATH=$HOME/workspace/go
    fi
else
    export GOPATH=$HOME/workspace/go
fi
