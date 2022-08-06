#
# ~/.bashrc
#

export SSH_AUTH_SOCK="$XDG_RUNTIME_DIR/ssh-agent.socket"
export PATH=$PATH:$HOME/.local/bin/:$HOME/.cargo/bin
# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias x='exit'
alias cl='clear'

PS1='[\u@\h \W]\$ '

export SHELL="bash"
export LC_ALL="en_US.UTF-8"
export EDITOR="nvim"
export TERMINAL="urxvt"
export BROWSER="firefox"
export QT_QPA_PLATFORMTHEME=gtk2
export _JAVA_AWT_WM_NONREPARENTING=1

test -f /usr/share/nvm/init-nvm.sh && source /usr/share/nvm/init-nvm.sh

if [[ "$(tty)" = "/dev/tty1" ]]; then
		startx
fi
