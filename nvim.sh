echo "Configuring nvim..."
curl -fLo ~/.config/nvim/site/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
pip3 install neovim
cp ./nvim/init.vim ~/.config/nvim/init.vim
sudo pip3 install --upgrade neovim
cd ~/.config/nvim/plugged/youcompleteme/
git submodule update --init --recursive
./install.py --clang-completer --go-completer
cd third_party/ycmd/third_party/
rm -rf gocode
git clone git@github.com:mdempsky/gocode.git
cd gocode
go mod init
go build .
