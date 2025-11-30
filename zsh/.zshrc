export ZSH="$HOME/.oh-my-zsh"
ZSH_THEME="robbyrussell" # https://github.com/ohmyzsh/ohmyzsh/wiki/Themes

plugins=(git nvm sudo fzf aws zsh-syntax-highlighting zsh-autosuggestions)

# History
HISTSIZE=5000
HISTFILE=~/.zsh_history
SAVEHIST=$HISTSIZE
setopt appendhistory
setopt sharehistory
setopt hist_ignore_space
setopt hist_ignore_all_dups
setopt hist_save_no_dups
setopt hist_ignore_dups
setopt hist_find_no_dups

# Keybindings
bindkey -e
bindkey '^p' history-search-backward
bindkey '^n' history-search-forward

source $ZSH/oh-my-zsh.sh

# Aliases
alias c='clear'
alias tf="terraform"
alias cat=bat
alias cd=z

alias l="eza --icons --git --all"
alias ls="eza --icons --git --all"
alias lt="eza --icons --long --git --all --tree --level=2"

alias gc="git commit -m"
alias gp="git pull"
alias gs="git status"
alias glog="git log --graph --topo-order --pretty='%w(100,0,6)%C(yellow)%h%C(bold)%C(black)%d %C(cyan)%ar %C(green)%an%n%C(bold)%C(white)%s %N' --abbrev-commit"

alias ..="cd .."
alias ...="cd ../.."
alias ....="cd ../../.."

# AWS
export AWS_PROFILE="MaximAdmin"

# nvm
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"

# Go
export GOROOT=/usr/local/go
export GOPATH=$HOME/Documents/go
export PATH=$GOPATH/bin:$GOROOT/bin:$PATH

# Shell integrations
eval "$(zoxide init zsh)"
eval "$(fzf --zsh)"