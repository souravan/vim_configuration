# vim_configuration

## How to install it?

### Run this command

    $ make

### Resolve 256 color problem of tmux by pasting these lines in ~/.bashrc or ~/.zshrc
       
       TERM=screen-256color
       if [ -z "$TMUX" ];then
       TERM=xterm-256color
       fi

### (IMPORTANT) Overcome font problem by setting font as source code pro powerline in terminal preferences. 
