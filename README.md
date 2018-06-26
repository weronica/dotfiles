# dotfiles

## Setup

1. Clone the repo.

  ```sh
  $ cd $HOME
  $ git clone https://github.com/weronica/dotfiles.git
  $ mv dotfiles .dotfiles
  $ cd .dotfiles
  ```

2. [Install oh-my-zsh](https://github.com/robbyrussell/oh-my-zsh).

3. [Install vundle](https://github.com/VundleVim/Vundle.vim).

4. [Install zsh-autosuggestions](https://github.com/zsh-users/zsh-autosuggestions).

5. [Install tmux-themepack](https://github.com/jimeh/tmux-themepack).

6. Create (fresh) symlinks.

  ```sh
  $ make clean
  $ make
  ```

7. Run `:PluginInstall` to install vim plugins.

### Optional

- [Install go](https://www.ardanlabs.com/blog/2016/05/installing-go-and-your-workspace.html).
- Install Docker ([ubuntu instructions](https://docs.docker.com/install/linux/docker-ce/ubuntu/)).
- [Install python3.6](https://askubuntu.com/questions/865554/how-do-i-install-python-3-6-using-apt-get).


## Cleanup

To remove all symlinks, run `make clean`.
