export ZSH="$HOME/.oh-my-zsh"

ZSH_THEME="agnoster"

plugins=(
    git
    vi-mode
)

source $ZSH/oh-my-zsh.sh

# Syntax highlighting
source /opt/homebrew/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

# Aliases
alias ppg="cd ~/Documents/PPG"
alias ls="eza -la --icons"

export CPATH=/opt/homebrew/include
export LIBRARY_PATH=/opt/homebrew/lib