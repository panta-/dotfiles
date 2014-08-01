#!/bin/sh

# source xprofile
[ -f /etc/xprofile ] && . /etc/xprofile
[ -f ~/.xprofile ] && . ~/.xprofile

# start window manager
#exec openbox
exec i3
