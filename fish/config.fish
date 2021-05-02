; # vim:ft=dosini

export LFS=/mnt/lfs

export MPD_HOST="/home/luna/.config/mpd/socket"

export SHELL="fish"
export LC_ALL="en_US.UTF-8"
export EDITOR="nvim"
export TERMINAL="urxvt"
export BROWSER="firefox"
export QT_QPA_PLATFORMTHEME=gtk2
export _JAVA_AWT_WM_NONREPARENTING=1
export JAVA_OPTS="--illegal-access=permit"


export SSH_AUTH_SOCK="$XDG_RUNTIME_DIR/ssh-agent.socket"

alias netappuse='lsof -P -i -n'
alias b='back'
alias cl='clear'
alias :q='exit'
alias vm='mv'
alias dc='cd'
alias pc='cp'
alias sl='ls'
alias lc='clear'
alias c='clear'
alias ayy='yay'
alias yya='yay'
alias yas='yay -S'
alias x='exit'
alias r='ranger'
alias sd='sudo'
alias yayr='yay -Rns'
alias ayyr='yay -Rns'
alias yyar='yay -Rns'
alias v='nvim'
alias vim='nvim'
alias viim='/usr/bin/vim'

alias sizeof='du -sh'
alias mnthelp='~/.scripts/mnthelp'
alias netscrcpy='scrcpy -m 720 -b 800000'
alias ytmusic='cd ~/.mu; youtube-dl --download-archive downloaded.txt --no-post-overwrites -ciwx --audio-format mp3 "https://www.youtube.com/watch?v=pfkBYHFZAt8&list=PLnzdrav5AL-m7l3IKDwbdWKFQgBm2Xuos"'
alias ytM='cd ~/.M & youtube-dl --download-archive downloaded.txt --no-post-overwrites -ciwx --audio-format mp3 "https://www.youtube.com/playlist?list=PLnzdrav5AL-nzGTlX9YLqeW2D2iffhEFD"'
alias ytWL='cd ~/.WL & youtube-dl --cookies ~/Documents/cookies-yt.txt --download-archive downloaded.txt --no-post-overwrites --embed-thumbnail -ciw -f mp4 -o "%(playlist_index)s-%(title)s__%(uploader)s.%(ext)s" "https://www.youtube.com/playlist?list=WL"'
alias keys='gpg --keyserver pool.sks-keyservers.net --recv-keys'

# navigation
alias back='cd -'
alias ..='cd ..'
alias ...='cd ../..'
alias .3='cd ../../..'
alias .4='cd ../../../..'
alias .5='cd ../../../../..'

# Changing "ls" to "exa"
# alias ls='exa --color=always --group-directories-first'
# alias ll='exa -l --color=always --group-directories-first'  # long format

alias sl='exa -l --group-directories-first --time-style long-iso | rev | ~/.scripts/rpad --git'
alias la='exa -a --color=always --group-directories-first'
alias lla='exa -al --color=always --group-directories-first --time-style long-iso --git'
alias lt='exa -aT --color=always --group-directories-first'
alias ls='exa -l --color=always --group-directories-first --time-style long-iso --git'

# confirm before overwriting something
alias cp="cp -i"
alias mv='mv -i'
alias rm='rm -i'

alias pacu='sudo pacman -Syu --noconfirm | lolcat'
alias pac='sudo pacman -Sy --color=auto'
alias pacer='sudo pacman -Rns --color=auto'

alias android-mnt='jmtpfs ~/redmi/'
alias cd-android='cd ~/redmi/Internal\ shared\ storage/'

export PATH="/home/luna/.local/bin/:$PATH"
export PATH="/home/michal/.local/bin/:$PATH"
set fish_greeting

function __history_previous_command
  switch (commandline -t)
  case "!"
    commandline -t $history[1]; commandline -f repaint
  case "*"
    commandline -i !
  end
end



function __history_previous_command_arguments
  switch (commandline -t)
  case "!"
    commandline -t ""
    commandline -f history-token-search-backward
  case "*"
    commandline -i '$'
  end
end
# The bindings for !! and !$
bind ! __history_previous_command
bind '$' __history_previous_command_arguments

function backup --argument filename
    cp $filename $filename.bak
end

~/.config/fish/startx
