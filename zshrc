autoload -U compinit
compinit

bindkey -e
bindkey '^p' history-search-backward
bindkey '^n' history-search-forward

[ $ITERM_PROFILE ] && bindkey "\e[3~" delete-char

# Enable regex moving
autoload -U zmv

# Case insensitive completion
zstyle ':completion:*' matcher-list 'm:{a-zA-Z}={A-Za-z}'

# Case insensitive globing
setopt no_case_glob

# Don't show duplicate history entries
setopt hist_find_no_dups

# Remove unnecessary blanks from history
setopt hist_reduce_blanks

# Share history between instances
setopt share_history

# Don't hang up background jobs
setopt no_hup

# Expand parameters, commands and aritmatic in prompts
setopt prompt_subst

# Colorful prompt with Git and Subversion branch
autoload -U colors && colors

PS1='%{$fg_bold[magenta]%}%(?.▶.▷) %{$reset_color%}'
PS2='%{$fg_bold[black]%}◀ %{$reset_color%}'

chpwd() {
    [ "$PWD" -ef "$HOME" ] || Z -a "$PWD"
}
