echo "Configuring zsh..."
touch ~/.hushlogin
export ZSH="$HOME/.config/oh-my-zsh"
mkdir -p ~/.config/zsh
cp ./zsh/zshrc ~/.zshrc
ln -s ~/.zshrc ~/.config/zsh/.zshrc
echo /usr/local/bin/zsh | sudo tee -a /etc/shells
chsh -s /usr/local/bin/zsh
open ./iterm2/OneDark.itermcolors
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
