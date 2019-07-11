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

#THIS MUST BE AT THE END OF THE FILE FOR SDKMAN TO WORK!!!
export SDKMAN_DIR="$HOME/.sdkman"
[[ -s "$HOME/.sdkman/bin/sdkman-init.sh" ]] && source "$HOME/.sdkman/bin/sdkman-init.sh"


[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
bindkey '^ ' autosuggest-accept
