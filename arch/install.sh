#!/bin/bash
if [[ $(id -u) -ne 0 ]];
	then echo "Please run as root"
	exit
fi

pacman -Syy --noconfirm
pacman -Syu --noconfirm

xargs -a packages/pacman-install.txt pacman -S --needed --noconfirm

go get -u github.com/cheat/cheat/cmd/cheat

cd /opt
git clone https://aur.archlinux.org/yay.git
chown -R $SUDO_USER ./yay
cd ./yay
su $SUDO_USER -c 'makepkg -si'

yay -Syu --devel --timeupdate

xargs -a packages/aur-install.txt yay -S --noconfirm

pacman -Rcs $(pacman -Qdtq)
