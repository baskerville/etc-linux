source "$HOME/.profile"
source "$HOME/.coordinates"

[ -d "$XDG_BIN_DIR" ] && export PATH="$XDG_BIN_DIR:$PATH"

if [ -z "$DISPLAY" -a "$(tty)" = "/dev/tty1" ] ; then
    startx -- vt08
    logout
else
    . "$HOME/.bashrc"
fi

# vim: set ft=sh:
