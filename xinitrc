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

# setup DPMS
xset dpms $DPMS_STANDBY $DPMS_SUSPEND $DPMS_OFF

# disable screensaver
xset s noblank
xset s off

# neutral mouse cursor
xsetroot -cursor_name left_ptr

pgrep -x mpd > /dev/null || mpd
urxvtd -q -o -f
unclutter -noevents &
xbindkeys
happy_fs &

exec bspwm
# exec wm

# vim: set ft=conf:
