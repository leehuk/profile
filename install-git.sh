#!/bin/bash

wkdir=$(mktemp -d)
git clone --depth 1 "https://github.com/leehuk/profile.git" $wkdir
rm -rf $wkdir/.git

for i in bash_profile bashrc vimrc; do
    cp $wkdir/dotfiles/$i $HOME/.$i
done


for i in vim/autoload vim/bundle vim/colors; do
    rm -rf $HOME/.$i
    mkdir -p $HOME/.$i
    cp -r $wkdir/$i $HOME/.vim/
done

rm -rf ${wkdir}
