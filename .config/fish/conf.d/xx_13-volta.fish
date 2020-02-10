if test -d "$HOME/.volta"
    set VOLTA_HOME "$HOME/.volta"
    echo $PATH | grep --silent "$VOLTA_HOME/bin" || export PATH="$VOLTA_HOME/bin:$PATH"
    if not test -f $HOME/.config/fish/completions/volta.fish
        volta completions -o $HOME/.config/fish/completions/volta.fish fish
    end
end
