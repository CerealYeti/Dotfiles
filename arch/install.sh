#!/bin/bash

sudo ./.sudo-install.sh

echo "installing aur packages"
yay -Syu --devel --timeupdate
xargs -a ./packages/aur-install.txt yay -S --noconfirm

intellij-install.sh

sudo ./.cheat-install.sh

sudo su -c 'pacman -Rns $(pacman -Qtdq)'

echo "export PATH=$PATH:/opt/bin" >> ~/.bashrc
cp ../configs/.vimrc ~/
