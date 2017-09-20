all:
	ln -s $$HOME/.dotfiles/vim/vimrc ~/.vimrc
	ln -s $$HOME/.dotfiles/zsh/zshrc ~/.zshrc
	mkdir -p ~/.git
	ln -s $$HOME/.dotfiles/git/config ~/.git/config
	ln -s $$HOME/.dotfiles/idea/ideavimrc ~/.ideavimrc

clean:
	rm -f ~/.vimrc
	rm -f ~/.zshrc
	rm -f ~/.git/config
	rm -f ~/.ideavimrc
