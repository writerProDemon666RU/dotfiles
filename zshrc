# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=100000
SAVEHIST=100000
setopt appendhistory nomatch notify
unsetopt autocd beep extendedglob
bindkey -e
# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename '/home/admin/.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall

[[ $- = *i* ]] && source ~/projects/cloned/liquidprompt/liquidprompt
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

export EDITOR='subl'
export PAGER='less -X'
