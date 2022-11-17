export EDITOR="helix"
export BROWSER="firefox"
export JAVA_OPTS="--illegal-access=permit"
export PATH="$HOME/.local/bin/:$PATH"

# Changing "ls" to "exa"
alias sl='exa -l --group-directories-first --time-style long-iso | rev | ~/.scripts/rpad --git'
alias la='exa -a --color=always --group-directories-first'
alias lla='exa -al --color=always --group-directories-first --time-style long-iso --git'
alias lt='exa -aT --color=always --group-directories-first'
alias ls='exa -l --color=always --group-directories-first --time-style long-iso --git'

# confirm before overwriting something
alias cp="cp -rip"
alias mv='mv -i'
alias rm='rm -i'

set fish_greeting

# The bindings for !!
bind ! __history_previous_command

function __history_previous_command
  switch (commandline -t)
  case "!"
    commandline -t $history[1]; commandline -f repaint
  case "*"
    commandline -i !
  end
end
