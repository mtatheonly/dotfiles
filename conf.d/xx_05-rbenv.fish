if test -d "$HOME/.rbenv/bin"
    set PATH "$HOME/.rbenv/bin" $PATH
    set PATH "$HOME/.rbenv/shims" $PATH
    rbenv init - | source
end
