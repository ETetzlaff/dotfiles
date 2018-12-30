# Dein plugin management
mkdir -p ~/.config/nvim/
curl https://raw.githubusercontent.com/Shougo/dein.vim/master/bin/installer.sh | sh -s ~/.config/nvim/dein

# Neovim Symlinks
ln -sf ~/dotfiles/init.vim ~/.config/nvim/init.vim
