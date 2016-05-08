# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=10000
SAVEHIST=10000
bindkey -e
# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename '/home/talonx/.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall

export PATH=$HOME/gradle-2.5/bin:$PATH

git config --global user.name "Hrishikesh Barua"
git config --global user.email "talonx@gmail.com"


#### Golang stuff ####
export GOROOT=~/sdks/go/current
export PATH=$GOROOT/bin:$PATH
export GOPATH=~/code/go
export PATH=$GOPATH/bin:$PATH
export GOBIN=$GOPATH/bin
####
