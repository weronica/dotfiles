print_message () {
    RED='\033[0;31m'
    NC='\033[0m'
    printf "${RED}[install.sh]${NC} $1\n"
}

# Determine environment.
uname_out="$(uname -s)"
MAC="mac"; LINUX="linux"; CYGWIN="cygwin"; MINGW="mingw"; OTHER="other"
case "${uname_out}" in
    Darwin*)
        machine=$MAC    ;;
    Linux*)
        machine=$LINUX  ;;
    CYGWIN*)
        machine=$CYGWIN ;;
    MINGW*)
        machine=$MINGW  ;;
    *)
        machine=$OTHER
esac
print_message "Your environment is: ${machine}."

# Install oh-my-zsh.
print_message "Installing oh-my-zsh..."
dir=$HOME/.oh-my-zsh
if [ ! -d $dir ];
then
    sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
else
    print_message "oh-my-zsh already installed."
fi

# Install Vundle.
print_message "Installing Vundle..."
dir=$HOME/.vim/bundle/Vundle.vim
if [ ! -d $dir ];
then
    git clone https://github.com/VundleVim/Vundle.vim.git $dir
else
    print_message "Vundle already installed."
fi
print_message "Installing Vundle plugins..."
vim +PluginInstall +qall

# Install zsh-autosuggestions.
print_message "Installing zsh-autosuggestions..."
dir=${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
if [ ! -d $dir ];
then
    git clone https://github.com/zsh-users/zsh-autosuggestions $dir
else
    print_message "zsh-autosuggestions already installed."
fi

# Install tmux-themepack.
if [ $machine != $MAC ];
then
    print_message "Installing tmux-themepack..."
    dir=$HOME/.tmux-themepack
    if [ ! -d $dir ];
    then
        git clone https://github.com/jimeh/tmux-themepack.git $dir
    else
        print_message "tmux-themepack already installed."
    fi
fi

# Install go.
if [ $machine = $MAC ];
then
    print_message "TODO: go installation on mac."
elif [ $machine = $LINUX ];
    GOROOT=$HOME/go
    if [ -d $GOROOT ];
    then
        print_message "go already installed."
    else
        wget https://dl.google.com/go/go1.10.3.linux-amd64.tar.gz
        tar -C $HOME -xzf go1.10.3.linux-amd64.tar.gz
        export PATH="$PATH:$GOROOT/bin"

        # Make go workspace.
        mkdir -p $HOME/code/go/src
        export GOPATH="$HOME/code/go"    # Also in zshrc.
        export PATH="$PATH:$GOPATH/bin"  # Also in zshrc.
        go get -u github.com/golang/lint/golint
    fi
fi

# Install direnv.
if [ $machine = $MAC ];
then
    print_message "TODO: direnv installation on mac."
elif [ $machine = $LINUX ];
    direnv_dir=$HOME/.direnv
    if [ -d $direnv_dir ];
    then
        print_message "direnv already installed."
    else
        git clone git@github.com:direnv/direnv.git $direnv_dir
        cd $direnv_dir
        make
        make install
    fi
fi

# Make fresh symlinks.
print_message "Making symlinks..."
make vim
make git
make zsh
make oh-my-zsh
make idea
if [ $machine != $MAC ];
then
    make tmux
    make bash
fi

print_message "You're all set!"
