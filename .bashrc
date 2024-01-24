#
# ~/.bashrc
#

export EDITOR="nvim"
export BROWSER="qutebrowser"
export PATH=$PATH:$HOME/.local/bin:$HOME/.cargo/bin

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias x='exit'
alias cl='clear'

# PS1='[\u@\h \W]\$ '

if [[ "$(tty)" = "/dev/tty1" ]]; then
		Hyprland
        exit
fi

# batpipe, a bat-based preprocessor for less and bat.
# Version: 2023.09.19
# Homepage: https://github.com/eth-p/bat-extras
# Copyright (C) 2019-2021 eth-p | MIT License
# 
# To use batpipe, eval the output of this command in your shell init script.
LESSOPEN="|/usr/bin/batpipe %s";
export LESSOPEN;
unset LESSCLOSE;

# The following will enable colors when using batpipe with less:
LESS="$LESS -R";
BATPIPE="color";
export LESS;
export BATPIPE;

# Set prompt
export PS1='\[\e[1;32m\]${PWD/$HOME/\~}\[\e[0m\] λ '

# Increase history size
HISTSIZE=10000
HISTFILESIZE=20000

shopt -s histappend
shopt -s autocd
shopt -s cdable_vars
shopt -s cdspell
shopt -s dirspell
shopt -s dotglob

# Aliases
alias sl='eza -l --group-directories-first --time-style long-iso | rev | ~/.scripts/rpad --git --icons'
alias la='eza -a --color=always --group-directories-first --icons'
alias lla='eza -al --color=always --group-directories-first --time-style long-iso --git --icons'
alias lt='eza -aT --color=always --group-directories-first --icons'
alias ls='eza -l --color=always --group-directories-first --time-style long-iso --git --icons'

# Editor and browser settings
export EDITOR='nvim'
export BROWSER='qutebrowser'
export PATH="$HOME/.local/bin/:$HOME/.cargo/bin/:$PATH"

# Confirm before overwriting something
alias cp='cp -rip'
alias mv='mv -i'
alias rm='rm -i'
alias vim='nvim'
alias pacu='sudo pacman -Syu'
alias pacr='sudo pacman -Rns'
alias yayr='yay -Rns'
alias yya='yay'
alias ayy='yay'

# Make cursor a line
echo -e "\x1b[?25h" # shit not work
