. "$HOME/.profile"
. "$HOME/.coordinates"

export PATH="$XDG_BIN_DIR:$HOME/.local/bin:$GOPATH/bin:$(ruby -rubygems -e 'puts Gem.user_dir')/bin:$PATH"

if [ $XDG_VTNR -eq 1 ] ; then
    startx -- vt08
else
    . "$HOME/.bashrc"
fi

# vim: set ft=sh
