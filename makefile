all:
	git clone https://github.com/aayushojha/vim_configuration.git vim_conf && cd vim_conf
	sh compile_vim_from_source.sh
	vim --version
	rm -rf ~/.vim
	rm ~/.vimrc
	sh powerline_fonts.sh
	cp vimrc ~/.vimrc
	cp vundles.vim ~/.vim/vundles.vim
	cd ~
	mkdir .vim
	git clone https://github.com/gmarik/Vundle.vim.git ~/.vim/bundle/Vundle.vim
	vim +PluginInstall +qall
	echo "TERM=screen-256color" >> ~/.bashrc
