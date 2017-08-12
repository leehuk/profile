#!/bin/bash

wkfile=$(mktemp)
wkdir=$(mktemp -d)

curl -Lo ${wkfile} https://github.com/leehuk/profile/archive/master.tar.gz || exit 1

cd ${wkdir}
tar -zxf ${wkfile}

for i in bash_profile bashrc vimrc; do
    cp $wkdir/profile-master/dotfiles/$i $HOME/.$i
done

for i in vim/autoload vim/bundle; do
    rm -rf $HOME/.$i
    mkdir -p $HOME/.$i
    cp -r $wkdir/profile-master/$i $HOME/.vim/
done

rm -rf ${wkdir} ${wkfile}
