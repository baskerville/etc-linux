# if tty -s; then
#     stty -ixon
#     stty -ixoff
#     stty susp undef
# fi

shopt -s checkwinsize
shopt -s no_empty_cmd_completion
shopt -s histappend cmdhist
shopt -s globstar

complete -cf sudo
complete -cf man

_prompt_command() {
    builtin history -a
    case "$TERM" in
        rxvt* | xterm*)
            echo -en "\e]0;${PWD//$HOME/~}\a"
            ;;
    esac
    tput ed
}

export PS1='\[\e[1;32m\]\$\[\e[0m\] '
export PROMPT_COMMAND='_prompt_command'

[ -r "$SHELL_ALIASES" ] && . "$SHELL_ALIASES"
[ -r "$SHELL_FUNCTIONS" ] && . "$SHELL_FUNCTIONS"

. /etc/profile.d/z.sh
. "$XDG_CONFIG_HOME"/bash_completion.d/eat
complete -F _herbstclient_complete hc

eval $(dircolors -b ~/.dircolors)

if [ -f "/usr/lib/libstderred.so" ]; then
    export LD_PRELOAD="/usr/lib/libstderred.so"
fi
