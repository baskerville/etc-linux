shopt -s checkwinsize
shopt -s no_empty_cmd_completion
shopt -s histappend cmdhist
shopt -s globstar

complete -cf sudo
complete -cf man
complete -cf fork
complete -abck i
complete -d cd
complete -c bed
complete -C finddots dot

_prompt_command() {
    builtin history -a
    case "$TERM" in
        rxvt* | xterm*)
            echo -en "\e]0;Terminal ${PWD//$HOME/~}$(git branch --no-color 2> /dev/null \
                | grep '^\*' | sed 's/\* \(.*\)/ (\1)/')\a"
            ;;
    esac
    [ "$PWD" -ef "$HOME" ] || Z -a "$PWD"
    # tput ed
}

export PS1='\[\e[1;35m\]▶\[\e[0m\] '
export PS2='\[\e[1;30m\]◀\[\e[0m\] '
export PROMPT_COMMAND=_prompt_command

[ -e "$SHELL_ALIASES" ] && . "$SHELL_ALIASES"
[ -e "$SHELL_FUNCTIONS" ] && . "$SHELL_FUNCTIONS"
[ -e "/usr/lib/libstderred.so" ] && export LD_PRELOAD="/usr/lib/libstderred.so"
. "$XDG_CONFIG_HOME"/bash_completion.d/eat

eval $(dircolors -b "$HOME/.dircolors")
[ "$TERM" = "linux" ] && "$XDG_COLORS_DIR"/redef_console
