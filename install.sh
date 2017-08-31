# Install Xcode Command Line Tools
xcode-select --install

# Install Homebrew
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

# Install Oh My Zshell
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

# Get brew servies
brew tap homebrew/services

# Brews I might want
brew install gpg
brew install postgresql
brew install mysql

# Install RVM
gpg --keyserver hkp://keys.gnupg.net --recv-keys 409B6B1796C275462A1703113804BB82D39DC0E3
\curl -sSL https://get.rvm.io | bash -s stable

# Update rubygems..
gem update --system

# Install Neovim
brew install neovim/neovim/neovim

# Dein plugin management
mkdir -p ~/.config/nvim/
curl https://raw.githubusercontent.com/Shougo/dein.vim/master/bin/installer.sh | sh -s ~/.config/nvim/dein

# Neovim Symlinks
ln -sf ~/dotfiles/init.vim ~/.config/nvim/init.vim

# Handle fonts for airblade and powerline
cp ~/dotfiles/fonts/* ~/Library/fonts/.
# NOTE: Remember to change (Preferences -> Profiles -> Text) Font to Sauce Code
#         to get devicons working

# Ordinary VIM
ln -sf ~/dotfiles/.vimrc ~/.vimrc
ln -sf ~/dotfiles/.tmux.conf ~/.tmux.conf

git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
vim +PluginInstall +qall
