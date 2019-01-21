VIRTUALENV=.virt
PYTHON=${VIRTUALENV}/bin/python

.PHONY: bash git idea oh-my-zsh tmux vim zsh

all: vim git zsh oh-my-zsh idea

clean: clean-vim clean-git clean-zsh clean-oh-my-zsh clean-idea clean-tmux

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

vim: clean-vim
	ln -s $$HOME/.dotfiles/vim/vimrc $$HOME/.vimrc

clean-zsh:
	rm -f $$HOME/.zshrc
	rm -f $$HOME/.zsh-env-config

zsh: clean-zsh
	ln -s $$HOME/.dotfiles/zsh/zshrc $$HOME/.zshrc
	if [ ! -f $$HOME/.dotfiles/zsh/zsh-env-config ]; then \
	    cp $$HOME/.dotfiles/zsh/zsh-env-config-default $$HOME/.dotfiles/zsh/zsh-env-config; \
	fi
	ln -s $$HOME/.dotfiles/zsh/zsh-env-config $$HOME/.zsh-env-config

clean-ipython:
	rm -f $$HOME/.ipython/profile_default/ipython_config.py
	rm -f $$HOME/.ipython/profile_default/ipython_kernel_config.py
	# rm -f $$HOME/.ipython/profile_default/startup/typecheck.py

ipython: clean-ipython
	mkdir -p $$HOME/.ipython/profile_default/startup
	ln -s $$HOME/.dotfiles/ipython/ipython_config.py $$HOME/.ipython/profile_default/ipython_config.py
	ln -s $$HOME/.dotfiles/ipython/ipython_kernel_config.py $$HOME/.ipython/profile_default/ipython_kernel_config.py
	# ln -s $$HOME/.dotfiles/ipython/startup/typecheck.py $$HOME/.ipython/profile_default/startup/typecheck.py

${VIRTUALENV}:
	virtualenv -p python3.7 $@
	${PYTHON} -m pip install -r requirements.txt

requirements.txt:
	pip freeze > requirements.txt

fmt:
	${PYTHON} -m yapf -i -r ipython/

lint:
	${PYTHON} -m flake8 ipython/*

