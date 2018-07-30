.PHONY: bash git idea oh-my-zsh tmux vim zsh

all: vim git zsh oh-my-zsh idea

bash:
	rm -f $$HOME/.bash_profile
	ln -s $$HOME/.dotfiles/bash/bash_profile $$HOME/.bash_profile

git:
	rm -f $$HOME/.gitconfig
	ln -s $$HOME/.dotfiles/git/config $$HOME/.gitconfig

idea:
	rm -f $$HOME/.ideavimrc
	ln -s $$HOME/.dotfiles/idea/ideavimrc $$HOME/.ideavimrc

oh-my-zsh:
	rm -f $$HOME/.oh-my-zsh/themes/fishier.zsh-theme
	ln -s $$HOME/.dotfiles/zsh/fishier.zsh-theme $$HOME/.oh-my-zsh/themes/

tmux:
	rm -f $$HOME/.tmux.conf
	ln -s $$HOME/.dotfiles/tmux/tmux.conf $$HOME/.tmux.conf
	tmux source-file $$HOME/.tmux.conf

vim:
	rm -f $$HOME/.vimrc
	ln -s $$HOME/.dotfiles/vim/vimrc $$HOME/.vimrc

zsh:
	rm -f $$HOME/.zshrc
	ln -s $$HOME/.dotfiles/zsh/zshrc $$HOME/.zshrc
	rm -f $$HOME/.zsh-env-config
	ln -s $$HOME/.dotfiles/zsh/zsh-env-config $$HOME/.zsh-env-config

