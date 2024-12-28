# Oh My Zsh
export ZSH="$HOME/.oh-my-zsh"
ZSH_THEME="cloud"

plugins=(git nvm sudo kubectl fzf zsh-syntax-highlighting zsh-autosuggestions)

# History
HISTSIZE=5000
HISTFILE=~/.zsh_history
SAVEHIST=$HISTSIZE
HISTDUP=erase
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

# kubectl completions
autoload -Uz compinit
compinit
source <(kubectl completion zsh)

source $ZSH/oh-my-zsh.sh

# Go
export PATH=$PATH:$(go env GOPATH)/bin

# nvm
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"

# Aliases
alias c='clear'
alias k="kubectl"
alias h="helm"
alias tf="terraform"
alias cat=bat

alias l="eza --icons --git --all"
alias ls="eza --icons --git --all"
alias lt="eza --icons --long --git --all --tree --level=2"

alias gc="git commit -m"
alias glog="git log --graph --topo-order --pretty='%w(100,0,6)%C(yellow)%h%C(bold)%C(black)%d %C(cyan)%ar %C(green)%an%n%C(bold)%C(white)%s %N' --abbrev-commit"

alias dco="docker compose"
alias dps="docker ps"
alias dx="docker exec -it"

alias ..="cd .."
alias ...="cd ../.."
alias ....="cd ../../.."
