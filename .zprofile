#
# /.zprofile
#
export PATH=$PATH:~/scripts
# export TERMINAL=st
export XDG_CONFIG_HOME=~/.config
export VDPAU_DRIVER=trace

if [[ ! $DISPLAY && $XDG_VTNR -eq 1 ]]; then 
	exec startx
fi

