# zoxide
eval "$(zoxide init zsh --cmd cd)"

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

alias dco="docker compose"
alias dps="docker ps"
alias dx="docker exec -it"

alias ..="cd .."
alias ...="cd ../.."
alias ....="cd ../../.."
