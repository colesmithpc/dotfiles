# -----------------------------
# Basic prompt
# -----------------------------
# Arch blue color
ARCH_BLUE="\[\e[38;5;33m\]"
RESET="\[\e[0m\]"

# Username@host in blue, path in cyan
PS1="${ARCH_BLUE}\u@\h${RESET}:\[\e[36m\]\w${RESET}\$ "

# -----------------------------
# Aliases for convenience
# -----------------------------
alias paci='sudo pacman -Sy --noconfirm'
alias pacr='sudo pacman -Rns --noconfirm'
alias pacu='sudo pacman -Syu'   # update system
alias ll='ls -lh --color=auto'     # long listing with human-readable sizes
alias lsa='ls -a --color=auto'     # show hidden files
alias l='ls -CF --color=auto'     # simple listing
alias grep='grep --color=auto'    # highlight grep matches
alias reboot='sudo reboot now'
alias shutdown='sudo shutdown now'

# -----------------------------
# LS colors – Arch Blue Theme
# -----------------------------
# Custom LS_COLORS: directories in bold cyan, files default, symlinks magenta, executables green
export LS_COLORS="di=1;36:fi=0:ln=35:pi=33:so=32:bd=34;46:cd=34;43:or=31;1:ex=32;1:*.sh=32:*.py=33"

# -----------------------------
# History & completion
# -----------------------------
HISTSIZE=10000
HISTFILESIZE=20000
shopt -s histappend
shopt -s checkwinsize
shopt -s autocd

# Enable color completion
if [ -f /etc/bash_completion ]; then
    . /etc/bash_completion
fi

# -----------------------------
# Extra refinements
# -----------------------------
# Show colored man pages
export LESS_TERMCAP_mb=$'\e[1;34m'     # bold blue
export LESS_TERMCAP_md=$'\e[1;34m'
export LESS_TERMCAP_me=$'\e[0m'
export LESS_TERMCAP_so=$'\e[1;44m'
export LESS_TERMCAP_se=$'\e[0m'
export LESS_TERMCAP_us=$'\e[4;36m'
export LESS_TERMCAP_ue=$'\e[0m'

# Enable vi mode in bash
set -o vi
