. "$HOME/.coordinates"
. "$HOME/.github_api_token"
. "$HOME/.profile"
. "$HOME/.bashrc"

. $(brew --prefix)/etc/bash_completion

HISTSIZE=100000
SAVEHIST=$HISTSIZE
HISTFILESIZE=$HISTSIZE
HISTCONTROL=ignoreboth:erasedups
export HISTSIZE SAVEHIST HISTFILESIZE HISTCONTROL

# vim: ft=sh
