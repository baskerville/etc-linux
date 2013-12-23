. "$HOME/.profile"
. "$HOME/.coordinates"

export PATH="$XDG_BIN_DIR:$HOME/.local/bin:$GOPATH/bin:$(ruby -rubygems -e 'puts Gem.user_dir')/bin:$PATH"

if [ -z "$DISPLAY" -a "$(tty)" = "/dev/tty1" -a ! -S /tmp/bspwm*-socket ] ; then
    startx -- vt08
else
    . "$HOME/.bashrc"
fi

# vim: set ft=sh
