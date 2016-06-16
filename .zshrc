#
# .zshrc is sourced in interactive shells.
# It should contain commands to set up aliases,
# functions, options, key bindings, etc.
#

autoload -U compinit
compinit

#allow tab completion in the middle of a word
setopt COMPLETE_IN_WORD

## keep background processes at full speed
#setopt NOBGNICE
## restart running processes on exit
#setopt HUP

## history
#setopt APPEND_HISTORY
## for sharing history between zsh processes
#setopt INC_APPEND_HISTORY
#setopt SHARE_HISTORY

## never ever beep ever
#setopt NO_BEEP

## automatically decide when to page a list of completions
#LISTMAX=0

## disable mail checking
#MAILCHECK=0

# autoload -U colors
#colors

zmodload zsh/complist

zstyle ":completion:*:commands" rehash 1

bindkey "^r"  history-incremental-search-backward
bindkey "^[[Z" reverse-menu-complete
bindkey "^[[H"   beginning-of-line
bindkey "^[[F"   end-of-line
bindkey    "^[[3~"          delete-char
bindkey    "^[3;5~"         delete-char
bindkey -M menuselect '^[[Z' reverse-menu-complete
bindkey "e[1~" beginning-of-line
bindkey "e[4~" end-of-line

insert-sudo () { zle beginning-of-line; zle -U "sudo " }
zle -N insert-sudo
bindkey "^[s" insert-sudo

setopt CORRECT
setopt NO_BEEP
setopt APPEND_HISTORY
setopt INC_APPEND_HISTORY
setopt SHARE_HISTORY
setopt EXTENDED_HISTORY
setopt HIST_SAVE_NO_DUPS
setopt HIST_EXPIRE_DUPS_FIRST
setopt HIST_FIND_NO_DUPS


HISTSIZE=10000
if (( ! EUID )); then
  HISTFILE=~/.history_root
else
  HISTFILE=~/.history
fi
SAVEHIST=10000

export PATH=~/bin:$PATH