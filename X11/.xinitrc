setxkbmap -option ctrl:nocaps
setxkbmap -option grp:alt_shift_toggle us,el

xrdb /home/$USER/.Xresources

exec i3
