#!/usr/bin/env zsh
if [ -d "$HOME/tools/lang/java/android" ]; then
    export ANDROID_HOME=$HOME/tools/lang/java/android
    export PATH=$ANDROID_HOME/tools:$PATH
    export PATH=$ANDROID_HOME/tools/bin:$PATH
    export PATH=$ANDROID_HOME/platform-tools:$PATH
    export PATH=$ANDROID_HOME/emulator:$PATH
fi
