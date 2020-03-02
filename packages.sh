echo "Installing brew..."
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

# echo "Installing drivers..."
# brew tap caskroom/drivers
# brew cask install \
#     silicon-labs-vcp-driver \
#     wch-ch34x-usb-serial-driver

echo "Installing fonts..."
brew tap caskroom/fonts
brew cask install \
    font-menlo-for-powerline

echo "Installing packages..."
brew tap caskroom/cask
brew tap drone/drone
brew tap heroku/brew
brew cask install       \
    visual-studio-code  \
    datagrip               \
    fastlane            \
    notion \
    adoptopenjdk/openjdk/adoptopenjdk8       \
    react-native-debugger \
	google-chrome       \
    virtualbox          \
    java                \
    intellij-idea       \
    vagrant             \
    google-cloud-sdk    \
    iterm2              \
	slack               \
    minikube            \
    ngrok               \
    sketch              \
    android-studio      \
    docker              \
    vlc
brew install            \
    unrar               \
    heroku              \
    postgresql          \
    gource              \
    golang-migrate      \
    ffmpeg              \
    libav               \
    imagemagick         \
    wget                \
    terraform-inventory \
    go                  \
    maven               \
    curl                \
    git                 \
    packer              \
    terraform           \
    nomad               \
    consul              \
    vault               \
    drone               \
    cfssl               \
    mkcert              \
    python              \
    zsh                 \
    zsh-completions     \
    neovim              \
    kubernetes-cli      \
    kubernetes-helm     \
    protobuf            \
    rbenv               \
    coreutils           \
    unzip               \
    openssh             \
    rsync               \
    make                \
    redis               \
    less                \
    skaffold            \
    fzf                 \
    cmake               \
    ansible             \
    awscli              \
    docker              \
    docker-machine      \
    watchman            \
    kustomize           \
    docker-compose      \
    nvm                 \
    txn2/tap/kubefwd    \
    bazelbuild/tap/bazel
brew link --overwrite python

echo "Installing rust..."
export RUSTUP_HOME=~/.config/rustup
export CARGO_HOME=~/.config/cargo
curl https://sh.rustup.rs -sSf | sh -s -- --no-modify-path --default-toolchain stable
