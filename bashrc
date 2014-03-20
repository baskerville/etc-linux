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
	if [ -n "$TMUX" ] ; then
		pane_title=''
		[ -d "$PWD"/.git ] && pane_title="$(git rev-parse --abbrev-ref HEAD):"
		pane_title="${pane_title}$(from_home "$PWD")"
		printf '\033]2;%s\a' "$pane_title"
	fi
	[ "$PWD" -ef "$HOME" ] || Z -a "$PWD"
	tput ed
}

PS1='\[\e[1;35m\]▶\[\e[0m\] '
PS2='\[\e[1;30m\]◀\[\e[0m\] '
PROMPT_COMMAND="_prompt_command"
export PS1 PS2 PROMPT_COMMAND

PATH="$XDG_BIN_DIR:$HOME/.local/bin:$GOPATH/bin:$(ruby -rubygems -e 'puts Gem.user_dir')/bin:$PATH"
export PATH

[ -e "$SHELL_ALIASES" ] && . "$SHELL_ALIASES"
[ -e "$SHELL_FUNCTIONS" ] && . "$SHELL_FUNCTIONS"
if [ -n "$ITERM_PROFILE" ] ; then
	bgtype=$(cat "$HOME"/.conditions)
	[ "$bgtype" != "$ITERM_PROFILE" ] && togglethm $bgtype
fi
