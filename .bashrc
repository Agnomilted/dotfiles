#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
PS1="\w $\[$(tput sgr0)\] "

export HOME='/home/agnom'
export EDITOR='nvim'
export TERMINAL='st'
export BROWSER='qutebrowser'

# some ls aliases
alias ll='ls -l'
alias la='ls -A'
alias lah='ls -lAh'
alias lh='ls -lh'
alias lla='la -lA'

alias mv='mv -i'

alias disassemble='objdump -M intel -d'
alias nasm64='nasm -f elf64'
alias bashrc='$EDITOR ~/.bashrc'
alias fehbg='feh --bg-scale'
alias e=$EDITOR
alias d='doas'
alias n='neofetch'
alias r='ranger'
alias h='htop'
alias q='exit'
alias ':q'='exit'
alias f='yay'
alias fi='yay -S'
alias fr='yay -Rs'
alias py='python3'
alias wireless='nmcli device wifi'

alias dwms='$EDITOR /home/agnom/src/dwm/config.h'
alias dwmc='doas make -C ~/src/dwm/ install'

alias bb='$EDITOR $HOME/.config/bspwm/bspwmrc'
alias bs='$EDITOR $HOME/.config/bspwm/sxhkdrc'
alias bp='$EDITOR $HOME/.config/polybar/config'

alias ci='xclip -selection clipboard'
alias co='xclip -selection clipboard -o'

# don't put duplicate lines or lines starting with space in the history.
# See bash(1) for more options
HISTCONTROL=ignoreboth

# append to the history file, don't overwrite it
shopt -s histappend

# for setting history length see HISTSIZE and HISTFILESIZE in bash(1)
HISTSIZE=10000
HISTFILESIZE=20000

# vi mode
# set -o emacs
set -o vi
bind -m vi-command 'Control-l: clear-screen'
bind -m vi-insert 'Control-l: clear-screen'

# check the window size after each command and, if necessary,
# update the values of LINES and COLUMNS.
shopt -s checkwinsize

# If set, the pattern "**" used in a pathname expansion context will
# match all files and zero or more directories and subdirectories.
#shopt -s globstar

# make less more friendly for non-text input files, see lesspipe(1)
#[ -x /usr/bin/lesspipe ] && eval "$(SHELL=/bin/sh lesspipe)"

# set a fancy prompt (non-color, unless we know we "want" color)
# case "$TERM" in
#    xterm-color|*-256color) color_prompt=yes;;
# esac

# uncomment for a colored prompt, if the terminal has the capability; turned
# off by default to not distract the user: the focus in a terminal window
# should be on the output of commands, not on the prompt
force_color_prompt=yes

# if [ -n "$force_color_prompt" ]; then
#	if [ -x /usr/bin/tput ] && tput setaf 1 >&/dev/null; then
#	    # We have color support; assume it's compliant with Ecma-48
#	    # (ISO/IEC-6429). (Lack of such support is extremely rare, and such
#	    # a case would tend to support setf rather than setaf.)
#	    color_prompt=yes
#	else
#	    color_prompt=no
#	fi
# fi

# unset color_prompt force_color_prompt

# colored GCC warnings and errors
#export GCC_COLORS='error=01;31:warning=01;35:note=01;36:caret=01;32:locus=01:quote=01'

