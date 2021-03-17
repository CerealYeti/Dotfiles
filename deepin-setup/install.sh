#!/bin/bash
if [[ $(id -u) -ne 0 ]];
	then echo "Please run as root"
	exit
fi

apt update
apt upgrade

xargs apt purge < packages/apt-purge.txt
xargs apt install -y < packages/apt-install.txt
xargs snap install < packages/snap-install.txt
xargs snap install --classic < packages/snap-install-classic.txt
