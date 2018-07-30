.PHONY: bash git idea oh-my-zsh tmux vim zsh

all: vim git zsh oh-my-zsh idea

clean: clean-vim clean-git clean-idea clean-oh-my-zsh clean-tmux clean-vim clean-zsh

clean-bash:
	rm -f $$HOME/.bash_profile

bash: clean-bash
	ln -s $$HOME/.dotfiles/bash/bash_profile $$HOME/.bash_profile

clean-git:
	rm -f $$HOME/.gitconfig

git: clean-git
	ln -s $$HOME/.dotfiles/git/config $$HOME/.gitconfig

clean-idea:
	rm -f $$HOME/.ideavimrc

idea: clean-idea
	ln -s $$HOME/.dotfiles/idea/ideavimrc $$HOME/.ideavimrc

clean-oh-my-zsh:
	rm -f $$HOME/.oh-my-zsh/themes/fishier.zsh-theme

oh-my-zsh: clean-oh-my-zsh
	ln -s $$HOME/.dotfiles/zsh/fishier.zsh-theme $$HOME/.oh-my-zsh/themes/

clean-tmux:
	rm -f $$HOME/.tmux.conf

tmux: clean-tmux
	ln -s $$HOME/.dotfiles/tmux/tmux.conf $$HOME/.tmux.conf
	tmux source-file $$HOME/.tmux.conf

clean-vim:
	rm -f $$HOME/.vimrc

vim:
	ln -s $$HOME/.dotfiles/vim/vimrc $$HOME/.vimrc

clean-zsh:
	rm -f $$HOME/.zshrc
	rm -f $$HOME/.zsh-env-config

zsh: clean-zsh
	ln -s $$HOME/.dotfiles/zsh/zshrc $$HOME/.zshrc
	touch $$HOME/.dotfiles/zsh/zsh-env-config
	ln -s $$HOME/.dotfiles/zsh/zsh-env-config $$HOME/.zsh-env-config

