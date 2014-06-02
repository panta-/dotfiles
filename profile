if [ -d $HOME/bin ]; then
	PATH="$HOME/bin:$PATH"
fi

#export MPD_HOST='mpd123!@ion'
export VISUAL="/usr/bin/vim -p -X"
export WINEARCH="win32"
export CHROMIUM_USER_FLAGS="--disk-cache-dir=/tmp/panta/cache --disk-cache-size=50000000 -cipher-suite-blacklist=0x0001,0x0002,0x0004,0x0005,0x0017,0x0018,0xc002,0xc007,0xc00c,0xc011,0xc016,0xff80,0xff81,0xff82,0xff83 --enable-seccomp-sandbox --ppapi-flash-path=/usr/lib/PepperFlash/libpepflashplayer.so --ppapi-flash-version=13.0.0.214"

[[ -z $DISPLAY && $XDG_VTNR -eq 1 ]] && exec startx
