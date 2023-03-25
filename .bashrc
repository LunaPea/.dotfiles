#
# ~/.bashrc
#

export EDITOR="helix"
export BROWSER="qutebrowser"
export PATH=$PATH:$HOME/.local/bin:$HOME/.cargo/bin

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias x='exit'
alias cl='clear'

PS1='[\u@\h \W]\$ '

if [[ "$(tty)" = "/dev/tty1" ]]; then
		startx
fi
