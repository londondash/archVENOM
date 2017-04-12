#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
export PS1="\[\033[38;5;248m\]\H\[$(tput sgr0)\]\[\033[38;5;15m\][\[$(tput bold)\]\[$(tput sgr0)\]\[\033[38;5;27m\]\u\[$(tput sgr0)\]\[$(tput sgr0)\]\[\033[38;5;15m\]][\[$(tput sgr0)\]\[\033[38;5;248m\]\\$\[$(tput sgr0)\]\[\033[38;5;15m\]][\[$(tput sgr0)\]\[\033[38;5;248m\]\A\[$(tput sgr0)\]\[\033[38;5;15m\]]\[$(tput sgr0)\]\[\033[38;5;27m\]\W\[$(tput sgr0)\]"
BROWSER=/usr/bin/firefox
EDITOR=/usr/bin/nano
