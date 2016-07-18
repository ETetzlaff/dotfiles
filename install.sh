# Install Xcode Command Line Tools
xcode-select --install

# Install Homebrew
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

# Install RVM
gpg --keyserver hkp://keys.gnupg.net --recv-keys 409B6B1796C275462A1703113804BB82D39DC0E3

# Install Neovim
brew install neovim
ln -sf ~/dotfiles/init.vim ~/.config/nvim/init.vim
cp ~/dotfiles/fonts/* ~/Library/fonts/.

mkdir -p ~/.config/nvim/
mkdir -p ~/.config/nvim/dein/repos/github.com/Shougo/dein.vim

curl https://raw.githubusercontent.com/Shougo/dein.vim/master/bin/installer.sh | sh -s ~/.config/nvim/dein

# Ordinary VIM
ln -sf ~/dotfiles/.vimrc ~/.vimrc
ln -sf ~/dotfiles/.tmux.conf ~/.tmux.conf
