vim-env
=======
Dockerfile to setup vim and tmux as development environment

Usage
-----
Open current working directory in tmux and vim by executing
`docker run -it --rm -v $GOPATH/src:/go/src dekelund/vim-env`.
