.PHONY: tmux

all: clean
	ln -s $$HOME/.dotfiles/vim/vimrc ~/.vimrc
	ln -s $$HOME/.dotfiles/zsh/zshrc ~/.zshrc
	ln -s $$HOME/.dotfiles/zsh/zsh-env-config ~/.zsh-env-config
	mkdir -p ~/.git
	ln -s $$HOME/.dotfiles/git/config ~/.git/config
	ln -s $$HOME/.dotfiles/idea/ideavimrc ~/.ideavimrc
	ln -s $$HOME/.dotfiles/zsh/fishier.zsh-theme ~/.oh-my-zsh/themes/
	ln -s $$HOME/.dotfiles/tmux/tmux.conf ~/.tmux.conf
	$(MAKE) tmux

tmux:
	tmux source-file ~/.tmux.conf

clean:
	rm -f ~/.vimrc
	rm -f ~/.zshrc
	rm -f ~/.zsh-env-config
	rm -f ~/.git/config
	rm -f ~/.ideavimrc
	rm -f ~/.oh-my-zsh/themes/fishier.zsh-theme
	rm -f ~/.tmux.conf
