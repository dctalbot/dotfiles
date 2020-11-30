I just bought a new mac so I'm writing this as I go... enjoy!

# this could be you!
![CLI Preview](https://github.com/dctalbot/dotfiles/blob/master/img/iterm.png?raw=true)


# random notes
- Nothing about this setup is super special, but I like being able to track my configuration in git since I work on multiple machines. That's why a lot of the commands below are just symlinking files in this repo to their respective locations on the filesystem.

- It would be really easy for me to script out a bunch of this, but I sort of like having control of the granular chunks.

- The bash stuff is basically legacy now that zsh is default on mac

# downloads
- [iTerm](http://iterm2.com)
- [vscode](https://code.visualstudio.com/download)
- [homebrew](https://brew.sh)
- [oh-my-zsh](https://ohmyz.sh/#install)
- xcode (optional)
- android studio (optional)

# brew

```sh
brew install gpg
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
I don't use tmux much these days, but I do have a config you can use just like the others
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
