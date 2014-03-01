shopt -s checkwinsize
shopt -s no_empty_cmd_completion
shopt -s histappend cmdhist
# shopt -s globstar

complete -cf sudo
complete -cf man
complete -cf fork
complete -c bed
complete -C finddots dot
complete -d cd
complete -abck i

_prompt_command() {
    builtin history -a
    [ "$PWD" -ef "$HOME" ] || Z -a "$PWD"
}

export PS1='\[\e[1;35m\]▶\[\e[0m\] '
export PS2='\[\e[1;30m\]◀\[\e[0m\] '
export PROMPT_COMMAND=_prompt_command

[ -e "$SHELL_ALIASES" ] && . "$SHELL_ALIASES"
[ -e "$SHELL_FUNCTIONS" ] && . "$SHELL_FUNCTIONS"
