#!/bin/bash

# See these for inspiration:
# https://bea.stollnitz.com/blog/codespaces-terminal/
# https://burkeholland.dev/posts/codespaces-dotfiles/

set -eou pipefail

sudo apt install zsh -y

zshrc() {


    sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

    echo "==========================================================="
    echo "             cloning zsh-autosuggestions                   "
    echo "-----------------------------------------------------------"                    

    ZSH_AUTOSUGGEST_DIR=${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
    echo $ZSH_AUTOSUGGEST_DIR
    if [ ! -d "$ZSH_AUTOSUGGEST_DIR" ] ; then
	git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_AUTOSUGGEST_DIR}
    fi

    echo "==========================================================="
    echo "             Setting zsh as default shell                  "
    echo "-----------------------------------------------------------"                    

    chsh -s $(which zsh)
}

zshrc

create_symlinks() {
    # Get the directory in which this script lives.
    script_dir=$(dirname "$(readlink -f "$0")")

    # Get a list of all files in this directory that start with a dot.
    files=$(find -maxdepth 1 -type f -name ".*")

    # Create a symbolic link to each file in the home directory.
    for file in $files; do
        name=$(basename $file)
        echo "Creating symlink to $name in home directory."
        rm -rf ~/$name
        ln -s $script_dir/$name ~/$name
    done
}

create_symlinks
