vim-env
=======
Dockerfile to setup vim and tmux as development environment

To add vimrc configuration to be runned after .vimrc.after,
create a file in $HOME/hostconfig called vimrc.

Usage Together With Go
----------------------
To configure a zsh alias mapping to map a github.com folder as volume

`myedit='docker run -e TERM=xterm -it --rm -v $HOME/hostconfig:/root/hostconfig -v $HOME/src/github.com/dekelund:/go/src/github.com/dekelund dekelund/vim-env ide'`

To open a project from the volume:

`myedit /src/github.com/dekelund`

Dependency
----------
This package requires powerline fonts
