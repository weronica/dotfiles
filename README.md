# dotfiles

## Setup

1. Clone the repo.

    ```sh
    $ cd $HOME
    $ git clone https://github.com/weronica/dotfiles.git
    $ mv dotfiles .dotfiles
    $ cd .dotfiles
    ```
2. Install all the things.
    ```sh
    $ ./install.sh
    ```

### Optional

- [Install go](https://www.ardanlabs.com/blog/2016/05/installing-go-and-your-workspace.html).
- Install Docker ([ubuntu instructions](https://docs.docker.com/install/linux/docker-ce/ubuntu/)).
- [Install python3.6](https://askubuntu.com/questions/865554/how-do-i-install-python-3-6-using-apt-get).


## Cleanup

To remove all symlinks, run `make clean`.
