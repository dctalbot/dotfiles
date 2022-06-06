This started out as some "hot tips" but has since evolved into more of a guide for myself that I run through whenever I get a new machine.

Last updated for macOS 12

# security & privacy

1. Firewall > turn on (esp if you're working in cafes or airports etc.)
1. `defaults write com.apple.AdLib allowApplePersonalizedAdvertising 0` (turn off personalized apple ads)

# keyboard

1. Touch Bar Shows > Expanded Control Strip
1. Modifier Keys... > Use Caps Lock as Escape

# package manager

1. Install [homebrew](https://brew.sh)

# apps

1. `brew install --cask spotify`

# firefox developer edition

1. `brew tap homebrew/cask-versions`
1. `brew install --cask firefox-developer-edition`
1. Change default browser in sys preferences

# git

1. [Add an SSH key](https://docs.github.com/en/free-pro-team@latest/github/authenticating-to-github/generating-a-new-ssh-key-and-adding-it-to-the-ssh-agent)
1. `brew install gpg`
1. [Add a GPG key](https://docs.github.com/en/authentication/managing-commit-signature-verification/generating-a-new-gpg-key)

<!-- for .gitconfig, it's easier to maintain 2 copies since the git config commands re-create files (so linking wouldn't work) -->

```sh
mkdir ~/Developer && cd ~/Developer
git clone git@github.com:dctalbot/dotfiles.git
cp dotfiles/.gitconfig ~
git config --global user.signingkey <gpg key here>
git config --global user.email <gpg email here>
git config --global --list
```

# terminal

1. `brew install --cask iterm2`
1. `brew install tmux`
1. `ln dotfiles/.tmux.conf ~/.tmux.conf`

Potentially use the iTerm GUI to import `iterm/profile.json`. The only thing custom is the Working Directory attribute e.g. mine is `/Users/dctalbot`

For [some reason](https://gitlab.com/gnachman/iterm2/-/issues/7477), iterm wants access to Contacts. Block this under sys preferences > security & privacy > privacy > contacts

# shell

- Install oh-my-zsh
- Clone p10k oh-my-zsh installation https://github.com/romkatv/powerlevel10k#oh-my-zsh

```sh
ln dotfiles/.zshrc ~/.zshrc # zsh config
ln dotfiles/.zprofile ~/.zprofile # zsh config
```

You may have to explicitly trust oh-my-zsh:

```sh
compaudit | xargs chmod g-w,o-w
```

# text editor

1. `brew install --cask visual-studio-code`
1. Sign into [settings sync](https://code.visualstudio.com/docs/editor/settings-sync)
1. Restart

```sh
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

# node

```sh
brew install nvm
```

# python

```sh
brew install pyenv
```
