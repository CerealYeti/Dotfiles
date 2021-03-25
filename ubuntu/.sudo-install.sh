#!/usr/bin/bash

grep "^[^#;]" ./packages/needed-ppa.txt | while read line
do 
    add-apt-repository $line
done
apt update
apt upgrade -y

grep "^[^#;]" ./packages/apt-packages.txt | xargs apt install -y
grep "^[^#;]" ./packages/snap-packages.txt | xargs snap install
grep "^[^#;]" ./packages/snap-classic-packages.txt | xargs snap install --classic

grep "^[^#;]" ./packages/remove-packages.txt | xargs apt purge -y

apt clean
apt autoremove -y

adduser $SUDO_USER audio
