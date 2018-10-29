echo "Configuring workspace..."
cp -r ./scripts ~/.config
mkdir -p ~/Documents/Workspace
mkdir -p ~/Documents/Go/{src,bin}
npm i -g create-react-app @vue/cli now react-native-cli firebase-tools
