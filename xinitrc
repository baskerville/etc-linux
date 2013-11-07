setxkbmap -option terminate:ctrl_alt_bksp
xmodmap "$HOME/.Xmodmaprc"
xrdb -merge "$HOME/.Xresources"
xcape -e 'Control_R=Return'

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

# neutral pointer
xsetroot -cursor_name left_ptr

unclutter -noevents &
pgrep -x mpd > /dev/null || mpd
rulc -l > /dev/null || fork ruld
sxhkd -n &
happy_fs &

exec wm
# exec bspwm
# exec monsterwm

# vim: set ft=conf:
