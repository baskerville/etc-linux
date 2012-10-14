setxkbmap -option terminate:ctrl_alt_bksp
xmodmap "$HOME/.xmodmaprc"
kdlaunch &
xrdb -merge "$HOME/.Xresources"

# reload fonts
xset +fp /usr/share/fonts/local
xset fp rehash

# key refresh rate
xset r rate 320 35

# mouse acceleration
xset m 3/2 6
xset dpms $DPMS_STANDBY $DPMS_SUSPEND $DPMS_OFF

# neutral mouse cursor
xsetroot -cursor_name left_ptr

pgrep -x mpd > /dev/null || mpd
urxvtd -q -o -f
unclutter -noevents &
xbindkeys

happy_fs &

# exec openbox-session
# exec herbstluftwm --locked
exec bspwm

# vim: set ft=conf:
