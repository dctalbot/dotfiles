![Terminal Preview](https://github.com/dctalbot/dotfiles/blob/master/img/iterm.png?raw=true)

This started out as some "hot tips" but has since evolved into more of a guide for myself that I run through whenever I get a new machine.

Last updated for macOS 12

# package manager

1. Install [homebrew](https://brew.sh)
1. `brew install --cask spotify`

# git

1. [Add an SSH key](https://docs.github.com/en/free-pro-team@latest/github/authenticating-to-github/generating-a-new-ssh-key-and-adding-it-to-the-ssh-agent)
1. `brew install gpg`
1. [Add a GPG key](https://docs.github.com/en/authentication/managing-commit-signature-verification/generating-a-new-gpg-key)
1. `git config --global user.signingkey <insert gpg key here>`
1. `git config --global user.email <insert gpg email here>`

```sh
mkdir ~/Developer && cd ~/Developer
git clone git@github.com:dctalbot/dotfiles.git
ln dotfiles/.gitconfig ~/.gitconfig
git config --global --list
```

# terminal

1. `brew install --cask iterm2`
1. `brew install tmux`
1. `ln dotfiles/.tmux.conf ~/.tmux.conf`

Potentially use the iTerm GUI to import `iterm/profile.json`. The only thing custom is the Working Directory attribute e.g. mine is `/Users/dctalbot`

# browser

1. `brew tap homebrew/cask-versions`
1. `brew install --cask firefox-developer-edition`
1. Change default browser in system preferences

# shell

- Install oh-my-zsh
- Clone p10k oh-my-zsh installation https://github.com/romkatv/powerlevel10k#oh-my-zsh

```sh
ln dotfiles/.zshrc ~/.zshrc # zsh config
ln dotfiles/.zprofile ~/.zprofile # zsh config
ln -s "$(pwd)/.p10k.zsh" ~/.p10k.zsh # p10k styles
p10k configure # yes, install font, restart iterm
```

You should see the pretty font now :)
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
