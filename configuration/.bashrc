#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

# Aliases
alias cp-tool='xclip -selection clipboard'
alias ls='ls --color=auto'
alias grep='grep --color=auto'

PS1='[\u@\h \W]\$ '

export STARSHIP_CONFIG=~/.config/starship/starship.toml
eval -- "$(/usr/bin/starship init bash --print-full-init)"

