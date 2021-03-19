echo "syncing and updating..."
pacman -Syy --noconfirm
pacman -Syu --noconfirm

echo "installing packages..."
xargs -a ./packages/pacman-install.txt pacman -S --needed --noconfirm
