#!/bin/bash
if [[ $(id -u) -ne 0 ]];
	then echo "Please run as root"
	exit
fi

apt update
apt upgrade -y

xargs -a packages/apt-purge.txt apt purge -y 
xargs -a packages/apt-install.txt apt install -y
xargs -a packages/snap-install.txt snap install 
xargs -a packages/snap-install-classic.txt snap install --classic

apt build-essential -y
apt autoremove && apt clean

cp ./../configs/.vimrc /home/$SUDO_USER/
chown $SUDO_USER:$SUDO_USER /home/$SUDO_USER/.vimrc
