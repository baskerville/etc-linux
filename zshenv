typeset -U path
path=(~/bin ~/.local/bin $GOPATH/bin $(ruby -rubygems -e 'puts Gem.user_dir')/bin $path)
