setxkbmap -option terminate:ctrl_alt_bksp
kdlaunch &
xrdb -merge ~/.Xresources
compton -CcfF -O .1 -I .1 -D 1 -t -8 -l -9 -r 6 -o .666 &
imlibsetroot -s a ~/.wallpaper

# reload fonts
xset +fp /usr/share/fonts/local
xset fp rehash
# key refresh rate
xset r rate 320 30
# mouse acceleration
xset m 3/2 6
# fix the inverted left/right scroll wheel
# xinput set-button-map 9 1 2 3 4 5 7 6
# neutral mouse cursor
xsetroot -cursor_name left_ptr

mpd
# updatethm
# dwmstatus &
urxvtd -q -o -f
xscreensaver -no-splash &
unclutter -noevents &

exec openbox-session
# exec dwm
# exec monsterwm
# exec herbstluftwm
