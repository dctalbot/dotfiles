# Setting PATH for Python 2.7
# The orginal version is saved in .bash_profile.pysave
#PATH="/Library/Frameworks/Python.framework/Versions/2.7/bin:${PATH}"
#export PATH

PATH="/usr/local/mysql/bin:${PATH}"
# PATH="/Users/David/Downloads/geckodriver:${PATH}"


eval "$(rbenv init -)"

alias edit="open -a Atom"

alias caen="ssh dctalbot@login.engin.umich.edu";

alias server="php -S 127.0.0.1:8000"

pyServer() {
    python -m SimpleHTTPServer $1
}

[ -f /usr/local/etc/bash_completion ] && . /usr/local/etc/bash_completion


# Git branch in prompt
# parse_git_branch() {
#   git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
# }
# export PS1="\W\[\033[32m\]\$(parse_git_branch)\[\033[00m\] λ "

# check if previous command succeeded
# `if [ $? = 0 ]; then echo "\[\033[01;32m\]✔"; else echo "\[\033[01;31m\]✘"; fi` 


# use built in __git_ps1
export PS1="\W\[\033[32m\]\$(__git_ps1 ' (%s)')\[\033[00m\] λ "


# Setting PATH for Python 3.6
# The original version is saved in .bash_profile.pysave
# PATH="/Library/Frameworks/Python.framework/Versions/3.6/bin:${PATH}"
# export PATH
#
# export NVM_DIR="$HOME/.nvm"
# . "/usr/local/opt/nvm/nvm.sh"

# added by Anaconda3 5.0.1 installer
# export PATH="/anaconda3/bin:$PATH"
export PATH=~/bin:$PATH
export PATH="/usr/local/opt/node@8/bin:$PATH"
