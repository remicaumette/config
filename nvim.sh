echo "Configuring nvim..."
curl -fLo ~/.config/nvim/site/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
pip3 install neovim
cp ./nvim/init.vim ~/.config/nvim/init.vim
sudo pip3 install --upgrade neovim
nvim
