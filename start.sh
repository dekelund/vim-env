#!/usr/bin/env zsh

export TERM=screen-256color

openpath="${2-/go/src}"

case "$1" in
vim)
  vim $2
  exit
;;
esac

# Lets use tmux

NAME="IDE"

function SingleCMDLine {
    tmux select-window -t "$NAME:0"
    tmux split-window -p 30 -t "$NAME" zsh
}

function DoubleCMDLine {
    tmux select-window -t "$NAME:0"
    tmux split-window -p 30 -t "$NAME" zsh
    tmux split-window -h -p 70 -t "$NAME" zsh
}

tmux new-session -s "$NAME" -n "editor" -d "vim $openpath"
tmux new-window -t "$NAME:1" -n "shell" zsh

case "$1" in
simple)
;;
single)
    SingleCMDLine
;;
ide)
    tmux new-window -t "$NAME:2" -n "shell2" zsh

    DoubleCMDLine
;;
esac

tmux select-window -t "$NAME:0"
tmux select-pane -t 0

tmux -u -2 attach-session -t "$NAME"
