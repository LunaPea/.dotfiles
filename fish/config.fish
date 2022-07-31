export SXHKD_SHELL=/bin/sh
export LFS=/mnt/lfs
export RADV_PERFTEST=aco
export WINEFSYNC=1
export SUDO_ASKPASS=$HOME/.scripts/rofi/rofi-askpass
export SHELL="fish"
export LC_ALL="en_US.UTF-8"
export EDITOR="nvim"
export TERMINAL="urxvt"
export BROWSER="firefox"
export QT_QPA_PLATFORMTHEME=gtk2
export _JAVA_AWT_WM_NONREPARENTING=1
export JAVA_OPTS="--illegal-access=permit"
export SSH_AUTH_SOCK="$XDG_RUNTIME_DIR/ssh-agent.socket"
export PATH=$HOME/.local/bin/:$PATH
export TERM=xterm-color

export ANDROID_SDK_ROOT=/opt/android-sdk/
export PATH="$PATH:/opt/android-sdk/cmdline-tools/latest/bin/"
export ANDROID_AVD_HOME=~/.android/avd/

[ -f /usr/share/autojump/autojump.fish ]; and source /usr/share/autojump/autojump.fish

# Changing "ls" to "exa"
# alias ls='exa --color=always --group-directories-first'
# alias ll='exa -l --color=always --group-directories-first'  # long format

alias sl='exa -l --group-directories-first --time-style long-iso | rev | ~/.scripts/rpad --git'
alias la='exa -a --color=always --group-directories-first'
alias lla='exa -al --color=always --group-directories-first --time-style long-iso --git'
alias lt='exa -aT --color=always --group-directories-first'
alias ls='exa -l --color=always --group-directories-first --time-style long-iso --git'

# confirm before overwriting something
alias cp="cp -rip"
alias mv='mv -i'
alias rm='rm -i'

# open new terminal tab in the same working dir
# this mess makes it so the filename in tabline and lightline apears as term instead of a mess
alias tnid="nvr -c :tabnew; nvr -c :term\ fish\ -C\ cd\\\\\\\\\ (pwd)\\\\\\\\ \\\\\#/term 2>/dev/null"

# The bindings for !!
bind ! __history_previous_command

set fish_greeting

function __history_previous_command
  switch (commandline -t)
  case "!"
    commandline -t $history[1]; commandline -f repaint
  case "*"
    commandline -i !
  end
end
