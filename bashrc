shopt -s checkwinsize
shopt -s no_empty_cmd_completion
shopt -s histappend cmdhist
shopt -s globstar

complete -cf sudo
complete -cf man
complete -c bed
complete -abck i

_prompt_command() {
	builtin history -a
	local SEARCH=' '
	local REPLACE='%20'
	local PWD_URL="file://$HOSTNAME${PWD//$SEARCH/$REPLACE}"
	printf '\e]7;%s\a' "$PWD_URL"
	[ "$PWD" -ef "$HOME" ] || Z -a "$PWD"
}

export PS1='\[\e[1;35m\]▶\[\e[0m\] '
export PS2='\[\e[1;30m\]◀\[\e[0m\] '
export PROMPT_COMMAND="_prompt_command"

[ -n "$TMUX" ] && export TERM=screen-256color

[ -e "$SHELL_ALIASES" ] && . "$SHELL_ALIASES"
[ -e "$SHELL_FUNCTIONS" ] && . "$SHELL_FUNCTIONS"
