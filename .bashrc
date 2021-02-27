#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

#alias pacman='sudo pacman'
#alias ls='ls --color=auto'

if [ -e $HOME/.aliasrc ]; then
    source $HOME/.aliasrc
fi

#eval zsh

PS1='[\u@\h \W]\$ '
