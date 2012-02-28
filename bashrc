# export LANG=en_US.UTF-8
# export LC_CTYPE=en_US.UTF-8

if tty -s; then
    stty -ixon
    stty -ixoff
    stty susp undef
fi

shopt -s checkwinsize
shopt -s no_empty_cmd_completion
shopt -s histappend cmdhist
shopt -s globstar

complete -cf sudo
complete -cf man

history() {
    _bash_history_sync
    builtin history "$@"
}

_bash_history_sync() {
    builtin history -a
    HISTFILESIZE=$HISTFILESIZE
    builtin history -c
    builtin history -r
}

_prompt_command() {
    _bash_history_sync
	case "$TERM" in
        rxvt* | xterm*)
            echo -en "\e]0;${PWD//$HOME/~}\a"
            ;;
    esac
    tput ed
}

export PS1='\[\e[1;33m\]\$ \[\e[0m\]'
export PROMPT_COMMAND='_prompt_command'
# export LC_COLLATE="C"

[ -r "$SHELL_ALIASES" ] && . "$SHELL_ALIASES"
[ -r "$SHELL_FUNCTIONS" ] && . "$SHELL_FUNCTIONS"

. /etc/profile.d/z.sh
. "$XDG_CONFIG_HOME"/bash_completion.d/eat

eval $(dircolors -b ~/.dircolors)

if [ -f "/usr/lib/stderred.so" ]; then
    export LD_PRELOAD="/usr/lib/stderred.so"
fi

# case "$TERM" in
#     rxvt*|xterm*)
#         set -o functrace
#         trap '[ -z "$BASH_SOURCE" ] && printf "\e]0;%s\a" "${PWD//$HOME/~} $BASH_COMMAND" > /dev/tty' DEBUG
#         ;;
# esac
