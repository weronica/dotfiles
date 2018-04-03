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

5. Create (fresh) symlinks.

  ```sh
  $ make clean
  $ make
  ```

6. Run `:PluginInstall` to install vim plugins.


## Cleanup

To remove all symlinks, run `make clean`.
