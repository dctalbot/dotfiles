Here's a neat solution to keeping configs in sync across machines. It sounds like things are trending towards cloud-based configs, but if you consider github a cloud, that's basically what this is: one remote repo that multiples clients can pull from.

The main idea is this:
- have one centralized config repo
- have each app reference its relevant config files from said repo via symlinks
- changes made in the app should be reflected in the repo and vice-versa; it's a two-way street
- all changes are tracked by git
- this repo should not be deleted or else config chaos will ensue :)

# terminal preview
![Terminal Preview](https://github.com/dctalbot/dotfiles/blob/master/img/iterm.png?raw=true)


# downloads
- [iTerm](http://iterm2.com)
- [vscode](https://code.visualstudio.com/download)
- [homebrew](https://brew.sh)
- [oh-my-zsh](https://ohmyz.sh/#install)

# brew

```sh
brew install gpg go
```

# git

[Add an SSH key](https://docs.github.com/en/free-pro-team@latest/github/authenticating-to-github/generating-a-new-ssh-key-and-adding-it-to-the-ssh-agent)

[Add a GPG key](https://docs.github.com/en/free-pro-team@latest/github/authenticating-to-github/adding-a-new-gpg-key-to-your-github-account)

```sh
mkdir ~/Developer && cd ~/Developer # has a cool little hammer icon in Finder :)
git clone git@github.com:dctalbot/dotfiles.git
cd dotfiles
ln -s "$(pwd)/.gitconfig" ~/.gitconfig # create global git config
```

Now `dotfiles/.gitconfig` is linked to the global `~/.gitconfig`, so changes made in either one will be reflected in the other.

# shell
- Install oh-my-zsh
- Clone p10k oh-my-zsh installation https://github.com/romkatv/powerlevel10k#oh-my-zsh


```sh
ln -s "$(pwd)/.zshrc" ~/.zshrc # overwite global zsh config
ln -s "$(pwd)/.p10k.zsh" ~/.p10k.zsh # use my p10k styles
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
```sh
ln -sf "$(pwd)/vscode/settings.json" ~/Library/Application\ Support/Code/User/settings.json
```
Some extenstions to Download:
- Palenight Theme
- Prettier
- ES lint

# node
```sh
brew install nvm # version manager
nvm install 12 # installs node@12
```

# iterm
Import settings and/or profile from `iterm/`. I think the only thing custom is the Working Directory e.g. mine is `/Users/dctalbot`
