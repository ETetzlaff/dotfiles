mkdir -p ~/.config/nvim/
mkdir -p ~/.config/nvim/dein
ln -sf ~/dotfiles/init.vim ~/.config/nvim/init.vim
cp ~/dotfiles/fonts/* ~/Library/fonts/.
curl https://raw.githubusercontent.com/Shougo/dein.vim/master/bin/installer.sh | sh -s ~/.config/nvim/dein

ln -sf ~/dotfiles/.vimrc ~/.vimrc
ln -sf ~/dotfiles/.tmux.conf ~/.tmux.conf
