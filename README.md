Last updated for an Apple M4 Pro running Sequoia 15.1

```sh
# system
defaults write com.apple.AdLib allowApplePersonalizedAdvertising 0
defaults write -g NSWindowShouldDragOnGesture -bool true
defaults write com.apple.dock minimize-to-application -bool true
defaults write com.apple.dock mineffect -string "scale"
defaults write com.apple.spaces spans-displays -bool true
killall Dock
killall SystemUIServer


# https://brew.sh
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
echo >> ~/.zprofile
echo 'eval "$(/opt/homebrew/bin/brew shellenv)"' >> ~/.zprofile
eval "$(/opt/homebrew/bin/brew shellenv)"
brew analytics off

# https://nikitabobko.github.io/AeroSpace/guide
brew install --cask nikitabobko/tap/aerospace
cp /Applications/AeroSpace.app/Contents/Resources/default-config.toml ~/.aerospace.toml

# packages
brew install nvm
brew install pyenv
brew install gpg

# projects
mkdir ~/Developer && cd ~/Developer
git clone git@github.com:dctalbot/dotfiles.git
cp dotfiles/.gitconfig ~
git config --global user.signingkey <gpg key here>
git config --global user.email <gpg email here>
git config --global --list

# shell
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
```

## System Preferences

1. Modifier Keys > use Caps Lock as Escape

## VS Code

1. Use [settings sync](https://code.visualstudio.com/docs/editor/settings-sync)

```console
code --list-extensions

dbaeumer.vscode-eslint
dsznajder.es7-react-js-snippets
eamodio.gitlens
esbenp.prettier-vscode
GitHub.copilot
golang.go
GraphQL.vscode-graphql
hediet.vscode-drawio
mechatroner.rainbow-csv
ms-azuretools.vscode-docker
ms-python.python
ms-python.vscode-pylance
ms-toolsai.jupyter
ms-vscode-remote.remote-containers
redhat.vscode-yaml
svelte.svelte-vscode
tht13.html-preview-vscode
tommorris.mako
vayan.haml
whizkydee.material-palenight-theme
```

```console
code --install-extension <name>
```
