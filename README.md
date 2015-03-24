# vim_configuration

## How to install it?

### Run this command

    > git clone https://github.com/aayushojha/vim_configuration.git vim_conf && cd vim_conf


### Compile vim from source to get latest vim so that it do not mess up with plugins

For debian like OS No need to panic. Just run

    > sh compile_vim_from_source_2.sh

If you use arch or gentoo probably this will be a simple task for you.Sorry I don't have a script for you.

### Check if vim is updated

    > vim --version

Check vim version is 7.4 or more.

### Backup your old configuration of vim.(if you do not know what I mean probably you don't have to do anything.

### Remove .vim and .vimrc

    > rm -rf ~/.vim
    > rm ~/.vimrc

### Install powerline fonts for vim-airline (DO NOT PANIC)

Just run

    > sh powerline_fonts.sh

Then open terminal preferences and set font to source code pro for powerline

### Now copy my vimrc and vundles.vim

    > cp vimrc ~/.vimrc
    > cp vundles.vim ~/.vim/vundles.vim

### Setup Vundle (Do Not Panic)
Again just run the commands

    > cd ~
    > mkdir .vim
    > git clone https://github.com/gmarik/Vundle.vim.git ~/.vim/bundle/Vundle.vim

### Install all plugins

    > vim +PluginInstall +qall

## Vim is ready to use But it may get disturbed by tmux so for tmux users

for bash for .bashrc and .zshrc for zsh.
add following lines in .bashrc or .zshrc.

    > TERM=screen-256color
      if [ -z "$TERM" ];then
      TERM=xterm-256color
      fi

## Most Important If you encounter a error tell me
