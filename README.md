vim-env
=======
Dockerfile to setup vim and tmux as development environment

Usage
-----
Open current working directory in tmux and vim by executing
`docker run -e TERM=xterm -it --rm -v $(pwd)/hostconfig:/root/hostconfig -v $(pwd):/repo ekim`.

Dependency
----------
This package requires powerline fonts
