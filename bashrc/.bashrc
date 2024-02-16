#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
alias rr='ranger'
alias sdb1='sudo mount /dev/sdb1 Public/sdb1'
alias sdb2='sudo mount /dev/sdb2 Public/sdb2'
alias sdc1='sudo mount /dev/sdc1 Public/sdc1'
alias s='sudo'
alias aa='cd ~/Public/sdb1/あにめ/;rr'
alias js='cd ~/Public/sdb1/Webdev/WebDev/Materi/"roundmap"/;rr'
alias mm='cd ~/Public/sdb1/musik/にっぽン;rr'
alias sp='sudo pacman'
alias nd='node'
alias lampp='sudo /opt/lampp/lampp'

export LD_LIBRARY_PATH=/usr/local/lib

PS1='[\u@\h \W]\$ '
