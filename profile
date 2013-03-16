export EDITOR=vim
export PAGER=less
export BROWSER=dwb
export MANWIDTH=80

export HISTSIZE=100000
export SAVEHIST=$HISTSIZE
export HISTFILESIZE=$HISTSIZE
export HISTCONTROL=ignoreboth

export XDG_CONFIG_HOME="$HOME/.config"
export XDG_DATA_HOME="$HOME/.local/share"
export XDG_CACHE_HOME="$HOME/.cache"

export XDG_DOWNLOAD_DIR="$HOME/incoming"
export XDG_DOTFILES_DIR="$HOME/.dotfiles"
export XDG_COLORS_DIR="$XDG_DOTFILES_DIR/terminal_colors"
export XDG_TRASH_DIR="$HOME/.trash"
export XDG_BIN_DIR="$HOME/.bin"
export XDG_TMP_DIR="$HOME/tmp"

export OWL_AUR_HOME="$HOME/src/aur"
export OWL_ABS_HOME="$HOME/src/abs"

export PYTHONIOENCODING='utf-8'
export TEXINPUTS=".:$XDG_DATA_HOME/texmf//:"
export NNTPSERVER='snews://nntp.aioe.org'
export SLRNPULL_ROOT="$HOME/.slrnpull"
export _Z_NO_RESOLVE_SYMLINKS=1

export SHELL_CONFIG="$HOME/.bashrc"
export SHELL_PROFILE="$HOME/.bash_profile"
export SHELL_ALIASES="$HOME/.shell_aliases"
export SHELL_FUNCTIONS="$HOME/.shell_functions"

export MICRO=/media/micro
export DATA=/media/data
export TRAVELER=/media/traveler
export HEXAGON=/media/hexagon
export LACIE=/media/lacie

export BSPWM_SOCKET=/tmp/bspwm-socket
export BSPWM_BACKUP="$XDG_DATA_HOME/bspwm-backup"
export SXHKD_SHELL=/bin/dash
export EWMHSTATUS_FIFO=/tmp/ewmhstatus-fifo
export JINJA_FILTERS_DIR="$XDG_DOTFILES_DIR/jinja_filters"
export WALLPAPER="$HOME/.wallpaper"
export PANEL_HEIGHT=24

export DPMS_STANDBY=180
export DPMS_SUSPEND=360
export DPMS_OFF=480

export STDERRED_ESC_CODE=$(echo -e "\e[1;31m")
export GREP_COLORS='ms=1;37:mc=1;37:sl=:cx=:fn=1;33:ln=1;36:bn=1;35:se=1;30'
export LESS_TERMCAP_mb=$'\e[1;31m'     # begin blinking
export LESS_TERMCAP_md=$'\e[1;34m'     # begin bold
export LESS_TERMCAP_me=$'\e[0m'        # end mode
export LESS_TERMCAP_so=$'\e[40;37m'    # begin standout - info box
export LESS_TERMCAP_se=$'\e[0m'        # end standout
export LESS_TERMCAP_us=$'\e[1;33m'     # begin underline
export LESS_TERMCAP_ue=$'\e[0m'        # end underline

# vim: set ft=sh:
