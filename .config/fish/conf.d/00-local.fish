if test -d $HOME/.config/fish/conf.d/local
   for i in $HOME/.config/fish/conf.d/local/*.fish
	. $i
   end
end
