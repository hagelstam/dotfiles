eval "$(mise activate zsh)"

export ZSH="$HOME/.oh-my-zsh"
ZSH_THEME="robbyrussell"

plugins=(git sudo fzf aws zsh-syntax-highlighting zsh-autosuggestions)

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
alias cat='bat'
alias cd='z'
alias http='xh'
alias tf='terraform'

# Eza
alias l="eza --long --icons --git --all"
alias ls="eza --long --icons --git --all"
alias lt="eza --long --icons --git --all --tree --level=2"

# Docker
alias dco="docker compose"
alias dps="docker ps"
alias dpa="docker ps -a"
alias dl="docker ps -l -q"
alias dx="docker exec -it"

# Git
alias gc="git commit -m"
alias gp="git pull"
alias gs="git status"
alias glog="git log --graph --topo-order --pretty='%w(100,0,6)%C(yellow)%h%C(bold)%C(black)%d %C(cyan)%ar %C(green)%an%n%C(bold)%C(white)%s %N' --abbrev-commit"
alias gco="git checkout"
alias gb='git branch'
alias gst="git status"

# Other
alias prlist="gh pr list --author \"@me\" --json=url --jq '.[].url'"
alias nukemodules='find . -name "node_modules" -type d -prune | xargs rm -rf'
alias killport='kill_port() { lsof -i tcp:$1 | awk "NR!=1 {print \$2}" | xargs kill -9; }; kill_port'
alias aws_login='aws sso login --sso-session fs'

# Dirs
alias ..="cd .."
alias ...="cd ../.."
alias ....="cd ../../.."

eval "$(zoxide init zsh)"
source <(fzf --zsh)
