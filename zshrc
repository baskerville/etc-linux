. ~/.shell_aliases
. ~/.shell_functions

autoload -U compinit && compinit
autoload -U colors && colors
# autoload -U zmv
autoload -U edit-command-line
autoload -U insert-composed-char
zle -N edit-command-line
zle -N insert-composed-char

bindkey -e
bindkey '^p' history-beginning-search-backward
bindkey '^n' history-beginning-search-forward
bindkey '\es' history-incremental-search-forward
bindkey '\e[3~' delete-char
bindkey '\ee' edit-command-line
bindkey '\e[31~' insert-composed-char
bindkey '^[[Z' reverse-menu-complete

# Case insensitive completion
zstyle ':completion:*' matcher-list 'm:{a-zA-Z}={A-Za-z}'

setopt brace_ccl
setopt prompt_subst
setopt no_case_glob extended_glob
setopt hist_find_no_dups hist_reduce_blanks
setopt share_history
setopt no_hup

PROMPT='%(?.%{$fg_bold[magenta]%}▶.%{$fg[red]%}●) %{$reset_color%}'
PROMPT2='%{$fg_bold[black]%}◾ %{$reset_color%}'

setpanetitle() {
	local pane_title=''
	[ -d "$PWD"/.git ] && pane_title="#[fg=red]$(git rev-parse --abbrev-ref HEAD) "
	pane_title="${pane_title}#[fg=brightyellow]$(from_home "$PWD")"
	printf '\033]2;%s\a' "$pane_title"
}

[ -n "$TMUX" ] && setpanetitle

if [ -n "$ITERM_PROFILE" ] ; then
	bgtype=$(cat "$HOME"/.conditions)
	[ "$bgtype" != "$ITERM_PROFILE" ] && togglethm $bgtype
fi

chpwd() {
    [ "$PWD" -ef "$HOME" ] || Z -a "$PWD"
    [ -n "$TMUX" ] && setpanetitle
}
