# vim:set ft=sh:
if [ -d $HOME/.local/bin ]; then
	PATH="$HOME/.local/bin:$PATH"
fi

if command -v ruby > /dev/null 2>&1; then
	PATH="`ruby -e 'print Gem.user_dir'`/bin:$PATH"
fi

export _JAVA_OPTIONS='-Dawt.useSystemAAFontSettings=on -Dswing.aatext=true -Dswing.defaultlaf=com.sun.java.swing.plaf.gtk.GTKLookAndFeel'

[[ -z $DISPLAY && $XDG_VTNR -eq 1 ]] && exec startx
