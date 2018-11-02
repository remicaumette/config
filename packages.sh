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
brew cask install       \
    visual-studio-code  \
    discord             \
	firefox             \
    virtualbox          \
    java                \
    vagrant             \
    jetbrains-toolbox   \
    ultimaker-cura      \
    arduino             \
    google-cloud-sdk    \
    iterm2              \
	slack               \
	macdown             \
	fly                 \
    minikube
brew install            \
    go                  \
    node                \
    maven               \
    curl                \
    git                 \
    packer              \
    terraform           \
    mas                 \
    python              \
    zsh                 \
    zsh-completions     \
    neovim              \
    dep                 \
    kubernetes-cli      \
    kubernetes-helm     \
    protobuf            \
    coreutils           \
    unzip               \
    openssh             \
    rsync               \
    gpatch              \
    gdb                 \
    make                \
    less                \
    skaffold            \
    fzf                 \
    cmake               \
    ansible             \
    llvm                \
    awscli              \
    httpie              \
    docker              \
    docker-machine      \
    watchman
brew link --overwrite python

echo "Installing mac applications..."
mas install 409201541 # Pages
mas install 409203825 # Numbers
mas install 409183694 # Keynote

echo "Installing rust..."
export RUSTUP_HOME=~/.config/rustup
export CARGO_HOME=~/.config/cargo
curl https://sh.rustup.rs -sSf | sh -s -- --no-modify-path --default-toolchain stable
