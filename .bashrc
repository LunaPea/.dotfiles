#
# ~/.bashrc
#

export SSH_AUTH_SOCK="$XDG_RUNTIME_DIR/ssh-agent.socket"
export PATH=$PATH:$HOME/.local/bin/:$HOME/.cargo/bin

export SHELL="/bin/bash"
export LC_ALL="en_US.UTF-8"
export EDITOR="nvim-open"
export TERMINAL="urxvt"
export BROWSER="firefox"
export _JAVA_AWT_WM_NONREPARENTING=1

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias x='exit'
alias cl='clear'

PS1='[\u@\h \W]\$ '

if [[ "$(tty)" = "/dev/tty1" ]]; then
		startx
fi
