if not which fish
    if test -f $HOME/tools/productivity/fish/bin/fish
        set -gx PATH $HOME/tools/productivity/fish/bin $PATH
    end
end
