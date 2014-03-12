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
	[ -n "$TMUX" ] && printf '\033]2;%s\a' "$(from_home "$PWD")"
	[ "$PWD" -ef "$HOME" ] || Z -a "$PWD"
	tput ed
}

export PS1='\[\e[1;35m\]▶\[\e[0m\] '
export PS2='\[\e[1;30m\]◀\[\e[0m\] '
export PROMPT_COMMAND="_prompt_command"

[ -n "$TMUX" ] && export TERM=screen-256color
# [ -n "$ITERM_PROFILE" ] && togglethm $(cat ~/.conditions)

[ -e "$SHELL_ALIASES" ] && . "$SHELL_ALIASES"
[ -e "$SHELL_FUNCTIONS" ] && . "$SHELL_FUNCTIONS"
