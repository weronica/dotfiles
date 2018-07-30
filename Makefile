.PHONY: tmux

all: clean
	ln -s $$HOME/.dotfiles/vim/vimrc $$HOME/.vimrc
	ln -s $$HOME/.dotfiles/zsh/zshrc $$HOME/.zshrc
	ln -s $$HOME/.dotfiles/zsh/zsh-env-config $$HOME/.zsh-env-config
	# mkdir -p $$HOME/.git
	ln -s $$HOME/.dotfiles/git/config $$HOME/.gitconfig
	ln -s $$HOME/.dotfiles/idea/ideavimrc $$HOME/.ideavimrc
	ln -s $$HOME/.dotfiles/zsh/fishier.zsh-theme $$HOME/.oh-my-zsh/themes/
	ln -s $$HOME/.dotfiles/tmux/tmux.conf $$HOME/.tmux.conf
	$(MAKE) tmux

tmux:
	tmux source-file $$HOME/.tmux.conf

clean:
	rm -f $$HOME/.vimrc
	rm -f $$HOME/.zshrc
	rm -f $$HOME/.zsh-env-config
	rm -f $$HOME/.gitconfig
	rm -f $$HOME/.ideavimrc
	rm -f $$HOME/.oh-my-zsh/themes/fishier.zsh-theme
	rm -f $$HOME/.tmux.conf
