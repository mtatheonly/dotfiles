#!/usr/bin/zsh

type go > /dev/null 2>&1 && export PATH=`go env GOPATH`/bin:$PATH
