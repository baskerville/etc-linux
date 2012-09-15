export EDITOR=vim
export PAGER=less
export BROWSER=dwb
export MANWIDTH=80

export HISTSIZE=100000
export SAVEHIST=$HISTSIZE
export HISTFILESIZE=$HISTSIZE
export HISTCONTROL=ignoreboth

export XDG_DOWNLOAD_DIR="$HOME/incoming"
export XDG_DOTFILES_DIR="$HOME/.dotfiles"
export XDG_COLORS_DIR="$XDG_DOTFILES_DIR/colors"
export XDG_TRASH_DIR="$HOME/.trash"
export XDG_BIN_DIR="$HOME/bin"
export XDG_TMP_DIR="$HOME/tmp"
export XDG_AUR_HOME="$HOME/src/aur"

export PYTHONIOENCODING='utf-8'
export TEXINPUTS=".:$XDG_DATA_HOME/texmf//:"
export GREP_COLORS='ms=1;33:mc=1;33:sl=:cx=:fn=1;32:ln=1;36:bn=36:se=1;30'
export STDERRED_ESC_CODE=$(echo -e "\e[1;31m")
export NNTPSERVER='news.orange.fr'
export SLRNPULL_ROOT="$HOME/.slrnpull"
export _Z_NO_RESOLVE_SYMLINKS=1
# export NETCFG_DEBUG=1

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
export EWMHSTATUS_FIFO=/tmp/ewmhstatus-fifo
export WALLPAPER="$HOME/.wallpaper"

export DPMS_STANDBY=180
export DPMS_SUSPEND=360
export DPMS_OFF=480

export LESS_TERMCAP_mb=$'\e[1;31m'     # begin blinking
export LESS_TERMCAP_md=$'\e[1;35m'     # begin bold
export LESS_TERMCAP_me=$'\e[0m'        # end mode
export LESS_TERMCAP_so=$'\e[1;40;36m'  # begin standout - info box
export LESS_TERMCAP_se=$'\e[0m'        # end standout
export LESS_TERMCAP_us=$'\e[1;32m'     # begin underline
export LESS_TERMCAP_ue=$'\e[0m'        # end underline

source "$HOME/.coordinates"

[ -d "$XDG_BIN_DIR" ] && export PATH="$XDG_BIN_DIR:$PATH"

if [[ -z $DISPLAY && $(tty) = /dev/tty1 ]]; then
  startx >& "$HOME/.Xlog"
  cp "$HOME/.Xlog" "$HOME/.Xlog.bak"
  logout
fi

# vim: set ft=sh:
