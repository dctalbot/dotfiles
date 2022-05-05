![Terminal Preview](https://github.com/dctalbot/dotfiles/blob/master/img/iterm.png?raw=true)

This started out as some "hot tips" but has since evolved into more of a guide for myself that I run through whenever I get a new machine.

How to keep configuration in sync:

- have one git repo full of config files (e.g. named `dotfiles`)
- link each app's config files to said repo (hard or soft links will do)
- changes made in the app will then be reflected in the repo and vice-versa; it's a two-way street
- all changes are tracked in the git repo
- if you're using softlinks, don't delete or move the git repo or else chaos will ensue :) That is one pro of using hardlinks.

# downloads

- [iTerm](http://iterm2.com)
- [vscode](https://code.visualstudio.com/download)
- [homebrew](https://brew.sh)

# git

[Add an SSH key](https://docs.github.com/en/free-pro-team@latest/github/authenticating-to-github/generating-a-new-ssh-key-and-adding-it-to-the-ssh-agent)

[Add a GPG key](https://docs.github.com/en/authentication/managing-commit-signature-verification/generating-a-new-gpg-key)

```sh
mkdir ~/Developer && cd ~/Developer # has a cool little hammer icon in Finder :)
git clone git@github.com:dctalbot/dotfiles.git
ln dotfiles/.gitconfig ~/.gitconfig # create global git config
git config --global --list # confirm no errors
```

Now `dotfiles/.gitconfig` is linked to the global `~/.gitconfig`, so changes made in either one will be reflected in the other.

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

# tmux

```sh
ln -s "$(pwd)/.tmux.conf" ~/.tmux.conf
```

# vs code

Used to do this manually, but there is now a [settings sync](https://code.visualstudio.com/docs/editor/settings-sync) feature!

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
brew install nvm # version manager
```

# python

```sh
brew install pyenv # version manager
```

# iTerm

Use the iTerm GUI to import `iterm/profile.json`. The only thing custom is the Working Directory attribute e.g. mine is `/Users/dctalbot`

There is also a plist file that I used to track, but since they switched to using a binary format (instead of xml), it's too much of a pain to vet for breaking changes. It lives here: `~/Library/Preferences/com.googlecode.iterm2.plist`
