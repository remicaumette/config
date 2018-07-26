#!/usr/bin/env bash
echo "Installing brew..."
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

echo "Installing drivers..."
brew tap caskroom/drivers
brew cask install \
    silicon-labs-vcp-driver \
    wch-ch34x-usb-serial-driver

echo "Installing fonts..."
brew tap caskroom/fonts
brew cask install \
    font-menlo-for-powerline

echo "Installing packages..."
brew tap caskroom/cask
brew cask install \
    visual-studio-code \
    discord \
    google-chrome \
    docker \
    virtualbox \
    java \
    vagrant \
    jetbrains-toolbox \
    ultimaker-cura \
    arduino \
    google-cloud-sdk \
    iterm2 \
	slack
brew install \
    go \
    node \
    maven \
    curl \
    git \
    packer \
    terraform \
    consul \
    nomad \
    mas \
    python \
    zsh \
    zsh-completions \
    neovim \
    dep \
    kubernetes-helm \
    protobuf \
	tmux \
    coreutils \
    unzip \
    openssh \
    rsync \
    gpatch \
    gdb \
    make \
    less \
    skaffold
brew link --overwrite python

echo "Configuring zsh..."
touch ~/.hushlogin
export ZSH="$HOME/.config/oh-my-zsh"
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
mkdir -p ~/.config/zsh
cp ./zsh/zshrc ~/.zshrc
ln -s ~/.zshrc ~/.config/zsh/.zshrc
echo /usr/local/bin/zsh | sudo tee -a /etc/shells
chsh -s /usr/local/bin/zsh

echo "Configuring visual studio code..."
code --install-extension PeterJausovec.vscode-docker
code --install-extension eg2.tslint
code --install-extension ms-vscode.cpptools
code --install-extension ms-vscode.Go
code --install-extension msjsdiag.debugger-for-chrome
code --install-extension zhuangtongfa.Material-theme
code --install-extension dbaeumer.vscode-eslint
code --install-extension octref.vetur
code --install-extension kumar-harsh.graphql-for-vscode
code --install-extension ms-python.python
code --install-extension mauve.terraform
code --install-extension zxh404.vscode-proto3
code --install-extension rust-lang.rust
code --install-extension vadimcn.vscode-lldb
code --install-extension bungcip.better-toml
code --install-extension toba.vsfire
code --install-extension webfreak.debug
code --install-extension eamodio.gitlens
mkdir -p ~/Library/Application\ Support/Code/User/
cp ./vscode/settings.json ~/Library/Application\ Support/Code/User/
cp ./vscode/keybindings.json ~/Library/Application\ Support/Code/User/

echo "Installing mac applications..."
mas install 409201541 # Pages
mas install 409203825 # Numbers
mas install 409183694 # Keynote

echo "Please configure your terminal"
open ./terminal/Nord.itermcolors

echo "Configuring neovim..."
curl -fLo ~/.config/nvim/site/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
pip3 install neovim
cp ./nvim/init.vim ~/.config/nvim/init.vim

echo "Installing rust..."
export RUSTUP_HOME=~/.config/rustup
export CARGO_HOME=~/.config/cargo
curl https://sh.rustup.rs -sSf | sh -s -- --no-modify-path --default-toolchain stable

echo "Configuring your workspace..."
cp -r ./scripts ~/.config
mkdir -p ~/Documents/Workspace
mkdir -p ~/Documents/Go/{src,bin}
