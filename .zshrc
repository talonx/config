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
git config --global user.email ""


#### Golang stuff ####
export PATH=/usr/local/go/bin:$PATH
export GOPATH=/code/code/go
export PATH=$GOPATH/bin:$PATH
export GOBIN=$GOPATH/bin
####
