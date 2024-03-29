#!/bin/bash

git_clone_vimbundle() {
    dir=$1
    git=$2

    git clone --depth 1 "${git}" "vim/bundle/${dir}"
    rm -rf "vim/bundle/${dir}/.git" "vim/bundle/${dir}/.github"
}

cd `dirname $0`

rm -rf "vim/bundle"
mkdir vim/bundle

git_clone_vimbundle "nerdtree" "https://github.com/scrooloose/nerdtree.git"
git_clone_vimbundle "vim-airline" "https://github.com/vim-airline/vim-airline.git"
git_clone_vimbundle "vim-pathogen" "https://github.com/tpope/vim-pathogen.git"
git_clone_vimbundle "vim-sensible" "https://github.com/tpope/vim-sensible.git"
#git_clone_vimbundle "vim-syntastic" "https://github.com/vim-syntastic/syntastic.git"
git_clone_vimbundle "nerdtree-git-plugin" "https://github.com/Xuyuanp/nerdtree-git-plugin.git"
git_clone_vimbundle "vim-gitgutter" "https://github.com/airblade/vim-gitgutter.git"
git_clone_vimbundle "tabular" "https://github.com/godlygeek/tabular.git"
git_clone_vimbundle "vim-surround" "https://github.com/tpope/vim-surround"

rm -rf "vim/autoload"
mkdir "vim/autoload"

cp "vim/bundle/vim-pathogen/autoload/pathogen.vim" "vim/autoload/pathogen.vim"
