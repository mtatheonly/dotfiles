#!/usr/bin/env zsh

if [ -d "$HOME/tools/lang/flutter" ]; then
    export FLUTTER_HOME=$HOME/tools/lang/flutter
    export PATH=$FLUTTER_HOME/bin:$PATH
fi
