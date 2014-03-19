. ~/.environment

HISTFILE=~/.zsh_history
HISTSIZE=8192
SAVEHIST=$HISTSIZE
WORDCHARS=${WORDCHARS:s,/,,}
export HISTFILE HISTSIZE SAVEHIST WORDCHARS

# typeset -U path
# path=(~/bin ~/.local/bin $GOPATH/bin $(ruby -rubygems -e 'puts Gem.user_dir')/bin $path)
