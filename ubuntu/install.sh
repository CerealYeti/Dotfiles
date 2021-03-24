#!/usr/bin/bash

sudo ./.sudo-install.sh
cp ../configs/.vimrc ~/
cp ../configs/.alacritty.yml ~/
tar -xzf ../configs/plasma-backups.tar.gz  -C ~/.configs/
mv ~/.configs/plasma-backups/ * ~/.configs/
rm -r ~/.configs/plasma-backups/
