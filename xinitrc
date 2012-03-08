setxkbmap -option terminate:ctrl_alt_bksp
kdlaunch &
xrdb -merge ~/.Xresources
imlibsetroot -s a ~/.wallpaper
compton -CcfF -O .1 -I .1 -D 1 -t -8 -l -9 -r 6 -o .666 &

xset +fp /usr/share/fonts/local
xset fp rehash
xset r rate 320 30
xset m 3/2 6
xsetroot -cursor_name left_ptr

mpd
urxvtd -q -o -f
xscreensaver -no-splash &
unclutter -noevents &
# ~/bin/checkmail &

exec openbox-session
# exec herbstluftwm
