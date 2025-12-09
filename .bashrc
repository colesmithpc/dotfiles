############################################
# Simple bashrc
############################################

HISTSIZE=5000
HISTFILESIZE=10000
HISTCONTROL=ignoredups:ignorespace
shopt -s histappend

############################################
#  Prompt
############################################
PS1='\u \W \$ '

############################################
#  Aliases
############################################

# Quality of life
alias c='clear'
alias e='exit'
alias reboot='sudo reboot now'
alias shutdown='sudo shutdown now'

# Pacman (system update with confirmation)
alias update='sudo pacman -Syu'

# Pacman install/remove "no confirm"
alias paci='sudo pacman -S --noconfirm'
alias pacr='sudo pacman -R --noconfirm'
alias pacrs='sudo pacman -Rs --noconfirm'
alias pacss='pacman -Ss'   # search should NOT use --noconfirm
alias pacclean='sudo pacman -Rns --noconfirm $(pacman -Qtdq 2>/dev/null)'

############################################
#  Functions
############################################

mkcd () {
    mkdir -p "$1" && cd "$1"
}

