# ~/.bashrc - crumb

# if not running interactively, don't do anything
[[ $- != *i* ]] && return

# enable bash completion
if [ -f /etc/bash_completion ]; then
    . /etc/bash_completion
fi

# better globbing
shopt -s globstar
shopt -s autocd
shopt -s checkwinsize

# bigger command history
HISTSIZE=10000
HISTFILESIZE=20000
HISTCONTROL=ignoredups:erasedups
shopt -s histappend

# timestamp each command in history
export HISTTIMEFORMAT="%F %T "

# prompt
PS1='\u@\h:\W\$ '

# safer and shorter commands
alias ls='ls --color=auto'
alias ll='ls -lah --color=auto'
alias la='ls -A --color=auto'
alias l='ls -CF --color=auto'
alias grep='grep --color=auto'

# navigation
alias ..='cd ..'
alias ...='cd ../..'

# networking
alias myip="ip a | grep wlan0"
alias ports='sudo ss -tulnp'

# aliases
alias restart='sudo reboot now'
alias poweroff='sudo shutdown now'
alias c='clear'
alias e='exit'
alias paci='sudo pacman -Sy --noconfirm'
alias pacr='sudo pacman -Rns --noconfirm'
alias pacu='sudo pacman -Syu'
alias ff='fastfetch'

# path tweaks
export PATH="$HOME/bin:$PATH"

# editor
export EDITOR=nvim
export VISUAL=nvim
export PAGER=less
export LESS='-RFX'

# quick directory creation and enter
mdcd() { mkdir -p "$1" && cd "$1"; }

# extracting various archives
extract() {
    if [ -f "$1" ]; then
        case "$1" in
            *.tar.bz2)  tar xjf "$1" ;;
            *.tar.gz)   tar xzf "$1" ;;
            *.bz2)      bunzip  "$1" ;;
            *.rar)      unrar x "$1" ;;
            *.gz)       gunzip  "$1" ;;
            *.tar)      tar xf  "$1" ;;
            *.tbz2)     tar xjf "$1" ;;
            *.tgz)      tar xzf "$1" ;;
            *.zip)      unzip   "$1" ;;
            *.z)        uncompress "$1" ;;
            *.7z)       7z x    "$1" ;;
            *)          echo "'$1' cannot be extracted" ;;
       esac
   else
       echo "'$1' is not a valid file"
   fi
}

