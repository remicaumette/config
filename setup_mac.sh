#!/usr/bin/env bash
echo "Installing brew..."
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

echo "Installing packages..."
brew tap caskroom/cask
brew cask install visual-studio-code discord google-chrome docker java vagrant
brew install go node maven curl git packer terraform consul nomad fish mas

echo "Configuring ssh..."
mkdir -p ~/.ssh/
cp ./ssh/id_rsa ~/.ssh/
cp ./ssh/id_rsa.pub ~/.ssh/
chmod 600 ~/.ssh/id_rsa
chmod 600 ~/.ssh/id_rsa.pub

echo "Configuring fish..."
mkdir -p ~/.config/fish/
cp ./fish/config.fish ~/.config/fish/
echo /usr/local/bin/fish | sudo tee -a /etc/shells
chsh -s /usr/local/bin/fish
cp ./fish/profile ~/.profile
mkdir -p ~/Documents/Go/bin

echo "Configuring visual studio code..."
code --install-extension PeterJausovec.vscode-docker
code --install-extension eg2.tslint
code --install-extension ms-vscode.cpptools
code --install-extension ms-vscode.Go
code --install-extension msjsdiag.debugger-for-chrome
code --install-extension zhuangtongfa.Material-theme
mkdir -p ~/Library/Application\ Support/Code/User/
cp ./vscode/settings.json ~/Library/Application\ Support/Code/User/
cp ./vscode/keybindings.json ~/Library/Application\ Support/Code/User/

echo "Installing mac applications..."
mas install 409201541 # Pages
mas install 409203825 # Numbers
mas install 409183694 # Keynote

echo "Please configure your terminal"
open ./terminal/Nord.terminal
