setxkbmap -option terminate:ctrl_alt_bksp
kdlaunch &
xrdb -merge ~/.Xresources
# compton -CcfF -O .1 -I .1 -D 1 -t -8 -l -9 -r 6 -o 0.8 &

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

mpd
urxvtd -q -o -f
unclutter -noevents &

happy_fs &

# exec openbox-session
exec herbstluftwm --locked
# exec herbstluftwm --verbose --locked

# vim: set ft=conf:
