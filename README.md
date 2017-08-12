## leeh profile
Personal bash and vim profile

## Git Installation
```
cat <<EOF > $HOME/.profile_setup.sh && bash $HOME/.profile_setup.sh
#!/bin/bash

wkdir=$(mktemp -d)
git clone --depth 1 "https://github.com/leehuk/profile.git" $wkdir
rm -rf $wkdir/.git

for i in bash_profile bashrc vimrc; do
    cp $wkdir/dotfiles/$i $HOME/.$i
done

for i in vim/autoload vim/bundle; do
    rm -rf $HOME/.$i
    cp -r $wkdir/$i $HOME/.vim/
done

rm -rf ${wkdir}
EOF
```

## HTTP Installation
```
cat <<EOF > $HOME/.profile_setup.sh && bash $HOME/.profile_setup.sh
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
EOF
```
