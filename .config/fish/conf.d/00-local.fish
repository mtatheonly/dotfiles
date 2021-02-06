if test -d $HOME/.config/fish/conf.d/local
   for i in $HOME/.config/fish/conf.d/local/*.fish
	. $i
   end
end

if test -d $HOME/.local/bin
    if not contains -- $HOME/.local/bin $PATH
            set -p PATH $HOME/.local/bin
    end
end

if test -d $HOME/bin
    if not contains -- $HOME/bin $PATH
            set -p PATH $HOME/bin
    end
end
