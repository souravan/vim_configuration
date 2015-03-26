all:
	git clone https://github.com/aayushojha/vim_configuration.git vim_conf && cd vim_conf
	sh compile_vim_from_source.sh
	rm -rf ~/.vim
	rm ~/.vimrc
	sh powerline_fonts.sh
	cp vimrc ~/.vimrc
	mkdir ~/.vim
	cp vundles.vim ~/.vim/vundles.vim
	mkdir ~/.vim/bundle
	git clone https://github.com/gmarik/Vundle.vim.git ~/.vim/bundle/Vundle.vim
	vim +PluginInstall +qall
