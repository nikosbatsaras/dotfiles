#
# ~/.bash_profile
#

[[ -f ~/.bashrc ]] && . ~/.bashrc

export XKB_DEFAULT_LAYOUT=us,gr
export XKB_DEFAULT_OPTIONS=grp:alt_shift_toggle,ctrl:nocaps

if [[ -z $DISPLAY ]] && [[ $(tty) = /dev/tty1 ]]; then
	exec sway
fi
