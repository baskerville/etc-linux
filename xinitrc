setxkbmap -option terminate:ctrl_alt_bksp
xmodmap ~/.xmodmaprc
xrdb -merge ~/.Xresources
imlibsetroot -s a ~/media/image/wallpapers/navajo_land.jpg
xcompmgr -CcfF -O .1 -I .1 -D 1 -t -9 -l -9 -r 6 -o .666 &

xset +fp /usr/share/fonts/local
xset fp rehash
xset r rate 320 30
xset m 3/2 6
xsetroot -cursor_name left_ptr

mpd
urxvtd -q -o -f
xscreensaver -no-splash &
unclutter -noevents &
~/bin/checkmail &
# ~/bin/lowbatterynotifier &

exec openbox-session
