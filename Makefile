all:
	make clean
	ln -s $$HOME/.dotfiles/vim/vimrc ~/.vimrc
	ln -s $$HOME/.dotfiles/zsh/zshrc ~/.zshrc

clean:
	rm -f ~/.vimrc
	rm -f ~/.zshrc

