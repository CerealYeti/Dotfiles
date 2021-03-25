#!/usr/bin/bash

sudo ./.sudo-install.sh
cp ../configs/.vimrc ~/
cp ../configs/.alacritty.yml ~/
tar -xzf ../configs/plasma-backups.tar.gz
if [ ! -d "~/.config/" ]
then
    mkdir ~/.config/
fi
mv plasma-backups/* ~/.config/
rm -r plasma-backups
