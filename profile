if [ -d $HOME/bin ]; then
	PATH="$HOME/bin:$PATH"
fi

#export MPD_HOST='mpd123!@ion'
export VISUAL="/usr/bin/vim -p -X"
export WINEARCH="win32"
export CHROMIUM_USER_FLAGS="--disk-cache-dir=/tmp/panta/cache --disk-cache-size=50000000 --enable-print-preview --ppapi-flash-path=/usr/lib/PepperFlash/libpepflashplayer.so --ppapi-flash-version=14.0.0.125"

[[ -z $DISPLAY && $XDG_VTNR -eq 1 ]] && exec startx
