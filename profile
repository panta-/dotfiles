# vim:set ft=sh:
if [ -d $HOME/.local/bin ]; then
	PATH="$HOME/.local/bin:$PATH"
fi

if command -v ruby > /dev/null 2>&1; then
	PATH="`ruby -e 'print Gem.user_dir'`/bin:$PATH"
fi

export EDITOR=nvim
export MANWIDTH=74
export QT_AUTO_SCREEN_SCALE_FACTOR=1
export _JAVA_OPTIONS='-Dawt.useSystemAAFontSettings=on -Dswing.aatext=true -Dswing.defaultlaf=com.sun.java.swing.plaf.gtk.GTKLookAndFeel'

[ -z "$DISPLAY" ] && [ -n "$XDG_VTNR" ] && [ "$XDG_VTNR" -eq 1 ] && exec startx
