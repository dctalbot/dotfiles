Last updated for an Apple M4 Pro running Tahoe 26.5

```sh
# system
defaults write com.apple.AdLib allowApplePersonalizedAdvertising 0
defaults write -g NSWindowShouldDragOnGesture -bool true
defaults write com.apple.dock minimize-to-application -bool true
defaults write com.apple.dock mineffect -string "scale"
defaults write com.apple.spaces spans-displays -bool true
defaults write com.apple.dock orientation -string right
killall Dock
killall SystemUIServer


# https://brew.sh
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
echo >> ~/.zprofile
echo 'eval "$(/opt/homebrew/bin/brew shellenv)"' >> ~/.zprofile
eval "$(/opt/homebrew/bin/brew shellenv)"
brew analytics off
brew doctor

# https://nikitabobko.github.io/AeroSpace/guide
brew install --cask nikitabobko/tap/aerospace
cp /Applications/AeroSpace.app/Contents/Resources/default-config.toml ~/.aerospace.toml
# enable System Preferences > Privacy & Security > Accessibility > AeroSpace.app

# packages
brew install nvm
brew install uv
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
