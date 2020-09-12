apt-get install -y fonts-powerline
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting

# cp configs to the correct place
cp ./.zshrc ../
cp ./.tmux.conf ../

# install thefuck
pip3 install thefuck

source ../.zshrc
