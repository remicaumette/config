echo "Configuring vscode..."
code --install-extension PeterJausovec.vscode-docker
code --install-extension ms-vscode.vscode-typescript-tslint-plugin
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
code --install-extension rust-lang.rust
code --install-extension jpoissonnier.vscode-styled-components
code --install-extension ms-kubernetes-tools.vscode-kubernetes-tools
code --install-extension esbenp.prettier-vscode
code --install-extension redhat.vscode-yaml
mkdir -p ~/Library/Application\ Support/Code/User/
cp ./vscode/settings.json ~/Library/Application\ Support/Code/User/
cp ./vscode/keybindings.json ~/Library/Application\ Support/Code/User/
