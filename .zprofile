if [ -d $HOME/.local/bin ]; then
	PATH="$HOME/.local/bin:$PATH"
fi

[ -z "$DISPLAY" ] && [ -n "$XDG_VTNR" ] && [ "$XDG_VTNR" -eq 1 ] && exec startx
# vim:set ft=sh:
