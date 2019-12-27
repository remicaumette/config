echo "Configuring vscode..."
code --install-extension ms-vscode.cpptools
code --install-extension vadimcn.vscode-lldb
code --install-extension msjsdiag.debugger-for-chrome
code --install-extension ms-azuretools.vscode-docker
code --install-extension dbaeumer.vscode-eslint
code --install-extension eamodio.gitlens
code --install-extension ms-vscode.go
code --install-extension kumar-harsh.graphql-for-vscode
code --install-extension ms-kubernetes-tools.vscode-kubernetes-tools
code --install-extension ms-vsliveshare.vsliveshare
code --install-extension ms-vsliveshare.vsliveshare-audio
code --install-extension karigari.chat
code --install-extension ms-vsliveshare.vsliveshare-pack
code --install-extension zhuangtongfa.material-theme
code --install-extension johnpapa.vscode-peacock
code --install-extension esbenp.prettier-vscode
code --install-extension ms-python.python
code --install-extension rust-lang.rust
code --install-extension shinnn.stylelint
code --install-extension joshpeng.sublime-babel-vscode
code --install-extension mauve.terraform
code --install-extension ms-vscode.vscode-typescript-tslint-plugin
code --install-extension octref.vetur
code --install-extension zxh404.vscode-proto3
code --install-extension jpoissonnier.vscode-styled-components
code --install-extension blanu.vscode-styled-jsx
code --install-extension redhat.vscode-yaml
mkdir -p ~/Library/Application\ Support/Code/User/
cp ./vscode/settings.json ~/Library/Application\ Support/Code/User/
cp ./vscode/keybindings.json ~/Library/Application\ Support/Code/User/
