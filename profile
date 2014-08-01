# vim:set ft=sh:
if [ -d $HOME/.local/bin ]; then
	PATH="$HOME/.local/bin:$PATH"
fi

[[ -z $DISPLAY && $XDG_VTNR -eq 1 ]] && exec startx
