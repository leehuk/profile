#!/bin/bash

git_clone_vimbundle() {
    dir=$1
    git=$2

    rm -rf "vim/bundle/${dir}"
    git clone --depth 1 ${git} "vim/bundle/${dir}"
    rm -rf "vim/bundle/${dir}/.git"
}

if [ ! -d 'vim/bundle' ]; then
    echo "Error: $0 must run from base directory"
    exit 1
fi

git_clone_vimbundle "nerdtree" "https://github.com/scrooloose/nerdtree.git"
git_clone_vimbundle "vim-airline" "https://github.com/vim-airline/vim-airline.git"
git_clone_vimbundle "vim-fugitive" "https://github.com/tpope/vim-fugitive.git"
git_clone_vimbundle "vim-pathogen" "https://github.com/tpope/vim-pathogen.git"
git_clone_vimbundle "vim-sensible" "https://github.com/tpope/vim-sensible.git"

cp "vim/bundle/vim-pathogen/autoload/pathogen.vim" "vim/autoload/pathogen.vim"
