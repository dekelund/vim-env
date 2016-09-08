#!/usr/bin/env bash

NAME="IDE"

tmux new-session -s "$NAME" -n "editor" -d "vim /go/src"
tmux new-window -t "$NAME:1" -n "shell" bash
tmux new-window -t "$NAME:2" -n "shell2" bash

tmux select-window -t "$NAME:0"
tmux split-window -p 30 -t "$NAME"
tmux select-pane -t 0

tmux -2 attach-session -t "$NAME"
