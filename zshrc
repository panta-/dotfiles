if [ -n $DISPLAY ]; then
	export BROWSER="chromium"
else
	export BROWSER="lynx"
fi

bindkey -v

# Disable hostname completion
zstyle ':completion:*' hosts off

setopt NO_clobber
#unsetopt SHARE_HISTORY
export HISTSIZE=1000
export SAVEHIST=1000
export MANWIDTH=80

if [[ $TERM == xterm-termite ]]; then
  . /etc/profile.d/vte.sh
  __vte_osc7
fi

#autoload -U bashcompinit
#bashcompinit || print "Bash completion not available"

#source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source ~/.aliases
