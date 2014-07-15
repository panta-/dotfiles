if [ -n $DISPLAY ]; then
	export BROWSER="chromium"
else
	export BROWSER="lynx"
fi

bindkey -v

# Disable hostname completion
zstyle ':completion:*' hosts off

setopt NO_clobber
export HISTSIZE=1000
export SAVEHIST=1000
export MANWIDTH=80

source ~/.aliases
