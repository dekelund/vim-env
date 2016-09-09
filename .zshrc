export LANG="C.UTF-8"
export LC_COLLATE="C.UTF-8"
export LC_CTYPE="C.UTF-8"
export LC_MESSAGES="C.UTF-8"
export LC_MONETARY="C.UTF-8"
export LC_NUMERIC="C.UTF-8"
export LC_TIME="C.UTF-8"

export EDITOR='vim'
alias vi=vim

export GO15VENDOREXPERIMENT=1
export ZSH=/root/.oh-my-zsh

# ZSH_THEME="powerlevel9k/powerlevel9k"
ZSH_THEME="agnoster"

plugins=(git git-extras docker gradle jsontools pass screen taskwarrior vagrant web-search wd python)

source $ZSH/oh-my-zsh.sh

alias finish='tmux kill-server'
