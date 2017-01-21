all:
	make clean
	ln -s vim/vimrc ~/.vimrc
	ln -s zsh/zshrc ~/.zshrc

clean:
	rm -f ~/.vimrc
	rm -f ~/.zshrc

