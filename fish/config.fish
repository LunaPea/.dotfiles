; # vim:ft=dosini
;
export SXHKD_SHELL=/bin/sh
export LFS=/mnt/lfs
export RADV_PERFTEST=aco
export WINEFSYNC=1
export SUDO_ASKPASS="/home/wera/.scripts/rofi/rofi-askpass"
export SHELL="fish"
export LC_ALL="en_US.UTF-8"
export EDITOR="nvim"
export TERMINAL="urxvt"
export BROWSER="firefox"
export QT_QPA_PLATFORMTHEME=gtk2
export _JAVA_AWT_WM_NONREPARENTING=1
export JAVA_OPTS="--illegal-access=permit"
export SSH_AUTH_SOCK="$XDG_RUNTIME_DIR/ssh-agent.socket"
export PATH="/home/wera/.local/bin/:$PATH"
export TERM=xterm-color

export ANDROID_SDK_ROOT=/opt/android-sdk/
export PATH="$PATH:/opt/android-sdk/cmdline-tools/latest/bin/"
export ANDROID_AVD_HOME=~/.android/avd/

alias mnthelp='~/.scripts/mnthelp'
alias ytWL='cd ~/.WL & yt-dlp --cookies ~/Documents/cookies-yt.txt --download-archive downloaded.txt --no-post-overwrites --embed-thumbnail -ciw -f mp4 -o "%(playlist_index)s-%(title)s__%(uploader)s.%(ext)s" "https://www.youtube.com/playlist?list=WL"'
alias ytWHAT='cd ~/.WL/.WHAT/ & yt-dlp --cookies ~/Documents/cookies-yt.txt --download-archive downloaded.txt --no-post-overwrites --embed-thumbnail -ciw -f mp4 -o "%(playlist_index)s-%(title)s__%(uploader)s.%(ext)s" "https://www.youtube.com/playlist?list=PLnzdrav5AL-nA7dmSbVQGd6-PIzVPo3Rs"'
alias ytrecommendations='cd ~/.WL/.recommendations/ & yt-dlp --cookies ~/Documents/cookies-yt.txt --download-archive downloaded.txt --no-post-overwrites --embed-thumbnail -ciw -f mp4 -o "%(playlist_index)s-%(title)s__%(uploader)s.%(ext)s" "https://www.youtube.com/playlist?list=PLnzdrav5AL-ltrkL9e5fpV7Y4Ls1Nzy-5"'
alias ytM='cd ~/.WL/.M/ & yt-dlp --cookies ~/Documents/cookies-yt.txt --download-archive downloaded.txt --no-post-overwrites --embed-thumbnail -ciw -f mp4 -o "%(playlist_index)s-%(title)s__%(uploader)s.%(ext)s" "https://www.youtube.com/playlist?list=PLnzdrav5AL-nzGTlX9YLqeW2D2iffhEFD"'

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

# The bindings for !! and !$
bind ! __history_previous_command
bind '$' __history_previous_command_arguments

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

function backup --argument filename
    cp $filename $filename.bak
end

function print_fish_colors --description 'Shows the various fish colors being used'
    set -l clr_list (set -n | grep fish | grep color | grep -v __)
    if test -n "$clr_list"
        set -l bclr (set_color normal)
        set -l bold (set_color --bold)
        printf "\n| %-38s | %-38s |\n" Variable Definition
        echo '|¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯|¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯|'
        for var in $clr_list
            set -l def $$var
            set -l clr (set_color $def ^/dev/null)
            or begin
                printf "| %-38s | %s%-38s$bclr |\n" "$var" (set_color --bold white --background=red) "$def"
                continue
            end
            printf "| $clr%-38s$bclr | $bold%-38s$bclr |\n" "$var" "$def"
        end
        echo '|________________________________________|________________________________________|'\n
    end
end

echo -en "\e]P0121212" #black
echo -en "\e]P8303030" #darkgrey
echo -en "\e]P1dc2566" #darkred
echo -en "\e]P9fa2772" #red
echo -en "\e]P28fc029" #darkgreen
echo -en "\e]PAa7e22e" #green
echo -en "\e]P3d4c96e" #brown
echo -en "\e]PBe7db75" #yellow
echo -en "\e]P455bcce" #darkblue
echo -en "\e]PC66d9ee" #blue
echo -en "\e]P59358fe" #darkmagenta
echo -en "\e]PDae82ff" #magenta
echo -en "\e]P656b7a5" #darkcyan
echo -en "\e]PE66efd5" #cyan
echo -en "\e]P7acada1" #lightgrey
echo -en "\e]PFcfd0c2" #white
clear #for background artifacting

~/.config/fish/startx
