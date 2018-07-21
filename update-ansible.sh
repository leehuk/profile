#!/bin/bash

wkdir=$(dirname $0)

if [ -z "$1" ]; then
	echo "Usage: $0 <ansible-scripts-dir>"
	exit 1
fi

cd $wkdir

ansible_dir="$1"

if [ ! -d "$ansible_dir" ] || [ ! -d "$ansible_dir/roles/core_users" ]; then
	echo "Error: Unable to locate $ansible_dir/roles/core_users"
	exit 1
fi

ansible_users_dir="$ansible_dir/roles/core_users/files/dotfiles"

for i in bash_profile bashrc vimrc; do
    cp dotfiles/$i $ansible_users_dir/$i
done

tmpdir=$(mktemp -d)
cp -r vim $tmpdir/.vim
cd $tmpdir
tar -zcf $ansible_users_dir/vim.tgz .vim
rm -rf "$tmpdir"
