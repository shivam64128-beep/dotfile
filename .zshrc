# load modules
zmodload zsh/complist
autoload -U compinit && compinit
autoload -U colors && colors
# autoload -U tetris # main attraction of zsh, obviously


# Lines configured by zsh-newuser-install
bindkey -v
bindkey -M viins 'jk' vi-cmd-mode

zstyle :compinstall filename '/home/shivam/.zshrc'

HISTFILE=~/.zsh_history
HISTCONTROL=ignoreboth
HISTSIZE=100000
SAVEHIST=100000

source <(fzf --zsh)

bindkey "^J" history-search-forward
bindkey "^K" history-search-backward
bindkey '^R' fzf-history-widget
bindkey '^H' autosuggest-accept

function yazi-widget() {
  yazi
  zle reset-prompt
}
zle -N yazi-widget
bindkey '^f' yazi-widget

function open_impala() {
    impala
    zle reset-prompt
}
zle -N open_impala
bindkey '^w' open_impala

function open_bluetui() {
    bluetui
   zle reset-prompt
}
zle -N open_bluetui
bindkey '^b' open_bluetui

function open_wiremix() {
    wiremix
    zle reset-prompt
}
zle -N open_wiremix
bindkey '^a' open_wiremix

function open_nvim() {
    nvim
    zle reset-prompt
}
zle -N open_nvim
bindkey '^n' open_nvim

export EDITOR="nvim"
export VISUAL="nvim"
export TERM="foot"
export TERMINAL="foot"

autoload -Uz compinit
compinit
# End of lines added by compinstall

alias \
\
ls="ls -lh --color=auto --group-directories-first" \
la="ls -lah --color=auto --group-directories-first" \
grep="grep --color=auto" \
time="tty-clock -S" \

source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source /usr/share/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh
