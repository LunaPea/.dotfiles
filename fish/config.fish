export EDITOR="nvim"
export BROWSER="qutebrowser"
export PATH="$HOME/.local/bin/:$HOME/.cargo/bin/:$PATH"

# Changing "ls" to "exa"
alias sl='exa -l --group-directories-first --time-style long-iso | rev | ~/.scripts/rpad --git --icons'
alias la='exa -a --color=always --group-directories-first --icons'
alias lla='exa -al --color=always --group-directories-first --time-style long-iso --git --icons'
alias lt='exa -aT --color=always --group-directories-first --icons'
alias ls='exa -l --color=always --group-directories-first --time-style long-iso --git --icons'

# confirm before overwriting something
alias cp="cp -rip"
alias mv='mv -i'
alias rm='rm -i'

set fish_greeting

function mkcd -d "Create a directory and cd into it"
    command mkdir $argv
    if test $status = 0
        switch $argv[(count $argv)]
            case '-*'

            case '*'
                cd $argv[(count $argv)]
                return
        end
    end
end

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
