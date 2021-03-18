#!/bin/bash
if [[ $(id -u) -ne 0 ]];
	then echo "Please run as root"
	exit
fi

pacman -Syy
pacman -Syu

xargs -a packages/pacman-install.txt pacman -S --needed --noconfirm

go get -u github.com/cheat/cheat/cmd/cheat

cd /opt
git clone https://aur.archlinux.org/yay.git
cd ./yay
makepkg -si

yay -Syu --devel --timeupdate

xargs -a packages/aur-install.txt yay -S --noconfirm

pacman -Rcs $(pacman -Qdtq)
