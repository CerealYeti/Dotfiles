#!/bin/bash

CURRENT_DIR=$(pwd)

sudo ./.sudo-install.sh

echo "installing cheat through go"
go get -u github.com/cheat/cheat/cmd/cheat

echo "installing aur packages"
yay -Syu --devel --timeupdate
xargs -a ./packages/aur-install.txt yay -S --noconfirm
./.intellij-install.sh

sudo su -c 'pacman -Rns $(pacman -Qtdq)'

cp ../configs/.vimrc ~/
