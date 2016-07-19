# Install Xcode Command Line Tools
xcode-select --install

# Install Homebrew
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

# Get brew servies
brew tap homebrew/services

# Brews I might want
brew install postgresql
brew install mysql

# Install RVM
gpg --keyserver hkp://keys.gnupg.net --recv-keys 409B6B1796C275462A1703113804BB82D39DC0E3

# Install Neovim
brew install neovim

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
