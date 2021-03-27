# vim:set ft=sh:
if [ -d $HOME/.local/bin ]; then
	PATH="$HOME/.local/bin:$PATH"
fi

eval $(ssh-agent)

export GEM_HOME="$(ruby -e 'puts Gem.user_dir')"
if [ -n $GEM_HOME ]; then
	PATH="$PATH:$GEM_HOME/bin"
fi

# >>> coursier install directory >>>
export PATH="$PATH:/home/pana/.local/share/coursier/bin"
# <<< coursier install directory <<<

# >>> JVM installed by coursier >>>
export JAVA_HOME="/home/pana/.cache/coursier/jvm/adopt@1.15.0-0"
export PATH="$PATH:/home/pana/.cache/coursier/jvm/adopt@1.15.0-0/bin"
# <<< JVM installed by coursier <<<

#[ -z "$DISPLAY" ] && [ -n "$XDG_VTNR" ] && [ "$XDG_VTNR" -eq 1 ] && exec startx

if [ "$(tty)" = "/dev/tty1" ]; then
	export GDK_BACKEND=wayland
	export QT_QPA_PLATFORM=wayland
	export SDL_VIDEODRIVER=wayland
	export XDG_SESSION_TYPE=wayland
	exec dbus-run-session sway
fi
