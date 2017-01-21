all:
	make clean
	ln -s $$HOME/.dotfiles/vim/vimrc ~/.vimrc
	ln -s $$HOME/.dotfiles/zsh/zshrc ~/.zshrc
	ln -s $$HOME/.dotfiles/git/config ~/.git/config

clean:
	rm -f ~/.vimrc
	rm -f ~/.zshrc
	rm -f ~/.git/config

