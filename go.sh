cd ~/.vim/bundle
git clone git@github.com:Valloric/YouCompleteMe.git
cd YouCompleteMe
git submodule update --init --recursive
python install.py --go-completer
cd third_party/ycmd/third_party/
rm -rf gocode
git clone git@github.com:mdempsky/gocode.git
cd gocode
go mod init
go build .

# https://github.com/Valloric/YouCompleteMe/issues/3074
