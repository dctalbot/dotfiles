PATH="/usr/local/mysql/bin:${PATH}"
# PATH="/Users/David/Downloads/geckodriver:${PATH}"

# ruby env
# eval "$(rbenv init -)"

alias caen="ssh dctalbot@login.engin.umich.edu";

pyServer() {
    python -m SimpleHTTPServer $1
}

# brew install git bash-completion
[[ -r "/usr/local/etc/profile.d/bash_completion.sh" ]] && . "/usr/local/etc/profile.d/bash_completion.sh"

# brew install groovy
export GROOVY_HOME=/usr/local/opt/groovy/libexec

#GPG
export GPG_TTY=$(tty)

export PS1="\W\[\033[32m\]\$(__git_ps1 ' (%s)')\[\033[00m\] λ "


# Git branch in prompt
# parse_git_branch() {
#   git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
# }
# export PS1="\W\[\033[32m\]\$(parse_git_branch)\[\033[00m\] λ "

# check if previous command succeeded
# `if [ $? = 0 ]; then echo "\[\033[01;32m\]✔"; else echo "\[\033[01;31m\]✘"; fi` 
