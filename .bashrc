#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

export MPD_HOST="/home/michal/.config/mpd/socket"
PS1='[\u@\h \W]\$ '

export SHELL="urxvt"
export LC_ALL="en_US.UTF-8"
export EDITOR="nvim"
export TERMINAL="urxvt"
export BROWSER="firefox"
export QT_QPA_PLATFORMTHEME=gtk2
export PATH=$PATH:$HOME/.local/bin/
export _JAVA_AWT_WM_NONREPARENTING=1


if [[ "$(tty)" = "/dev/tty1" ]]; then
		startx
fi
