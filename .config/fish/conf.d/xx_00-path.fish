which fish > /dev/null 2>&1
if test $status -eq 0 
    if test -f $HOME/tools/productivity/fish/bin/fish
        set -gx PATH $HOME/tools/productivity/fish/bin $PATH
    end
end
set -gx PATH $HOME/workspace/go/bin $PATH
