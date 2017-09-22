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

5. Run `:PluginInstall` to install vim plugins.

6. Create symlinks.

  ```sh
  $ make
  ```

## Cleanup

To remove all symlinks, run `make clean`.
