. "$HOME/.coordinates"
. "$HOME/.github_api_token"
. "$HOME/.profile"
. "$HOME/.bashrc"

export PATH="$XDG_BIN_DIR:$HOME/.local/bin:$GOPATH/bin:$(ruby -rubygems -e 'puts Gem.user_dir')/bin:$PATH"
. $(brew --prefix)/etc/bash_completion

HISTSIZE=100000
SAVEHIST=$HISTSIZE
HISTFILESIZE=$HISTSIZE
HISTCONTROL=ignoreboth:erasedups
export HISTSIZE SAVEHIST HISTFILESIZE HISTCONTROL

# vim: ft=sh
