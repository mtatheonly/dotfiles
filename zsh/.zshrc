ZSH=$HOME/.cache/antibody/https-COLON--SLASH--SLASH-github.com-SLASH-robbyrussell-SLASH-oh-my-zsh
source ~/.antibody_plugins.sh

fpath+=~/.zfunc

autoload -Uz compinit && compinit
autoload -Uz bashcompinit && bashcompinit

if [ -d $HOME/.zshrc.d ] ; then
    for i in $HOME/.zshrc.d/*.zsh; do
        source $i
    done
fi
