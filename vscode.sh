echo "Configuring vscode..."
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
code --install-extension eamodio.gitlens
code --install-extension vadimcn.vscode-lldb
mkdir -p ~/Library/Application\ Support/Code/User/
cp ./vscode/settings.json ~/Library/Application\ Support/Code/User/
cp ./vscode/keybindings.json ~/Library/Application\ Support/Code/User/
